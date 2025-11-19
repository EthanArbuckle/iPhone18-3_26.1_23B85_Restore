uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23ContentTransitionEffectV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  v1(&v7, v6);

  AGGraphSetOutputValue();
  outlined consume of ContentTransition.Storage(v7, v8 | (v9 << 32), v10);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14SafeAreaInsetsV_AK01_hiJ8ModifierV0J033_C4DC82F2A500E9B6DEA3064A36584B42LLVTt1g5()
{
  v1[3] = *MEMORY[0x1E69E9840];
  _SafeAreaInsetsModifier.Insets.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK23_SafeAreaInsetsModifierV0I033_C4DC82F2A500E9B6DEA3064A36584B42LLVTt1g5(uint64_t *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v7 - (*v9 - v5);
  v13 = v8 - (v11 - v6);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v31[0] = v1;
  v32 = 1;
  *&v33 = v3;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = v12;
  *&v34[24] = v13;
  swift_retain_n();

  ViewTransform.coordinateSpaceTag(_:)(v31, &v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v31, &v33);
  type metadata accessor for CoordinateSpaceNode();
  v17 = swift_allocObject();
  v18 = v17;
  v19 = *v34;
  *(v17 + 24) = v33;
  *(v17 + 40) = v19;
  *(v17 + 49) = *&v34[9];
  *(v17 + 16) = v4;
  if (v4)
  {
    v20 = *(v4 + 72);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v23 = v29;
    outlined destroy of CoordinateSpace(v31);
    goto LABEL_9;
  }

  v22 = 1;
LABEL_8:
  *(v17 + 72) = v22;
  outlined destroy of CoordinateSpace(v31);
  v23 = *(v18 + 72);
  v4 = v18;
LABEL_9:
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  v24 = swift_allocObject();
  v25 = v24;
  *(v24 + 32) = v12;
  *(v24 + 40) = v13;
  *(v24 + 48) = v23;
  *(v24 + 56) = v15;
  *(v24 + 64) = v16;
  *(v24 + 16) = v3;
  if (v3)
  {
    v26 = *(v3 + 24);
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v21)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v27 = 1;
LABEL_14:
  *(v24 + 24) = v27;

  *&v33 = v25;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = 0;
  *&v34[24] = 0;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK017GlassEffectHiddenH008_3DF70D9N23D7473F4D189A049B764CFEFLLVTt1g5()
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v6 = *Value;
  v7 = v2;

  swift_retain_n();
  v3 = *AGGraphGetValue();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(&v6, v3);

  if (v2)
  {
    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K18_glassEffectHidden08_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Ttg5(v1, v6);
  }

  else
  {

    v4 = v6;
  }

  v8 = v4;
  v9 = v7;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK25_AllowsHitTestingModifierVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK020GlassAppearanceScaleK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK020GlassAppearanceScaleK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK26_ContentTransitionModifierV05ChildH033_91D8F0C7DA490950AB41112E50631DCALLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5Tm(a1, a2, _ContentTransitionModifier.ChildEnvironment.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27GlassEffectBackdropObserverCSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  v1(v7, v6);

  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14GlassContainerO11DataStorageV_AK0h6EffectJ4Init08_3DF70D9O23D7473F4D189A049B764CFEFLLVTt1g5(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  GlassEffectDataInit.value.getter(v1, v2, v3, v4);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK011GlassEffectH008_3DF70D9M23D7473F4D189A049B764CFEFLLVTt1g5()
{
  v1[2] = *MEMORY[0x1E69E9840];
  GlassEffectEnvironment.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6_GlassV_AK0h10EffectItemH008_3DF70D9L23D7473F4D189A049B764CFEFLLVTt1g5()
{
  if (*AGGraphGetValue() == 1)
  {
    Value = AGGraphGetValue();
    v1 = *Value;
    v2 = Value[1];
    outlined copy of _Glass.Variant.Role(*Value, v2);

    if ((*AGGraphGetValue() & 1) == 0)
    {
      AGGraphGetValue();
    }

    *&v4 = v1;
    DWORD2(v4) = v2;
  }

  else
  {
    v4 = xmmword_18DDAA050;
  }

  AGGraphSetOutputValue();
  outlined consume of _Glass.Variant.Role(v4, DWORD2(v4));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18TintAdjustmentModeV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21MaterialBackdropProxyVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5Tm(a1, a2, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);

  Value = AGGraphGetValue();
  v9 = *Value;
  v8 = Value[1];
  v11[0] = v9;
  v11[1] = v8;

  v6(v12, v11);

  type metadata accessor for [_ViewList_ID](0, a3, a4, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16RedactionReasonsV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ContainerShapeDataV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK010ConcentricI033_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5()
{
  v1[4] = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  AGGraphGetValue();
  ViewSize.proposal.getter(v1);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI18ConcentricPosition33_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5()
{
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK0H24EffectTransitionModifier33_44FBBCADDAFBB91038EC35E704B81E23LLV9TransformVTt1g5()
{
  Value = AGGraphGetValue();
  v7 = *Value;
  v1 = *(Value + 16);
  v2 = *(Value + 24);
  v3 = *(Value + 25);
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 41) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GlassEffectTransitionModifier.Transform.value.getter;
  *(v5 + 24) = v4;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6AnchorVySo6CGRectVG_AK011GlassEffectH008_3DF70D9M23D7473F4D189A049B764CFEFLLVTt1g5Tm()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  v0 = static UnitRect.one;
  v1 = xmmword_1ED52E568;
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v3 = CGRect.prepare(geometry:)(*&v0 * *Value, *(&v0 + 1) * Value[1], *&v1 * *Value, *(&v1 + 1) * Value[1]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for AnchorValueBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorValueBox);
  v10 = swift_allocObject();
  v10[2] = v3;
  *(v10 + 3) = v5;
  *(v10 + 4) = v7;
  *(v10 + 5) = v9;
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12PlatformItemV15GeometryContentV_AO4InitVTt1g5()
{
  v0 = AGCreateWeakAttribute();
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  *&v1[8 * v3 + 32] = v0;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK018GlassContainerTintH033_EC08899B622ECCACC85E95BA1EEBE316LLVTt1g5()
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v6 = *Value;
  v7 = v2;

  swift_retain_n();
  v3 = *AGGraphGetValue();
  swift_bridgeObjectRetain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(&v6, v3);

  if (v2)
  {
    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v1, v6);
  }

  else
  {

    v4 = v6;
  }

  v8 = v4;
  v9 = v7;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI32ScrapeableAttachmentViewModifier010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV0I0VTt1g5()
{

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4PathV_AK012ContentShapeH0VTt1g5()
{
  v3 = *MEMORY[0x1E69E9840];
  ContentShapePath.value.getter(v1);
  AGGraphSetOutputValue();
  return outlined consume of Path.Storage(v1[0], v1[1], v1[2], v1[3], v2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI16ScrollPhaseStateVG_AK0hI8ProviderVTt1g5()
{
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollPhaseState>, &type metadata for ScrollPhaseState, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  *(v0 + 32) = *Value;
  *(v0 + 40) = v2;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [ScrollPhaseState], &type metadata for ScrollPhaseState, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ColorVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5Tm(a1, a2, &lazy cache variable for type metadata for Color?, &type metadata for Color);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnyShapeStyleVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5Tm(a1, a2, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Si_7SwiftUI15_ViewListInputsVAKE21ContentOffsetMutation022_0A5F33F1FD54F6946F5E3P9CF78D7A25LLVTt1g5(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *AGGraphGetValue();
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Si_AA3MapVy7SwiftUI8ViewList_pSiGTt1g5(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v5);
  v1(&v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
  v5[0] = v4;
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK01_hI6_GroupV4InitVTt1g5(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v4 = 32;
    v3 = v13;
    do
    {
      v5 = *(v1 + v4);
      Value = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(Value, &v14);
      *&v15[24] = v5;
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = (v13 + 48 * v8);
      v10 = v14;
      v11 = *v15;
      *(v9 + 60) = *&v15[12];
      v9[2] = v10;
      v9[3] = v11;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  *&v15[8] = &type metadata for _ViewList_Group;
  *&v15[16] = lazy protocol witness table accessor for type _ViewList_Group and conformance _ViewList_Group();
  *&v14 = v3;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v14);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK26_PreferenceWritingModifierVA2K23PreferredColorSchemeKeyVRszrlE0nO3Env33_E52508E85535897B9A366B470195B29DLLVyAQ_GTt1g5()
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v6 = *Value;
  v7 = v2;
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);

  v3 = *AGGraphGetValue();
  if (v3 != 2)
  {
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019PlatformColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v6, v3 & 1);

    if (v2)
    {
      v4 = v6;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019PlatformColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v1, v6);

      v1 = v4;
    }

    else
    {

      v1 = v6;
    }
  }

  v8 = v1;
  v9 = v7;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK26_PreferenceWritingModifierVA2K23PreferredColorSchemeKeyVRszrlE0opI033_E52508E85535897B9A366B470195B29DLLVyAQ_GTt1g5(uint64_t a1)
{
  if (*(a1 + 4) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);
  Value = AGGraphGetValue();
  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA018PreviewColorSchemedG0V_Tt0B5(*Value);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5Tm(a1, a2, 1);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK5ImageV09WriteIconI0VTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5Tm(a1, a2, 0);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5Tm(_DWORD *a1, uint64_t a2, char a3)
{
  if (*a1 != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA15LeafContentTypeO0dG0V_Tt0B5(a3);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK11MergeTraits33_AC3F3B54DEA93347066C3491F9AA3DD4LLVTt1g5(uint64_t *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  MergeTraits.value.getter(*a1, v2);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK9ColorViewVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, &type metadata for ColorView, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void, void, void, uint64_t))
{
  v5[3] = *MEMORY[0x1E69E9840];
  a4(v5, *a1, *(a1 + 8), *(a1 + 16), a3);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(a1, a2, specialized ForEachState.evictItems(seed:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_G_AO4InitVyAtxV__GTt1g5(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>();
  swift_retain_n();
  Value = AGGraphGetValue();
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(Value, &v5, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
  specialized ForEachState.update(view:)(&v5);
  outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v5, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
  v3 = *(v1 + *(*v1 + 240));

  v5 = v1;
  v6 = v3;
  _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info, type metadata accessor for ForEachState.Info);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7ForEachVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVATG_AK0klJ0V5Child33_B0B39CD9AD4D5C78B1166BFF4E214610LLVTt1g5()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69E74D0];
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  Value = AGGraphGetValue();
  outlined init with copy of Set<EventID>(Value, v7, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, v0);
  outlined init with copy of Set<EventID>(v7, v6, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, v0);
  lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  KeyPath = swift_getKeyPath();
  v12 = 0;
  outlined init with copy of Set<EventID>(v6, v8, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, v0);
  v10 = 0;
  v11 = KeyPath;
  v9 = closure #1 in SubviewsCollectionSlice.Child.value.getter;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v3 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v3)
    {
      goto LABEL_7;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v4 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of Slice<SubviewsCollection>(v7);
  outlined destroy of Slice<SubviewsCollection>(v6);
  v13 = v4;
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>();
  AGGraphSetOutputValue();
  return outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v8, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVyAK22_VariadicView_ChildrenVs11AnyHashableVAQ7ElementV_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(a1, a2, specialized ForEachState.evictItems(seed:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVyAK22_VariadicView_ChildrenVs11AnyHashableVAQ7ElementV_G_AO4InitVyAqsU__GTt1g5(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>();
  swift_retain_n();
  Value = AGGraphGetValue();
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(Value, &v5, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  specialized ForEachState.update(view:)(&v5);
  outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v5, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  v3 = *(v1 + *(*v1 + 240));

  v5 = v1;
  v6 = v3;
  _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info, type metadata accessor for ForEachState.Info);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7ForEachVyAK22_VariadicView_ChildrenVs11AnyHashableVAO7ElementVG_AO5Child33_9B09D1820E97ECBB666F7560EA2A2D2CLLVTt1g5()
{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  outlined init with copy of _VariadicView_Children(Value, v6);
  outlined init with copy of _VariadicView_Children(v6, v5);
  lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  KeyPath = swift_getKeyPath();
  v11 = 0;
  outlined init with copy of _VariadicView_Children(v5, v7);
  v9 = 0;
  v10 = KeyPath;
  v8 = closure #1 in _VariadicView_Children.Child.value.getter;
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
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of _VariadicView_Children(v6);
  outlined destroy of _VariadicView_Children(v5);
  v12 = v3;
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>();
  AGGraphSetOutputValue();
  return outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v7, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySayAK14GlassContainerO5EntryVGAS8StableIDVAK15ModifiedContentVyAXyAK6ZStackVyAK0lnM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK21_TraitWritingModifierVyAK12_LayoutTraitVyAK0L12EffectLayoutA0_LLV3KeyVGGGA4_yAK18TransitionTraitKeyVGG_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(a1, a2, specialized ForEachState.evictItems(seed:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySayAK14GlassContainerO5EntryVGAS8StableIDVAK15ModifiedContentVyAXyAK6ZStackVyAK0lnM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK21_TraitWritingModifierVyAK12_LayoutTraitVyAK0L12EffectLayoutA0_LLV3KeyVGGGA4_yAK18TransitionTraitKeyVGG_G_AO4InitVyAtVA17___GTt1g5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>();
  swift_retain_n();
  Value = AGGraphGetValue();
  v4 = Value[1];
  v3 = Value[2];
  v9[0] = *Value;
  v9[1] = v4;
  v9[2] = v3;
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v9, &v7, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
  specialized ForEachState.update(view:)(v9);
  outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v9, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
  v5 = *(v1 + *(*v1 + 240));

  v7 = v1;
  v8 = v5;
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info, type metadata accessor for ForEachState.Info);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySayAK14GlassContainerO4ItemVGAS2IDVAK0lN4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(a1, a2, specialized ForEachState.evictItems(seed:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySayAK14GlassContainerO4ItemVGAS2IDVAK0lN4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_G_AO4InitVyAtvY__GTt1g5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>();
  swift_retain_n();
  Value = AGGraphGetValue();
  v4 = Value[1];
  v3 = Value[2];
  v9[0] = *Value;
  v9[1] = v4;
  v9[2] = v3;
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v9, &v7, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
  specialized ForEachState.update(view:)(v9);
  outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v9, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
  v5 = *(v1 + *(*v1 + 240));

  v7 = v1;
  v8 = v5;
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info, type metadata accessor for ForEachState.Info);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK25_ForegroundStyleModifier2V0jkH033_BEFE9363F68E039B4AB6422B8AA4535ALLVyAK15AngularGradientVAK5ColorV_GTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5Tm(a1, a2, specialized _ForegroundStyleModifier2.ForegroundStyleEnvironment.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I15WritingModifierV03AddI033_48526BA25CDCBF890FA91D018A5421B4LLVyAK07_LayoutI0VyAK010GlassEntryT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV3KeyVG_GTt1g5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == *MEMORY[0x1E698D3F8])
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v4 = v1;
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>();
  Value = AGGraphGetValue();
  memcpy(__dst, Value, 0x289uLL);
  memcpy(__src, Value, 0x289uLL);
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(__dst, v5, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA07_LayoutD0VyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0G0VG_Tt0B5(__src);
  v5[0] = v4;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I15WritingModifierV03AddI033_48526BA25CDCBF890FA91D018A5421B4LLVyAK010TransitionI3KeyV_GTt1g5(uint64_t a1)
{
  if (*(a1 + 4) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
  AGGraphGetValue();

  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010TransitiondG0V_Tt0g5(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI33PlatformImageRepresentableContextV_AK0I0VAKE8ResolvedV04MakejK033_A3C1DB6976F54697C11EFA754256BBD1LLVTt1g5()
{
  v38 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = Value[3];
  v3 = *Value;
  v2 = Value[1];
  v28 = Value[2];
  v29 = v1;
  v26 = v3;
  v27 = v2;
  v4 = Value[7];
  v6 = Value[4];
  v5 = Value[5];
  v32 = Value[6];
  v33 = v4;
  v30 = v6;
  v31 = v5;
  v8 = Value[9];
  v7 = Value[10];
  v9 = Value[8];
  *(v36 + 11) = *(Value + 171);
  v35 = v8;
  v36[0] = v7;
  v34 = v9;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
  outlined init with copy of Image.Resolved(&v26, v37);
  v11 = *AGGraphGetValue();
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, v10);

  v12 = AGGraphGetValue();
  v16 = v28;
  v17 = v29;
  v14 = v26;
  v15 = v27;
  v20 = v32;
  v21 = v33;
  v18 = v30;
  v19 = v31;
  *&v24[11] = *(v36 + 11);
  v23 = v35;
  *v24 = v36[0];
  v22 = v34;
  *&v25 = v11;
  *(&v25 + 1) = *v12;

  AGGraphSetOutputValue();
  v37[10] = *v24;
  v37[11] = *&v24[16];
  v37[12] = v25;
  v37[6] = v20;
  v37[7] = v21;
  v37[8] = v22;
  v37[9] = v23;
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v37[5] = v19;
  v37[0] = v14;
  v37[1] = v15;
  return outlined destroy of PlatformImageRepresentableContext(v37);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK5ImageVAKE8ResolvedVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23ContentTransitionEffectV_AM4InitVTt1g5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = *(a1 + 20);
  v3 = *(a1 + 16);
  v5 = *(a1 + 21);
  outlined copy of ContentTransition.Storage(v2, v3 | (v4 << 32), v5);
  ContentTransitionEffect.Init.value.getter(&v6);
  outlined consume of ContentTransition.Storage(v2, v3 | (v4 << 32), v5);
  AGGraphSetOutputValue();
  outlined consume of ContentTransition.Storage(v6, v7 | (v8 << 32), v9);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI38PlatformNamedImageRepresentableContextV_AK0J0V04MakekL033_BE2D783904D422377BBEBAC3C942583CLLVTt1g5()
{
  AGGraphGetValue();

  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK020CoreInteractionChildI033_03AF342AA286115256FF95C286FEA7E3LLVTt1g5()
{
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = v5 - (*v7 - v3);
  v11 = v6 - (v9 - v4);
  if (one-time initialization token for viewGraphHostContainerCoordinateSpace != -1)
  {
    swift_once();
  }

  v26[0] = static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace;
  v27 = 1;
  *&v28 = v1;
  *(&v28 + 1) = v2;
  *v29 = v8;
  *&v29[8] = v9;
  *&v29[16] = v10;
  *&v29[24] = v11;
  swift_retain_n();

  ViewTransform.coordinateSpaceTag(_:)(v26, &v24);

  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

  outlined init with copy of CoordinateSpace(v26, &v28);
  type metadata accessor for CoordinateSpaceNode();
  v12 = swift_allocObject();
  v13 = v12;
  v14 = *v29;
  *(v12 + 24) = v28;
  *(v12 + 40) = v14;
  *(v12 + 49) = *&v29[9];
  *(v12 + 16) = v2;
  if (v2)
  {
    v15 = *(v2 + 72);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v18 = v24;
    outlined destroy of CoordinateSpace(v26);
    goto LABEL_11;
  }

  v17 = 1;
LABEL_10:
  *(v12 + 72) = v17;
  outlined destroy of CoordinateSpace(v26);
  v18 = *(v13 + 72);
  v2 = v13;
LABEL_11:
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<CoordinateSpaceElement>, lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement, &type metadata for CoordinateSpaceElement, type metadata accessor for Element);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  *(v19 + 48) = v18;
  *(v19 + 16) = v1;
  if (v1)
  {
    v21 = *(v1 + 24);
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v16)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v22 = 1;
LABEL_16:
  *(v19 + 24) = v22;

  *&v28 = v20;
  *(&v28 + 1) = v2;
  *v29 = v8;
  *&v29[8] = v9;
  *&v29[16] = 0;
  *&v29[24] = 0;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI38_ForegroundLayerLevelColorMatrixEffectV_AA5FocusVyAK01_hiklM0VAMGTt1g5()
{
  v3 = *MEMORY[0x1E69E9840];

  Value = AGGraphGetValue();
  memmove(__dst, Value, 0xA0uLL);
  swift_getAtKeyPath();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23FlexInteractionModifierV_AK010GlassEntryhiJ033_D12F2F25A0BD65FFBD3A7636B60067DFLLV04InitJ0VTt1g5()
{

  Value = AGGraphGetValue();
  if ((GlassContainerCache.interactionStateAttr(id:)(*(Value + 328)) & 0x100000000) != 0)
  {
    __asm { FMOV            V1.2D, #1.0 }
  }

  else
  {
    AGGraphGetValue();
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK30_EnvironmentKeyWritingModifierVyAK16RedactionReasonsVGAOySbGG_AK07Privacyn4ViewM033_7799685610985DBA9248562F2E4D5E6ELLV20WidgetAuxiliaryChildVTt1g5()
{
  v1[4] = *MEMORY[0x1E69E9840];
  PrivacyRedactionViewModifier.WidgetAuxiliaryChild.value.getter(v1);
  type metadata accessor for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK010_TransformK0VGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void, void, unint64_t))
{
  v4[2] = *MEMORY[0x1E69E9840];
  a3(v4, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24) | (*(a1 + 28) << 32));
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK01_iK0VGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void, void))
{
  v4[6] = *MEMORY[0x1E69E9840];
  a3(v4, *a1, *(a1 + 8), *(a1 + 16));
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK05_BlurK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK012InsetPrimaryI0VTt1g5(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v7 - (*v9 - v5);
  v13 = v8 - (v11 - v6);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v31[0] = v1;
  v32 = 1;
  *&v33 = v3;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = v12;
  *&v34[24] = v13;
  swift_retain_n();

  ViewTransform.coordinateSpaceTag(_:)(v31, &v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v31, &v33);
  type metadata accessor for CoordinateSpaceNode();
  v17 = swift_allocObject();
  v18 = v17;
  v19 = *v34;
  *(v17 + 24) = v33;
  *(v17 + 40) = v19;
  *(v17 + 49) = *&v34[9];
  *(v17 + 16) = v4;
  if (v4)
  {
    v20 = *(v4 + 72);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v23 = v29;
    outlined destroy of CoordinateSpace(v31);
    goto LABEL_9;
  }

  v22 = 1;
LABEL_8:
  *(v17 + 72) = v22;
  outlined destroy of CoordinateSpace(v31);
  v23 = *(v18 + 72);
  v4 = v18;
LABEL_9:
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  v24 = swift_allocObject();
  v25 = v24;
  *(v24 + 32) = v12;
  *(v24 + 40) = v13;
  *(v24 + 48) = v23;
  *(v24 + 56) = v15;
  *(v24 + 64) = v16;
  *(v24 + 16) = v3;
  if (v3)
  {
    v26 = *(v3 + 24);
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v21)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v27 = 1;
LABEL_14:
  *(v24 + 24) = v27;

  *&v33 = v25;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = 0;
  *&v34[24] = 0;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14SafeAreaInsetsV_AK012InsetPrimaryH5AreasVTt1g5()
{
  v1[3] = *MEMORY[0x1E69E9840];
  InsetPrimarySafeAreas.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AMt_AK010InsetChildI0VTt1g5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  InsetViewLayout.childGeometry()(v2, v3, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ViewGeometry, ViewGeometry));
  AGGraphSetOutputValue();
  v4[4] = v3[0];
  v4[5] = v3[1];
  v4[6] = v3[2];
  v4[7] = v3[3];
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  v4[3] = v2[3];
  return outlined destroy of [GlassContainer.Item](v4, &lazy cache variable for type metadata for (ViewGeometry, ViewGeometry), &type metadata for ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for (Path, FillStyle));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5Tm(a1, a2, specialized AnchorWriter.value.getter, &lazy cache variable for type metadata for [GlassMaterialShape], &type metadata for GlassMaterialShape);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK6ShaderV08ResolvedR0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectLocalModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5()
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectLocalModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5Tm();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28GlassEffectContainerModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5()
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectLocalModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5Tm();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectLocalModifier08_3DF70D9M23D7473F4D189A049B764CFEFLLV_AN4InitVTt1g5Tm()
{
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  outlined copy of _Glass.Variant.Role(*Value, v2);

  AGGraphGetValue();
  AGGraphSetOutputValue();
  outlined consume of _Glass.Variant.Role(v1, v2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17VariableBlurStyleVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11GestureMaskV_AA3MapVyAK03AddH8ModifierVyAK06_EndedH0VyAK03TapH0VGAK07DefaultH8CombinerVGAMGTt1g5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();

  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v4 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  v10[0] = *Value;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v6;
  v11 = v7;

  v1(v9, v10);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18AddGestureModifierVyAK06_EndedI0VyAK03TapI0VGAK07DefaultI8CombinerVG_AK0liJ033_067A6A2846A89ACCD702678B6B8D0D6FLLV0I5ChildVTt1g5()
{
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v1 = *(Value + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34GestureComponentAttachmentModifierVy8Gestures03TapI0VyAN10TouchEventVGG_AK0mhK033_067A6A2846A89ACCD702678B6B8D0D6FLLV0L14FrameworkChildVTt1g5()
{
  v4[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  TapGestureModifier.GesturesFrameworkChild.value.getter(v2);
  AGGraphSetOutputValue();
  return outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v2, type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI32PlatformTextRepresentableContextV_AK0I0V04MakejK033_641995D812913A47B866B20B88782376LLVTt1g5()
{
  v0[1] = *MEMORY[0x1E69E9840];
  Text.MakeRepresentableContext.value.getter(v0);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_GeometryGroupK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK010StyledTextH4ViewVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI4TextV9LayoutKeyV08AnchoredI0VG_AK0hI5Query33_641995D812913A47B866B20B88782376LLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5Tm(a1, a2, TextLayoutQuery.value.getter, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5Tm(void *a1, uint64_t a2, void (*a3)(void, void), unint64_t *a4, uint64_t a5)
{
  a3(*a1, a1[1]);
  type metadata accessor for [_ViewList_ID](0, a4, a5, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK21StyledTextContentViewV018ArchivedTransitionH033_641995D812913A47B866B20B88782376LLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5Tm(a1, a2, StyledTextContentView.ArchivedTransitionEnvironment.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5Tm(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void))
{
  v4[2] = *MEMORY[0x1E69E9840];
  a3(v4, *a1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26_GlassContainerStorageViewV_AM4InitVTt1g5(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  *v6 = v1;
  *&v6[8] = swift_getKeyPath();
  v6[16] = 0;

  AGGraphSetOutputValue();
  v7[0] = v4;
  v7[1] = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  return outlined destroy of _GlassContainerStorageView(v7);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK08CombinedhI033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK011DynamicTextH033_641995D812913A47B866B20B88782376LLV0jkI0VTt1g5()
{
  v2 = *MEMORY[0x1E69E9840];
  DynamicTextView.DynamicTextFrame.value.getter(v1);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5()
{
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5()
{
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5()
{
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5()
{
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyALGTt1g5()
{
  type metadata accessor for CGPoint(0);
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5()
{
  if (!AGGraphGetWeakValue())
  {
    AGGraphGetValue();
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0K6LayoutV07WrappedW0VAK015_SafeAreaInsetsM0VG_ARTt1g5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  AutomaticPaddingViewModifier.PaddingLayout.value.getter(*(a1 + 8), v2);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for _SafeAreaInsetsModifier, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  return outlined destroy of ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AK07DefaultD0VyAOGTt1g5()
{
  v27 = *MEMORY[0x1E69E9840];
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *WeakValue;
    v1 = WeakValue[1];
    v2 = WeakValue[2];
    v3 = WeakValue[4];
    v12 = WeakValue[3];
    v13 = v3;
    v10 = v1;
    v11 = v2;
    v4 = WeakValue[5];
    v5 = WeakValue[6];
    v6 = WeakValue[8];
    v16 = WeakValue[7];
    v17 = v6;
    v14 = v4;
    v15 = v5;
    memmove(&__dst, WeakValue, 0x90uLL);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = xmmword_1EAB1D4A8;
    v16 = xmmword_1EAB1D4B8;
    v17 = xmmword_1EAB1D4C8;
    v11 = xmmword_1EAB1D468;
    v12 = xmmword_1EAB1D478;
    v13 = xmmword_1EAB1D488;
    v14 = xmmword_1EAB1D498;
    v9 = static GestureDebug.Data.defaultValue;
    v10 = xmmword_1EAB1D458;
    v24 = xmmword_1EAB1D4A8;
    v25 = xmmword_1EAB1D4B8;
    v26 = xmmword_1EAB1D4C8;
    v20 = xmmword_1EAB1D468;
    v21 = xmmword_1EAB1D478;
    v22 = xmmword_1EAB1D488;
    v23 = xmmword_1EAB1D498;
    __dst = static GestureDebug.Data.defaultValue;
    v19 = xmmword_1EAB1D458;
  }

  outlined init with copy of GestureDebug.Data(&v9, &v8);
  AGGraphSetOutputValue();
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v9 = __dst;
  v10 = v19;
  return outlined destroy of GestureDebug.Data(&v9);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK07DefaultD0VyANGTt1g5()
{
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  AGGraphGetWeakValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI15RepeatResetSeed33_BECD07FC80B4CA0BF429B041392E806ALLVTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SiSg_7SwiftUI19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAL19RequiredTapCountKeyVGTt1g5(unint64_t *a1)
{
  specialized PreferenceTransform.value.getter(*a1);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK03TapH0V0I033_067A6A2846A89ACCD702678B6B8D0D6FLLVTt1g5()
{
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  AGGraphGetValue();
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(a1, a2, specialized GestureDebug.Value.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySiSgzc_7SwiftUI22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLV5ChildVyAL13TappableEventV_GTt1g5()
{
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RequiredTapCountWriter);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in RequiredTapCountWriter.Child.value.getter;
  *(v4 + 24) = v3;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15GestureCategoryV_AK0iH0V8Combiner33_BD70527AFCE562B27D7DD6D56847C2B8LLVyAK13TappableEventV_ATGTt1g5(uint64_t a1)
{
  v1 = *(a1 + 4);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for CategoryGesture);
  v2 = *(AGGraphGetValue() + 8);
  AGGraphGetValue();
  if (v2 == 1 && v1 != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK0k6FilterI033_DE98B8F5384114B687077BAB0EFA27D9LLVyAOGTt1g5()
{
  if (*(AGGraphGetValue() + 8))
  {
    v0 = 0;
    v1 = 0;
    v2 = 0;
    v3 = 0;
    LOBYTE(v4) = 0;
    v5 = 3;
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    Value = AGGraphGetValue();
    v0 = *Value;
    v1 = *(Value + 8);
    v2 = *(Value + 16);
    v3 = *(Value + 24);
    v4 = *(Value + 32);
    v5 = *(Value + 33);
    outlined copy of GesturePhase<TappableEvent>(*Value, v1, v2, v3, v4, v5);
  }

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  AGGraphSetOutputValue();
  return outlined consume of GesturePhase<TappableEvent>(v0, v1, v2, v3, v4, v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14FilteredEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV_AK011EventFilterI0AMLLVyAK08TappableQ0VGTt1g5(int *a1)
{
  v1 = *a1;
  type metadata accessor for [EventID : EventType]();
  AGGraphGetValue();

  specialized Dictionary.optimisticFilter(_:)(v2, v1);

  AGGraphGetValue();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVGAP_AMy12CoreGraphics7CGFloatVGtc_AA5FocusVyAK04Map2H0VyAoK08ModifierH0VyAK015CoordinateSpaceH0VyASGAK08DistanceH0VGAOGA2P_ATtcGTt1g5()
{
  v4 = *MEMORY[0x1E69E9840];
  type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>(0);

  Value = AGGraphGetValue();
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(Value, v3, type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>);
  swift_getAtKeyPath();

  outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v3, type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>);
  v3[0] = v2;
  _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_0(0, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_12CoreGraphics7CGFloatVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(a1, a2, specialized GestureDebug.Value.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr))
{
  v6 = *MEMORY[0x1E69E9840];
  a3(v4);
  AGGraphSetOutputValue();
  v5[6] = v4[6];
  v5[7] = v4[7];
  v5[8] = v4[8];
  v5[2] = v4[2];
  v5[3] = v4[3];
  v5[4] = v4[4];
  v5[5] = v4[5];
  v5[0] = v4[0];
  v5[1] = v4[1];
  return outlined destroy of GestureDebug.Data(v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI7EventIDVAK0H4Type_pG_AK21CoordinateSpaceEvents33_8ECA7037C26636F2BB3D86159C23C2C5LLVy12CoreGraphics7CGFloatVGTt1g5()
{
  specialized CoordinateSpaceEvents.value.getter();
  type metadata accessor for [EventID : EventType]();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK12SpatialEventVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(a1, a2, specialized GestureDebug.Value.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ArrayWith2InlineVySS_SStG_AA3MapVyAK18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK07SpatialL0V_GANGTt1g5(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[2];
  v22[1] = Value[1];
  v22[2] = v4;
  v22[0] = v3;
  v5 = Value[3];
  v6 = Value[4];
  v7 = Value[5];
  *(v23 + 9) = *(Value + 89);
  v22[4] = v6;
  v23[0] = v7;
  v22[3] = v5;
  v8 = *Value;
  v9 = Value[2];
  v15 = Value[1];
  v16 = v9;
  v14 = v8;
  v10 = Value[3];
  v11 = Value[4];
  v12 = Value[5];
  *&v19[9] = *(Value + 89);
  v18 = v11;
  *v19 = v12;
  v17 = v10;
  outlined init with copy of EventListenerPhase<TappableEvent>.Value(v22, v24, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent);
  v1(v20, &v14);

  v24[4] = v18;
  v25[0] = *v19;
  *(v25 + 9) = *&v19[9];
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined destroy of EventListenerPhase<TappableEvent>.Value(v24, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent);
  type metadata accessor for ArrayWith2Inline<(String, String)>(0);
  AGGraphSetOutputValue();
  v16 = v20[2];
  v17 = v20[3];
  LOBYTE(v18) = v21;
  v14 = v20[0];
  v15 = v20[1];
  return outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v14, type metadata accessor for ArrayWith2Inline<(String, String)>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVGAP_AMySdGtc_AA5FocusVyAK04Map2H0VyAoK08ModifierH0VyAK08DurationH0VyAOGAK0K8ListenerVyAOGGAOGA2P_AQtcGTt1g5()
{
  _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA08DurationD0VyAEGAA0F8ListenerVyAEGGAEGMaTm_0(0, &lazy cache variable for type metadata for Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, &lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);

  AGGraphGetValue();

  swift_getAtKeyPath();

  _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_0(0, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_SdGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(a1, a2, specialized GestureDebug.Value.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ArrayWith2InlineVySS_SStG_AA3MapVyAK18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK08TappableL0V_GANGTt1g5(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  *&v10[9] = *(Value + 41);
  v9[1] = v4;
  *v10 = v5;
  v9[0] = v3;
  v13 = *Value;
  v14 = Value[1];
  v15[0] = Value[2];
  *(v15 + 9) = *(Value + 41);
  outlined init with copy of EventListenerPhase<TappableEvent>.Value(v9, v7, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent);
  v1(v7, &v13);

  v11[0] = v13;
  v11[1] = v14;
  v12[0] = v15[0];
  *(v12 + 9) = *(v15 + 9);
  outlined destroy of EventListenerPhase<TappableEvent>.Value(v11, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent);
  type metadata accessor for ArrayWith2Inline<(String, String)>(0);
  AGGraphSetOutputValue();
  v15[0] = v7[2];
  v15[1] = v7[3];
  v16 = v8;
  v13 = v7[0];
  v14 = v7[1];
  return outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v13, type metadata accessor for ArrayWith2Inline<(String, String)>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK09DependentI033_8687835E41FEE17B108D67665C1D2D0BLLVyAOGTt1g5()
{
  v11 = *MEMORY[0x1E69E9840];
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  Value = AGGraphGetValue();
  v1 = *(Value + 32);
  v2 = *(Value + 16);
  v9[0] = *Value;
  v9[1] = v2;
  v10 = v1;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DependentGesture);
  outlined init with copy of [GlassContainer.Item](v9, v6, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  v3 = *AGGraphGetValue();
  v4 = AGGraphGetValue();
  specialized GesturePhase.applyingDependency(_:inheritedPhase:)(v3, *v4, v6);
  outlined destroy of [GlassContainer.Item](v9, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase, type metadata accessor for [_ViewList_ID]);
  AGGraphSetOutputValue();
  return outlined consume of GesturePhase<TappableEvent>(v6[0], v6[1], v6[2], v6[3], v7, v8);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyAK13TappableEventVGAMyAK08CategoryI0VyARGAMyAK06RepeatI0VyARGAK06SinglekI0VyARGGGG_AK0kI0V5Child33_067A6A2846A89ACCD702678B6B8D0D6FLLVTt1g5()
{
  if (*AGGraphGetValue() < 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ModifierGesture<RequiredTapCountWriter<TappableEvent>, ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>>();
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH24CustomHoverEffectContext33_B2E20BEC96D7E01EE3D55A38320E6294LLVTt1g5()
{
  v16 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v10 = *Value;
  v11 = v2;

  swift_retain_n();
  v3 = AGGraphGetValue();
  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  v6 = *v3;
  v15 = *(v3 + 48);
  v14[0] = v6;
  v14[1] = v5;
  v14[2] = v4;
  v12[0] = v6;
  v12[1] = v5;
  v12[2] = v4;
  v13 = v15;
  outlined init with copy of HoverEffectContext(v14, v9);

  outlined init with copy of HoverEffectContext(v14, v9);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(&v10, v12);

  outlined destroy of HoverEffectContext(v14);
  if (v2)
  {
    v7 = v10;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v1, v10);
    outlined destroy of HoverEffectContext(v14);
  }

  else
  {
    outlined destroy of HoverEffectContext(v14);

    v7 = v10;
  }

  v9[0] = v7;
  v9[1] = v11;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK033ClearCustomHoverEffectContextFromH033_B2E20BEC96D7E01EE3D55A38320E6294LLVTt1g5()
{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v5 = *Value;
  v6 = v2;
  memset(v9, 0, sizeof(v9));
  v10 = 1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(&v5, v9);

  if (v2)
  {
    v3 = v5;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v1, v5);
  }

  else
  {

    v3 = v5;
  }

  v7 = v3;
  v8 = v6;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18HoverEffectContextVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  v1(v7, v6);

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return outlined consume of HoverEffectContext?(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v7[6]);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UnevenRoundedRectangleV_AK18RootContainerShapeVTt1g5(__int128 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = v1;
  RootContainerShape.value.getter(v4);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK04RootI033_7D9EDEF832940A362646A6E979F296C8LLVTt1g5()
{
  v2 = *MEMORY[0x1E69E9840];
  RootTransform.value.getter(&v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PreferenceValuesV_AK23HostPreferencesCombinerVTt1g5(uint64_t *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];

  HostPreferencesCombiner.value.getter(v1, v2, v4);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK11MakeSection33_C1B8B6896BB94C69479F427820712D02LLVTt1g5(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) | (*(a1 + 12) << 32);

  MakeSection.value.getter(v2, v1, v4);

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionFooterI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5Tm(a1, a2, _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionFooterdG0V_Tt0g5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05DepthI0VTt1g5(_DWORD *a1)
{
  if (*a1 == *MEMORY[0x1E698D3F8])
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = *AGGraphGetValue();
  }

  v2 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA05DepthdG0V_Tt0g5(v4);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionHeaderI0VTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5Tm(a1, a2, _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionHeaderdG0V_Tt0g5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK09SectionedI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5Tm(a1, a2, _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA011IsSectioneddG0V_Tt0g5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5Tm(_DWORD *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*a1 != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  a3(1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK04ViewI17ArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV0K0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25ViewListArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV6EffectV_ANTt1g5(unsigned int *a1)
{
  v2[4] = *MEMORY[0x1E69E9840];
  ViewListArchivedAnimation.value.getter(*a1, v2);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK04MakehI033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5()
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20MountableViewOutputsV016DisplayListProxyI0V_AK04MakehikL033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5()
{
  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20MountableViewOutputsV14LayoutComputerV_AK04MakehikL033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5()
{
  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16TimelineSchedule_pSg_AA3MapVyAK18ResolvedStyledTextCAMGTt1g5(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ResolvedStyledText();

  v3 = *AGGraphGetValue();

  v1(v4, &v3);

  type metadata accessor for Attribute<ViewList>(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return outlined destroy of TimelineSchedule?(v4);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11ControlSizeO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI12AnyResetSeed33_9726BF9F3BA5F571B5F201AD7C8C86F0LLVyytGTt1g5()
{
  AGGraphGetValue();
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for AnyGestureInfo<()>.Value, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGestureInfo.Value);
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10AnyGestureVyytG_AA3MapVyAK18ResolvedStyledTextCANGTt1g5(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ResolvedStyledText();

  v3 = *AGGraphGetValue();

  v1(v4, &v3);

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AK06LayoutI033_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultkH0VGTt1g5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  specialized LayoutDebug.value.getter(*(a1 + 8), *(a1 + 16), v2);
  AGGraphSetOutputValue();
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[8] = v2[8];
  v3[2] = v2[2];
  v3[3] = v2[3];
  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[0] = v2[0];
  v3[1] = v2[1];
  return outlined destroy of GestureDebug.Data(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK06LayoutI033_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultjH0VGTt1g5()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = *AGGraphGetValue();

  AGGraphGetValue();
  _s7SwiftUI13LayoutGesturePAAE5phase33_05F3243F43C616B77CCF383885E80E963boxAA0D5PhaseOyytGAA0cD3BoxAELLC_tFAA07DefaultcD0V_Tt1g5(v0, v3);
  v1 = v3[0];
  AGGraphGetValue();
  _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC21resetTerminalChildren7gestureyx_tAA0cD0RzlFAA07DefaultcD0V_Ttg5();

  v3[1] = v1;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLCAEV_AK06UpdatehiJ0AMLLVyAK07DefaulthI0VGTt1g5(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  specialized UpdateLayoutGestureBox.value.getter(v1, v2, v3);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI7EventIDVAK0H4Type_pG_AK17LayoutChildEvents33_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultK7GestureVGTt1g5(unint64_t *a1)
{
  specialized LayoutChildEvents.value.getter(*a1);
  type metadata accessor for [EventID : EventType]();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK011DynamicViewI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK011DynamicViewI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5Tm(a1, a2, DynamicViewPhase.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK011LayoutChildI033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVTt1g5(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v1 >= *(*Value + 16))
  {
    goto LABEL_5;
  }

  v3 = (*Value + (v1 << 6));
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  v12[2] = v3[4];
  v12[3] = v6;
  v12[0] = v4;
  v12[1] = v5;
  v10 = v3[4];
  v11 = v3[5];
  v8 = v3[2];
  v9 = v3[3];
  outlined init with copy of ViewGeometry(v12, v13);
  AGGraphSetOutputValue();
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  return outlined destroy of ViewGeometry(v13);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK06MergedI033_9FF97745734808976F608CE0DC13C39CLLVTt1g5()
{
  AGGraphGetValue();
  AGGraphGetWeakValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK06MergedH033_9FF97745734808976F608CE0DC13C39CLLVTt1g5()
{
  MergedTransaction.value.getter();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06MergedH033_9FF97745734808976F608CE0DC13C39CLLVTt1g5()
{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v1 = Value[1];
  *&v7[0] = v2;
  *(&v7[0] + 1) = v1;

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v5 = *WeakValue;
    v4 = WeakValue[1];
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI17EnvironmentValuesV_s5NeverOytTB503_s7c70UI17MergedEnvironment33_9FF97745734808976F608CE0DC13C39CLLV5valueAA0D6F11VvgyAGXEfU_AFTf1cn_n(v5, v4, v7);
  outlined consume of EnvironmentValues?(v5);
  v7[1] = v7[0];
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ScrollAnchorStorageV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  v1(v7, v6);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_ytGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AmE33_40D5679141F478561068F8E300838A67LLVy_AK13TappableEventVGTt1g5Tm(a1, a2, specialized GestureDebug.Value.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK015PlaceholderViewI033_9B09D1820E97ECBB666F7560EA2A2D2CLLVTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI19LazyLayoutCacheItemCG_AK0H23PreferencePrefetchItems33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5(unsigned int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);

  LazyPreferencePrefetchItems.value.getter(v1, v2);

  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK08LazyViewI033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK011DynamicViewI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5Tm(a1, a2, LazyViewPhase.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK011DynamicViewI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *__return_ptr, void, void))
{
  v5 = *MEMORY[0x1E69E9840];
  a3(v4, *a1, *(a1 + 8));
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK04LazyhI033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);

  LazyViewGeometry.value.getter(v1, v3);

  AGGraphSetOutputValue();
  v4[0] = v3[0];
  v4[1] = v3[1];
  v4[2] = v3[2];
  v4[3] = v3[3];
  return outlined destroy of ViewGeometry(v4);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UserInterfaceSizeClassOSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK13CanvasSymbols027_F41195D4CD7D6A29110580DFD3M4F891LLV06SymbolI0VTt1g5(uint64_t *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  CanvasSymbols.SymbolSize.value.getter(*a1, &v2);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11ColorSchemeO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5Tm(a1);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5Tm(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK05MergehI033_DF57A19C61B44C613EB77C1D47FC679ALLVTt1g5()
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v1 = *WeakValue;

    v2 = *AGGraphGetValue();
    v4[0] = v1;
    v4[1] = v2;

    PreferenceKeys.union(_:)(v4, v5);
  }

  else
  {
    v5[0] = *AGGraphGetValue();
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AM7VersionVt_AK04RoothI033_7D9EDEF832940A362646A6E979F296C8LLVTt1g5(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 12);
  v6 = ++static DisplayList.Version.lastValue;
  if ((v4 & 0x60) != 0)
  {
    v36 = v1;
    v37 = v6;
    v38 = MEMORY[0x1E69E7CC0];
    v35 = 0;
    v7 = *(v3 + 2);

    if (v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v33 = v6;
        if (*(v3 + 2))
        {
          break;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      v4 = 0;
      v5 = 0;
      v8 = 0;
      v9 = v3 + 32;
      v10 = 1;
      while (1)
      {
        v6 = v8;
        v8 = v10;
        v11 = &v9[80 * v6];
        closure #1 in ViewGraphTransform.apply(to:)(v11, &v36, &v35);
        if (v6 >= *(v3 + 2))
        {
          goto LABEL_42;
        }

        v40 = *(v11 + 1);
        v41 = *(v11 + 2);
        v42[0] = *(v11 + 3);
        *(v42 + 12) = *(v11 + 60);
        v39 = *v11;
        DisplayList.Item.features.getter(&v34);
        v12 = *(v3 + 2);
        if (v6 >= v12)
        {
          goto LABEL_43;
        }

        v4 |= v34;
        v13 = *(v11 + 5);
        v6 = *(v11 + 8);
        v14 = v6 >> 30;
        if (v6 >> 30 > 1)
        {
          if (v14 != 2)
          {
            goto LABEL_6;
          }

          v16 = *(v13 + 16);
          if (v16)
          {
            if (v16 > 7)
            {
              v17 = v16 & 0x7FFFFFFFFFFFFFF8;
              v22 = (v13 + 188);
              v23 = 0uLL;
              v24 = v16 & 0x7FFFFFFFFFFFFFF8;
              v25 = 0uLL;
              do
              {
                v26.i32[0] = *(v22 - 30);
                v26.i32[1] = *(v22 - 20);
                v26.i32[2] = *(v22 - 10);
                v26.i32[3] = *v22;
                v27.i32[0] = v22[10];
                v27.i32[1] = v22[20];
                v27.i32[2] = v22[30];
                v27.i32[3] = v22[40];
                v23 = vorrq_s8(v26, v23);
                v25 = vorrq_s8(v27, v25);
                v22 += 80;
                v24 -= 8;
              }

              while (v24);
              v28 = vorrq_s8(v25, v23);
              *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
              v15 = v28.i32[0] | v28.i32[1];
              if (v16 == v17)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v15 = 0;
              v17 = 0;
            }

            v29 = v16 - v17;
            v30 = (v13 + 40 * v17 + 68);
            do
            {
              v31 = *v30;
              v30 += 10;
              v15 |= v31;
              --v29;
            }

            while (v29);
          }

          else
          {
            v15 = 0;
          }
        }

        else if (v14)
        {
          v18 = v7;
          v19 = *(v11 + 6);
          if (BYTE4(v19) == 2)
          {
            outlined copy of DisplayList.Effect(*(v11 + 5), *(v11 + 6), 2);
            v21 = v13;
          }

          else
          {
            v20 = *(v11 + 7);
            if (BYTE4(v19) == 7)
            {
              v21 = *(v13 + 28);
              outlined copy of DisplayList.Item.Value(v13, v19, v20, v6);
              outlined consume of DisplayList.Effect(v13, v19, 7);
            }

            else if (BYTE4(v19) == 18)
            {
              (*(*v13 + 120))(&v39);
              outlined copy of DisplayList.Item.Value(v13, v19, v20, v6);
              outlined consume of DisplayList.Effect(v13, v19, 18);

              v21 = v39;
            }

            else
            {
              outlined copy of DisplayList.Effect(v13, v19, SBYTE4(v19));

              outlined consume of DisplayList.Effect(v13, v19, SBYTE4(v19));

              v21 = 0;
            }
          }

          v15 = v21 | HIDWORD(v6);
          v7 = v18;
          v9 = v3 + 32;
        }

        else
        {
          if (v13 >> 60 != 6 && v13 >> 60 != 11)
          {
LABEL_6:
            if (v8 == v7)
            {
              goto LABEL_37;
            }

            goto LABEL_7;
          }

          v15 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_34:
        v5 |= v15;
        if (v8 == v7)
        {
LABEL_37:
          v6 = v33;
          goto LABEL_39;
        }

        v12 = *(v3 + 2);
LABEL_7:
        v10 = v8 + 1;
        if (v8 >= v12)
        {
          goto LABEL_41;
        }
      }
    }

    v4 = 0;
    v5 = 0;
LABEL_39:
  }

  else
  {
  }

  *&v39 = v3;
  WORD4(v39) = v4;
  HIDWORD(v39) = v5;
  *&v40 = v6;
  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_E370275CDB55AC7AD9ACF0420859A9E8LLVyAK25SystemColorSchemeModifierVGTt1g5(unsigned int *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  specialized static SystemColorSchemeModifier.makeEnvironment(modifier:environment:)(v1, v6);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK30_SafeAreaRegionsIgnoringLayoutVGTt1g5Tm(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  specialized UnaryPositionAwareChildGeometry.value.getter(a1[1], a1[2], a1[3], v2);
  AGGraphSetOutputValue();
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  return outlined destroy of ViewGeometry(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK33_ForegroundLayerLevelViewModifierVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _ForegroundLayerLevelViewModifier, 0x200000000, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = a1[2];
  a5(&v7, a3, a4);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK025_PremultipliedColorMatrixK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5Tm(a1, a2, &type metadata for _PremultipliedColorMatrixEffect, 1);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5Tm(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9 = a1[2];
  specialized RendererEffectDisplayList.value.getter(a4, &v6);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK28_ForegroundLayerViewModifierVGTt1g5(__int128 *a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5Tm(a1, xmmword_18DDE49A0);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5Tm(__int128 *a1, __n128 a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = a1[2];
  specialized RendererEffectDisplayList.value.getter(&v4, a2);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK6_temp2VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for _BackdropGroupEffect_temp2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK020MayNotInsertCALayersK0VGTt1g5(__int128 *a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5Tm(a1, xmmword_18DDE49B0);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK5_tempVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for _BackdropGroupEffect_temp, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK018_ExtendedBlendModeK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _ExtendedBlendModeEffect, 0x500000000, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_LuminanceToAlphaK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _LuminanceToAlphaEffect, _s7SwiftUI14GraphicsFilterOWOi23_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5(__int128 *a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_CompositingGroupK0VGTt1g5Tm(a1, xmmword_18DDD08E0);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK016_ColorMonochromeK0V9_ResolvedVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK21_BackdropGroupEffect2VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for _BackdropGroupEffect2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK015_AlphaThresholdK0V9_ResolvedVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_ColorMultiplyK0V9_ResolvedVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for _BackdropGroupEffect, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014LuminanceCurveK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_HueRotationK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _HueRotationEffect, _s7SwiftUI14GraphicsFilterOWOi8_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5Tm(a1, a2, &type metadata for _ColorMatrixEffect, 0);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorInvertK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _ColorInvertEffect, _s7SwiftUI14GraphicsFilterOWOi24_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_SaturationK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _SaturationEffect, _s7SwiftUI14GraphicsFilterOWOi9_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_BrightnessK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _BrightnessEffect, _s7SwiftUI14GraphicsFilterOWOi10_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17GraphicsBlendModeOGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_GrayscaleK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _GrayscaleEffect, _s7SwiftUI14GraphicsFilterOWOi12_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_BlendModeK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5Tm(a1, a2, &type metadata for _ContrastEffect, _s7SwiftUI14GraphicsFilterOWOi11_, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK14GraphicsFilterOGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK9RectangleV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(a1, a2, &type metadata for Rectangle._Inset, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK03AnyI0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK03AnyI0VGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK03AnyI0VG_AM4InitVyAO_GTt1g5()
{
  AGGraphGetValue();

  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7EllipseVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7EllipseV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK7EllipseV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK7EllipseV6_InsetVG_AM4InitVyAQ_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(a1, a2, &type metadata for Ellipse._Inset, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void))
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, a4, a5, a3, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK7CapsuleV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK7CapsuleV6_InsetVG_AM4InitVyAQ_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(a1, a2, &type metadata for Capsule._Inset, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK6CircleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Circle, ForegroundStyle>, specialized Circle.path(in:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(_OWORD *__return_ptr, double, double, double, double))
{
  v5[3] = *MEMORY[0x1E69E9840];
  specialized ContentResponderPathDataRule.value.getter(*a1, *(a1 + 16), a3, a4, v5);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK6CircleV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK6CircleV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK6CircleV6_InsetVG_AM4InitVyAQ_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(a1, a2, &type metadata for Circle._Inset, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK0J0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK024PartialContainerRelativeI0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK024PartialContainerRelativeI0VGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK024PartialContainerRelativeI0VG_AM4InitVyAO_GTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK018DefaultGlassEffectI0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4[3] = *MEMORY[0x1E69E9840];
  specialized ContentResponderPathDataRule.value.getter(*a1, *(a1 + 16), a3, v4);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK22UnevenRoundedRectangleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK22UnevenRoundedRectangleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK22UnevenRoundedRectangleVG_AM4InitVyAO_GTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK22UnevenRoundedRectangleV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK22UnevenRoundedRectangleV6_InsetVG_AM4InitVyAQ_GTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ImplicitContainerI0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>, specialized Shape.effectivePath(in:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVGGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>, specialized Shape.effectivePath(in:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK017ContainerRelativeI0V6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK017ContainerRelativeI0V6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK017ContainerRelativeI0V6_InsetVG_AM4InitVyAQ_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5Tm(a1, a2, &type metadata for ContainerRelativeShape._Inset, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI11TransactionVzc_AA3MapVyAK01_cH8ModifierVySbGyAMzcGTt1g5(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);

  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  LOBYTE(v7) = *Value;
  *(&v7 + 1) = v3;
  v8 = v4;

  v1(&v6, &v7);

  v7 = v6;

  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVySnySiGSiAK15ModifiedContentVyARyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVG_GTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(a1, a2, specialized ForEachState.evictItems(seed:));
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12ForEachStateC7EvictorVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_GTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    if (one-time initialization token for evictByDefault != -1)
    {
      swift_once();
    }

    WeakValue = &static ForEachEvictionInput.evictByDefault;
  }

  if (*WeakValue == 1)
  {
    Value = AGGraphGetValue();
    a3(*Value);
  }

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySnySiGSiAK15ModifiedContentVyARyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVG_G_AO4InitVyAPSiA0___GTt1g5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach);
  swift_retain_n();
  Value = AGGraphGetValue();
  v4 = *(Value + 16);
  v3 = *(Value + 32);
  v5 = *Value;
  v11 = *(Value + 48);
  v10[1] = v4;
  v10[2] = v3;
  v10[0] = v5;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v10, &v8, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
  specialized ForEachState.update(view:)(v10);
  outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v10, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
  v6 = *(v1 + *(*v1 + 240));
  v8 = v1;
  v9 = v6;

  _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info, type metadata accessor for ForEachState.Info);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7ForEachVySnySiGSiAK15ModifiedContentVyAPyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVGG_AK14SecondaryChild33_E16FB36220E60E9D0940B6710E02DAD2LLVyAK4TextV9LayoutKeyVA_GTt1g5(char **a1)
{
  v2[7] = *MEMORY[0x1E69E9840];
  specialized SecondaryChild.value.getter(*a1, v2);
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK19ConcentricRectangleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK19ConcentricRectangleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK19ConcentricRectangleVG_AM4InitVyAO_GTt1g5()
{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  v1 = AGGraphGetValue();
  v2 = *v1;
  v3 = v1[1];
  memcpy(v5, __dst, 0x180uLL);
  v5[384] = v2;
  v5[385] = v3;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK18EllipticalGradientVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK16RoundedRectangleVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK16RoundedRectangleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK16RoundedRectangleVG_AM4InitVyAO_GTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK16RoundedRectangleV6_InsetVAK15ForegroundStyleVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK08AnimatedI0VyAK16RoundedRectangleV6_InsetVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void, void))
{
  v4[3] = *MEMORY[0x1E69E9840];
  a3(v4, *a1, *(a1 + 8), *(a1 + 16));
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK16RoundedRectangleV6_InsetVG_AM4InitVyAQ_GTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK15AngularGradientVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Rectangle, AngularGradient>, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK14RadialGradientVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Rectangle, RadialGradient>, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK14LinearGradientVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, type metadata accessor for _ShapeView<Rectangle, LinearGradient>, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07_ShadowK0V9_ResolvedVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI14GlassContainerO4ItemV2IDVAH12ForEachStateCAKCySayALGAnH0kM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI14kl2O4m10V2IDV_AI12opq25CALCySayAMGAoI0jL4View33_stuvwxyZ10DFLLV_GTG5AWxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnVIsgnndzo_Tf1nc_n03_s7i4UI12opq2C4m57C10invalidateyyFSbq_3key_AEyxq_q0__G5valuet_tXEfU_SayAA14kl25OADVG_AL2IDVAA0jF4View33_stuvwxyZ8DFLLVTG5AVTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH19LazyLayoutCacheItemCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI19opqR4CTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlNIsgnndzo_Tf1nc_n03_s7i4UI19opkq21C7collectyyFSbAA01_E7l5_IDV9n13V3key_AA0cdF4R15C5valuet_tXEfU_AH0opkQ0CTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI14GlassContainerO5EntryV8StableIDVAH12ForEachStateC4ItemCySayALGAnH15ModifiedContentVyAUyAH6ZStackVyAH0kmL4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAH21_TraitWritingModifierVyAH12_LayoutTraitVyAH0K12EffectLayoutAYLLV3KeyVGGGA1_yAH18TransitionTraitKeyVGG_GG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI14kl2O5m2V8n8IDV_AI12pqr2C4s13CySayAMGAoI15tu8VyAVyAI6v16VyAI0jlK4View33_xyZ138A0BD65FFBD3A7636B60067DFLLVGAI21_TraitWritingModifierVyAI12_LayoutTraitVyAI0J12EffectLayoutAZLLV3KeyVGGGA2_yAI18TransitionTraitKeyVGG_GTG5A16_xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyANA15_Isgnndzo_Tf1nc_n03_s7i4UI12pqr2C4s57C10invalidateyyFSbq_3key_AEyxq_q0__G5valuet_tXEfU_SayAA14kl2O5m6VG_AM8n7IDVAA15tu8VyARyAA6v16VyAA0jlK4View33_xyZ135A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0J12EffectLayoutAVLLV3KeyVGGGAZyAA18TransitionTraitKeyVGGTG5A15_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a5;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a5 = v9;
    }

    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void specialized Dictionary._Variant.remove(at:)(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = type metadata accessor for NamedImage.BitmapKey(0);
    outlined init with take of NamedImage.BitmapKey(v12 + *(*(v13 - 8) + 72) * a3, a1);
    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_2(*(v11 + 56) + 96 * a3, a2, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for [_ViewList_ID]);
    specialized _NativeDictionary._delete(at:)(a3, v11);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t specialized Dictionary._Variant.remove(at:)(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = (*(v9 + 48) + 16 * a2);
    v12 = v11[1];
    *a1 = *v11;
    a1[1] = v12;
    v13 = *(v10 + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v9);
    *v4 = v9;
    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 8 * a2);
    *a1 = *(*(v9 + 56) + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.remove(at:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = *(v9 + 48) + 40 * a2;
    v12 = *(v11 + 16);
    *a1 = *v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(v11 + 32);
    v13 = *(v10 + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v9);
    *v4 = v9;
    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = *(v9 + 48) + 24 * a2;
    *a1 = *v11;
    *(a1 + 8) = *(v11 + 8);
    v12 = *(v10 + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v9);
    *v4 = v9;
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.remove(at:)(void *a1, Swift::Int a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 8 * a2);
    *a1 = *(*(v9 + 56) + 8 * a2);
    specialized _NativeDictionary._delete(at:)(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized _ViewList_SublistTransform.push(_:flags:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *(v8 + 16);
  v15(&v23 - v13, v12);
  v16 = *a2;
  v17 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *a3 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *a3 = v17;
  }

  (v15)(v10, v14, a4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v10, a3, a4, v24);
  v21 = a3[1];
  *a3 = v17;
  a3[1] = v21 + (v16 & 1);
  return (*(v8 + 8))(v14, a4);
}

uint64_t specialized Slice.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v7 = v2[5];
  v8 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
  v14 = 2;
  v9 = (*(v8 + 16))(&v14, v7, v8);
  static Update.end()();
  result = _MovableLockUnlock(v6);
  if (a1 < 0 || v9 < a1)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v6);
    specialized static Update.begin()();
    v11 = v3[5];
    v12 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
    v14 = 2;
    v13 = (*(v12 + 16))(&v14, v11, v12);
    static Update.end()();
    result = _MovableLockUnlock(v6);
    if ((a2 & 0x8000000000000000) == 0 && v13 >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized closure #2 in KeyPath.makeGetFunction()@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x154uLL);
  memcpy(v5, __src, sizeof(v5));
  outlined init with copy of GlassContainer.Entry(__dst, v8);
  swift_getAtKeyPath();
  memcpy(v8, v5, 0x154uLL);
  result = outlined destroy of GlassContainer.Entry(v8);
  *a2 = v6;
  return result;
}

uint64_t specialized _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a7;
  v28 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
  outlined init with copy of AnyTrackedValue(v26, v24);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  if (swift_dynamicCast())
  {
    v25[1] = v22;
    v25[2] = v23;
    v25[0] = v21;
    *&v21 = *(&v23 + 1);
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v16 = a6[3];
      v17 = a6[4];
      __swift_project_boxed_opaque_existential_1(a6, v16);
      v18 = (*(v17 + 24))(a1, v25, a3, a4, a5 & 1, v16, v17);
      outlined destroy of _ViewList_SubgraphElements(v25);
      goto LABEL_9;
    }

    outlined destroy of _ViewList_SubgraphElements(v25);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    outlined destroy of [GlassContainer.Item](&v21, &lazy cache variable for type metadata for _ViewList_SubgraphElements?, &type metadata for _ViewList_SubgraphElements, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
  }

  __swift_project_boxed_opaque_existential_1(v26, v27);
  DynamicType = swift_getDynamicType();
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    *&v21 = DynamicType;
    AGGraphAddTraceEvent();
  }

  v18 = 0;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18 & 1;
}

uint64_t specialized closure #1 in closure #1 in SecondaryChild.value.getter(void (**a1)(uint64_t *), uint64_t a2)
{
  v2 = *a1;
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a2))
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E62F8]);
    v3 = *AGGraphGetValue();
  }

  v5 = v3;
  v2(&v5);
}

__n128 specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)(__n128 *a1, void (*a2)(_OWORD *__return_ptr, _OWORD *), uint64_t a3, _OWORD *a4)
{
  v5 = a4[1];
  v13[0] = *a4;
  v13[1] = v5;
  a2(v11, v13);
  v9 = v11[1];
  v10 = v11[0];
  v8 = v11[2];
  v6 = v12;
  outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(a1->n128_u64[0], a1->n128_i64[1], a1[1].n128_i64[0]);
  *a1 = v10;
  a1[1] = v9;
  result = v8;
  a1[2] = v8;
  a1[3].n128_u64[0] = v6;
  return result;
}

uint64_t specialized static _ViewList_ID.Explicit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  if (*a1 == *a2)
  {
    if (v2 != v5 || v3 != v6)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v8 = *(**a1 + 112);

  LOBYTE(v8) = v8(v9);

  result = 0;
  if ((v8 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t specialized static _ViewList_ID.ElementCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v6, v4);

  return v8 & (v7 == v5);
}

unint64_t specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(unint64_t result, char a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v16 = a2;
    if (!i)
    {
      break;
    }

    if (i < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = *(*v7 + 88);
      v9 = v8();
      if (v8() < 0)
      {
        break;
      }

      v10 = v8();
      if (v9 < 0 || v10 < v9)
      {
        goto LABEL_22;
      }

      v11 = __OFADD__(v4, v9);
      v4 += v9;
      if (v11)
      {
        goto LABEL_23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
      }

      ++v5;
      v6[2] = v13 + 1;
      v14 = &v6[2 * v13];
      v14[4] = v7;
      v14[5] = v4;
      if (i == v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v15 = a2;
    result = __CocoaSet.count.getter();
    a2 = v15;
  }

  v4 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
  result = v17;
  *(v17 + 24) = v6;
  *(v17 + 32) = v4;
  *(v17 + 16) = v16 & 1;
  return result;
}

uint64_t specialized BodyUnaryViewGenerator.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x1E69E9840];
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v25[0] = a4;
  v25[1] = a5;
  v26[0] = a1;
  v26[1] = a2;
  type metadata accessor for (_:)();
  result = AGCompareValues();
  if ((result & 1) == 0)
  {
    v14 = result;
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v10, static Log.graphReuse);
    _s2os6LoggerVSgWOcTm_0(v15, v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v16 = type metadata accessor for Logger();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26[0] = v21;
        *v20 = 136315138;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_18D018000, v18, v19, "Reuse failed: %s failed comparison", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x193AC4820](v21, -1, -1);
        MEMORY[0x193AC4820](v20, -1, -1);
      }

      (*(v17 + 8))(v12, v16);
    }

    return v14;
  }

  return result;
}

uint64_t specialized UnaryElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v50 = a3;
  v51 = a2;
  v65 = *MEMORY[0x1E69E9840];
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49[-v9];
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = a1;
  v18 = a1;
  v20 = v19;
  outlined init with copy of AnyTrackedValue(v18, v64);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  v21 = swift_dynamicCast();
  v22 = *(v20 + 56);
  if (!v21)
  {
    v22(v14, 1, 1, a4);
    (*(v12 + 8))(v14, v11);
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v8, static Log.graphReuse);
    _s2os6LoggerVSgWOcTm_0(v30, v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v31 = type metadata accessor for Logger();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v10, 1, v31) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_18D018000, v33, v34, "Reuse failed: other is not Unary", v35, 2u);
        MEMORY[0x193AC4820](v35, -1, -1);
      }

      (*(v32 + 8))(v10, v31);
    }

    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    DynamicType = swift_getDynamicType();
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      *&v63[0] = DynamicType;
      AGGraphAddTraceEvent();
    }

    return 0;
  }

  v22(v14, 0, 1, a4);
  v52 = v20;
  (*(v20 + 32))(v17, v14, a4);
  v23 = (v4 + *(a4 + 36));
  v24 = *v23;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for BodyInput<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for BodyInput);
  v26 = v25;
  result = MEMORY[0x193AC2090]();
  if (result)
  {
    v28 = MEMORY[0x1E69E7CC0];
    *&v64[0] = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      *&v63[0] = 0;
      v29 = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(v63, v24, result, v64, closure #1 in _GraphInputs.containsNonEmptyBodyStack.getter, 0);

      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v37 = &v17[*(a4 + 36)];
    v38 = *v37;
    result = MEMORY[0x193AC2090](v26);
    if (result)
    {
      *&v64[0] = v28;
      if (v38)
      {
        *&v63[0] = 0;
        v39 = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(v63, v38, result, v64, closure #1 in _GraphInputs.containsNonEmptyBodyStack.getter, 0);

        if ((v39 & 1) == 0)
        {
LABEL_19:
          (v52[1])(v17, a4);
          return 0;
        }
      }

      else
      {
      }

      v41 = v50;
      v42 = v51;
      if ((*(*(a4 + 24) + 16))(v17, v51, v50 & 1, *(a4 + 16)))
      {
        v43 = v23[1];
        v59[0] = *v23;
        v59[1] = v43;
        v44 = v23[2];
        v45 = v23[1];
        v56 = *v23;
        v57 = v45;
        v58 = v23[2];
        v46 = *(v37 + 2);
        v47 = *v37;
        v48 = *v37;
        v61 = *(v37 + 1);
        v62 = v46;
        v59[2] = v44;
        v60 = v47;
        v53 = v48;
        v54 = v61;
        v55 = *(v37 + 2);
        outlined init with copy of _GraphInputs(v59, v64);
        outlined init with copy of _GraphInputs(&v60, v64);
        v40 = _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(&v53, v42, v41 & 1);
        v63[0] = v53;
        v63[1] = v54;
        v63[2] = v55;
        outlined destroy of _GraphInputs(v63);
        v64[0] = v56;
        v64[1] = v57;
        v64[2] = v58;
        outlined destroy of _GraphInputs(v64);
      }

      else
      {
        v40 = 0;
      }

      (v52[1])(v17, a4);
      return v40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized EmptyViewListElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1)
{
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-v4 - 8];
  outlined init with copy of AnyTrackedValue(a1, v15);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v7 = result;
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, static Log.graphReuse);
    _s2os6LoggerVSgWOcTm_0(v8, v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v9 = type metadata accessor for Logger();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_18D018000, v11, v12, "Reuse failed: other is not Empty", v13, 2u);
        MEMORY[0x193AC4820](v13, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
    }

    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList()
{
  result = lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList;
  if (!lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList;
  if (!lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseViewList and conformance BaseViewList);
  }

  return result;
}

uint64_t partial apply for closure #1 in ViewList.allViewIDs.getter(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];

  specialized Array.append<A>(contentsOf:)(v2, v1, v3);
  return 1;
}

void type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for [_ViewList_ID], &type metadata for _ViewList_ID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]();
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]();
    v0 = type metadata accessor for _ViewList_ID._Views();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A])
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for [_ViewList_ID], &type metadata for _ViewList_ID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID;
  if (!lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A])
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for [_ViewList_ID], &type metadata for _ViewList_ID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A]);
  }

  return result;
}

uint64_t outlined assign with take of _ViewList_SubgraphElements(__int128 *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a2);
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 40) = *(a1 + 5);

  return a2;
}

uint64_t partial apply for closure #1 in _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  v5 = 0;
  return v2(&v4);
}

uint64_t outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  (**(v4 - 8))(a2 + 8, a1 + 8);
  *(a2 + 48) = *(a1 + 48);
  return a2;
}

uint64_t partial apply for closure #2 in _ViewList_Node.applySublists(from:style:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *a5;
  v9 = *(a5 + 8);
  v13 = *a2;
  v11 = v8;
  v12 = v9;
  return _ViewList_Node.applySublists(from:style:transform:to:)(a1, &v13, &v11, v6, v7) & 1;
}

uint64_t partial apply for closure #1 in _ViewList_Section.applyNodes(from:style:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8 = *a4;
  v9 = *(a4 + 8);
  v16 = *a2;
  v13 = v5;
  v14 = v6 == 0;
  v15 = v6 == 2;
  v11 = v8;
  v12 = v9;
  return v7(a1, &v16, a3, &v13, &v11) & 1;
}

void type metadata accessor for GestureConstantsProvider.Type?(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ViewList_ID._Views<_ViewList_ID_Views>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID_Views>)
  {
    type metadata accessor for _ViewList_ID_Views();
    v1 = lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _ViewList_ID_Views and conformance _ViewList_ID_Views, v0, type metadata accessor for _ViewList_ID_Views);
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(v1, v2);
    v3 = type metadata accessor for _ViewList_ID._Views();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID_Views>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _ViewList_ID_Views and conformance _ViewList_ID_Views, a2, type metadata accessor for _ViewList_ID_Views);
}

{
  return lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _ViewList_ID_Views and conformance _ViewList_ID_Views, a2, type metadata accessor for _ViewList_ID_Views);
}

void type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, &type metadata for _ViewList_ID, MEMORY[0x1E69E6C30]);
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>();
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>();
    v0 = type metadata accessor for _ViewList_ID._Views();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>()
{
  result = lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>;
  if (!lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, &type metadata for _ViewList_ID, MEMORY[0x1E69E6C30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>;
  if (!lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, &type metadata for _ViewList_ID, MEMORY[0x1E69E6C30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_Group and conformance _ViewList_Group()
{
  result = lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group;
  if (!lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group;
  if (!lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Group and conformance _ViewList_Group);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubgraphList and conformance SubgraphList()
{
  result = lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList;
  if (!lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList;
  if (!lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphList and conformance SubgraphList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewListInputs.Options and conformance _ViewListInputs.Options()
{
  result = lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options;
  if (!lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options;
  if (!lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options;
  if (!lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options;
  if (!lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListInputs.Options and conformance _ViewListInputs.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_Edit and conformance _ViewList_Edit()
{
  result = lazy protocol witness table cache variable for type _ViewList_Edit and conformance _ViewList_Edit;
  if (!lazy protocol witness table cache variable for type _ViewList_Edit and conformance _ViewList_Edit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Edit and conformance _ViewList_Edit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags()
{
  result = lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags;
  if (!lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags;
  if (!lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags;
  if (!lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags;
  if (!lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_SublistTransform_ItemFlags and conformance _ViewList_SublistTransform_ItemFlags);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_ViewList_ID.ElementCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<_ViewList_ID.ElementCollection>, lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<_ViewList_ID.ElementCollection> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<_ViewList_ID.ElementCollection> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<_ViewList_ID.ElementCollection> and conformance Slice<A>)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<_ViewList_ID.ElementCollection>, lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<_ViewList_ID.ElementCollection> and conformance Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexingIterator<_ViewList_ID.ElementCollection> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<_ViewList_ID.ElementCollection> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<_ViewList_ID.ElementCollection> and conformance IndexingIterator<A>)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for IndexingIterator<_ViewList_ID.ElementCollection>, lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<_ViewList_ID.ElementCollection> and conformance IndexingIterator<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_ViewList_ID_Views> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<_ViewList_ID_Views>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<_ViewList_ID_Views>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for _ViewList_ID_Views();
    v8 = lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _ViewList_ID_Views and conformance _ViewList_ID_Views, v7, type metadata accessor for _ViewList_ID_Views);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for EmptyViewList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ViewListSublistSlice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ViewListSublistSlice and conformance ViewListSublistSlice();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewListSublistSlice and conformance ViewListSublistSlice()
{
  result = lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice;
  if (!lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice;
  if (!lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewListSublistSlice and conformance ViewListSublistSlice);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ViewList_Group.Init(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ViewList_Group(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ViewList_Group and conformance _ViewList_Group();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ViewList_Section(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section();
  *(a1 + 8) = result;
  return result;
}

uint64_t *keypath_set_52Tm(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t assignWithCopy for _ViewListInputs(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  swift_weakCopyAssign();
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  return a1;
}

uint64_t assignWithTake for _ViewListInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  swift_weakTakeAssign();
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewListInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t storeEnumTagSinglePayload for _ViewListInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ViewListCountInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for _ViewListCountInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewListCountInputs(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for _ViewListCountInputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ViewListOutputs(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of _ViewListOutputs.Views(a1);
    if (*(a2 + 40))
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 1;
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 32);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v5;
  return a1;
}

uint64_t assignWithTake for _ViewListOutputs(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of _ViewListOutputs.Views(result);
    result = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
  }

  v5 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v5;
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t assignWithCopy for _ViewListOutputs.Views(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithCopy for _ViewList_Sublist(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  __swift_assign_boxed_opaque_existential_1((a1 + 32), (a2 + 32));
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v4;
  return a1;
}

uint64_t assignWithTake for _ViewList_Sublist(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewList_Sublist(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 93))
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

uint64_t storeEnumTagSinglePayload for _ViewList_Sublist(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 93) = 1;
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

    *(result + 93) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ViewList_Node(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 93);
    if (v4 >= 4)
    {
      v4 = *a1 + 4;
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
      }
    }

    else
    {
      if (!v4)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

LABEL_12:
    v5 = *(a2 + 93);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *a1 = *a2;
        *(a1 + 93) = 2;
LABEL_22:

        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v11 = 3;
    }

    else
    {
      if (!v5)
      {
        v6 = *(a2 + 24);
        *(a1 + 24) = v6;
        *(a1 + 32) = *(a2 + 32);
        (**(v6 - 8))(a1, a2);
        v7 = *(a2 + 44);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 44) = v7;
        *(a1 + 93) = 0;
        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 20) = *(a2 + 20);
      *(a1 + 24) = *(a2 + 24);
      v8 = *(a2 + 56);
      *(a1 + 56) = v8;
      *(a1 + 64) = *(a2 + 64);
      v9 = **(v8 - 8);

      v9(a1 + 32, a2 + 32, v8);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v10 = *(a2 + 88);
      *(a1 + 92) = *(a2 + 92);
      *(a1 + 88) = v10;
      v11 = 1;
    }

    *(a1 + 93) = v11;

    goto LABEL_22;
  }

  return a1;
}

__n128 __swift_memcpy94_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for _ViewList_Node(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 93);
  if (v4 >= 4)
  {
    v4 = *a1 + 4;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
    }

    goto LABEL_11;
  }

  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 32);

LABEL_11:

    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_12:
  v5 = *(a2 + 93);
  if (v5 >= 4)
  {
    v5 = *a2 + 4;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      *a1 = *a2;
      LOBYTE(v5) = 2;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 9) = *(a2 + 9);
      LOBYTE(v5) = 3;
    }
  }

  else if (v5)
  {
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 77) = *(a2 + 77);
    v8 = *(a2 + 16);
    LOBYTE(v5) = 1;
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 29) = *(a2 + 29);
  }

  *(a1 + 93) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewList_Node(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 94))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 93);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ViewList_Node(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 78) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 94) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 94) = 0;
    }

    if (a2)
    {
      *(result + 93) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ViewList_Node(uint64_t a1)
{
  result = *(a1 + 93);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for _ViewList_Node(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 77) = 0u;
    v2 = a2 - 4;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 93) = a2;
  return result;
}

uint64_t assignWithCopy for _ViewList_ID.Explicit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for _ViewList_ID.Explicit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewList_ID.Explicit(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t storeEnumTagSinglePayload for _ViewList_ID.Explicit(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ViewList_ID.Canonical(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for _ViewList_ID.Canonical(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *initializeBufferWithCopyOfBuffer for _ViewList_ID.ElementCollection(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithCopy for _ViewList_ID.ElementCollection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *assignWithTake for _ViewList_ID.ElementCollection(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

uint64_t initializeWithCopy for ViewListSublistSlice(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *assignWithCopy for ViewListSublistSlice(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for ViewListSublistSlice(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewListSublistSlice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ViewListSublistSlice(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t initializeWithCopy for _ViewList_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for _ViewList_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for _ViewList_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t destroy for _ViewList_SubgraphElements(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for _ViewList_SubgraphElements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for _ViewList_SubgraphElements(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for _ViewList_SubgraphElements(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  a4(v9);
  return a1;
}

uint64_t destroy for ModifiedElements(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t assignWithCopy for ModifiedElements(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for ModifiedElements(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t initializeWithCopy for _ViewList_TemporarySublistTransform.ItemNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void *assignWithCopy for _ViewList_TemporarySublistTransform.ItemNode(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for _ViewList_TemporarySublistTransform.ItemNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewList_TemporarySublistTransform.ItemNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for _ViewList_TemporarySublistTransform.ItemNode(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t assignWithCopy for BaseViewList(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for BaseViewList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for BaseViewList(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BaseViewList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MergedElements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for MergedElements(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

_OWORD *assignWithTake for MergedElements(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  return a1;
}

void *assignWithCopy for BodyUnaryViewGenerator(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for BodyUnaryViewGenerator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t destroy for UnaryElements(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t assignWithCopy for UnaryElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  return a1;
}

uint64_t initializeWithTake for UnaryElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithTake for UnaryElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for UnaryElements(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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

double storeEnumTagSinglePayload for UnaryElements(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 40) = 0;
      result = 0.0;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 16) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t assignWithCopy for BaseViewList.Init(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 52) = v4;
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v5;
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithTake for BaseViewList.Init(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for BaseViewList.Init(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ViewListOutputs.ApplyModifiers(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SubgraphList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SubgraphList and conformance SubgraphList();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BaseViewList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Attribute<ViewList>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for (_ViewList_Elements, Int)()
{
  if (!lazy cache variable for type metadata for (_ViewList_Elements, Int))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _ViewList_Elements);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ViewList_Elements, Int));
    }
  }
}

uint64_t partial apply for specialized closure #1 in PreferenceTransform.value.getter(uint64_t a1)
{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t outlined destroy of [GlassContainer.Item](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>(uint64_t a1)
{
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for _SafeAreaInsetsModifier, type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined copy of Text.Suffix.Storage(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>()
{
  if (!lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>)
  {
    type metadata accessor for TapComponent<TouchEvent>();
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type TapComponent<TouchEvent> and conformance TapComponent<A>, 255, type metadata accessor for TapComponent<TouchEvent>);
    v0 = type metadata accessor for GestureComponentAttachmentModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedViewList and conformance ModifiedViewList()
{
  result = lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList;
  if (!lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList;
  if (!lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedViewList and conformance ModifiedViewList);
  }

  return result;
}

uint64_t objectdestroy_40Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(void *a1)
{
  if (*a1 > 0x80000000FFFFFFFFLL)
  {
    return -HIDWORD(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of [GlassContainer.Item](uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for [_ViewList_ID](0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

int8x16_t _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(int8x16_t *a1)
{
  v1 = vandq_s8(a1[1], xmmword_18DDE49D0);
  *a1 = vandq_s8(*a1, xmmword_18DDE49C0);
  a1[1] = v1;
  result = vandq_s8(a1[8], xmmword_18DDE49E0);
  a1[8] = result;
  return result;
}

uint64_t specialized closure #1 in AnchorWriter.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v57 = a3;
  v62 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v54 - v17;
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v54 - v23;
  *&v64 = __PAIR64__(a5, a4);
  DWORD2(v64) = a6;
  v25 = (*(*a1 + 88))(&v64, v22);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v26 = static ObservationCenter._current;
  swift_beginAccess();
  v27 = pthread_getspecific(*(v26 + 2));
  if (!v27)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(*(v26 + 2), v28);
    v65 = type metadata accessor for ObservationCenter();
    *&v64 = *(v26 + 3);
    outlined init with take of Any(&v64, v28);

    v27 = v28;
  }

  outlined init with copy of Any(v27, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
    *(v62 + 24) = v25;
    goto LABEL_9;
  }

  v54 = v13;
  v55 = CurrentAttribute;
  swift_beginAccess();
  v56 = *(v29 + 24);
  *(v29 + 24) = MEMORY[0x1E69E7CC0];
  (*(v11 + 56))(v24, 1, 1, v10);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v61 = v11;
  v32 = *(StatusReg + 848);
  *(StatusReg + 848) = v24;
  (v62)(&v63, v25);
  v57 = v63;
  *(StatusReg + 848) = v32;
  v33 = v61;
  _s2os6LoggerVSgWOcTm_0(v24, v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v34 = (*(v33 + 6))(v20, 1, v10);
  v62 = v29;
  v60 = v10;
  if (v34 == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
    v24 = v20;
    v35 = v29;
    goto LABEL_12;
  }

  v13 = v25;
  v26 = *(v33 + 4);
  v36 = v59;
  v26(v59, v20, v10);
  (*(v33 + 2))(v58, v36, v10);
  v25 = *(v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 24) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v39 = *(v25 + 2);
  v38 = *(v25 + 3);
  if (v39 >= v38 >> 1)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v25);
  }

  *(v25 + 2) = v39 + 1;
  v40 = v60;
  v41 = &v25[((v61[80] + 32) & ~v61[80]) + *(v61 + 9) * v39];
  v33 = v61;
  v26(v41, v58, v60);
  v35 = v62;
  *(v62 + 24) = v25;
  (*(v33 + 1))(v59, v40);
  v25 = v13;
LABEL_12:
  _s2os6LoggerVSgWOhTm_0(v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v42 = *(v35 + 24);
  v43 = *(v42 + 2);
  if (v43)
  {
    v61 = v25;
    v46 = *(v33 + 2);
    v44 = v33 + 16;
    v45 = v46;
    v47 = &v42[(*(v44 + 64) + 32) & ~*(v44 + 64)];
    v48 = v44[7];
    v49 = v44 - 1;
    v59 = v42;

    v50 = v55;
    v51 = v60;
    v52 = v54;
    do
    {
      v45(v52, v47, v51);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v50, v52);
      v35 = v62;
      (*v49)(v52, v51);
      v47 += v48;
      --v43;
    }

    while (v43);
  }

  *(v35 + 24) = v56;

  return v57;
}

uint64_t specialized LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v114 = *MEMORY[0x1E69E9840];
  result = swift_beginAccess();
  v5 = *(v2 + 160);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = 64;
    v9 = MEMORY[0x1E69E7CC8];
    while (v7 < *(v5 + 2))
    {
      if (*(*&v5[v8] + 16))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 160) = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          *(v3 + 160) = v5;
        }

        if (v7 >= *(v5 + 2))
        {
          goto LABEL_43;
        }

        *&v5[v8] = v9;
        *(v3 + 160) = v5;
        swift_endAccess();

        ++*(v3 + 172);
      }

      ++v7;
      v8 += 208;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

LABEL_10:
  v11 = a1;
  if (*(a1 + 16))
  {
    v12 = *(v5 + 2);
    if (v12)
    {
      v13 = 0;
      v72 = *MEMORY[0x1E698D3F8];
      v14 = 232;
      v70 = *(v5 + 2);
      do
      {
        v15 = _s7SwiftUI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E966events5index3boxSDyAA7EventIDVAA0Q4Type_pGAL_SiAA0cD3BoxAELLCtFAA07DefaultcD0V_Tt2g5(v11, v13, v3);
        if (*(v15 + 16))
        {
          v16 = *(v3 + 160);
          if (v13 >= *(v16 + 2))
          {
            goto LABEL_44;
          }

          swift_beginAccess();

          v17 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 160) = v16;
          if ((v17 & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
            *(v3 + 160) = v16;
          }

          if (v13 >= *(v16 + 2))
          {
            goto LABEL_45;
          }

          specialized Set.formUnion<A>(_:)(v15);
          *(v3 + 160) = v16;
          v18 = *(v16 + 2);

          if (v13 >= v18)
          {
            goto LABEL_46;
          }

          *&v16[v14 - 168] = v15;
          *(v3 + 160) = v16;
          swift_endAccess();

          ++*(v3 + 172);
          v19 = *(v3 + 160);
          if (v13 >= *(v19 + 16))
          {
            goto LABEL_47;
          }

          if (*(v19 + v14 - 172))
          {
            if (AGSubgraphIsValid())
            {
              v20 = *(v19 + v14 - 192);
              v68 = v20;
              v21 = AGSubgraphGetGraph();
              v22 = AGSubgraphCreate();

              AGSubgraphAddChild();
              AGGraphClearUpdate();
              v66 = AGSubgraphGetCurrent();
              v67 = v22;
              AGSubgraphSetCurrent();
              v23 = *(v3 + 16);
              v92 = *(v3 + 32);
              v24 = *(v3 + 96);
              v95 = *(v3 + 80);
              v96 = v24;
              v97[0] = *(v3 + 112);
              *(v97 + 12) = *(v3 + 124);
              v91 = *(v3 + 16);
              v25 = *(v3 + 64);
              v93 = *(v3 + 48);
              v94 = v25;
              v26 = v92;
              v90 = v23;
              v27 = *(v3 + 56);
              v84 = *(v3 + 40);
              v85 = v27;
              v89 = *(v3 + 120);
              v28 = *(v3 + 104);
              v29 = *(v3 + 72);
              v87 = *(v3 + 88);
              v88 = v28;
              v86 = v29;
              v73 = *(&v97[1] + 4);
              swift_beginAccess();
              v30 = v26[3];
              v98[1] = v26[2];
              v98[2] = v30;
              v31 = v26[5];
              v98[3] = v26[4];
              v98[4] = v31;
              v98[0] = v26[1];
              type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
              v71 = swift_allocObject();
              memmove((v71 + 16), v26 + 1, 0x50uLL);
              outlined init with copy of _GestureInputs(&v91, &v102);
              outlined init with copy of CachedEnvironment(v98, &v102);

              v102.i64[0] = __PAIR64__(v20, a2);
              protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
              type metadata accessor for [EventID : EventType]();
              type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for LayoutChildEvents<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutChildEvents);
              lazy protocol witness table accessor for type LayoutChildEvents<DefaultLayoutGesture> and conformance LayoutChildEvents<A>();
              v32 = Attribute.init<A>(body:value:flags:update:)();
              v102.i64[0] = __PAIR64__(v68, a2);
              protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
              type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for LayoutChildSeed<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutChildSeed);
              lazy protocol witness table accessor for type LayoutChildSeed<DefaultLayoutGesture> and conformance LayoutChildSeed<A>();
              v33 = Attribute.init<A>(body:value:flags:update:)();
              v34 = *(v3 + 160);
              if (v13 >= *(v34 + 16))
              {
                goto LABEL_51;
              }

              v35 = v33;
              v36 = *(v34 + v14 - 200);
              v99 = v90;
              *v100 = v71;
              *&v100[88] = v89;
              *&v100[72] = v88;
              *&v100[56] = v87;
              *&v100[40] = v86;
              *&v100[8] = v84;
              *&v100[24] = v85;
              *&v100[92] = v32;
              *&v100[96] = v33;
              *&v100[100] = v73;
              v81 = *&v100[48];
              v82 = *&v100[64];
              v83[0] = *&v100[80];
              *(v83 + 12) = *&v100[92];
              v77 = v90;
              v78 = *v100;
              v79 = *&v100[16];
              v80 = *&v100[32];
              v37 = *(*v36 + 112);

              outlined init with copy of _GestureInputs(&v99, &v102);
              v37(v75, &v77);

              v106 = v81;
              v107 = v82;
              v108[0] = v83[0];
              *(v108 + 12) = *(v83 + 12);
              v102 = v77;
              v103 = v78;
              v104 = v79;
              v105 = v80;
              outlined destroy of _GestureInputs(&v102);
              v110 = v90;
              *&v111[40] = v86;
              *&v111[56] = v87;
              *&v111[72] = v88;
              *&v111[8] = v84;
              *v111 = v71;
              *&v111[88] = v89;
              *&v111[24] = v85;
              *&v111[92] = v32;
              LODWORD(v112) = v35;
              *(&v112 + 4) = v73;
              outlined destroy of _GestureInputs(&v110);
              AGSubgraphSetCurrent();

              AGGraphSetUpdate();
              v39 = v75[0];
              v38 = HIDWORD(v75[0]);
              v40 = v75[1];
              v74 = v76;
              swift_beginAccess();
              v41 = *(v3 + 160);
              v42 = v67;
              v43 = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 160) = v41;
              if ((v43 & 1) == 0)
              {
                v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
                *(v3 + 160) = v41;
              }

              if (v13 >= *(v41 + 2))
              {
                goto LABEL_52;
              }

              v44 = *&v41[v14 - 184];
              *&v41[v14 - 184] = v67;
              *(v3 + 160) = v41;
              swift_endAccess();

              v11 = a1;
            }

            else
            {
              specialized static GraphHost.currentHost.getter();
              type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
              v39 = specialized GraphHost.intern<A>(_:for:id:)(768, v45, 4);

              v74 = 0;
              v38 = v72;
              v40 = MEMORY[0x1E69E7CC0];
            }

            swift_beginAccess();
            v46 = *(v3 + 160);
            v47 = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 160) = v46;
            if ((v47 & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
            }

            if (v13 >= *(v46 + 2))
            {
              goto LABEL_48;
            }

            v48 = &v46[v14];
            *(v48 - 44) = v39;
            *(v48 - 172) = 0;
            *(v3 + 160) = v46;
            if (v38 == v72)
            {
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOi0_(&v110);
            }

            else
            {
              v99.i32[0] = v38;
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi0_(&v99);
              v108[0] = *&v100[80];
              v108[1] = *&v100[96];
              v109 = v101;
              v104 = *&v100[16];
              v105 = *&v100[32];
              v106 = *&v100[48];
              v107 = *&v100[64];
              v102 = v99;
              v103 = *v100;
              _ViewInputs.base.modify(&v102, v49);
              *&v111[80] = v108[0];
              v112 = v108[1];
              v113 = v109;
              *&v111[16] = v104;
              *&v111[32] = v105;
              *&v111[48] = v106;
              *&v111[64] = v107;
              v110 = v102;
              *v111 = v103;
            }

            *(v3 + 160) = v46;
            if (v13 >= *(v46 + 2))
            {
              goto LABEL_49;
            }

            v50 = &v46[v14];
            v102 = *&v46[v14 - 152];
            v51 = *&v46[v14 - 136];
            v52 = *&v46[v14 - 120];
            v53 = *&v46[v14 - 88];
            v105 = *&v46[v14 - 104];
            v106 = v53;
            v103 = v51;
            v104 = v52;
            v54 = *&v46[v14 - 72];
            v55 = *&v46[v14 - 56];
            v56 = *&v46[v14 - 24];
            v108[1] = *&v46[v14 - 40];
            v109 = v56;
            v107 = v54;
            v108[0] = v55;
            *(v50 - 152) = v110;
            v57 = *v111;
            v58 = *&v111[16];
            v59 = *&v111[32];
            *(v50 - 88) = *&v111[48];
            *(v50 - 104) = v59;
            *(v50 - 120) = v58;
            *(v50 - 136) = v57;
            v60 = *&v111[64];
            v61 = *&v111[80];
            v62 = v112;
            *(v50 - 24) = v113;
            *(v50 - 40) = v62;
            *(v50 - 56) = v61;
            *(v50 - 72) = v60;
            *(v3 + 160) = v46;
            swift_endAccess();
            outlined destroy of [GlassContainer.Item](&v102, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
            swift_beginAccess();
            v63 = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 160) = v46;
            if ((v63 & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
              *(v3 + 160) = v46;
            }

            if (v13 >= *(v46 + 2))
            {
              goto LABEL_50;
            }

            v64 = &v46[v14];
            *(v64 - 1) = v40;
            *v64 = v74;
            *(v3 + 160) = v46;
            swift_endAccess();

            v12 = v70;
          }
        }

        else
        {
        }

        ++v13;
        v14 += 208;
      }

      while (v12 != v13);
    }
  }

  return result;
}

int8x16_t _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi0_(int8x16_t *a1)
{
  result = vandq_s8(*a1, xmmword_18DDE49C0);
  v2 = vandq_s8(a1[1], xmmword_18DDE49D0);
  v3 = a1[8].i64[0] & 3;
  v4 = a1[8].i64[1] & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  *a1 = result;
  a1[1] = v2;
  a1[8].i64[0] = v3;
  a1[8].i64[1] = v4;
  return result;
}

double _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOi0_(uint64_t a1)
{
  *a1 = 0xFFFFFFFF00000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutChildEvents<DefaultLayoutGesture> and conformance LayoutChildEvents<A>()
{
  result = lazy protocol witness table cache variable for type LayoutChildEvents<DefaultLayoutGesture> and conformance LayoutChildEvents<A>;
  if (!lazy protocol witness table cache variable for type LayoutChildEvents<DefaultLayoutGesture> and conformance LayoutChildEvents<A>)
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for LayoutChildEvents<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutChildEvents);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildEvents<DefaultLayoutGesture> and conformance LayoutChildEvents<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutChildSeed<DefaultLayoutGesture> and conformance LayoutChildSeed<A>()
{
  result = lazy protocol witness table cache variable for type LayoutChildSeed<DefaultLayoutGesture> and conformance LayoutChildSeed<A>;
  if (!lazy protocol witness table cache variable for type LayoutChildSeed<DefaultLayoutGesture> and conformance LayoutChildSeed<A>)
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for LayoutChildSeed<DefaultLayoutGesture>, &type metadata for DefaultLayoutGesture, &protocol witness table for DefaultLayoutGesture, type metadata accessor for LayoutChildSeed);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildSeed<DefaultLayoutGesture> and conformance LayoutChildSeed<A>);
  }

  return result;
}

uint64_t outlined destroy of Set<EventID>(uint64_t a1)
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Set<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E64E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = v3;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI14GlassContainerO4ItemV2IDVAH12ForEachStateCAKCySayALGAnH0kM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI14kl2O4m10V2IDV_AI12opq25CALCySayAMGAoI0jL4View33_stuvwxyZ10DFLLV_GTG5AWxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnVIsgnndzo_Tf1nc_n03_s7i4UI12opq2C4m57C10invalidateyyFSbq_3key_AEyxq_q0__G5valuet_tXEfU_SayAA14kl25OADVG_AL2IDVAA0jF4View33_stuvwxyZ8DFLLVTG5AVTf1nnc_nTm(v16, v10, a1, a2, a3);
      MEMORY[0x193AC4820](v16, -1, -1);

      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v13 = v5;
  v14 = specialized closure #1 in _NativeDictionary.filter(_:)(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a1, a2, a3);

  if (v13)
  {
    swift_willThrow();
  }

  return v14;
}

{
  v5 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](v12);
    bzero(v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = specialized closure #1 in _NativeDictionary.filter(_:)(v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a1, a2, a3);
    if (v5)
    {
      swift_willThrow();
    }

    v15 = v13;

    return v15;
  }

  v16 = swift_slowAlloc();

  v17 = v5;
  v15 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI14GlassContainerO5EntryV8StableIDVAH12ForEachStateC4ItemCySayALGAnH15ModifiedContentVyAUyAH6ZStackVyAH0kmL4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAH21_TraitWritingModifierVyAH12_LayoutTraitVyAH0K12EffectLayoutAYLLV3KeyVGGGA1_yAH18TransitionTraitKeyVGG_GG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI14kl2O5m2V8n8IDV_AI12pqr2C4s13CySayAMGAoI15tu8VyAVyAI6v16VyAI0jlK4View33_xyZ138A0BD65FFBD3A7636B60067DFLLVGAI21_TraitWritingModifierVyAI12_LayoutTraitVyAI0J12EffectLayoutAZLLV3KeyVGGGA2_yAI18TransitionTraitKeyVGG_GTG5A16_xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyANA15_Isgnndzo_Tf1nc_n03_s7i4UI12pqr2C4s57C10invalidateyyFSbq_3key_AEyxq_q0__G5valuet_tXEfU_SayAA14kl2O5m6VG_AM8n7IDVAA15tu8VyARyAA6v16VyAA0jlK4View33_xyZ135A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0J12EffectLayoutAVLLV3KeyVGGGAZyAA18TransitionTraitKeyVGGTG5A15_Tf1nnc_nTm(v16, v10, a1, a2, a3);
  MEMORY[0x193AC4820](v16, -1, -1);

  if (!v17)
  {
    return v15;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v13) != a4)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return a5();
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return a5();
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6530];
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = v7;
    type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, &type metadata for _OffsetEffect, type metadata accessor for ModifiedContent);
    v12[0] = v8;
    v12[1] = v6;
    v12[2] = v9;
    v12[3] = _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_3(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    v12[4] = MEMORY[0x1E69E6540];
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t partial apply for specialized closure #2 in KeyPath.makeGetFunction()@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for ForEachState.Item);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6530];
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = v7;
    type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, &type metadata for _OffsetEffect, type metadata accessor for ModifiedContent);
    v10 = v9;
    v11 = _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_3(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    v12 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v15[0] = v8;
    v15[1] = v6;
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = MEMORY[0x1E69E6540];
    v15[5] = v12;
    v13 = a3(a1, v15);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

uint64_t outlined init with copy of EventListenerPhase<TappableEvent>.Value(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, a3, a4, a5, type metadata accessor for EventListenerPhase.Value);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of EventListenerPhase<TappableEvent>.Value(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, a2, a3, a4, type metadata accessor for EventListenerPhase.Value);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement()
{
  result = lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement;
  if (!lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement;
  if (!lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProjectionTransformElement and conformance ProjectionTransformElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement()
{
  result = lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement;
  if (!lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement;
  if (!lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffineTransformElement and conformance AffineTransformElement);
  }

  return result;
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item?(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for ForEachState.Item);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t partial apply for specialized closure #1 in KeyPath.makeGetFunction()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(v2 + 16));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t outlined assign with take of Slice<SubviewsCollection>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA08DurationD0VyAEGAA0F8ListenerVyAEGGAEGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(a4, 255, a5);
    v8 = type metadata accessor for Map2Gesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    type metadata accessor for [_ViewList_ID](255, a3, a4, type metadata accessor for GesturePhase);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for ModifierGesture<RequiredTapCountWriter<TappableEvent>, ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<RequiredTapCountWriter<TappableEvent>, ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RequiredTapCountWriter);
    type metadata accessor for ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>();
    lazy protocol witness table accessor for type RequiredTapCountWriter<TappableEvent> and conformance RequiredTapCountWriter<A>();
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>, 255, type metadata accessor for ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<RequiredTapCountWriter<TappableEvent>, ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for CategoryGesture);
    type metadata accessor for ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>();
    lazy protocol witness table accessor for type CategoryGesture<TappableEvent> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>, 255, type metadata accessor for ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<TappableEvent>, ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatGesture);
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
    lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>();
    lazy protocol witness table accessor for type SingleTapGesture<TappableEvent> and conformance SingleTapGesture<A>();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>()
{
  result = lazy protocol witness table cache variable for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>;
  if (!lazy protocol witness table cache variable for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatGesture<TappableEvent> and conformance RepeatGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<TappableEvent> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<TappableEvent> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<TappableEvent> and conformance CategoryGesture<A>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for CategoryGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<TappableEvent> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequiredTapCountWriter<TappableEvent> and conformance RequiredTapCountWriter<A>()
{
  result = lazy protocol witness table cache variable for type RequiredTapCountWriter<TappableEvent> and conformance RequiredTapCountWriter<A>;
  if (!lazy protocol witness table cache variable for type RequiredTapCountWriter<TappableEvent> and conformance RequiredTapCountWriter<A>)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RequiredTapCountWriter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequiredTapCountWriter<TappableEvent> and conformance RequiredTapCountWriter<A>);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in KeyPath.makeGetFunction()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return outlined init with copy of AnyHashable(a1 + *(v2 + 16), a2);
}

{
  v3 = a1 + *(v2 + 16);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
}

uint64_t outlined destroy of _ViewList_SubgraphElements(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return a1;
}

uint64_t outlined init with take of NamedImage.BitmapKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedImage.BitmapKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for SubgraphList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for SubgraphList(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

unint64_t instantiation function for generic protocol witness table for ModifiedViewList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ModifiedViewList and conformance ModifiedViewList();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Slice<_ViewList_ID.ElementCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v7 = v6;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>();
    v11[0] = v7;
    v11[1] = &type metadata for GlassContainer.Entry.StableID;
    v11[2] = v8;
    v11[3] = lazy protocol witness table accessor for type [GlassContainer.Entry] and conformance [A]();
    v11[4] = lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v11[5] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO4ItemVGAI2IDVAA0gI4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for [_ViewList_ID](255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v9[0] = v6;
    v9[1] = &type metadata for GlassContainer.Item.ID;
    v9[2] = &type metadata for GlassItemView;
    v9[3] = lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A]();
    v9[4] = lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v9[5] = lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for [_ViewList_ID](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for specialized closure #1 in AnchorWriter.value.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in AnchorWriter.value.getter(*a1, a1[1], a1[2], *(v2 + 20), *(v2 + 24), *(v2 + 28));
  *a2 = result;
  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5(void *a1, uint64_t a2)
{

  return sub_18D3B3B74(a1, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6AnchorVySo6CGRectVG_AK12PlatformItemV15GeometryContentV04InitH0VTt1g5()
{

  return sub_18D3B3BE0();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK14_PaddingLayoutVGTt1g5(void *a1, uint64_t a2)
{

  return sub_18D3B3C38(a1, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK30_SafeAreaRegionsIgnoringLayoutVGTt1g5(uint64_t *a1)
{

  return sub_18D3B3CA4(a1);
}

uint64_t ForEachSubviewCollection.init<A>(elementOf:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v34 = a8;
  v30 = a1;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  v17 = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  v36 = &type metadata for SubviewsCollection;
  v37 = &type metadata for Subview.ID;
  v38 = a4;
  v39 = v16;
  v40 = v17;
  v18 = type metadata accessor for ForEach();
  v35 = a6;
  WitnessTable = swift_getWitnessTable();
  v36 = a5;
  v37 = v18;
  v38 = a7;
  v39 = WitnessTable;
  v20 = type metadata accessor for GroupElementsOfContent();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v29 - v22);
  (*(v13 + 16))(v15, a1, a5, v21);
  v24 = swift_allocObject();
  v25 = v32;
  v24[2] = v31;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v26 = v33;
  v24[6] = v25;
  v24[7] = v26;

  GroupElementsOfContent.init(subviews:content:)(v15, partial apply for closure #1 in ForEachSubviewCollection.init<A>(elementOf:content:), v24, a5, v18, a7, WitnessTable, v23);
  swift_getWitnessTable();
  v27 = AnyView.init<A>(_:)(v23, v20);

  result = (*(v13 + 8))(v30, a5);
  *v34 = v27;
  return result;
}

uint64_t key path getter for Subview.id : Subview@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 72);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v3 = *(result + 60);
    v4 = *(result + 64);
    *a2 = v2;
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
  }

  __break(1u);
  return result;
}

double ForEach.init<A>(elementOf:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);

  ForEachSubviewCollection.init<A>(elementOf:content:)(v19, a2, a3, a4, a5, a6, a7, &v26);
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for ForEachSubviewCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  ForEach.init(_:idGenerator:content:)(&v26, &KeyPath, a2, a3, v21, &v27);
  (*(v16 + 8))(a1, a5);
  v22 = v28;
  v23 = v30;
  *a8 = v27;
  *(a8 + 16) = v22;
  result = *&v29;
  *(a8 + 24) = v29;
  *(a8 + 40) = v23;
  return result;
}

uint64_t closure #1 in ForEachSubviewCollection.init<A>(elementOf:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  outlined init with copy of SubviewsCollection(a1, v19);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;
  v16 = lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  v17 = lazy protocol witness table accessor for type Subview and conformance Subview();

  return ForEach<>.init(_:content:)(v19, partial apply for closure #1 in closure #1 in ForEachSubviewCollection.init<A>(elementOf:content:), v15, &type metadata for SubviewsCollection, &type metadata for Subview.ID, a4, v16, a6, a8, v17);
}

uint64_t closure #1 in closure #1 in ForEachSubviewCollection.init<A>(elementOf:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEachSubviewCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

void protocol witness for Collection.subscript.read in conformance ForEachSubviewCollection<A>(uint64_t *a1)
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
  ForEachSubviewCollection.subscript.read();
}

uint64_t protocol witness for Collection.indices.getter in conformance ForEachSubviewCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEachSubviewCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEachSubviewCollection<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void protocol witness for Sequence.makeIterator() in conformance ForEachSubviewCollection<A>(void *a1@<X8>)
{
  *a1 = *v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEachSubviewCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ForEachSubviewCollection<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t AlignmentModifiedLayoutComputer.Engine.spacing()()
{
  v1 = *(v0 + 24);
  v2 = one-time initialization token for lockAssertionsAreEnabled;

  if (v2 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
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
LABEL_7:
    (*(*v1 + 112))();
  }

  return result;
}

uint64_t assignWithTake for _AlignmentWritingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for AlignmentModifiedLayoutComputer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer();
  *(a1 + 8) = result;
  return result;
}

void *assignWithCopy for AlignmentModifiedLayoutComputer.Engine(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];

  a1[4] = a2[4];
  return a1;
}

uint64_t assignWithTake for AlignmentModifiedLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t FloatingPoint.isAlmostEqual(to:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  if (dispatch thunk of FloatingPoint.isFinite.getter() & 1) != 0 && (dispatch thunk of FloatingPoint.isFinite.getter())
  {
    v24[1] = *(*(a4 + 24) + 8);
    v25 = v18;
    abs<A>(_:)();
    abs<A>(_:)();
    dispatch thunk of static FloatingPoint.leastNormalMagnitude.getter();
    static Array._allocateUninitialized(_:)();
    max<A>(_:_:_:_:)();

    v19 = *(v7 + 8);
    v19(v9, a3);
    v19(v12, a3);
    v19(v15, a3);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    abs<A>(_:)();
    v19(v12, a3);
    v20 = v25;
    dispatch thunk of static Numeric.* infix(_:_:)();
    v21 = dispatch thunk of static Comparable.< infix(_:_:)();
    v19(v12, a3);
    v19(v15, a3);
    v19(v20, a3);
    return v21 & 1;
  }

  else
  {
    v23 = v26;

    return FloatingPoint.rescaledAlmostEqual(to:tolerance:)(a1, v23, a3, a4);
  }
}

uint64_t FloatingPoint.rescaledAlmostEqual(to:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  swift_getAssociatedTypeWitness();
  v8 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v27 - v9;
  v32 = *(*(*(a4 + 16) + 8) + 16);
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v10);
  v34 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v34);
  v38 = v27 - v11;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v37 = v27 - v19;
  if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) == 0)
  {
    v31 = v8;
    if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) == 0)
    {
      if (dispatch thunk of FloatingPoint.isInfinite.getter())
      {
        if ((dispatch thunk of FloatingPoint.isInfinite.getter() & 1) == 0)
        {
          v27[3] = dispatch thunk of FloatingPoint.sign.getter();
          dispatch thunk of static FloatingPoint.greatestFiniteMagnitude.getter();
          dispatch thunk of FloatingPoint.exponent.getter();
          v22 = v33;
          v23 = *(v33 + 8);
          v28 = a1;
          v29 = v33 + 8;
          v30 = v23;
          v23(v17, a3);
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          dispatch thunk of FloatingPoint.init(sign:exponent:significand:)();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          (*(v22 + 16))(v14, v28, a3);
          dispatch thunk of FloatingPoint.init(sign:exponent:significand:)();
          v24 = v37;
          v25 = FloatingPoint.isAlmostEqual(to:tolerance:)(v17, v39, a3, a4);
          v26 = v30;
          v30(v17, a3);
          v26(v24, a3);
          return v25 & 1;
        }

        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      }

      else
      {
        v21 = FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v4, v39, a3, a4);
      }

      return v21 & 1;
    }
  }

  return 0;
}

uint64_t FloatingPoint.isAlmostEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  dispatch thunk of static FloatingPoint.ulpOfOne.getter();
  dispatch thunk of FloatingPoint.squareRoot()();
  v12 = *(v6 + 8);
  v12(v8, a2);
  v13 = FloatingPoint.isAlmostEqual(to:tolerance:)(a1, v11, a2, a3);
  v12(v11, a2);
  return v13 & 1;
}

uint64_t FloatingPoint.isAlmostZero(absoluteTolerance:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  abs<A>(_:)();
  v6 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v3 + 8))(v5, a2);
  return v6 & 1;
}

Swift::Bool __swiftcall FloatingPoint.isAlmostZero()()
{
  v1 = v0;
  v2 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  dispatch thunk of static FloatingPoint.ulpOfOne.getter();
  dispatch thunk of FloatingPoint.squareRoot()();
  v8 = *(v2 + 8);
  v8(v4, v1);
  v9 = FloatingPoint.isAlmostZero(absoluteTolerance:)(v7, v1);
  v8(v7, v1);
  return v9 & 1;
}

uint64_t AttributedString.LineHeight.baselineInterval.getter()
{
  result = CTLineHeightToNSParagraphStyleBaselineIntervalType();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    CTLineHeightToNSParagraphStyleBaselineInterval();
    return v1;
  }

  return result;
}

uint64_t EnvironmentValues.lineHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5(v2, a1);
}

void AttributedString.LineHeight.init(_:)(void *a1)
{
  v1 = [a1 baselineIntervalType];
  if (v1 <= 1)
  {
    v2 = a1;
    if (!v1)
    {
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      [a1 lineHeightMultiple];
      v4 = v3;
      [a1 baselineInterval];
      v2 = a1;
      if (v4 == v5)
      {
        [a1 baselineInterval];
LABEL_19:
        static AttributedString.LineHeight.multiple(factor:)();
        goto LABEL_24;
      }

      goto LABEL_13;
    }

LABEL_27:
    _StringGuts.grow(_:)(47);
    MEMORY[0x193ABEDD0](0xD00000000000002DLL, 0x800000018DD7D2B0);
    type metadata accessor for NSParagraphStyleBaselineIntervalType(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v1 == 2)
  {
    [a1 lineSpacing];
    v7 = v6;
    [a1 baselineInterval];
    v2 = a1;
    if (v7 == v8)
    {
      [a1 baselineInterval];
LABEL_23:
      static AttributedString.LineHeight.leading(increase:)();
      goto LABEL_24;
    }
  }

  else
  {
    if (v1 != 3)
    {
      goto LABEL_27;
    }

    [a1 minimumLineHeight];
    v10 = v9;
    [a1 baselineInterval];
    v2 = a1;
    if (v10 == v11)
    {
      [a1 maximumLineHeight];
      v13 = v12;
      [a1 baselineInterval];
      v2 = a1;
      if (v13 == v14)
      {
        [a1 baselineInterval];
LABEL_21:
        static AttributedString.LineHeight.exact(points:)();
        goto LABEL_24;
      }
    }
  }

LABEL_13:
  [v2 minimumLineHeight];
  v16 = v15;
  [a1 maximumLineHeight];
  if (v16 == v17)
  {
    [a1 minimumLineHeight];
    if (v19 != 0.0)
    {
      [a1 minimumLineHeight];
      goto LABEL_21;
    }
  }

  [a1 lineHeightMultiple];
  if (v21 != 0.0)
  {
    [a1 lineHeightMultiple];
    goto LABEL_19;
  }

  [a1 lineSpacing];
  if (v23 != 0.0)
  {
    [a1 lineSpacing];
    goto LABEL_23;
  }

  static AttributedString.LineHeight.variable.getter();
LABEL_24:
}

uint64_t key path getter for EnvironmentValues.lineHeight : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (!*(a1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(*a1, a2);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5(v2, a2);
}

uint64_t key path setter for EnvironmentValues.lineHeight : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of AttributedString.LineHeight?(a1, &v9 - v6);
  outlined init with copy of AttributedString.LineHeight?(v7, v4);
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE02__N11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt0g5(v4);
  outlined destroy of AttributedString.LineHeight?(v4);
  return outlined destroy of AttributedString.LineHeight?(v7);
}

uint64_t EnvironmentValues.lineHeight.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  outlined init with copy of AttributedString.LineHeight?(a1, &v12[-v8]);
  v10 = *v2;
  outlined init with copy of AttributedString.LineHeight?(v9, v6);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v2, v6);

  outlined destroy of AttributedString.LineHeight?(v6);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Ttg5(v10, *v2);
  }

  outlined destroy of AttributedString.LineHeight?(a1);
  return outlined destroy of AttributedString.LineHeight?(v9);
}

void (*EnvironmentValues.lineHeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  type metadata accessor for AttributedString.LineHeight?(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v7);
    v5[5] = malloc(v7);
    v5[6] = malloc(v7);
    v5[7] = malloc(v7);
    v5[8] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[9] = v8;
  v10 = *v1;
  v5[10] = *v1;
  v11 = *(v1 + 8);
  v5[11] = v11;
  if (v11)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5(v10, v9);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v10, v8);
  }

  v5[12] = 0;
  return EnvironmentValues.lineHeight.modify;
}

void EnvironmentValues.lineHeight.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);
    v8 = *(v2 + 24);
    v7 = *(v2 + 32);
    outlined init with copy of AttributedString.LineHeight?(v4, v5);
    outlined init with copy of AttributedString.LineHeight?(v5, v6);
    outlined init with copy of AttributedString.LineHeight?(v6, v7);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v8, v7);

    outlined destroy of AttributedString.LineHeight?(v7);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Ttg5(*(v2 + 80), **(v2 + 24));
    }

    v10 = *(v2 + 64);
    v9 = *(v2 + 72);
    v12 = *(v2 + 48);
    v11 = *(v2 + 56);
    v14 = *(v2 + 32);
    v13 = *(v2 + 40);

    outlined destroy of AttributedString.LineHeight?(v13);
    v15 = v12;
  }

  else
  {
    v17 = *(v2 + 56);
    v16 = *(v2 + 64);
    v18 = *(v2 + 24);
    outlined init with copy of AttributedString.LineHeight?(v4, v16);
    outlined init with copy of AttributedString.LineHeight?(v16, v17);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v18, v17);

    outlined destroy of AttributedString.LineHeight?(v17);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Ttg5(*(v2 + 80), **(v2 + 24));
    }

    v12 = *(v2 + 64);
    v9 = *(v2 + 72);
    v15 = *(v2 + 48);
    v11 = *(v2 + 56);
    v14 = *(v2 + 32);
    v13 = *(v2 + 40);

    v10 = v12;
  }

  outlined destroy of AttributedString.LineHeight?(v12);
  outlined destroy of AttributedString.LineHeight?(v9);
  free(v9);
  free(v10);
  free(v11);
  free(v15);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t View.lineHeight(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t outlined init with copy of AttributedString.LineHeight?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedString.LineHeight?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttributedString.LineHeight?(uint64_t a1)
{
  type metadata accessor for AttributedString.LineHeight?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AttributedString.LineHeight?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TimeDataFormatting.Resolvable.entries(from:mode:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v15 = *a2;
  v13 = *(a3 + 32);
  v14 = *(a3 + 16);
  v17 = v14;
  v18 = v13;
  v6 = type metadata accessor for TimeDataFormatting.Configuration();
  TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(&v17, &v16, a1, &v15, v6);
  v7 = v16;
  v9 = *(&v18 + 1);
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
  if (v7 == 3)
  {
    v10 = DiscreteFormatStyle.complyingFormatStyleEntries<A>(from:for:)(a1, v4, v9, v14, v8, v13);
  }

  else
  {
    v16 = v7;
    v10 = DiscreteFormatStyle.fallbackRedactionEntries<A>(from:for:allowedFrequency:)(a1, v4, &v16, v9, v14, v8, v13);
  }

  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  return v11;
}

uint64_t DiscreteFormatStyle.fallbackRedactionEntries<A>(from:for:allowedFrequency:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a2;
  v27[1] = a7;
  v27[2] = a6;
  v8 = a6;
  v28 = a1;
  v30 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeDataFormatting.EntriesState();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = a5;
  v33[1] = a4;
  v33[2] = a7;
  v33[3] = v8;
  v21 = type metadata accessor for TimeDataFormatting.FallbackRedactionEntries();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v27 - v22;
  LOBYTE(v8) = *a3;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v20, v28, v24);
  swift_storeEnumTagMultiPayload();
  (*(v14 + 16))(v17, v31, a5);
  v25 = v29;
  (*(v30 + 16))(v29, v32, a4);
  LOBYTE(v33[0]) = v8;
  TimeDataFormatting.FallbackRedactionEntries.init(state:source:format:allowedFrequency:)(v20, v17, v25, v33, a5, a4, v23);
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t DiscreteFormatStyle.complyingFormatStyleEntries<A>(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a2;
  v26[0] = a6;
  v26[1] = a5;
  v10 = *(a3 - 8);
  v27 = a1;
  v28 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeDataFormatting.EntriesState();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a3;
  v33 = a6;
  v34 = a5;
  v21 = type metadata accessor for TimeDataFormatting.ComplyingFormatStyleEntries();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v26 - v22;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v20, v27, v24);
  swift_storeEnumTagMultiPayload();
  (*(v14 + 16))(v17, v29, a4);
  (*(v28 + 16))(v12, v30, a3);
  TimeDataFormatting.ComplyingFormatStyleEntries.init(state:source:format:)(v20, v17, v12, a4, a3, v23);
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance TimeDataFormatting.Resolvable<A, B>@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = TimeDataFormatting.Resolvable.entries(from:mode:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for TimeDataFormatting.EntriesState()
{
  result = type metadata singleton initialization cache for TimeDataFormatting.EntriesState;
  if (!type metadata singleton initialization cache for TimeDataFormatting.EntriesState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimeDataFormatting.ComplyingFormatStyleEntries.init(state:source:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of TimeDataFormatting.EntriesState(a1, a6);
  v11 = type metadata accessor for TimeDataFormatting.ComplyingFormatStyleEntries();
  (*(*(a4 - 8) + 32))(a6 + *(v11 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v11 + 56), a3, a5);
}

uint64_t TimeDataFormatting.FallbackRedactionEntries.init(state:source:format:allowedFrequency:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  outlined init with take of TimeDataFormatting.EntriesState(a1, a7);
  v13 = type metadata accessor for TimeDataFormatting.FallbackRedactionEntries();
  (*(*(a5 - 8) + 32))(a7 + v13[13], a2, a5);
  result = (*(*(a6 - 8) + 32))(a7 + v13[14], a3, a6);
  *(a7 + v13[15]) = v12;
  return result;
}

uint64_t outlined init with take of TimeDataFormatting.EntriesState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeDataFormatting.EntriesState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for TimeDataFormatting.ComplyingFormatStyleEntries()
{
  result = type metadata accessor for TimeDataFormatting.EntriesState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimeDataFormatting.ComplyingFormatStyleEntries(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v8 + 1 + v12;
  v14 = *(v9 - 8);
  v15 = *(v14 + 80);
  v16 = (*(v11 + 80) | *(v7 + 80) | *(v14 + 80));
  if (v16 > 7 || ((*(*(v10 - 8) + 64) + v15 + ((v8 + 1 + v12) & ~v12)) & ~v15) + *(*(v9 - 8) + 64) > 0x18 || ((*(v11 + 80) | *(v7 + 80) | *(v14 + 80)) & 0x100000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v16 + 16) & ~v16));

    return a1;
  }

  v20 = *(a2 + v8);
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    if (v8 <= 3)
    {
      v22 = *(v7 + 64);
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *a2;
        if (v8 < 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v22 == 3)
        {
          v23 = *a2 | (*(a2 + 2) << 16);
          if (v8 < 4)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v23 = *a2;
        if (v8 < 4)
        {
LABEL_24:
          v20 = (v23 | (v21 << (8 * v8))) + 2;
          goto LABEL_25;
        }
      }

LABEL_22:
      v20 = v23 + 2;
      goto LABEL_25;
    }

    if (v22)
    {
      v23 = *a2;
      if (v8 < 4)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v24 = ~v12;
  v27 = *(*(v10 - 8) + 64);
  v28 = v9;
  if (v20 == 1)
  {
    (*(v7 + 16))(a1, a2, v6);
    *(a1 + v8) = 1;
  }

  else if (v20)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    *(a1 + v8) = 0;
  }

  v25 = (a2 + v13) & v24;
  (*(v11 + 16))((a1 + v13) & v24, v25, v10);
  (*(v14 + 16))((((a1 + v13) & v24) + v27 + v15) & ~v15, (v25 + v27 + v15) & ~v15, v28);
  return a1;
}

_BYTE *initializeWithCopy for TimeDataFormatting.ComplyingFormatStyleEntries(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_15;
  }

  if (v8 <= 3)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_15:
  if (v9 == 1)
  {
    (*(v7 + 16))(a1, a2, v6);
    a1[v8] = 1;
  }

  else if (v9)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    a1[v8] = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v8 + v16 + 1;
  v18 = &a1[v17] & ~v16;
  v19 = &a2[v17] & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(*(a3 + 24) - 8);
  (*(v20 + 16))((*(v15 + 48) + *(v20 + 80) + v18) & ~*(v20 + 80), (*(v15 + 48) + *(v20 + 80) + v19) & ~*(v20 + 80));
  return a1;
}

unsigned __int8 *assignWithCopy for TimeDataFormatting.ComplyingFormatStyleEntries(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = a1[v8];
    v10 = v9 - 2;
    if (v9 < 2)
    {
      goto LABEL_16;
    }

    if (v8 <= 3)
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *a1;
      if (v8 < 4)
      {
LABEL_37:
        if ((v12 | (v10 << (8 * v8))) + 2 > 1)
        {
LABEL_18:
          v13 = a2[v8];
          v14 = v13 - 2;
          if (v13 < 2)
          {
            goto LABEL_32;
          }

          if (v8 <= 3)
          {
            v15 = v8;
          }

          else
          {
            v15 = 4;
          }

          if (v15 <= 1)
          {
            if (!v15)
            {
              goto LABEL_32;
            }

            v16 = *a2;
            if (v8 < 4)
            {
LABEL_40:
              v17 = v16 | (v14 << (8 * v8));
              v13 = v17 + 2;
              if (v17 == -1)
              {
                goto LABEL_41;
              }

LABEL_33:
              if (v13)
              {
                memcpy(a1, a2, v8 + 1);
              }

              else
              {
                (*(v7 + 16))(a1, a2, v6);
                a1[v8] = 0;
              }

              goto LABEL_42;
            }
          }

          else if (v15 == 2)
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else if (v15 == 3)
          {
            v16 = *a2 | (a2[2] << 16);
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          v13 = v16 + 2;
LABEL_32:
          if (v13 == 1)
          {
LABEL_41:
            (*(v7 + 16))(a1, a2, v6);
            a1[v8] = 1;
            goto LABEL_42;
          }

          goto LABEL_33;
        }

LABEL_17:
        (*(v7 + 8))(a1, v6);
        goto LABEL_18;
      }
    }

    else if (v11 == 2)
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    v9 = v12 + 2;
LABEL_16:
    if (v9 > 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  v18 = type metadata accessor for Date();
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = *(*(v18 - 8) + 64) + v21 + 1;
  v23 = &a1[v22] & ~v21;
  v24 = &a2[v22] & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(*(a3 + 24) - 8);
  (*(v25 + 24))((*(v20 + 40) + *(v25 + 80) + v23) & ~*(v25 + 80), (*(v20 + 40) + *(v25 + 80) + v24) & ~*(v25 + 80));
  return a1;
}

_BYTE *initializeWithTake for TimeDataFormatting.ComplyingFormatStyleEntries(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_15;
  }

  if (v8 <= 3)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_15:
  if (v9 == 1)
  {
    (*(v7 + 32))(a1, a2, v6);
    a1[v8] = 1;
  }

  else if (v9)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    a1[v8] = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v8 + v16 + 1;
  v18 = &a1[v17] & ~v16;
  v19 = &a2[v17] & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(*(a3 + 24) - 8);
  (*(v20 + 32))((*(v15 + 32) + *(v20 + 80) + v18) & ~*(v20 + 80), (*(v15 + 32) + *(v20 + 80) + v19) & ~*(v20 + 80));
  return a1;
}

unsigned __int8 *assignWithTake for TimeDataFormatting.ComplyingFormatStyleEntries(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = a1[v8];
    v10 = v9 - 2;
    if (v9 < 2)
    {
      goto LABEL_16;
    }

    if (v8 <= 3)
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *a1;
      if (v8 < 4)
      {
LABEL_37:
        if ((v12 | (v10 << (8 * v8))) + 2 > 1)
        {
LABEL_18:
          v13 = a2[v8];
          v14 = v13 - 2;
          if (v13 < 2)
          {
            goto LABEL_32;
          }

          if (v8 <= 3)
          {
            v15 = v8;
          }

          else
          {
            v15 = 4;
          }

          if (v15 <= 1)
          {
            if (!v15)
            {
              goto LABEL_32;
            }

            v16 = *a2;
            if (v8 < 4)
            {
LABEL_40:
              v17 = v16 | (v14 << (8 * v8));
              v13 = v17 + 2;
              if (v17 == -1)
              {
                goto LABEL_41;
              }

LABEL_33:
              if (v13)
              {
                memcpy(a1, a2, v8 + 1);
              }

              else
              {
                (*(v7 + 32))(a1, a2, v6);
                a1[v8] = 0;
              }

              goto LABEL_42;
            }
          }

          else if (v15 == 2)
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else if (v15 == 3)
          {
            v16 = *a2 | (a2[2] << 16);
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          v13 = v16 + 2;
LABEL_32:
          if (v13 == 1)
          {
LABEL_41:
            (*(v7 + 32))(a1, a2, v6);
            a1[v8] = 1;
            goto LABEL_42;
          }

          goto LABEL_33;
        }

LABEL_17:
        (*(v7 + 8))(a1, v6);
        goto LABEL_18;
      }
    }

    else if (v11 == 2)
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    v9 = v12 + 2;
LABEL_16:
    if (v9 > 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  v18 = type metadata accessor for Date();
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 40;
  v21 = *(v19 + 80);
  v22 = *(*(v18 - 8) + 64) + v21 + 1;
  v23 = &a1[v22] & ~v21;
  v24 = &a2[v22] & ~v21;
  (*(v19 + 40))(v23, v24);
  v25 = *(*(a3 + 24) - 8);
  (*(v25 + 40))((*(v20 + 24) + *(v25 + 80) + v23) & ~*(v25 + 80), (*(v20 + 24) + *(v25 + 80) + v24) & ~*(v25 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.ComplyingFormatStyleEntries(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for Date() - 8) + 64);
  v7 = *(a3 + 24);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0xFD)
  {
    v16 = 253;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v6 + v12 + 1;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v17 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
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
      if (v15 > 0xFD)
      {
        v27 = (a1 + v17) & ~v12;
        if (v9 == v16)
        {
          v28 = *(v8 + 48);

          return v28(v27);
        }

        else
        {
          v29 = *(v10 + 48);
          v30 = (v27 + v13 + v14) & ~v14;

          return v29(v30, v11, v7);
        }
      }

      else
      {
        v26 = *(a1 + v6);
        if (v26 >= 3)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
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

  return v16 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for TimeDataFormatting.ComplyingFormatStyleEntries(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for Date() - 8) + 64);
  v9 = *(a4 + 24);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  if (v11 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFD)
  {
    v18 = 253;
  }

  else
  {
    v18 = v17;
  }

  v19 = v8 + v14 + 1;
  v20 = ((v15 + v16 + (v19 & ~v14)) & ~v16) + *(*(v9 - 8) + 64);
  if (a3 <= v18)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v18 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
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

  if (v18 < a2)
  {
    v22 = ~v18 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_62:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v20] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v17 > 0xFD)
  {
    v27 = &a1[v19] & ~v14;
    if (v11 == v18)
    {
      v28 = *(v10 + 56);

      v28(v27, a2);
    }

    else
    {
      v33 = *(v12 + 56);
      v34 = (v27 + v15 + v16) & ~v16;

      v33(v34, a2, v13, v9);
    }
  }

  else if (a2 > 0xFD)
  {
    v29 = (v8 + 1);
    if (v29 <= 3)
    {
      v30 = ~(-1 << (8 * (v8 + 1)));
    }

    else
    {
      v30 = -1;
    }

    if (v8 != -1)
    {
      v31 = v30 & (a2 - 254);
      if (v29 <= 3)
      {
        v32 = v8 + 1;
      }

      else
      {
        v32 = 4;
      }

      bzero(a1, v29);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else
        {
          *a1 = v31;
        }
      }

      else if (v32 == 1)
      {
        *a1 = v31;
      }

      else
      {
        *a1 = v31;
      }
    }
  }

  else
  {
    a1[v8] = -a2;
  }
}