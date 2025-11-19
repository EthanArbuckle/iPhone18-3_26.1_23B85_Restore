uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_ColorMultiplyD0V9_ResolvedV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMultiplyEffect._Resolved>, &type metadata for _ColorMultiplyEffect._Resolved, &protocol witness table for _ColorMultiplyEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMultiplyEffect._Resolved> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _ShaderFilterEffect and conformance _ShaderFilterEffect()
{
  result = lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect;
  if (!lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect;
  if (!lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShaderFilterEffect and conformance _ShaderFilterEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect()
{
  result = lazy protocol witness table cache variable for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect;
  if (!lazy protocol witness table cache variable for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ShaderFilterEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ShaderFilterEffect and conformance _ShaderFilterEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendModeEffect>, &type metadata for GraphicsBlendModeEffect, &protocol witness table for GraphicsBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<VariableBlurStyle> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<VariableBlurStyle> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<VariableBlurStyle> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<VariableBlurStyle>, &type metadata for VariableBlurStyle, &protocol witness table for VariableBlurStyle, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<VariableBlurStyle> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VariableBlurStyle and conformance VariableBlurStyle()
{
  result = lazy protocol witness table cache variable for type VariableBlurStyle and conformance VariableBlurStyle;
  if (!lazy protocol witness table cache variable for type VariableBlurStyle and conformance VariableBlurStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VariableBlurStyle and conformance VariableBlurStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<SummarySymbol> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<SummarySymbol> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<SummarySymbol> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<SummarySymbol>, &type metadata for SummarySymbol, &protocol witness table for SummarySymbol, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<SummarySymbol> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<_OpacityEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, a2, a3, a4, type metadata accessor for AnimatableAttribute);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<CAFilterEffect>, &type metadata for CAFilterEffect, &protocol witness table for CAFilterEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect()
{
  result = lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect;
  if (!lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect;
  if (!lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect;
  if (!lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalePulseEffect and conformance ScalePulseEffect);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<VariableBlurStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect()
{
  result = lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect;
  if (!lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect;
  if (!lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_HueRotationEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_HueRotationEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_HueRotationEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_HueRotationEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style()
{
  result = lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style;
  if (!lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style;
  if (!lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Corner.Style and conformance Edge.Corner.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii()
{
  result = lazy protocol witness table cache variable for type RectangleCornerRadii and conformance RectangleCornerRadii;
  if (!lazy protocol witness table cache variable for type RectangleCornerRadii and conformance RectangleCornerRadii)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RectangleCornerRadii and conformance RectangleCornerRadii);
  }

  return result;
}

void type metadata accessor for AnimatableAttribute<CGRect>()
{
  if (!lazy cache variable for type metadata for AnimatableAttribute<CGRect>)
  {
    type metadata accessor for CGRect(255);
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v0 = type metadata accessor for AnimatableAttribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttribute<CGRect>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of AnimatableAttribute<CGPoint>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMultiplyEffect._Resolved> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMultiplyEffect._Resolved> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMultiplyEffect._Resolved> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMultiplyEffect._Resolved>, &type metadata for _ColorMultiplyEffect._Resolved, &protocol witness table for _ColorMultiplyEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMultiplyEffect._Resolved> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved()
{
  result = lazy protocol witness table cache variable for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved;
  if (!lazy protocol witness table cache variable for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Angle> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Angle> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Angle> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<Angle>, &type metadata for Angle, &protocol witness table for Angle, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Angle> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_SaturationEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_SaturationEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_SaturationEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_SaturationEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint()
{
  result = lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint;
  if (!lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint;
  if (!lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint;
  if (!lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshGradient._Paint and conformance MeshGradient._Paint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Double> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Double> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Double> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Double> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration()
{
  result = lazy protocol witness table cache variable for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration;
  if (!lazy protocol witness table cache variable for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle()
{
  result = lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle;
  if (!lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle;
  if (!lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle);
  }

  return result;
}

double _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners()
{
  result = lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners;
  if (!lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners;
  if (!lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners);
  }

  return result;
}

double _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi0_(uint64_t a1)
{
  result = 0.0;
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
  *(a1 + 256) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp2>, &type metadata for _BackdropGroupEffect_temp2, &protocol witness table for _BackdropGroupEffect_temp2, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp>, &type metadata for _BackdropGroupEffect_temp, &protocol witness table for _BackdropGroupEffect_temp, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect2>, &type metadata for _BackdropGroupEffect2, &protocol witness table for _BackdropGroupEffect2, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect>, &type metadata for _BackdropGroupEffect, &protocol witness table for _BackdropGroupEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<LuminanceCurveEffect>, &type metadata for LuminanceCurveEffect, &protocol witness table for LuminanceCurveEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_LuminanceToAlphaEffect>, &type metadata for _LuminanceToAlphaEffect, &protocol witness table for _LuminanceToAlphaEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint()
{
  result = lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint;
  if (!lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint;
  if (!lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle()
{
  result = lazy protocol witness table cache variable for type StrokeStyle and conformance StrokeStyle;
  if (!lazy protocol witness table cache variable for type StrokeStyle and conformance StrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrokeStyle and conformance StrokeStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedShadowStyle and conformance ResolvedShadowStyle;
  if (!lazy protocol witness table cache variable for type ResolvedShadowStyle and conformance ResolvedShadowStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedShadowStyle and conformance ResolvedShadowStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BlurStyle and conformance BlurStyle()
{
  result = lazy protocol witness table cache variable for type BlurStyle and conformance BlurStyle;
  if (!lazy protocol witness table cache variable for type BlurStyle and conformance BlurStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlurStyle and conformance BlurStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitRect and conformance UnitRect()
{
  result = lazy protocol witness table cache variable for type UnitRect and conformance UnitRect;
  if (!lazy protocol witness table cache variable for type UnitRect and conformance UnitRect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitRect and conformance UnitRect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnitRect and conformance UnitRect;
  if (!lazy protocol witness table cache variable for type UnitRect and conformance UnitRect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitRect and conformance UnitRect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_AlphaThresholdEffect._Resolved> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_AlphaThresholdEffect._Resolved> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_AlphaThresholdEffect._Resolved> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_AlphaThresholdEffect._Resolved>, &type metadata for _AlphaThresholdEffect._Resolved, &protocol witness table for _AlphaThresholdEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_AlphaThresholdEffect._Resolved> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved()
{
  result = lazy protocol witness table cache variable for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved;
  if (!lazy protocol witness table cache variable for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendMode>, &type metadata for GraphicsBlendMode, &protocol witness table for GraphicsBlendMode, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsFilter>, &type metadata for GraphicsFilter, &protocol witness table for GraphicsFilter, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_BrightnessEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_BrightnessEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_BrightnessEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_BrightnessEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect()
{
  result = lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect;
  if (!lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect;
  if (!lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect;
  if (!lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Rotation3DEffect and conformance _Rotation3DEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_GrayscaleEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_GrayscaleEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_GrayscaleEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_GrayscaleEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerLevelViewModifier>, &type metadata for _ForegroundLayerLevelViewModifier, &protocol witness table for _ForegroundLayerLevelViewModifier, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorInvertEffect>, &type metadata for _ColorInvertEffect, &protocol witness table for _ColorInvertEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

void type metadata accessor for AnimatableAttribute<CGSize>()
{
  if (!lazy cache variable for type metadata for AnimatableAttribute<CGSize>)
  {
    type metadata accessor for CGSize(255);
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
    v0 = type metadata accessor for AnimatableAttribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttribute<CGSize>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<_ContrastEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<_ContrastEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<_ContrastEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<_ContrastEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_PremultipliedColorMatrixEffect>, &type metadata for _PremultipliedColorMatrixEffect, &protocol witness table for _PremultipliedColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMatrixEffect>, &type metadata for _ColorMatrixEffect, &protocol witness table for _ColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ExtendedBlendModeEffect>, &type metadata for _ExtendedBlendModeEffect, &protocol witness table for _ExtendedBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone()
{
  result = lazy protocol witness table cache variable for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone;
  if (!lazy protocol witness table cache variable for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient()
{
  result = lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient;
  if (!lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient;
  if (!lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient;
  if (!lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient and conformance ResolvedGradient);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry()
{
  result = lazy protocol witness table cache variable for type ViewGeometry and conformance ViewGeometry;
  if (!lazy protocol witness table cache variable for type ViewGeometry and conformance ViewGeometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGeometry and conformance ViewGeometry);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewSize and conformance ViewSize()
{
  result = lazy protocol witness table cache variable for type ViewSize and conformance ViewSize;
  if (!lazy protocol witness table cache variable for type ViewSize and conformance ViewSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewSize and conformance ViewSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMonochromeEffect._Resolved> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMonochromeEffect._Resolved> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMonochromeEffect._Resolved> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMonochromeEffect._Resolved>, &type metadata for _ColorMonochromeEffect._Resolved, &protocol witness table for _ColorMonochromeEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ColorMonochromeEffect._Resolved> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<MayNotInsertCALayersEffect>, &type metadata for MayNotInsertCALayersEffect, &protocol witness table for MayNotInsertCALayersEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

void type metadata accessor for AnimatableAttribute<CGPoint>()
{
  if (!lazy cache variable for type metadata for AnimatableAttribute<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    v0 = type metadata accessor for AnimatableAttribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttribute<CGPoint>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<Shader.ResolvedShader> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<Shader.ResolvedShader> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<Shader.ResolvedShader> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<Shader.ResolvedShader>, &type metadata for Shader.ResolvedShader, &protocol witness table for Shader.ResolvedShader, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<Shader.ResolvedShader> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader()
{
  result = lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader;
  if (!lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader;
  if (!lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader;
  if (!lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial()
{
  result = lazy protocol witness table cache variable for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial;
  if (!lazy protocol witness table cache variable for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
  }

  return result;
}

void type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<ViewListArchivedAnimation.Effect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<ViewListArchivedAnimation.Effect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<ViewListArchivedAnimation.Effect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<ViewListArchivedAnimation.Effect>, &type metadata for ViewListArchivedAnimation.Effect, &protocol witness table for ViewListArchivedAnimation.Effect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<ViewListArchivedAnimation.Effect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

void type metadata accessor for AnimatableAttribute<VariableBlurStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnimatableAttribute();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int TimelineScheduleMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t TimelineSchedule.entries(within:mode:limit:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v40 = a4;
  v41 = a3;
  type metadata accessor for (lower: Date, upper: Date)();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v34 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  type metadata accessor for Range<Date>();
  v36 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v37 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v42 = a5;
  v43 = a6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyPrefixWhileSequence();
  swift_getWitnessTable();
  type metadata accessor for LazyDropWhileSequence();
  swift_getWitnessTable();
  v24 = type metadata accessor for LazyPrefixWhileSequence();
  MEMORY[0x1EEE9AC00](v24);
  v35 = &v34 - v25;
  LODWORD(v44) = *v44;
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v26 = v45;
  Date.init(timeIntervalSinceReferenceDate:)();
  v27 = *(v14 + 8);
  v27(v18, v13);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v29 = *(v14 + 32);
    v30 = v38;
    v29(v38, v21, v13);
    v34 = v24;
    v31 = v39;
    v29((v30 + *(v39 + 48)), v26, v13);
    outlined init with copy of (lower: Date, upper: Date)(v30, v10, type metadata accessor for (lower: Date, upper: Date));
    v32 = *(v31 + 48);
    v33 = v37;
    v29(v37, v10, v13);
    v27(&v10[v32], v13);
    outlined init with take of (lower: Date, upper: Date)(v30, v10, type metadata accessor for (lower: Date, upper: Date));
    v29((v33 + *(v36 + 36)), &v10[*(v31 + 48)], v13);
    v27(v10, v13);
    v46 = v44;
    TimelineSchedule.entries(within:mode:limit:)(v33, &v46, v41, v40 & 1, v42, v43, v35);
    outlined destroy of Range<Date>(v33, type metadata accessor for Range<Date>);
    swift_getWitnessTable();
    return Array.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for Range<Date>()
{
  if (!lazy cache variable for type metadata for Range<Date>)
  {
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Date>);
    }
  }
}

uint64_t TimelineSchedule.entries(within:mode:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v40 = a4;
  v41 = a3;
  v37 = a1;
  v44 = a7;
  type metadata accessor for Range<Date>();
  v43 = *(v9 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for LazySequence();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v34 - v18;
  v20 = type metadata accessor for LazyPrefixWhileSequence();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  v34[0] = v34 - v21;
  swift_getWitnessTable();
  v38 = type metadata accessor for LazyDropWhileSequence();
  v23 = MEMORY[0x1EEE9AC00](v38);
  v34[1] = v34 - v24;
  v45 = *a2;
  v25 = a6;
  v26 = *(a6 + 24);
  v27 = v37;
  v26(v37, &v45, v35, v25, v23);
  MEMORY[0x193ABEFB0](AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  LazySequenceProtocol<>.abort(after:)(v41, v40 & 1, v13, WitnessTable, v22);
  (*(v36 + 8))(v15, v13);
  v29 = v39;
  outlined init with copy of (lower: Date, upper: Date)(v27, v39, type metadata accessor for Range<Date>);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = swift_allocObject();
  outlined init with take of (lower: Date, upper: Date)(v29, v31 + v30, type metadata accessor for Range<Date>);
  swift_getWitnessTable();
  LazySequenceProtocol.drop(while:)();

  outlined init with copy of (lower: Date, upper: Date)(v27, v29, type metadata accessor for Range<Date>);
  v32 = swift_allocObject();
  outlined init with take of (lower: Date, upper: Date)(v29, v32 + v30, type metadata accessor for Range<Date>);
  swift_getWitnessTable();
  LazySequenceProtocol.prefix(while:)();
}

uint64_t TimelineSchedule.nextEntry(after:mode:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a1;
  v34 = a5;
  v38 = a4;
  v39 = a3;
  v40 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for LazySequence();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for LazyPrefixWhileSequence();
  v35 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v32 - v22;
  v42 = *a2;
  v24 = a6;
  v25 = *(a6 + 24);
  v26 = v37;
  v25(v37, &v42, v34, v24, v21);
  MEMORY[0x193ABEFB0](AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  LazySequenceProtocol<>.abort(after:)(v39, v38 & 1, v10, WitnessTable, v19);
  (*(v36 + 8))(v12, v10);
  v41 = v26;
  swift_getWitnessTable();
  Sequence.first(where:)();
  (*(v35 + 8))(v19, v17);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) != 1)
  {
    return (*(v29 + 32))(v40, v23, v28);
  }

  static Date.distantFuture.getter();
  result = (v30)(v23, 1, v28);
  if (result != 1)
  {
    return outlined destroy of Date?(v23);
  }

  return result;
}

uint64_t LazySequenceProtocol<>.abort(after:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22[1] = a5;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  v18 = *(v11 + 16);
  v18(v16, v6, a3);
  v18(v13, v6, a3);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  *(v20 + 4) = v17;
  (*(v11 + 32))(&v20[v19], v13, a3);

  LazySequenceProtocol.prefix(while:)();
}

uint64_t TimelineSchedule.lazyEntries(within:mode:limit:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyPrefixWhileSequence();
  swift_getWitnessTable();
  type metadata accessor for LazyDropWhileSequence();
  swift_getWitnessTable();
  v12 = type metadata accessor for LazyPrefixWhileSequence();
  MEMORY[0x1EEE9AC00](v12);
  v16 = *a2;
  TimelineSchedule.entries(within:mode:limit:)(a1, &v16, a3, a4 & 1, a5, a6, &v15 - v13);
  type metadata accessor for Date();
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t closure #1 in LazySequenceProtocol<>.abort(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v45 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PrefixSequence();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  swift_beginAccess();
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  if (v19)
  {
    goto LABEL_4;
  }

  if (v18)
  {
    --v18;
LABEL_4:
    v20 = 1;
    swift_beginAccess();
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    return v20;
  }

  if (one-time initialization token for timelineScheduleSequences != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.timelineScheduleSequences);
  v47 = v11;
  v23 = *(v11 + 16);
  v24 = v52;
  v23(v17, v52, a4);
  v23(v14, v24, a4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v26;
    v28 = v27;
    v52 = swift_slowAlloc();
    v54[0] = v52;
    *v28 = 134218498;
    *(v28 + 4) = 0;
    *(v28 + 12) = 2080;
    v45 = v17;
    v29 = v28;
    dispatch thunk of LazySequenceProtocol.elements.getter();
    Sequence.prefix(_:)();
    v30 = v51;
    WitnessTable = swift_getWitnessTable();
    v33 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in implicit closure #2 in closure #1 in LazySequenceProtocol<>.abort(after:), 0, v30, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v32);
    (*(v50 + 8))(v10, v30);
    DynamicType = v33;
    type metadata accessor for [String]();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type [String] and conformance [A], type metadata accessor for [String]);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    v37 = *(v47 + 8);
    v37(v45, a4);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v54);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v39 = String.init<A>(describing:)();
    v41 = v40;
    v37(v14, a4);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v54);

    *(v29 + 24) = v42;
    _os_log_impl(&dword_18D018000, v25, v46, "TimelineSchedule exceeded max length of %lu! Prefix: %s\nBase type: %s", v29, 0x20u);
    v43 = v52;
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v43, -1, -1);
    MEMORY[0x193AC4820](v29, -1, -1);
  }

  else
  {

    v44 = *(v47 + 8);
    v44(v17, a4);
    v44(v14, a4);
  }

  return 0;
}

uint64_t closure #1 in implicit closure #2 in closure #1 in LazySequenceProtocol<>.abort(after:)@<X0>(uint64_t *a1@<X8>)
{
  Date.timeIntervalSinceReferenceDate.getter();
  result = Double.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PeriodicTimelineSchedule.init(from:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for PeriodicTimelineSchedule(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t PeriodicTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  (*(v4 + 16))(a1, v1, v3);
  (*(v4 + 56))(a1, 0, 1, v3);
  type metadata accessor for PeriodicTimelineSchedule.Entries(0);

  return static Date.+= infix(_:_:)();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PeriodicTimelineSchedule.Entries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of Range<Date>(v0, type metadata accessor for PeriodicTimelineSchedule.Entries);
  return v1;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance PeriodicTimelineSchedule.Entries@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  (*(v4 + 16))(a1, v1, v3);
  (*(v4 + 56))(a1, 0, 1, v3);

  return static Date.+= infix(_:_:)();
}

uint64_t PeriodicTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X8>)
{
  Date.timeIntervalSince(_:)();
  v4 = v3;
  v5 = *(v1 + *(type metadata accessor for PeriodicTimelineSchedule(0) + 20));
  fmod(v4, v5);
  static Date.+ infix(_:_:)();
  result = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  *(a1 + *(result + 20)) = v5;
  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance PeriodicTimelineSchedule@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  Date.timeIntervalSince(_:)();
  v5 = *(v2 + *(a1 + 20));
  fmod(v6, v5);
  static Date.+ infix(_:_:)();
  result = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t one-time initialization function for zeroSecondComponents()
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for DateComponents();
  __swift_allocate_value_buffer(v6, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
  __swift_project_value_buffer(v6, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
  v7 = type metadata accessor for Calendar();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for TimeZone();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
}

uint64_t EveryMinuteTimelineSchedule.Entries.init(startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Calendar.SearchDirection();
  v49 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Calendar.MatchingPolicy();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v44 - v13;
  v14 = type metadata accessor for Calendar();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v59 = v19 + 56;
  v60 = a2;
  v57 = v18;
  v58 = v20;
  (v20)(a2, 1, 1);
  static Calendar.current.getter();
  if (one-time initialization token for zeroSecondComponents != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for DateComponents();
  v22 = __swift_project_value_buffer(v21, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
  v23 = a1;
  v24 = Calendar.date(_:matchesComponents:)();
  v26 = *(v15 + 8);
  v25 = v15 + 8;
  v48 = v26;
  v26(v17, v14);
  if (v24)
  {
    v27 = v60;
    outlined destroy of Date?(v60);
    v28 = v57;
    (*(v19 + 32))(v27, v23, v57);
    return v58(v27, 0, 1, v28);
  }

  else
  {
    static Calendar.current.getter();
    v30 = *MEMORY[0x1E69698D0];
    v46 = v14;
    v47 = v25;
    v44[1] = v22;
    v45 = v19;
    v31 = v23;
    v32 = v6;
    v33 = v8;
    (*(v6 + 104))(v8, v30, v55);
    v34 = v49;
    v35 = v50;
    (*(v49 + 104))(v50, *MEMORY[0x1E69699A0], v56);
    v36 = v51;
    v37 = v52;
    v38 = v54;
    (*(v51 + 104))(v52, *MEMORY[0x1E69699C8], v54);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    v39 = v37;
    v40 = v45;
    (*(v36 + 8))(v39, v38);
    (*(v34 + 8))(v35, v56);
    (*(v32 + 8))(v33, v55);
    v48(v17, v46);
    v41 = *(v40 + 48);
    v42 = v57;
    if (v41(v11, 1, v57) == 1)
    {
      v43 = v53;
      (*(v40 + 32))(v53, v31, v42);
      if (v41(v11, 1, v42) != 1)
      {
        outlined destroy of Date?(v11);
      }
    }

    else
    {
      (*(v40 + 8))(v31, v42);
      v43 = v53;
      (*(v40 + 32))(v53, v11, v42);
    }

    v58(v43, 0, 1, v42);
    return outlined assign with take of Date?(v43, v60);
  }
}

uint64_t EveryMinuteTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = type metadata accessor for Calendar.SearchDirection();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v50 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v56 = v2;
  outlined init with copy of Date?(v2, v17);
  v24 = *(v19 + 48);
  v60 = v18;
  v49 = v24;
  if (v24(v17, 1, v18) == 1)
  {
    outlined destroy of Date?(v17);
    return (*(v19 + 56))(a1, 1, 1, v60);
  }

  else
  {
    v46 = v19;
    v47 = a1;
    v43 = *(v19 + 32);
    v44 = v19 + 32;
    v43(v23, v17, v60);
    static Calendar.current.getter();
    if (one-time initialization token for zeroSecondComponents != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for DateComponents();
    v42 = __swift_project_value_buffer(v26, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
    v27 = v7;
    (*(v7 + 104))(v9, *MEMORY[0x1E69698D0], v57);
    v28 = v50;
    v29 = v6;
    (*(v50 + 104))(v6, *MEMORY[0x1E69699C8], v58);
    v31 = v53;
    v30 = v54;
    v32 = v55;
    (*(v53 + 104))(v54, *MEMORY[0x1E6969998], v55);
    v45 = v23;
    v33 = v59;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v29, v58);
    (*(v27 + 8))(v9, v57);
    (*(v51 + 8))(v33, v52);
    v34 = v60;
    if (v49(v14, 1, v60) == 1)
    {
      outlined destroy of Date?(v14);
      v35 = v56;
      outlined destroy of Date?(v56);
      v36 = 1;
      v37 = v46;
      v38 = v43;
    }

    else
    {
      v39 = v48;
      v38 = v43;
      v43(v48, v14, v34);
      v35 = v56;
      outlined destroy of Date?(v56);
      v38(v35, v39, v34);
      v36 = 0;
      v37 = v46;
    }

    v40 = *(v37 + 56);
    v40(v35, v36, 1, v34);
    v41 = v47;
    v38(v47, v45, v34);
    return (v40)(v41, 0, 1, v34);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EveryMinuteTimelineSchedule.Entries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of Range<Date>(v0, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
  return v1;
}

uint64_t EveryMinuteTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return EveryMinuteTimelineSchedule.Entries.init(startDate:)(v7, a2);
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance EveryMinuteTimelineSchedule@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return EveryMinuteTimelineSchedule.Entries.init(startDate:)(v7, a2);
}

unint64_t lazy protocol witness table accessor for type TimelineScheduleMode and conformance TimelineScheduleMode()
{
  result = lazy protocol witness table cache variable for type TimelineScheduleMode and conformance TimelineScheduleMode;
  if (!lazy protocol witness table cache variable for type TimelineScheduleMode and conformance TimelineScheduleMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineScheduleMode and conformance TimelineScheduleMode);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PeriodicTimelineSchedule(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for PeriodicTimelineSchedule(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for PeriodicTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for PeriodicTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for PeriodicTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for PeriodicTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for EveryMinuteTimelineSchedule.Entries(uint64_t *a1, uint64_t *a2)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for EveryMinuteTimelineSchedule.Entries(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for EveryMinuteTimelineSchedule.Entries(void *a1, const void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for EveryMinuteTimelineSchedule.Entries(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for EveryMinuteTimelineSchedule.Entries(void *a1, const void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for EveryMinuteTimelineSchedule.Entries(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void type metadata completion function for EveryMinuteTimelineSchedule.Entries()
{
  _s10Foundation4DateVSgMaTm_1(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t outlined destroy of Range<Date>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TimelineSchedule.entries(within:mode:limit:)()
{
  type metadata accessor for Range<Date>();

  return static Date.< infix(_:_:)();
}

uint64_t objectdestroy_21Tm()
{
  type metadata accessor for Range<Date>();
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v5(v3 + *(v2 + 44), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in TimelineSchedule.entries(within:mode:limit:)()
{
  type metadata accessor for Range<Date>();

  return static Date.< infix(_:_:)();
}

uint64_t ShapeStyledLeafView.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  if (((*(a4 + 48))(a3, a4) & 1) == 0 || (v14 = (*(a4 + 56))(&v35, a3, a4, a6, a7), v16 = v15, v18 = v17, v20 = v19, v48 >> 29 == 5) && (!(v36 | v35 | v37 | v38 | v39 | v40 | v41 | v42 | v43 | v44 | v45 | v46 | v47) ? (v21 = v48 == -1610612736) : (v21 = 0), v21))
  {
    v14 = (*(a4 + 40))(&v35, a3, a4, a6, a7);
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  if (v48 >> 29)
  {
    v28 = 0;
    if (!a1 || !a2)
    {
LABEL_31:
      result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v35);
      *a5 = v28;
      return result;
    }

    v29 = 0;
    v30 = 16 * a2;
    v31 = a1 + 8;
    while (1)
    {
      v50.origin.x = v14;
      v50.origin.y = v16;
      v50.size.width = v18;
      v50.size.height = v20;
      v32 = CGRectContainsPoint(v50, *(v31 - 8));
      if (v29 < 0x41)
      {
        if (v29 == 64)
        {
          v33 = 0;
          if (!v32)
          {
LABEL_28:
            v28 &= ~v33;
            goto LABEL_22;
          }
        }

        else
        {
          v33 = 1 << v29;
          if (!v32)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v33 = 0;
        if (!v32)
        {
          goto LABEL_28;
        }
      }

      v28 |= v33;
LABEL_22:
      v31 += 16;
      ++v29;
      v30 -= 16;
      if (!v30)
      {
        goto LABEL_31;
      }
    }
  }

  if (!a1 || !a2)
  {
    goto LABEL_35;
  }

  outlined copy of Path.Storage(v35, v36, v37, v38, v39);
  v25 = 0;
  v26 = a1 + 8;
  v27 = 16 * a2 - 16;
  while (v25)
  {
    if (!v27)
    {
      goto LABEL_33;
    }

    v25 = 1;
LABEL_14:
    v26 += 16;
    v27 -= 16;
  }

  v49.origin.x = v14;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  v25 = CGRectContainsPoint(v49, *(v26 - 8));
  if (v27)
  {
    goto LABEL_14;
  }

  if (v25)
  {
LABEL_33:
    Path.contains(points:eoFill:origin:)(a1, a2, a5, v14, v16);
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v35);
    return outlined destroy of _ShapeStyle_RenderedShape.Shape(&v35);
  }

  outlined destroy of _ShapeStyle_RenderedShape.Shape(&v35);
LABEL_35:
  result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v35);
  *a5 = 0;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance Image.Resolved@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = v3[9];
  v22 = v3[8];
  v23 = v5;
  v24[0] = v3[10];
  *(v24 + 11) = *(v3 + 171);
  v6 = v3[5];
  v18 = v3[4];
  v19 = v6;
  v7 = v3[7];
  v20 = v3[6];
  v21 = v7;
  v8 = v3[1];
  v14 = *v3;
  v15 = v8;
  v9 = v3[3];
  v16 = v3[2];
  v17 = v9;
  specialized ShapeStyledLeafView.contentPath(size:)(v12, a2, a3);
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  return result;
}

uint64_t ShapeStyledLeafView.contentPath(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 40))(&v27, a1);
  if (v30 >> 29)
  {
    v14 = v5;
    v17 = v8;
    v20 = v7;
    v13 = v6;
    IsNull = CGRectIsNull(*&v5);
    result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v27);
    if (IsNull)
    {
      v10 = 0uLL;
      v11 = 6;
      v9 = 0uLL;
    }

    else
    {
      v11 = 0;
      *&v9 = v20;
      *(&v9 + 1) = v17;
      *&v10 = v14;
      *(&v10 + 1) = v13;
    }
  }

  else
  {
    v10 = v27;
    v9 = v28;
    v11 = v29;
    v24 = v27;
    v25 = v28;
    v26 = v29;
    if (v5 != 0.0 || v6 != 0.0)
    {
      v15 = v27;
      v18 = v28;
      CGAffineTransformMakeTranslation(&v23, v5, v6);
      outlined copy of Path.Storage(v15, *(&v15 + 1), v18, *(&v18 + 1), v11);
      Path.applying(_:)(&v23.a, v21);
      v16 = v21[0];
      v19 = v21[1];
      v11 = v22;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v27);
      result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v27);
      v10 = v16;
      v9 = v19;
    }
  }

  *a3 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

double ShapeStyledLeafView.backgroundShape(in:)(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = -1610612736;
  return result;
}

uint64_t closure #3 in ShapeStyledDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = (*(a3 + 56))(a4, a2, a3, a5, a6);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = (*(v11 + 8))(v14, a2);
  a4[14] = v15;
  *(a4 + 15) = v17;
  *(a4 + 16) = v19;
  *(a4 + 17) = v21;
  return result;
}

uint64_t ShapeStyledResponderData.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v20 = *(v6 + *(a3 + 36));
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v14 = *(v13 + 64);

  v15 = v14(&v20, v12, v13);

  if (v15)
  {
    *a4 = 0;
  }

  else
  {
    v19 = *(*(v13 + 8) + 8);
    v17.n128_f64[0] = a5;
    v18.n128_f64[0] = a6;

    return v19(a1, a2, v12, v17, v18);
  }

  return result;
}

void *ShapeStyledResponderData.contentPath(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *&v16[0] = *(v4 + *(a1 + 36));
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(v9 + 64);

  v11 = v10(v16, v8, v9);

  if (v11)
  {
    v13 = 0uLL;
    v14 = 6;
    v15 = 0uLL;
  }

  else
  {
    result = (*(*(v9 + 8) + 16))(v16, v8, a3, a4);
    v13 = v16[0];
    v15 = v16[1];
    v14 = v17;
  }

  *a2 = v13;
  *(a2 + 16) = v15;
  *(a2 + 32) = v14;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance ShapeStyledResponderData<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  ShapeStyledResponderData.contentPath(size:)(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

double protocol witness for ShapeStyledLeafView.backgroundShape(in:) in conformance _ShapeSet.Wrapper(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = -1610612736;
  return result;
}

uint64_t protocol witness for ContentResponder.contentPath(size:) in conformance _ShapeSet.Wrapper@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _ShapeSet.Wrapper.pathSet(in:)(&v11, a2, a3);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = a2;
  v12.size.height = a3;
  IsNull = CGRectIsNull(v12);

  v8 = a2;
  v9 = a3;
  if (IsNull)
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  if (IsNull)
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  return result;
}

BOOL protocol witness for ContentResponder.contentPath(size:) in conformance StyledTextContentView@<W0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v7 = *(v3 + 8);
  if (v7)
  {
    v8 = *(*v7 + 120);

    v10 = v8(v9);
    v14 = CGRect.outset(by:)(v10, v11, v12, v13, 0.0, 0.0, a2, a3);
    v16 = v15;
    a2 = v17;
    a3 = v18;
  }

  else
  {
    v14 = 0.0;
    v16 = 0.0;
  }

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = a2;
  v25.size.height = a3;
  result = CGRectIsNull(v25);
  if (result)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v14;
  }

  if (result)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v16;
  }

  if (result)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = a2;
  }

  if (result)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = a3;
  }

  *a1 = v20;
  *(a1 + 8) = v21;
  if (result)
  {
    v24 = 6;
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _BackgroundStyleModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ShapeStyledLeafView.contentPath(size:)(a1, &protocol witness table for _BackgroundStyleModifier<A>, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _BackgroundShapeModifier<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ShapeStyledLeafView.contentPath(size:)(a1, &protocol witness table for _BackgroundShapeModifier<A, B>, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _ShapeView<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ShapeStyledLeafView.contentPath(size:)(a1, &protocol witness table for _ShapeView<A, B>, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance AnimatedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ShapeStyledLeafView.contentPath(size:)(a1, &protocol witness table for AnimatedShape<A>, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL specialized ShapeStyledLeafView.isClear(styles:)(uint64_t *a1)
{
  v1 = *a1;
  v6 = *a1;
  v5 = 0;
  v2 = _ShapeStyle_Pack.isClear(name:)(&v5);
  v3 = 0;
  if (v2)
  {
    v6 = v1;
    v5 = 1;
    return _ShapeStyle_Pack.isClear(name:)(&v5);
  }

  return v3;
}

uint64_t *initializeBufferWithCopyOfBuffer for ShapeStyledResponderData(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for ShapeStyledResponderData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for ShapeStyledResponderData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ShapeStyledResponderData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ShapeStyledResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ShapeStyledResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ShapeStyledDisplayList(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 1;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 49) & ~v6)) & 0xFFFFFFFFFFFFFFFELL) + 2 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v25;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v26 = *v27;
    v28 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = ((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v28 = *v29;
    v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v30 = *v31;
    *(v30 + 4) = *(v31 + 4);
    v32 = (v30 + v6 + 5) & ~v6;
    v33 = (v31 + v6 + 5) & ~v6;
    v34 = *(v5 + 16);

    v34(v32, v33, AssociatedTypeWitness);
    *((v7 + v32) & 0xFFFFFFFFFFFFFFFELL) = *((v7 + v33) & 0xFFFFFFFFFFFFFFFELL);
  }

  return a1;
}

void *assignWithCopy for ShapeStyledDisplayList(void *a1, void *a2)
{
  v3 = a2 + 11;
  *a1 = *a2;
  v4 = a1 + 11;

  *(v4 & 0xFFFFFFFFFFFFFFFCLL) = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v21 = *v22;
  *(v21 + 4) = *(v22 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = v24 + 24;
  v26 = *(v24 + 80);
  v27 = (v26 + 5 + v21) & ~v26;
  v28 = (v26 + 5 + v22) & ~v26;
  (*(v24 + 24))(v27, v28, AssociatedTypeWitness);
  *((*(v25 + 40) + 1 + v27) & 0xFFFFFFFFFFFFFFFELL) = *((*(v25 + 40) + 1 + v28) & 0xFFFFFFFFFFFFFFFELL);
  return a1;
}

void *initializeWithTake for ShapeStyledDisplayList(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v21 = *v22;
  *(v21 + 4) = *(v22 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = v24 + 32;
  v26 = *(v24 + 80);
  v27 = (v26 + 5 + v21) & ~v26;
  v28 = (v26 + 5 + v22) & ~v26;
  (*(v24 + 32))(v27, v28, AssociatedTypeWitness);
  *((*(v25 + 32) + 1 + v27) & 0xFFFFFFFFFFFFFFFELL) = *((*(v25 + 32) + 1 + v28) & 0xFFFFFFFFFFFFFFFELL);
  return a1;
}

void *assignWithTake for ShapeStyledDisplayList(void *a1, void *a2)
{
  v3 = a2 + 11;
  *a1 = *a2;
  v4 = a1 + 11;

  *(v4 & 0xFFFFFFFFFFFFFFFCLL) = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v21 = *v22;
  *(v21 + 4) = *(v22 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = v24 + 40;
  v26 = *(v24 + 80);
  v27 = (v26 + 5 + v21) & ~v26;
  v28 = (v26 + 5 + v22) & ~v26;
  (*(v24 + 40))(v27, v28, AssociatedTypeWitness);
  *((*(v25 + 24) + 1 + v27) & 0xFFFFFFFFFFFFFFFELL) = *((*(v25 + 24) + 1 + v28) & 0xFFFFFFFFFFFFFFFELL);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeStyledDisplayList(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_23;
  }

  v10 = ((v9 + ((v8 + 49) & ~v8) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0x7FFFFFFE)
      {
        v17 = *(v5 + 48);

        return v17((((((((((((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 5) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        if ((v16 + 1) >= 2)
        {
          return v16;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 <= 3)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for ShapeStyledDisplayList(_WORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + ((v8 + 49) & ~v8) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (((*(v6 + 64) + ((v8 + 49) & ~v8) + 1) & 0xFFFFFFFE) != 0xFFFFFFFE)
      {
        bzero(a1, v10);
        *a1 = v12;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v10) = v13;
      }

      else
      {
        *(a1 + v10) = v13;
      }
    }

    else if (v11)
    {
      *(a1 + v10) = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    }

    *(a1 + v10) = 0;
  }

  else if (v11)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return;
  }

LABEL_30:
  if (v7 > 0x7FFFFFFE)
  {
    v16 = *(v6 + 56);

    v16((((((((((((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 5) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMonochromeEffect@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI21EnvironmentalModifierPAAE012makeResolvedD033_A1B6966B83442495FADFE75F475ECBE2LL8modifier6inputs6fieldsAA11_GraphValueVy0fD0QzG_AA22_DynamicPropertyBufferVSgtAJyxG_AA01_P6InputsVzAA0rS5CacheV6FieldsVtFZAA21_AlphaThresholdEffectV_Tt4B5(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(47);

    MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD78790);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14 = HIDWORD(a7);
    v15 = a7 & 1;
    outlined copy of DynamicPropertyCache.Fields.Layout();
    if ((v14 & 2) == 0)
    {
      if (one-time initialization token for v4 != -1)
      {
        swift_once();
      }

      v16 = static Semantics.v4;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C)
      {
        v17 = dyld_program_sdk_at_least();
      }

      else
      {
        v17 = static Semantics.forced >= v16;
      }

      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v14 |= v18;
    }

    v19 = *(a4 + 16);
    swift_beginAccess();
    LODWORD(v19) = *(v19 + 16);
    type metadata accessor for PropertyList.Tracker();
    v20 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC8];
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v22;
    v23 = MEMORY[0x1E69E7CC0];
    *(v21 + 40) = v22;
    *(v21 + 48) = v23;
    *(v21 + 56) = 0;
    *(v20 + 16) = v21;
    LOBYTE(v26) = v15;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(a4, a5, a6, v15 | (v14 << 32), a3, v19, v20, 1, &v26);
    outlined consume of DynamicPropertyCache.Fields.Layout();

    v25 = v28;
    *a1 = v26;
    *a2 = v27;
    *(a2 + 16) = v25;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _AlphaThresholdEffect@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance VariableBlurEffect@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMultiplyEffect@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t assignWithCopy for EnvironmentalBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for EnvironmentalBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentalBodyAccessor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EnvironmentalBodyAccessor(uint64_t result, int a2, int a3)
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

uint64_t CoreViewRepresentable.sizeThatFits(_:provider:context:)()
{
  return 0;
}

{
  return 0;
}

void static CoreViewRepresentable.layoutOptions(_:)(void *a1@<X8>)
{
  static CoreViewRepresentable.layoutOptions(_:)(a1);
}

{
  *a1 = 1;
}

__n128 CoreViewRepresentableDynamicPropertyFields.init(base:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u32[1];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  a2[1].n128_u32[1] = v3;
  return result;
}

uint64_t CoreViewRepresentableDynamicPropertyFields.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  return outlined copy of DynamicPropertyCache.Fields.Layout();
}

uint64_t CoreViewRepresentableDynamicPropertyFields.base.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 5);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 20) = v5;
  return result;
}

double CoreViewRepresentableFeatureBufferProxy.base.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

double CoreViewRepresentableFeatureBufferProxy.base.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

__n128 PlatformViewRepresentableContext.values.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  outlined consume of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  *(v1 + 32) = v3;
  return result;
}

uint64_t PlatformViewRepresentableContext.preferenceBridge.getter()
{
  specialized PlatformViewRepresentableContext.preferenceBridge.getter();
}

uint64_t key path getter for PlatformViewRepresentableContext.preferenceBridge : <A>PlatformViewRepresentableContext<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlatformViewRepresentableContext();
  *a1 = specialized PlatformViewRepresentableContext.preferenceBridge.getter();
}

uint64_t PlatformViewRepresentableContext.preferenceBridge.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*PlatformViewRepresentableContext.preferenceBridge.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;

  return PlatformViewRepresentableContext.preferenceBridge.modify;
}

uint64_t PlatformViewRepresentableContext.preferenceBridge.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    *v3 = v2;
  }

  else
  {

    *v3 = v2;
  }

  return result;
}

uint64_t closure #1 in PlatformViewChild.resetPlatformView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v41 = a3;
  v37 = a1;
  v43 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlatformViewChild();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v35 - v10;
  v45 = a5;
  v46 = a4;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for UncheckedSendable();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for UncheckedSendable();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v35 - v20;
  (*(v17 + 16))(&v35 - v20, a1, v16, v19);
  (*(v12 + 16))(v15, v44, v11);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = (v18 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = v46;
  *(v25 + 24) = v26;
  (*(v17 + 32))(v25 + v22, v21, v16);
  (*(v12 + 32))(v25 + v23, v15, v36);
  *(v25 + v24) = v41;
  v28 = v38;
  v27 = v39;
  v29 = v40;
  (*(v39 + 16))(v38);
  v30 = *(v29 + 16);
  Value = AGGraphGetValue();
  v32 = v42;
  (*(*(v30 - 8) + 16))(v42, Value, v30);
  (*(v27 + 8))(v28, v29);
  v33 = v46;
  (*(v45 + 80))(v37, v44, partial apply for closure #1 in closure #1 in PlatformViewChild.resetPlatformView(), v25, v46);
  (*(v43 + 8))(v32, v33);
}

uint64_t static PlatformViewChild.scrapeContent(from:)@<X0>(uint64_t a1@<X8>)
{
  AGGraphGetAttributeInfo();
  v3 = v2;
  result = type metadata accessor for PlatformViewChild();
  v5 = *(v3 + *(result + 80));
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v6 | 0x2000000000000000;
    v8 = *(v3 + 28);
    type metadata accessor for CGPoint(0);
    swift_unknownObjectRetain_n();
    Value = AGGraphGetValue();
    v11 = *Value;
    v10 = Value[1];
    v12 = AGGraphGetValue();
    v13 = *v12;
    v14 = v12[1];
    v15 = AGGraphGetValue();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);

    result = swift_unknownObjectRelease();
    v22 = v20 - (v11 - v18);
    *a1 = 0;
    *(a1 + 4) = v8;
    v23 = v21 - (v10 - v19);
    *(a1 + 8) = v7;
    *(a1 + 16) = v13;
    *(a1 + 24) = v14;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    *(a1 + 48) = v11;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 1;
    v10 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  *(a1 + 56) = v10;
  *(a1 + 64) = v22;
  *(a1 + 72) = v23;
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance PlatformViewChild<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ViewLeafView();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ViewLeafView.makePlatformView()(uint64_t a1)
{
  specialized ViewLeafView.makePlatformView()(a1);

  return swift_unknownObjectRetain();
}

uint64_t ViewLeafView.renderPlatformView(in:size:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6[1] = *(a3 + 16);
  v7 = a2;
  v8 = a1;
  v9 = a4;
  v10 = a5;
  return specialized static Update.syncMain(_:)(partial apply for closure #1 in ViewLeafView.renderPlatformView(in:size:renderer:), v6);
}

void closure #1 in ViewLeafView.renderPlatformView(in:size:renderer:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ViewLeafView();
  swift_beginAccess();
  v9 = *(a1 + 112);
  if (v9 != 2)
  {
    if (v9 == 3)
    {
      _StringGuts.grow(_:)(41);

      v10 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v10);

      MEMORY[0x193ABEDD0](46, 0xE100000000000000);
      specialized static Log.externalWarning(_:)(0xD000000000000026, 0x800000018DD76060);

      specialized GraphicsContext.drawLayer(flags:content:)(0, a5, a2, a3);
    }

    else
    {
      v11 = swift_unknownObjectRetain();
      v12 = CoreViewSpeculativeLayer(v11);
      if (v12)
      {
        v13 = v12;
        if (v9)
        {
          [v12 setBounds_];
          [v13 layoutIfNeeded];
        }

        v14 = v13;
        specialized GraphicsContext.drawLayer(flags:content:)(0, a5, v14, a3);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void ViewLeafView.unifiedLayoutSize(in:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if ((v3 & 1) != 0 || *(a1 + 24))
  {
    ViewLeafView.layoutTraits()(a2, &v16);
    v6 = *(&v16 + 1);
    v7 = v17;
    if (!v3)
    {
      v6 = v2;
    }

    if (!v5)
    {
      v7 = v4;
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 16);
  }

  if (v6 <= 50000.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 50000.0;
  }

  if (v7 <= 50000.0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 50000.0;
  }

  if (v8 == 0.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3;
  }

  if (v9 == 0.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  if (v11)
  {
    v12 = v10 | 2;
  }

  else
  {
    v12 = v10;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 80);
  v15 = swift_checkMetadataState();
  v14(v12, v15, AssociatedConformanceWitness, v8, v9);
}

uint64_t *PlatformArchivedDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = static DisplayList.Version.lastValue++ == -1;
  v4 = static DisplayList.Version.lastValue;
  v6 = swift_allocObject();
  *(v6 + 40) = type metadata accessor for PlatformArchivedDisplayList.Factory();
  *(v6 + 48) = &protocol witness table for PlatformArchivedDisplayList<A>.Factory;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (2 * (((33 * WORD1(v4)) ^ v4) & 0x7FFF)) | 1;
  }

  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = Value[1];
  v11 = AGGraphGetValue();
  v12 = v9 - *v11;
  v13 = v10 - v11[1];
  outlined copy of DisplayList.Content.Value(v6 | 0x8000000000000000);
  v14 = *AGGraphGetValue();
  *v19 = v12;
  *(v19 + 1) = v13;
  v19[1] = v14;
  *&v20 = v4;
  *(&v20 + 1) = v6 | 0x8000000000000000;
  *&v21[16] = 0;
  *v21 = v7;
  *&v21[24] = v3;
  v17[2] = v20;
  v18[0] = v7;
  *(v18 + 12) = *&v21[12];
  v17[0] = v19[0];
  v17[1] = v14;
  outlined init with copy of DisplayList.Item(v19, &v16);
  DisplayList.init(_:)(v17, a1);
  outlined consume of DisplayList.Content.Value(v6 | 0x8000000000000000);
  return outlined destroy of DisplayList.Item(v19);
}

void static Semantics.UnifiedLayout.setTestEnabled(_:)(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  swift_beginAccess();
  static EnableUnifiedLayoutFeature.cachedValue = 2;
  if (a1)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v4 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
    [v2 setValue:isa forKey:v4];
  }

  else
  {
    v4 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
    [v2 removeObjectForKey_];
  }
}

uint64_t initializeBufferWithCopyOfBuffer for CoreViewRepresentableDynamicPropertyFields(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 5);
  return a1;
}

uint64_t assignWithCopy for CoreViewRepresentableDynamicPropertyFields(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *(a1 + 20) = *(a2 + 5);
  return a1;
}

uint64_t assignWithTake for CoreViewRepresentableDynamicPropertyFields(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for CoreViewRepresentableDynamicPropertyFields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CoreViewRepresentableDynamicPropertyFields(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformViewRepresentableContext(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-34 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = AssociatedTypeWitness;
    v11 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v11;
    v12 = a2[2];
    v13 = a2[3];
    v14 = *(a2 + 32);

    outlined copy of RepresentableContextValues.EnvironmentStorage(v12, v13, v14);
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    (*(v5 + 16))((a1 + v6 + 33) & ~v6, (a2 + v6 + 33) & ~v6, v10);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t assignWithCopy for PlatformViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v7, v8, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 24))((*(v11 + 80) + 33 + a1) & ~*(v11 + 80), (*(v11 + 80) + 33 + a2) & ~*(v11 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for PlatformViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((*(v6 + 80) + 33 + a1) & ~*(v6 + 80), (*(v6 + 80) + 33 + a2) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for PlatformViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 40))((*(v9 + 80) + 33 + a1) & ~*(v9 + 80), (*(v9 + 80) + 33 + a2) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewRepresentableContext(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v10 = ((v8 + 33) & ~v8) + v9;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 >= 2)
    {
LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

LABEL_15:
      v15 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v15 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      v17 = v7 + (v10 | v15);
      return (v17 + 1);
    }
  }

LABEL_26:
  if (v6 <= 0x7FFFFFFE)
  {
    v16 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  v18 = *(v5 + 48);

  return v18((a1 + v8 + 33) & ~v8);
}

void storeEnumTagSinglePayload for PlatformViewRepresentableContext(_WORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 33) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *(a1 + v10) = v13;
              }

              else
              {
                *(a1 + v10) = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        *(a1 + 2) = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      *(a1 + v10) = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v11)
  {
    *(a1 + v10) = 0;
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
  if (v7 > 0x7FFFFFFE)
  {
    v17 = *(v6 + 56);

    v17((a1 + v8 + 33) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 32) = 0;
    *a1 = (a2 - 0x7FFFFFFF);
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatformViewChild(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v6 & 0x100000;
  if (v7 > 7 || v9 != 0 || ((((((v8 + ((v7 + 72) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v25;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v26 = *v27;
    v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    v34 = *(v5 + 48);

    if (v34(v33 + 1, 1, v13))
    {
      memcpy(v32 + 1, v33 + 1, v8);
    }

    else
    {
      (*(v5 + 16))(v32 + 1, v33 + 1, v13);
      (*(v5 + 56))(v32 + 1, 0, 1, v13);
    }

    v35 = ((v32 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v33 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v36;
    v37 = ((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v36 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    *((v37 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 11) & 0xFFFFFFFFFFFFFFF8);
    swift_unknownObjectRetain();
  }

  return a1;
}

_DWORD *assignWithCopy for PlatformViewChild(_DWORD *a1, int *a2)
{
  v4 = *a2;
  v3 = a2 + 7;
  *a1 = v4;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *v17;
  v17 += 11;
  *v16 = v18;
  v16 += 11;
  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v20 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;

  v21 = v20 & 0xFFFFFFFFFFFFFFF8;
  *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 8) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v21 + 12) = *((v19 & 0xFFFFFFFFFFFFFFF8) + 12);
  v22 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *(v22 + 12) = *(v23 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 80);
  v27 = ((v26 + 16 + v22) & ~v26);
  v28 = ((v26 + 16 + v23) & ~v26);
  v29 = *(v25 + 48);
  v30 = v29(v27, 1, AssociatedTypeWitness);
  v31 = v29(v28, 1, AssociatedTypeWitness);
  if (v30)
  {
    if (!v31)
    {
      (*(v25 + 16))(v27, v28, AssociatedTypeWitness);
      (*(v25 + 56))(v27, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v32 = *(v25 + 84);
    v33 = *(v25 + 64);
  }

  else
  {
    if (!v31)
    {
      (*(v25 + 24))(v27, v28, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v25 + 8))(v27, AssociatedTypeWitness);
    v32 = *(v25 + 84);
    v33 = *(v25 + 64);
  }

  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = v33 + 1;
  }

  memcpy(v27, v28, v34);
LABEL_12:
  if (*(v25 + 84))
  {
    v35 = *(v25 + 64);
  }

  else
  {
    v35 = *(v25 + 64) + 1;
  }

  v36 = v27 + v35 + 7;
  v37 = v28 + v35 + 7;
  v38 = (v37 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v36 & 0xFFFFFFFFFFFFFFF8) = *(v37 & 0xFFFFFFFFFFFFFFF8);
  v39 = (v36 & 0xFFFFFFFFFFFFFFF8) + 11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v39 & 0xFFFFFFFFFFFFFFF8) = *(v38 & 0xFFFFFFFFFFFFFFF8);
  *(((v39 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v38 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for PlatformViewChild(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 11) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 80);
  v26 = ((v21 + v25 + 16) & ~v25);
  v27 = ((v22 + v25 + 16) & ~v25);
  if ((*(v24 + 48))(v27, 1, AssociatedTypeWitness))
  {
    v28 = *(v24 + 84);
    v29 = *(v24 + 64);
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 + 1;
    }

    memcpy(v26, v27, v30);
  }

  else
  {
    (*(v24 + 32))(v26, v27, AssociatedTypeWitness);
    v32 = *(v24 + 56);
    v31 = v24 + 56;
    v32(v26, 0, 1, AssociatedTypeWitness);
    v28 = *(v31 + 28);
    v29 = *(v31 + 8);
  }

  if (v28)
  {
    v33 = v29;
  }

  else
  {
    v33 = v29 + 1;
  }

  v34 = ((v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v36 = ((v34 + 11) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  *((v36 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v37 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for PlatformViewChild(_DWORD *a1, int *a2)
{
  v4 = *a2;
  v3 = a2 + 7;
  *a1 = v4;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *v17;
  v17 += 11;
  *v16 = v18;
  v19 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v19 = *(v17 & 0xFFFFFFFFFFFFFFF8);

  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *(v20 & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 8) = *((v20 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v21 + 12) = *((v20 & 0xFFFFFFFFFFFFFFF8) + 12);
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *(v22 + 12) = *(v23 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 80);
  v27 = ((v26 + 16 + v22) & ~v26);
  v28 = ((v26 + 16 + v23) & ~v26);
  v29 = *(v25 + 48);
  v30 = v29(v27, 1, AssociatedTypeWitness);
  v31 = v29(v28, 1, AssociatedTypeWitness);
  if (v30)
  {
    if (!v31)
    {
      (*(v25 + 32))(v27, v28, AssociatedTypeWitness);
      (*(v25 + 56))(v27, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v32 = *(v25 + 84);
    v33 = *(v25 + 64);
  }

  else
  {
    if (!v31)
    {
      (*(v25 + 40))(v27, v28, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v25 + 8))(v27, AssociatedTypeWitness);
    v32 = *(v25 + 84);
    v33 = *(v25 + 64);
  }

  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = v33 + 1;
  }

  memcpy(v27, v28, v34);
LABEL_12:
  if (*(v25 + 84))
  {
    v35 = *(v25 + 64);
  }

  else
  {
    v35 = *(v25 + 64) + 1;
  }

  v36 = v27 + v35 + 7;
  v37 = (v28 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *v37;
  v37 += 11;
  *(v36 & 0xFFFFFFFFFFFFFFF8) = v38;
  v39 = (v36 & 0xFFFFFFFFFFFFFFF8) + 11;
  swift_unknownObjectRelease();
  *(v39 & 0xFFFFFFFFFFFFFFF8) = *(v37 & 0xFFFFFFFFFFFFFFF8);
  *(((v39 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v37 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewChild(_DWORD *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = 7;
  if (!v6)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((((v11 + v10 + ((v9 + 72) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v20 = ((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v22 = (*(v5 + 48))((((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *v20;
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v8 + (v13 | v19) + 1;
}

void storeEnumTagSinglePayload for PlatformViewChild(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((((((v12 + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((((((v12 + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((((((v12 + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v12 + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v11 + a2;
      bzero(a1, ((((((v12 + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v13) = v16;
      }

      else
      {
        *(a1 + v13) = v16;
      }
    }

    else if (v6)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v13) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v18 = ((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v20 = ((((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v9 >= a2)
    {
      v24 = *(v7 + 56);

      v24((((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10, a2 + 1);
    }

    else
    {
      if (v12 <= 3)
      {
        v21 = ~(-1 << (8 * v12));
      }

      else
      {
        v21 = -1;
      }

      if (v12)
      {
        v22 = v21 & (~v9 + a2);
        if (v12 <= 3)
        {
          v23 = v12;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v12);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }
}

uint64_t assignWithTake for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 40))((v7 + *(v10 + 80) + 8) & ~*(v10 + 80), (v8 + *(v10 + 80) + 8) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewLeafView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
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

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for ViewLeafView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
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

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 >= 4)
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v15)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
LABEL_14:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

LABEL_51:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
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

  else if (v16)
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
  if (v9 == v14)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v12 + 8) & ~v12, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatformViewDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatformViewDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 34) = v3;
  return result;
}

_DWORD *assignWithCopy for InvalidatableLeafLayoutComputer(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  return a1;
}

void *initializeWithTake for InvalidatableLeafLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  return a1;
}

void *assignWithTake for InvalidatableLeafLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  return a1;
}

uint64_t assignWithCopy for LeafLayoutEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in PlatformViewChild.resetPlatformView()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for UncheckedSendable() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  swift_getAssociatedTypeWitness();
  v6 = *(type metadata accessor for UncheckedSendable() - 8);
  (*(v1 + 88))(v0 + v4, v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), v2, v1);
  v7 = type metadata accessor for PlatformViewChild();
  return PlatformViewChild.reset()(v7);
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = v8 & 0xF8 | v11 | 7;
  v13 = *(v6 + 64);
  v14 = ((v11 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v10 + 64);
  if ((v8 & 0xF8 | v11) > 7 || ((*(v10 + 80) | v8) & 0x100000) != 0 || ((((v14 + ((v12 + 161) & ~v12) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = v17 + ((v12 + 16) & ~v12);
  }

  else
  {
    v18 = AssociatedTypeWitness;
    v19 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v19;
    *(a1 + 160) = *(a2 + 160);
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
    v21 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v21;
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    v23 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v23;
    v24 = a2 & 0xFFFFFFFFFFFFFFF8;
    (*(v7 + 16))((a1 & 0xFFFFFFFFFFFFFFF8) + 168, (a2 & 0xFFFFFFFFFFFFFFF8) + 168, v5);
    v25 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v13 + 175) & 0xFFFFFFFFFFFFFFF8);
    v26 = (a2 & 0xFFFFFFFFFFFFFFF8) + v13 + 175;
    v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v25 = *(v26 & 0xFFFFFFFFFFFFFFF8);
    v28 = *(v10 + 16);
    swift_unknownObjectRetain();
    v28(v25 + 1, v27, v18);
    v29 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 171) & 0xFFFFFFFFFFFFFFFCLL);
    v30 = ((v24 + v14 + 171) & 0xFFFFFFFFFFFFFFFCLL);
    *v29 = *v30;
    *((v29 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v30 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return a1;
}

uint64_t assignWithCopy for PlatformViewLayoutEngine(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *a1 = v5;
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v12;
  *(a1 + 144) = v13;
  *(a1 + 112) = v11;
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 80);
  v20 = v16 | v19 | 7;
  v21 = (v20 + 161 + a1) & ~v20;
  v22 = (a2 + v20 + 161) & ~v20;
  (*(v15 + 24))(v21, v22, v14);
  v23 = *(v15 + 64) + 7;
  v24 = ((v23 + v21) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  (*(v18 + 24))((v24 + v19 + 8) & ~v19, (v25 + v19 + 8) & ~v19, AssociatedTypeWitness);
  v26 = *(v18 + 64) + ((v19 + 8 + (v23 & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 3;
  v27 = ((v26 + v21) & 0xFFFFFFFFFFFFFFFCLL);
  v28 = ((v26 + v22) & 0xFFFFFFFFFFFFFFFCLL);
  *v27 = *v28;
  *((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v28 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  *(a1 + 112) = v6;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v11 | v14 | 7;
  v16 = (v15 + 161 + a1) & ~v15;
  v17 = (v15 + 161 + a2) & ~v15;
  (*(v10 + 40))(v16, v17, v9);
  v18 = *(v10 + 64) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  swift_unknownObjectRelease();
  (*(v13 + 40))((v19 + v14 + 8) & ~v14, (v20 + v14 + 8) & ~v14, AssociatedTypeWitness);
  v21 = *(v13 + 64) + ((v14 + 8 + (v18 & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 3;
  v22 = ((v21 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = ((v21 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v23;
  *((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewLayoutEngine(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 80) & 0xF8 | v10 | 7;
  v14 = *(v6 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((*(*(AssociatedTypeWitness - 8) + 64) - ((-9 - ((v14 & 0xFFFFFFFFFFFFFFF8) + v10)) | v10) - ((-162 - v13) | v13) + 1) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v16 = v15 & 0xFFFFFFFC;
  if ((v15 & 0xFFFFFFFC) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = (a1 + v13 + 161) & ~v13;
  if (v7 == v12)
  {
    v25 = *(v6 + 48);

    return v25(v24, v7, v5);
  }

  else
  {
    v26 = ((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) != 0)
    {
      v28 = *(v9 + 48);

      return v28((v26 + v10 + 8) & ~v10);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void storeEnumTagSinglePayload for PlatformViewLayoutEngine(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = *(v8 + 64);
  if (v9 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80) & 0xF8 | v12 | 7;
  v17 = v13 + 7;
  v18 = ((((*(*(AssociatedTypeWitness - 8) + 64) - ((-9 - (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v12)) | v12) - ((-162 - v16) | v16) + 1) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(*(AssociatedTypeWitness - 8) + 64) - ((-9 - (((v13 + 7) & 0xFFFFFFF8) + v12)) | v12) - ((-162 - v16) | v16) + 1) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v19 = a3 - v15 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v25 = (a1 + v16 + 161) & ~v16;
      if (v9 == v15)
      {
        v26 = *(v30 + 56);

        v26(v25, a2, v9, v7);
      }

      else
      {
        v27 = ((v17 + v25) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v29 = *(v11 + 56);

          v29((v27 + v12 + 8) & ~v12, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *v27 = v28;
        }
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v15 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t Gradient.fallbackColor.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

BOOL ResolvedGradient.isClear.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (*v0 + 44);
  v3 = 1;
  v4 = 1 - v1;
  do
  {
    if (v3)
    {
      result = *v2 == 0.0;
      v3 = *v2 == 0.0;
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      v3 = 0;
      if (!v4)
      {
        return result;
      }
    }

    ++v4;
    v2 += 12;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

BOOL ResolvedGradient.isOpaque.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (*v0 + 44);
  LOBYTE(result) = 1;
  v4 = 1 - v1;
  do
  {
    if (result)
    {
      result = *v2 == 1.0;
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v4)
      {
        return result;
      }
    }

    ++v4;
    v2 += 12;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

uint64_t ResolvedGradient.animatableData.setter(uint64_t *a1)
{
  v2 = *a1;
  v30 = *(a1 + 8);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v3 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
    }
  }

  else if (static Semantics.forced < v3)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 2), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    v6 = *v1;
  }

  else
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16ResolvedGradientV4StopV_Tt1g5Tm(0, *(v5 + 3) >> 1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>);

    *v1 = v6;
  }

  v7 = *(v2 + 16);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  if (!v8 || v7 > *(v6 + 3) >> 1)
  {
    if (*(v6 + 2) <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = *(v6 + 2);
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8, v9, 0, v6);
  }

  *v1 = v6;
  v10 = *(v2 + 16);
  if (!v10)
  {
  }

  v11 = *(v6 + 2);

  v12 = 0;
  v13 = 48 * v11;
  do
  {
    v14 = *(v2 + v12 + 48);
    v16 = *(v2 + v12 + 56);
    v15 = *(v2 + v12 + 64);
    v17 = *(v2 + v12 + 72);
    v32 = v30;
    v31 = *(v2 + v12 + 32);
    v18 = ResolvedGradient.ColorSpace.convertOut(_:)(&v31);
    v22 = *(v6 + 3);
    if (v11 >= v22 >> 1)
    {
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v11 + 1, 1, v6);
      v21 = v27;
      v20 = v26;
      v19 = v25;
      v18 = v24;
      v6 = v28;
    }

    *(v6 + 2) = v11 + 1;
    v23 = &v6[v13 + v12];
    v23[8] = v18;
    *(v23 + 9) = v19;
    *(v23 + 10) = v20;
    *(v23 + 11) = v21;
    *(v23 + 6) = v14;
    *(v23 + 7) = v16;
    *(v23 + 8) = v15;
    v12 += 48;
    ++v11;
    *(v23 + 72) = v17;
    --v10;
  }

  while (v10);
  result = swift_bridgeObjectRelease_n();
  *v1 = v6;
  return result;
}

SwiftUI::ResolvedGradient __swiftcall ResolvedGradient.init(stops:colorSpace:headroom:)(Swift::OpaquePointer stops, SwiftUI::ResolvedGradient::ColorSpace colorSpace, Swift::Float_optional *headroom)
{
  v4 = *colorSpace;
  *v3 = stops;
  *(v3 + 8) = v4;
  *(v3 + 12) = headroom;
  *(v3 + 16) = BYTE4(headroom) & 1;
  result.headroom.is_nil = headroom;
  result.stops = stops;
  result.colorSpace = colorSpace;
  return result;
}

uint64_t Gradient.constantColor.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
  }

  if (!v1)
  {
    if (one-time initialization token for clear != -1)
    {
      swift_once();
    }
  }

  return 0;
}

uint64_t Gradient.Stop.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Gradient.Stop.resolve(in:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  v7 = *a2;
  (*(*a3 + 120))(&v8, &v7);
  *a1 = v8;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return v9;
}

__n128 ResolvedGradient.Stop.init(color:location:interpolation:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, double a7@<D4>)
{
  v7 = a1[1].n128_u8[0];
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 12) = a6;
  *(a2 + 16) = a7;
  result = *a1;
  *(a2 + 24) = *a1;
  *(a2 + 40) = v7;
  return result;
}

uint64_t Gradient.stops.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Gradient.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AC11A0](v4);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      v9 = v8;
      v10 = *(*v7 + 152);

      v10(a1);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v9;
      }

      MEMORY[0x193AC11E0](*&v11);

      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int Gradient.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Gradient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Gradient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t Gradient.Stop.hash(into:)(double a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 152))();
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  return MEMORY[0x193AC11E0](*&v4);
}

Swift::Int Gradient.Stop.hashValue.getter(uint64_t a1, double a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v6);
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Gradient.Stop()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(**&v1 + 152))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Gradient.Stop()
{
  v1 = v0[1];
  (*(**v0 + 152))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Gradient.Stop()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(**&v1 + 152))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t Gradient.reversed.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = (a1 + 16 * v1 + 24);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);
      v9 = v8 + 1;

      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v16 + 16) = v9;
      v10 = v16 + 16 * v8;
      *(v10 + 32) = v5;
      *(v10 + 40) = 1.0 - v6;
      v4 -= 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      return v3;
    }
  }

  v11 = *(v3 + 40);
  v12 = 56;
  while (--v9)
  {
    v13 = *(v3 + v12);
    v12 += 16;
    v14 = v13 < v11;
    v11 = v13;
    if (v14)
    {
      static os_log_type_t.fault.getter();
      if (one-time initialization token for runtimeIssuesLog != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      return v3;
    }
  }

  return v3;
}

void ResolvedGradient.Stop.color.setter(float a1, float a2, float a3, float a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 ResolvedGradient.Stop.interpolation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ResolvedGradient.Stop.interpolation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t static ResolvedGradient.ColorSpace.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ResolvedGradient.ColorSpace.default;
  return result;
}

SwiftUI::ResolvedGradient::ColorSpace_optional __swiftcall ResolvedGradient.ColorSpace.init(rawValue:)(SwiftUI::ResolvedGradient::ColorSpace_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_ResolvedGradient_ColorSpace_unknownDefault)
  {
    value = SwiftUI_ResolvedGradient_ColorSpace_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvedGradient.ColorSpace()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedGradient.ColorSpace()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t ResolvedGradient.stops.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ResolvedGradient.headroom.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t ResolvedGradient.hasInterpolations.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (*v0 + 72);
  v4 = 1 - v1;
  do
  {
    if (v2)
    {
      v2 = 1;
      if (!v4)
      {
        return v2 & 1;
      }
    }

    else
    {
      v2 = *v3 ^ 1;
      if (!v4)
      {
        return v2 & 1;
      }
    }

    ++v4;
    v3 += 48;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

uint64_t ResolvedGradient.interpolationsCount.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  for (i = (*v0 + 72); ; i += 48)
  {
    v4 = (*i & 1) == 0;
    v5 = __OFADD__(result, v4);
    result += v4;
    if (v5)
    {
      break;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ResolvedGradient.multiplyOpacity(by:)(Swift::Float by)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v3 - 1;
      if (v3 == 1)
      {
        goto LABEL_6;
      }

      v9 = !is_mul_ok(v6, 0x30uLL);
      if (&v2[48 * v6 + 44] < v2 + 44)
      {
        goto LABEL_6;
      }

      if (v9)
      {
        goto LABEL_6;
      }

      v5 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v10 = (v2 + 92);
      v11 = v3 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v12 = *v10 * by;
        *(v10 - 12) = *(v10 - 12) * by;
        *v10 = v12;
        v10 += 24;
        v11 -= 2;
      }

      while (v11);
      if (v3 != v5)
      {
LABEL_6:
        v7 = v3 - v5;
        v8 = &v2[48 * v5 + 44];
        do
        {
          *v8 = *v8 * by;
          v8 += 12;
          --v7;
        }

        while (v7);
      }

      *v1 = v2;
    }
  }
}

void ResolvedGradient.encode(to:)(int64_t isUniquelyReferenced_nonNull_native)
{
  v3 = v1;
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = *v3;
  v66 = *(v3 + 8);
  v6 = *(v3 + 3);
  v67 = *(v3 + 16);
  v69 = *(*v3 + 16);
  if (v69)
  {
    v7 = 0;
    v8 = v5 + 36;
    v68 = *v3;
    do
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v10 = *(v8 - 4);
      v9 = *v8;
      v12 = *(v8 + 4);
      v11 = *(v8 + 8);
      v13 = *(v8 + 12);
      v14 = *(v8 + 36);
      v15 = v4[1];
      v16 = v4[2];
      v70 = *(v8 + 20);
      v71 = *(v8 + 28);
      if (v15 >= v16)
      {
        v51 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
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
          return;
        }

        if (v16 < v51)
        {
          v52 = ProtobufEncoder.growBufferSlow(to:)(v51);
        }

        else
        {
          v4[1] = v51;
          v52 = (*v4 + v15);
        }

        *v52 = 10;
        v17 = v4[1];
      }

      else
      {
        *(*v4 + v15) = 10;
        v17 = v15 + 1;
        v4[1] = v15 + 1;
      }

      v18 = v4[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + 8 * v20 + 32) = v17;
      v4[3] = v18;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_117;
      }

      v4[1] = v21;
      v22 = v4[2];
      if (v21 >= v22)
      {
        v53 = v17 + 2;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_128;
        }

        if (v22 < v53)
        {
          v54 = ProtobufEncoder.growBufferSlow(to:)(v53);
        }

        else
        {
          v4[1] = v53;
          v54 = (*v4 + v21);
        }

        *v54 = 10;
        v23 = v4[1];
      }

      else
      {
        *(*v4 + v21) = 10;
        v23 = v17 + 2;
        v4[1] = v21 + 1;
      }

      v24 = v4[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      if (v26 >= v25 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      *(v24 + 16) = v26 + 1;
      *(v24 + 8 * v26 + 32) = v23;
      v4[3] = v24;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_118;
      }

      v4[1] = v27;
      if (v10 == 0.0)
      {
        if (v9 == 0.0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = v4[2];
        if (v27 >= v28)
        {
          v57 = v23 + 2;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_130;
          }

          if (v28 < v57)
          {
            v58 = ProtobufEncoder.growBufferSlow(to:)(v57);
          }

          else
          {
            v4[1] = v57;
            v58 = (*v4 + v27);
          }

          *v58 = 13;
          v29 = v4[1];
          isUniquelyReferenced_nonNull_native = v29 + 4;
          if (__OFADD__(v29, 4))
          {
            goto LABEL_119;
          }
        }

        else
        {
          *(*v4 + v27) = 13;
          v29 = v23 + 2;
          v4[1] = v23 + 2;
          isUniquelyReferenced_nonNull_native = v23 + 6;
          if (__OFADD__(v23 + 2, 4))
          {
            goto LABEL_119;
          }
        }

        if (v4[2] < isUniquelyReferenced_nonNull_native)
        {
          v30 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v4[1] = isUniquelyReferenced_nonNull_native;
          v30 = (*v4 + v29);
        }

        *v30 = v10;
        if (v9 == 0.0)
        {
LABEL_21:
          if (v12 != 0.0)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      v31 = v4[1];
      v32 = v4[2];
      if (v31 >= v32)
      {
        v59 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_131;
        }

        if (v32 < v59)
        {
          v60 = ProtobufEncoder.growBufferSlow(to:)(v59);
        }

        else
        {
          v4[1] = v59;
          v60 = (*v4 + v31);
        }

        *v60 = 21;
        v33 = v4[1];
        isUniquelyReferenced_nonNull_native = v33 + 4;
        if (__OFADD__(v33, 4))
        {
          goto LABEL_120;
        }
      }

      else
      {
        *(*v4 + v31) = 21;
        v33 = v31 + 1;
        v4[1] = v33;
        isUniquelyReferenced_nonNull_native = v33 + 4;
        if (__OFADD__(v33, 4))
        {
          goto LABEL_120;
        }
      }

      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        v34 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v4[1] = isUniquelyReferenced_nonNull_native;
        v34 = (*v4 + v33);
      }

      *v34 = v9;
      if (v12 != 0.0)
      {
LABEL_34:
        v35 = v4[1];
        v36 = v4[2];
        if (v35 >= v36)
        {
          v61 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_132;
          }

          if (v36 < v61)
          {
            v62 = ProtobufEncoder.growBufferSlow(to:)(v61);
          }

          else
          {
            v4[1] = v61;
            v62 = (*v4 + v35);
          }

          *v62 = 29;
          v37 = v4[1];
          isUniquelyReferenced_nonNull_native = v37 + 4;
          if (__OFADD__(v37, 4))
          {
            goto LABEL_121;
          }
        }

        else
        {
          *(*v4 + v35) = 29;
          v37 = v35 + 1;
          v4[1] = v37;
          isUniquelyReferenced_nonNull_native = v37 + 4;
          if (__OFADD__(v37, 4))
          {
            goto LABEL_121;
          }
        }

        if (v4[2] < isUniquelyReferenced_nonNull_native)
        {
          v38 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v4[1] = isUniquelyReferenced_nonNull_native;
          v38 = (*v4 + v37);
        }

        *v38 = v12;
        if (v11 == 1.0)
        {
          goto LABEL_44;
        }

        goto LABEL_39;
      }

LABEL_22:
      if (v11 == 1.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v39 = v4[1];
      v40 = v4[2];
      if (v39 >= v40)
      {
        v63 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_133;
        }

        if (v40 < v63)
        {
          v64 = ProtobufEncoder.growBufferSlow(to:)(v63);
        }

        else
        {
          v4[1] = v63;
          v64 = (*v4 + v39);
        }

        *v64 = 37;
        v41 = v4[1];
        isUniquelyReferenced_nonNull_native = v41 + 4;
        if (__OFADD__(v41, 4))
        {
          goto LABEL_122;
        }
      }

      else
      {
        *(*v4 + v39) = 37;
        v41 = v39 + 1;
        v4[1] = v41;
        isUniquelyReferenced_nonNull_native = v41 + 4;
        if (__OFADD__(v41, 4))
        {
          goto LABEL_122;
        }
      }

      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        v42 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v4[1] = isUniquelyReferenced_nonNull_native;
        v42 = (*v4 + v41);
      }

      *v42 = v11;
LABEL_44:
      ProtobufEncoder.endLengthDelimited()();
      if (v13 != 0.0)
      {
        v43 = fabs(v13);
        if (v43 >= 65536.0)
        {
          v44 = 17;
        }

        else
        {
          v44 = 21;
        }

        ProtobufEncoder.encodeVarint(_:)(v44);
        if (v43 >= 65536.0)
        {
          v47 = v4[1];
          isUniquelyReferenced_nonNull_native = v47 + 8;
          if (__OFADD__(v47, 8))
          {
            goto LABEL_123;
          }

          if (v4[2] < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v13;
          }

          else
          {
            v4[1] = isUniquelyReferenced_nonNull_native;
            *(*v4 + v47) = v13;
          }
        }

        else
        {
          v45 = v4[1];
          isUniquelyReferenced_nonNull_native = v45 + 4;
          if (__OFADD__(v45, 4))
          {
            goto LABEL_124;
          }

          v46 = v13;
          if (v4[2] < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v46;
          }

          else
          {
            v4[1] = isUniquelyReferenced_nonNull_native;
            *(*v4 + v45) = v46;
          }
        }
      }

      if ((v14 & 1) == 0)
      {
        v48 = v4[1];
        v49 = v4[2];
        if (v48 >= v49)
        {
          v55 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_129;
          }

          v50 = v71;
          if (v49 < v55)
          {
            v56 = ProtobufEncoder.growBufferSlow(to:)(v55);
            v50 = v71;
          }

          else
          {
            v4[1] = v55;
            v56 = (*v4 + v48);
          }

          *v56 = 26;
        }

        else
        {
          *(*v4 + v48) = 26;
          v4[1] = v48 + 1;
          v50 = v71;
        }

        specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v70, *(&v70 + 1), *&v50, *(&v50 + 1));
        if (v2)
        {
          return;
        }
      }

      ++v7;
      isUniquelyReferenced_nonNull_native = ProtobufEncoder.endLengthDelimited()();
      v8 += 48;
      v5 = v68;
    }

    while (v69 != v7);
  }

  if (v66)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v66);
  }

  if ((v67 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v65 = v4[1];
    isUniquelyReferenced_nonNull_native = v65 + 4;
    if (__OFADD__(v65, 4))
    {
LABEL_125:
      __break(1u);
    }

    else if (v4[2] >= isUniquelyReferenced_nonNull_native)
    {
      v4[1] = isUniquelyReferenced_nonNull_native;
      *(*v4 + v65) = v6;
      return;
    }

    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v6;
  }
}

double *ResolvedGradient.Stop.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 4);
  v7 = *(v3 + 8);
  v8 = *(v3 + 12);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  v10 = *(v3 + 32);
  v12 = *(v3 + 40);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6, v7, v8);
  if (!v2)
  {
    if (v9 == 0.0)
    {
      goto LABEL_13;
    }

    v14 = fabs(v9);
    if (v14 >= 65536.0)
    {
      v15 = 17;
    }

    else
    {
      v15 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v15);
    if (v14 >= 65536.0)
    {
      v17 = a1[1];
      result = (v17 + 8);
      if (!__OFADD__(v17, 8))
      {
        if (a1[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v9;
        }

        else
        {
          a1[1] = result;
          *(*a1 + v17) = v9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = a1[1];
      result = (v16 + 4);
      if (!__OFADD__(v16, 4))
      {
        *&v14 = v9;
        if (a1[2] >= result)
        {
          a1[1] = result;
          *(*a1 + v16) = LODWORD(v14);
          goto LABEL_13;
        }

LABEL_18:
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = LODWORD(v14);
LABEL_13:
        if ((v12 & 1) == 0)
        {
          ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
          return specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v11, *(&v11 + 1), *&v10, *(&v10 + 1));
        }

        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t key path getter for ResolvedGradient.animatableData : ResolvedGradient@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *(a1 + 16);
  v14 = *a1;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  result = ResolvedGradient.animatableData.getter(&v10);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a2 = v10;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t (*ResolvedGradient.animatableData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  ResolvedGradient.animatableData.getter(a1);
  return ResolvedGradient.animatableData.modify;
}

uint64_t ResolvedGradient.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (a2)
  {
    v6 = *a1;
    v7 = v2;
    v8 = v3;
    v9 = v4;

    ResolvedGradient.animatableData.setter(&v6);
  }

  else
  {
    v6 = *a1;
    v7 = v2;
    v8 = v3;
    v9 = v4;
    return ResolvedGradient.animatableData.setter(&v6);
  }
}

void (*protocol witness for Animatable.animatableData.modify in conformance ResolvedGradient(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ResolvedGradient.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void static ResolvedGradientVector.zero.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

uint64_t ResolvedGradientVector.add(_:scaledBy:)(uint64_t result, double a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *v2;
  v10 = *(*v2 + 16);
  if (!v10)
  {
    if (a2 == 1.0)
    {

      *v84 = v3;
      *(v84 + 8) = v6;
      *(v84 + 12) = v7;
      *(v84 + 16) = v8;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v4 > *(v9 + 24) >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v4, 0, v9);
        v9 = result;
      }

      v67 = v84;
      *v84 = v9;
      v68 = *(v3 + 16);
      if (v68)
      {
        v69 = 0;
        *&v66 = a2;
        v70 = *(v9 + 16);
        v71 = 48 * v70;
        do
        {
          v72 = *(v3 + v69 + 32);
          v73 = *(v3 + v69 + 48);
          v90[1] = 1;
          v74 = *(v9 + 24);
          v75 = v70 + 1;
          if (v70 >= v74 >> 1)
          {
            v87 = v72;
            v89 = v66;
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v70 + 1, 1, v9);
            v72 = v87;
            v66 = v89;
            v67 = v84;
            v9 = result;
          }

          *(v9 + 16) = v75;
          v76 = (v9 + v71 + v69);
          v76[2] = vmulq_n_f32(v72, *&v66);
          v76[3].i64[0] = v73;
          v76[3].i64[1] = 0;
          v76[4].i64[0] = 0;
          v76[4].i8[8] = 1;
          v69 += 48;
          v70 = v75;
          --v68;
        }

        while (v68);
        *v67 = v9;
      }

      *(v67 + 8) = v6;
      *(v67 + 12) = v7;
      *(v67 + 16) = v8;
    }

    return result;
  }

  v90[0] = *(result + 8);
  ResolvedGradientVector.setColorSpace(_:)(v90);
  if (v10 != v4 || (v11 = *v2, result = specialized Sequence.reduce<A>(_:_:)(1, 0, *(*v2 + 16), v2, v3), (result & 1) == 0))
  {
    if (v4 <= v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0, MEMORY[0x1E69E7CC0]);
    v27 = result;
    v28 = 0;
    v29 = 0;
    v30 = v3 + 48;
    v31 = (v3 + 32);
    v32 = 48 * v10;
    v33 = 48 * v4;
    v34 = v3 - 16;
    *&v35 = a2;
    v36 = v84;
    if (v10 <= 0)
    {
      goto LABEL_38;
    }

LABEL_24:
    if ((v29 & 0x8000000000000000) == 0)
    {
      if (v29 >= (*v36)[1].i64[0])
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v37 = *(*v36)[3 * v29 + 3].i64;
      if (v28 >= v4)
      {
        v38 = 0;
        v39 = INFINITY;
        v40 = v37 < INFINITY;
        if (v37 == INFINITY)
        {
          goto LABEL_43;
        }

LABEL_28:
        if (!v40)
        {
          if (v28 < *(v3 + 16))
          {
            v49 = v31[3 * v28];
            v52 = *v36;
            v53 = (*v36)[1].u64[0];
            if (v29 >= 1)
            {
              if (v29 < v10)
              {
                if (v29 <= v53)
                {
                  if (v29 < v53)
                  {
                    i64 = v52[3 * v29].i64;
                    v56 = *i64;
                    v55 = i64 + 4;
                    v57 = v56;
                    v58 = v55[2];
                    v42 = *(v55 - 6);
                    if (v56 != v58)
                    {
                      v59 = (v39 - v57) / (v58 - v57);
                      v42 = vaddq_f32(vmulq_n_f32(v42, 1.0 - v59), vmulq_n_f32(*v55, v59));
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_99;
                }

                goto LABEL_95;
              }

              if (v10 > v53)
              {
LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              v42 = *(v52 + v32 - 16);
LABEL_60:
              ++v28;
              v44 = 1;
              v43 = 0uLL;
              goto LABEL_63;
            }

            if (v53)
            {
              v42 = v52[2];
              goto LABEL_60;
            }

            goto LABEL_93;
          }

          goto LABEL_90;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          if (v29 < (*v36)[1].i64[0])
          {
            v41 = &(*v36)[3 * v29];
            v42 = *(v41 + 32);
            v39 = *(v41 + 48);
            v43 = *(v41 + 56);
            v44 = *(v41 + 72);
            ++v29;
            v45 = *(v3 + 16);
            if (v28 >= 1)
            {
              if (v38)
              {
                if (v28 <= v45)
                {
                  if (v28 < v45)
                  {
                    v46 = v31[3 * v28].i64;
                    v47 = *(v46 - 4);
                    v48 = v46[2];
                    v49 = *(v46 - 6);
                    if (v47 != v48)
                    {
                      v50 = (v37 - v47) / (v48 - v47);
                      v49 = vaddq_f32(vmulq_n_f32(v49, 1.0 - v50), vmulq_n_f32(*v46, v50));
                    }

                    goto LABEL_63;
                  }

                  goto LABEL_100;
                }

                goto LABEL_98;
              }

              if (v4 <= v45)
              {
                v49 = *(v34 + v33);
                goto LABEL_63;
              }

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
              return result;
            }

            if (v45)
            {
              v49 = *v31;
              goto LABEL_63;
            }

            goto LABEL_94;
          }

          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      while ((v28 & 0x8000000000000000) == 0)
      {
        if (v28 >= *(v3 + 16))
        {
          goto LABEL_83;
        }

        v39 = *(v30 + 48 * v28);
        v38 = 1;
        v40 = v37 < v39;
        if (v37 != v39)
        {
          goto LABEL_28;
        }

LABEL_43:
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if (v29 >= (*v36)[1].i64[0])
        {
          goto LABEL_85;
        }

        if (v28 >= *(v3 + 16))
        {
          goto LABEL_86;
        }

        v51 = &(*v36)[3 * v29++];
        v44 = *(v51 + 72);
        v43 = *(v51 + 56);
        v39 = *(v51 + 48);
        v42 = *(v51 + 32);
        v49 = v31[3 * v28++];
LABEL_63:
        v61 = *(v27 + 16);
        v60 = *(v27 + 24);
        if (v61 >= v60 >> 1)
        {
          v63 = v27;
          v82 = v30;
          v83 = v32;
          v86 = v31;
          v64 = v33;
          v81 = v34;
          v79 = v42;
          v80 = v35;
          v77 = v43;
          v78 = v49;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v63);
          v43 = v77;
          v49 = v78;
          v42 = v79;
          v35 = v80;
          v34 = v81;
          v30 = v82;
          v33 = v64;
          v32 = v83;
          v36 = v84;
          v31 = v86;
          v27 = result;
        }

        *(v27 + 16) = v61 + 1;
        v62 = v27 + 48 * v61;
        *(v62 + 32) = vaddq_f32(v42, vmulq_n_f32(v49, *&v35));
        *(v62 + 48) = v39;
        *(v62 + 56) = v43;
        *(v62 + 72) = v44;
        if (v29 < v10)
        {
          goto LABEL_24;
        }

LABEL_38:
        if (v28 >= v4)
        {
          v65 = v36;

          *v65 = v27;
          return result;
        }

        v37 = INFINITY;
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    __break(1u);
    goto LABEL_88;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    if (v12 <= *(v3 + 16))
    {
      v13 = 0;
      v14 = a2;
      v85 = v14;
      for (i = 72; ; i += 48)
      {
        v88 = *(v3 + i - 40);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
          v11 = result;
        }

        if (v13 >= *(v11 + 16))
        {
          goto LABEL_92;
        }

        v21 = v11 + i;
        *(v11 + i - 40) = vaddq_f32(vmulq_n_f32(v88, v85), *(v11 + i - 40));
        if (*(v11 + i) == 1)
        {
          if (*(v3 + i))
          {
            goto LABEL_11;
          }

          v16 = (v11 + i - 8);
          v22 = 1.0;
          v23 = 0.0;
          v24 = 0.0;
          v25 = 1.0;
        }

        else
        {
          v16 = (v21 - 8);
          v23 = *(v21 - 16);
          v24 = *(v21 - 12);
          LODWORD(v22) = *(v21 - 8);
          LODWORD(v25) = HIDWORD(*(v21 - 8));
          if (*(v3 + i))
          {
            v17 = 0.0;
            v19 = 1.0;
            v20 = 1.0;
            v18 = 0.0;
            goto LABEL_10;
          }

          v16 = (v11 + 48 * v13 + 64);
        }

        v18 = *(v3 + i - 16);
        v17 = *(v3 + i - 12);
        v20 = *(v3 + i - 8);
        v19 = *(v3 + i - 4);
LABEL_10:
        *(v21 - 16) = COERCE_UNSIGNED_INT((v23 * v85) + v18) | (COERCE_UNSIGNED_INT((v24 * v85) + v17) << 32);
        *v16 = COERCE_UNSIGNED_INT((v22 * v85) + v20) | (COERCE_UNSIGNED_INT((v25 * v85) + v19) << 32);
        *(v11 + i) = 0;
LABEL_11:
        if (v12 == ++v13)
        {
          *v84 = v11;
          return result;
        }
      }
    }

    goto LABEL_101;
  }

  return result;
}

uint64_t static ResolvedGradientVector.+= infix(_:_:)(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 3);
  v5 = *(a3 + 16);
  v7 = *a3;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return ResolvedGradientVector.add(_:scaledBy:)(&v7, a1);
}

void ResolvedGradientVector.setColorSpace(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v1[8] != v2)
  {
    v3 = *v1;
    v4 = *(*v1 + 16);
    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_13:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      v5 = 0;
      v6 = *(v3 + 2);
      v7 = 32;
      do
      {
        if (v5 >= v6)
        {
          __break(1u);
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

        v12 = *&v3[v7];
        v8 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
        ResolvedGradient.ColorSpace.convertIn(_:)(&v12, v8, v9, v10, v11);
        v6 = *(v3 + 2);
        if (v5 >= v6)
        {
          goto LABEL_12;
        }

        ++v5;
        *&v3[v7] = v12;
        v7 += 48;
      }

      while (v4 != v5);
      *v1 = v3;
    }

    v1[8] = v2;
  }
}

Swift::Void __swiftcall ResolvedGradientVector.scale(by:)(Swift::Double by)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
    }

    else
    {
      v6 = 32;
      do
      {
        v5 = by;
        *&v2[v6] = vmulq_n_f32(*&v2[v6], v5);
        v6 += 48;
        --v3;
      }

      while (v3);
      *v1 = v2;
    }
  }
}

double ResolvedGradientVector.magnitudeSquared.getter()
{
  v1 = (*v0)[2];
  if (!*&v1)
  {
    return 0.0;
  }

  v2 = *v0 + 5;
  result = 0.0;
  do
  {
    v4 = vmul_f32(v2[-1], v2[-1]);
    v5 = vmul_f32(*v2, *v2);
    result = result + vadd_f32(vadd_f32(vadd_f32(v4, vdup_lane_s32(v4, 1)), v5), vdup_lane_s32(v5, 1)).f32[0];
    v2 += 6;
    --*&v1;
  }

  while (v1);
  return result;
}

uint64_t static ResolvedGradientVector.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;

  return ResolvedGradientVector.add(_:scaledBy:)(&v13, a4);
}

void protocol witness for static AdditiveArithmetic.zero.getter in conformance ResolvedGradientVector(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.RunSlice>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV7SegmentV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Decorations.Segment>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC9SDFSubset33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x6666666666666667) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 4) + (v8 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI23LayoutGestureChildProxyV0L0V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutGestureChildProxy.Child>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 5) + (v8 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11LayoutProxyV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutProxy>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 1) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15DynamicTypeSizeO_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI20SectionConfigurationV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionConfiguration>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6BCA1AF286BCA1BLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13PreferenceKey_pXp_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<PreferenceKey.Type>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceKey.Type>, type metadata accessor for PreferenceKey.Type);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13LayoutSubviewV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutSubview>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12PlatformItemV_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x67B23A5440CF6475) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 8) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16_ShapeStyle_PackV0K0V_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * ((v6 - 32) / 120);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt32>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_7SwiftUI29AccessibilityCustomAttributesV5ValueO5valuet_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<PreferenceKey.Type>(0, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 1, a3, a4);
  *v6 = v8;
  return result;
}

BOOL specialized static ResolvedGradient.Stop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      v2 = COERCE_FLOAT(*(a1 + 24)) == COERCE_FLOAT(*(a2 + 24)) && COERCE_FLOAT(HIDWORD(*(a1 + 24))) == COERCE_FLOAT(HIDWORD(*(a2 + 24)));
      v3 = v2 && COERCE_FLOAT(*(a1 + 32)) == COERCE_FLOAT(*(a2 + 32));
      if (v3 && COERCE_FLOAT(HIDWORD(*(a1 + 32))) == COERCE_FLOAT(HIDWORD(*(a2 + 32))))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

uint64_t specialized static ResolvedGradient.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = *(a2 + 16);
  v9 = a3(*a1, *a2);
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6)
  {
    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL specialized Sequence.reduce<A>(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return result;
  }

  if (a3 >= a2)
  {
    v5 = 48 * a2 + 48;
    while (a3 != a2)
    {
      if (result)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (a2 >= *(*a4 + 16))
        {
          goto LABEL_15;
        }

        if (a2 >= *(a5 + 16))
        {
          goto LABEL_16;
        }

        result = *(*a4 + v5) == *(a5 + v5);
      }

      else
      {
        result = 0;
      }

      ++a2;
      v5 += 48;
      if (a3 == a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (__CocoaSet.count.getter() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = __CocoaSet.count.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v14);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v10, v3);
}

unint64_t lazy protocol witness table accessor for type Gradient.Stop and conformance Gradient.Stop()
{
  result = lazy protocol witness table cache variable for type Gradient.Stop and conformance Gradient.Stop;
  if (!lazy protocol witness table cache variable for type Gradient.Stop and conformance Gradient.Stop)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.Stop and conformance Gradient.Stop);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace()
{
  result = lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace;
  if (!lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace;
  if (!lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedGradient(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();
  result = lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedGradientVector(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
  *(a1 + 8) = result;
  return result;
}

void *assignWithCopy for Gradient.Stop(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for Gradient.Stop(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ResolvedGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = v4;
  return a1;
}

uint64_t assignWithTake for ResolvedGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ResolvedGradient(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, 1, v3);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t type metadata accessor for PreferenceKey.Type()
{
  result = lazy cache variable for type metadata for PreferenceKey.Type;
  if (!lazy cache variable for type metadata for PreferenceKey.Type)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for PreferenceKey);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PreferenceKey.Type);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AnyTrackedValue>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AnyTrackedValue>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyTrackedValue>);
    }
  }
}

uint64_t Color.init(_:)(float a1, float a2, float a3, float a4)
{
  type metadata accessor for ColorBox<ResolvedColorProvider>();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 20) = a2;
  *(result + 24) = a3;
  *(result + 28) = a4;
  *(result + 32) = 2143289344;
  return result;
}

void Color.Resolved.over(_:)(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  if (a1 <= 0.0)
  {
    v15 = -a1;
  }

  else
  {
    v15 = a1;
  }

  if (v15 <= 0.0031308)
  {
    v16 = v15 * 12.92;
  }

  else
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v17 = a1;
      v18 = powf(v15, 0.41667);
      a1 = v17;
      v16 = (v18 * 1.055) + -0.055;
    }
  }

  if (a1 <= 0.0)
  {
    v19 = -v16;
  }

  else
  {
    v19 = v16;
  }

  v47 = v19;
  v20 = -a2;
  if (a2 > 0.0)
  {
    v20 = a2;
  }

  if (v20 <= 0.0031308)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = 1.0;
    if (v20 != 1.0)
    {
      v21 = (powf(v20, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a2 <= 0.0)
  {
    v22 = -v21;
  }

  else
  {
    v22 = v21;
  }

  v23 = -a3;
  if (a3 > 0.0)
  {
    v23 = a3;
  }

  if (v23 <= 0.0031308)
  {
    v24 = v23 * 12.92;
  }

  else
  {
    v24 = 1.0;
    if (v23 != 1.0)
    {
      v24 = (powf(v23, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a3 <= 0.0)
  {
    v25 = -v24;
  }

  else
  {
    v25 = v24;
  }

  v26 = -a5;
  if (a5 > 0.0)
  {
    v26 = a5;
  }

  if (v26 <= 0.0031308)
  {
    v27 = v26 * 12.92;
  }

  else
  {
    v27 = 1.0;
    if (v26 != 1.0)
    {
      v27 = (powf(v26, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a5 <= 0.0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v27;
  }

  v29 = -a6;
  if (a6 > 0.0)
  {
    v29 = a6;
  }

  if (v29 <= 0.0031308)
  {
    v30 = v29 * 12.92;
  }

  else
  {
    v30 = 1.0;
    if (v29 != 1.0)
    {
      v30 = (powf(v29, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a6 <= 0.0)
  {
    v31 = -v30;
  }

  else
  {
    v31 = v30;
  }

  v32 = -a7;
  if (a7 > 0.0)
  {
    v32 = a7;
  }

  if (v32 <= 0.0031308)
  {
    v33 = v32 * 12.92;
  }

  else
  {
    v33 = 1.0;
    if (v32 != 1.0)
    {
      v33 = (powf(v32, 0.41667) * 1.055) + -0.055;
    }
  }

  v34 = 1.0 - a8;
  v35 = ((1.0 - a8) * a4) + a8;
  if (v35 != 0.0)
  {
    v36 = v47 * a4;
    v37 = v22 * a4;
    v38 = v28 * a8;
    v39 = v31 * a8;
    if (a7 <= 0.0)
    {
      v33 = -v33;
    }

    v40 = (v34 * (v25 * a4)) + (v33 * a8);
    v41 = ((v34 * v36) + v38) / v35;
    v42 = ((v34 * v37) + v39) / v35;
    if (v41 <= 0.0)
    {
      v43 = -v41;
    }

    else
    {
      v43 = ((v34 * v36) + v38) / v35;
    }

    if (v43 > 0.04045 && v43 != 1.0)
    {
      powf((v43 * 0.94787) + 0.052133, 2.4);
    }

    v44 = v40 / v35;
    if (v42 <= 0.0)
    {
      v45 = -v42;
    }

    else
    {
      v45 = v42;
    }

    if (v45 > 0.04045 && v45 != 1.0)
    {
      powf((v45 * 0.94787) + 0.052133, 2.4);
    }

    if (v44 <= 0.0)
    {
      v46 = -v44;
    }

    else
    {
      v46 = v44;
    }

    if (v46 > 0.04045 && v46 != 1.0)
    {
      powf((v46 * 0.94787) + 0.052133, 2.4);
    }
  }
}

float Color.Resolved.red.getter(float a1)
{
  if (a1 <= 0.0)
  {
    v1 = -a1;
  }

  else
  {
    v1 = a1;
  }

  if (v1 <= 0.0031308)
  {
    v2 = v1 * 12.92;
  }

  else
  {
    v2 = 1.0;
    if (v1 != 1.0)
    {
      v3 = a1;
      v4 = powf(v1, 0.41667);
      a1 = v3;
      v2 = (v4 * 1.055) + -0.055;
    }
  }

  if (a1 <= 0.0)
  {
    return -v2;
  }

  else
  {
    return v2;
  }
}

float Color.Resolved.green.getter(double a1, float a2)
{
  v2 = -a2;
  if (a2 > 0.0)
  {
    v2 = a2;
  }

  if (v2 <= 0.0031308)
  {
    v3 = v2 * 12.92;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = a2;
      v5 = powf(v2, 0.41667);
      a2 = v4;
      v3 = (v5 * 1.055) + -0.055;
    }
  }

  result = -v3;
  if (a2 > 0.0)
  {
    return v3;
  }

  return result;
}

float Color.Resolved.blue.getter(double a1, double a2, float a3)
{
  v3 = -a3;
  if (a3 > 0.0)
  {
    v3 = a3;
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a3;
      v6 = powf(v3, 0.41667);
      a3 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  result = -v4;
  if (a3 > 0.0)
  {
    return v4;
  }

  return result;
}

uint64_t static Color.Resolved.== infix(_:_:)(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = a2 == a6 && a1 == a5;
  v10 = v9 && a3 == a7;
  if (a4 == a8)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.Resolved()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.Resolved()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(v1, v2, v3, v4);
  return Hasher._finalize()();
}

void Color.ResolvedDuotone.shadow.setter(float a1, float a2, float a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

void Color.ResolvedDuotone.highlight.setter(float a1, float a2, float a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
}

double Color.ResolvedDuotone.colorMatrix.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3] - *v1;
  v6 = v1[4] - v3;
  v7 = v1[5] - v4;
  *a1 = vmul_n_f32(0x3F3717593E59B3D0, v5);
  *(a1 + 8) = v5 * 0.0722;
  *(a1 + 12) = 0;
  *(a1 + 16) = v2;
  *(a1 + 20) = vmul_n_f32(0x3F3717593E59B3D0, v6);
  *(a1 + 28) = v6 * 0.0722;
  *(a1 + 32) = 0;
  *(a1 + 36) = v3;
  *(a1 + 40) = vmul_n_f32(0x3F3717593E59B3D0, v7);
  *(a1 + 48) = v7 * 0.0722;
  *(a1 + 52) = 0;
  *(a1 + 56) = v4;
  result = 0.0;
  *(a1 + 60) = xmmword_18DD85540;
  *(a1 + 76) = 0;
  return result;
}

void Color.Resolved.description.getter(float a1, float a2, float a3, float a4)
{
  v6 = -a1;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  if (v6 <= 0.0031308)
  {
    v7 = v6 * 12.92;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v8 = a1;
      v9 = a2;
      v10 = powf(v6, 0.41667);
      a2 = v9;
      v11 = v10;
      a1 = v8;
      v7 = (v11 * 1.055) + -0.055;
    }
  }

  if (a1 <= 0.0)
  {
    v12 = -v7;
  }

  else
  {
    v12 = v7;
  }

  v13 = (v12 * 255.0) + 0.5;
  if (COERCE_INT(fabs(v13)) > 2139095039)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = -a2;
  if (a2 > 0.0)
  {
    v14 = a2;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v16 = a2;
      v17 = powf(v14, 0.41667);
      a2 = v16;
      v15 = (v17 * 1.055) + -0.055;
    }
  }

  v18 = -v15;
  if (a2 > 0.0)
  {
    v18 = v15;
  }

  v19 = (v18 * 255.0) + 0.5;
  if (COERCE_INT(fabs(v19)) > 2139095039)
  {
    goto LABEL_44;
  }

  if (v19 <= -9.2234e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v19 >= 9.2234e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v20 = -a3;
  if (a3 > 0.0)
  {
    v20 = a3;
  }

  if (v20 <= 0.0031308)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = 1.0;
    if (v20 != 1.0)
    {
      v21 = (powf(v20, 0.41667) * 1.055) + -0.055;
    }
  }

  v22 = -v21;
  if (a3 > 0.0)
  {
    v22 = v21;
  }

  v23 = (v22 * 255.0) + 0.5;
  if (v23 <= -9.2234e18)
  {
    goto LABEL_47;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v24 = (a4 * 255.0) + 0.5;
  if (COERCE_INT(fabs(v24)) > 2139095039 || (LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_49;
  }

  if (v24 <= -9.2234e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v24 >= 9.2234e18)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v25 = v23;
  v26 = v24;
  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E6530];
  *(v27 + 16) = xmmword_18DDACA80;
  v29 = MEMORY[0x1E69E65A8];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  *(v27 + 32) = v13;
  *(v27 + 96) = v28;
  *(v27 + 104) = v29;
  *(v27 + 72) = v19;
  *(v27 + 136) = v28;
  *(v27 + 144) = v29;
  *(v27 + 112) = v25;
  *(v27 + 176) = v28;
  *(v27 + 184) = v29;
  *(v27 + 152) = v26;

  String.init(format:_:)();
}