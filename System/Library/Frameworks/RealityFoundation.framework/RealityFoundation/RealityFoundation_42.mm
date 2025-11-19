uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance SpotLightComponent(unint64_t *a1, unint64_t *a2, _OWORD *a3, _OWORD *a4)
{
  *v13 = *a3;
  *&v13[3] = *(a3 + 12);
  *v14 = *a4;
  *&v14[3] = *(a4 + 12);
  v6 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v11 = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v12 = v8;
  result = closure #1 in static SpotLightComponent.animation(from:to:)(&v11, v13, v14);
  v10 = v12;
  *a1 = v11;
  *a2 = v10;
  return result;
}

uint64_t one-time initialization function for $current()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy17RealityFoundation20EntityChangeModifier_pSgGMd, &_ss9TaskLocalCy17RealityFoundation20EntityChangeModifier_pSgGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static ImplicitAnimationStack.$current = result;
  return result;
}

uint64_t static ImplicitAnimationStack.withModifier<A>(_:operation:)()
{
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  TaskLocal.withValue<A>(_:operation:file:line:)();
  return swift_unknownObjectRelease();
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  Entity.ComponentSet.subscript.getter(a3, *(a4 + 8), v15);
  return Entity.ComponentSet.subscript.modify;
}

void Entity.ComponentSet.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v10 = *v2;
    v9 = *(v2 + 8);
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    Entity.ComponentSet.subscript.setter(v3, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = *(v2 + 24);
    Entity.ComponentSet.subscript.setter(*(*a1 + 56), *v2, *(v2 + 8), *(v2 + 16));
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 80);
    v5 = **(v2 + 96);
    outlined init with copy of Component?(v2, v2 + 40);

    Entity.ComponentSet.doSetExistential(_:newValue:)(v4, v3, v2 + 40);
    outlined destroy of Component?(v2 + 40);
  }

  outlined destroy of Component?(v2);

  free(v2);
}

uint64_t Entity.Observable.Components.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  return Entity.Observable.Components.subscript.getter(a1, a2, *(a3 + 8));
}

{
  v5 = *v3;
  return Entity.Observable.Components.subscript.getter(a2, a2, *(a3 + 8));
}

uint64_t Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  specialized Entity.Observable.Components.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

{
  specialized Entity.Observable.Components.subscript.setter(a1, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  Entity.Observable.Components.subscript.getter(a2, a3, *(a4 + 8));
  return Entity.Observable.Components.subscript.modify;
}

void Entity.Observable.Components.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v10, v9, v8);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[7], v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v10, v9, v8);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[7], v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  v16 = *v4;
  Entity.Observable.Components.subscript.getter(a3, a3, *(a4 + 8));
  return Entity.Observable.Components.subscript.modify;
}

void Entity.Observable.Components.subscript.modify(ValueMetadata ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (v6[1].Kind)((*a1)[5], v4, v5);
    specialized Entity.Observable.Components.subscript.setter(v3, v9, v8);
    Description = v6->Description;
    Description(v3, v5);
    Description(v4, v5);
  }

  else
  {
    specialized Entity.Observable.Components.subscript.setter((*a1)[6], v9, v8);
    (v6->Description)(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance AmbientAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21AmbientAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21AmbientAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance ChannelAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21ChannelAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21ChannelAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance SpatialAudioComponent(unint64_t *a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21SpatialAudioComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE21SpatialAudioComponentVGTt0g5Tf4g_n(v3);
  *a2 = result;
  return result;
}

uint64_t specialized static PhysicallyBasedMaterial.SheenColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v18 = *(a2 + 8);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (!v4)
  {
    outlined copy of MaterialParameters.Texture?(v3, 0);
    if (!v10)
    {
      outlined copy of MaterialParameters.Texture?(v7, 0);
      outlined consume of MaterialParameters.Texture?(v3, 0);
      v14 = 1;
      return v14 & 1;
    }

    v11 = v10;
    outlined copy of MaterialParameters.Texture?(v7, v10);
    goto LABEL_9;
  }

  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v22 = v6;
  v11 = v10;
  if (!v10)
  {
    outlined copy of MaterialParameters.Texture?(v3, v4);
    outlined copy of MaterialParameters.Texture?(v7, 0);
    outlined copy of MaterialParameters.Texture?(v3, v4);

LABEL_9:
    outlined consume of MaterialParameters.Texture?(v3, v4);
    outlined consume of MaterialParameters.Texture?(v7, v11);
    v14 = 0;
    return v14 & 1;
  }

  v19[0] = v7;
  v19[1] = v10;
  v19[2] = v9;
  v20 = v18;
  v12 = v4;
  outlined copy of MaterialParameters.Texture?(v3, v4);
  outlined copy of MaterialParameters.Texture?(v7, v11);
  outlined copy of MaterialParameters.Texture?(v3, v4);
  v14 = specialized static MaterialParameters.Texture.== infix(_:_:)(v21, v19, v13);
  v15 = v19[0];

  v16 = v21[0];

  outlined consume of MaterialParameters.Texture?(v3, v12);
  return v14 & 1;
}

double simd_inverse(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1C1899C90);
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrecpe_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrecps_f32(v2.u32[0], v3));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrecps_f32(v2.u32[0], v4)).f32[0]).u64[0];
  return result;
}

double simd_mul(float32x4_t a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1.f32, 1), vextq_s8(v3, v3, 8uLL), a1.f32[0]);
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a2, a1, 3), v5, a1, 2), v4).u64[0];
  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *v4;
  (*(v15 + 16))(&v18 - v12, a1, v11);
  v19 = v14;

  Entity.ComponentSet.subscript.setter(v13, a2, a3, a4);
  v16 = *(v19 + 16);

  if (v16 != *(v14 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.ComponentSet.subscript.setter(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return Entity.ComponentSet.subscript.setter(v9, a2, a2, a3);
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v7 = *v3;
  v10 = *v3;

  specialized Entity.ComponentSet.subscript.setter(a1, a2, a3);
  v8 = *(v10 + 16);

  if (v8 != *(v7 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for _Proto_AnyAnimatableProperty_v1()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for _Proto_AnyAnimatableProperty_v1.PropertyStorage(uint64_t a1)
{
  v1 = *(a1 + 192);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for ComponentAnimatableData()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ImplicitAnimatableContext()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_246Tm(float *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, float))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v6, v7, v8);
}

uint64_t keypath_set_300Tm(double *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor);
  }

  return result;
}

uint64_t AudioGeneratorConfiguration.init(layoutTag:mixGroupName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 48000;
  *(a4 + 4) = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t AudioGeneratorConfiguration.mixGroupName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AudioGeneratorConfiguration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ModelSortGroup.init(depthPass:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 1) = 3;
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v3 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v3 + 16) = result;
  *(a2 + 8) = v3;
  return result;
}

BOOL static ModelSortGroup.!= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = *(*(a1 + 8) + 16);
  v5 = *(*(a2 + 8) + 16);
  if (REMeshSortingComponentCheckIfEqual())
  {
    v6 = v3 == 3;
    v8 = v3 != 3 && v2 == v3;
    if (v2 != 3)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  return !v6;
}

Swift::Int ModelSortGroup.DepthPass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int ModelSortGroup.PlanarUIPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t static ModelSortGroup.planarUIInline.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIInline != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC38;
  *a1 = static ModelSortGroup.planarUIInline;
  *(a1 + 8) = v2;
}

uint64_t one-time initialization function for planarUIInline(uint64_t a1, char a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a3 = a2;
  *a4 = 2;
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v6 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v6 + 16) = result;
  *a5 = v6;
  return result;
}

uint64_t static ModelSortGroup.planarUIAlwaysInFront.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIAlwaysInFront != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC48;
  *a1 = static ModelSortGroup.planarUIAlwaysInFront;
  *(a1 + 8) = v2;
}

uint64_t one-time initialization function for planarUIAlwaysBehind()
{
  type metadata accessor for ModelSortGroup.SortGroupRef();
  static ModelSortGroup.planarUIAlwaysBehind = 514;
  v0 = swift_allocObject();
  result = RECreateMeshSortGroup();
  *(v0 + 16) = result;
  qword_1EBEAEC58 = v0;
  return result;
}

uint64_t static ModelSortGroup.planarUIAlwaysBehind.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for planarUIAlwaysBehind != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBEAEC58;
  *a1 = static ModelSortGroup.planarUIAlwaysBehind;
  *(a1 + 8) = v2;
}

uint64_t ModelSortGroupComponent.init(group:order:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *(a3 + 8) = *result;
  *(a3 + 16) = v3;
  *a3 = a2;
  return result;
}

uint64_t ModelSortGroupComponent.group.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t ModelSortGroupComponent.group.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*ModelSortGroupComponent.group.modify(uint64_t a1))(char *a1, char a2)
{
  v3 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v1;

  return ModelSortGroupComponent.group.modify;
}

uint64_t ModelSortGroupComponent.group.modify(char *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(v5 + 16);
  if (a2)
  {
    v7 = *(a1 + 1);

    *(v5 + 8) = v2;
    *(v5 + 9) = v3;
    *(v5 + 16) = v4;
  }

  else
  {
    v9 = *(v5 + 16);

    *(v5 + 8) = v2;
    *(v5 + 9) = v3;
    *(v5 + 16) = v4;
  }

  return result;
}

uint64_t (*ModelSortGroupComponent.order.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return ModelSortGroupComponent.order.modify;
}

uint64_t static ModelSortGroupComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = REMeshSortingComponentCopySortGroup();
  RECreateMeshSortGroup();
  type metadata accessor for ModelSortGroup.SortGroupRef();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  RERelease();
  REComponentGetEntity();
  REUISortingComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    SortCategory = REUISortingComponentGetSortCategory();
    if ((SortCategory + 2) >= 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x101000202uLL >> (8 * (SortCategory + 2));
    }

    SortPriorityHint = REUISortingComponentGetSortPriorityHint();
    v9 = 2;
  }

  else
  {
    SortPriorityHint = REMeshSortingComponentGetPriorityInSortGroup();
    DepthPriorityInSortGroup = REMeshSortingComponentGetDepthPriorityInSortGroup();
    if (DepthPriorityInSortGroup == 0x7FFFFFFF)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (DepthPriorityInSortGroup == 0x80000000)
    {
      v9 = 0;
    }

    v7 = 3;
  }

  *(a2 + 8) = v9;
  *(a2 + 9) = v7;
  *(a2 + 16) = v5;
  *a2 = SortPriorityHint;
}

uint64_t ModelSortGroupComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 2);
  if (v5 == 3)
  {
    if (REMeshSortingComponentGetIsUI())
    {
      REMeshSortingComponentSetIsUI();
      REComponentGetEntity();
      REUISortingComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }

    REMeshSortingComponentSetPriorityInSortGroup();
  }

  else
  {
    REMeshSortingComponentSetIsUI();
    REComponentGetEntity();
    REUISortingComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v7 = dword_1C18BEEBC[v5];
    REUISortingComponentSetSortCategory();
    REUISortingComponentSetSortPriorityHint();
    REUISortingComponentSetUsesMeshBoundingBox();
    RENetworkMarkComponentDirty();
  }

  REMeshSortingComponentSetDepthPriorityInSortGroup();
  v8 = *(v6 + 16);
  REMeshSortingComponentSetSortGroup();

  return RENetworkMarkComponentDirty();
}

uint64_t ModelSortGroupComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = *(v1 + 2);
  v19 = *v1;
  v11 = v19;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1897FC0;
  *(v15 + 32) = 0x70756F7267;
  *(v15 + 40) = 0xE500000000000000;
  *(v15 + 48) = v12;
  *(v15 + 49) = v13;
  *(v15 + 56) = v14;
  *(v15 + 72) = &type metadata for ModelSortGroup;
  *(v15 + 80) = 0x726564726FLL;
  *(v15 + 88) = 0xE500000000000000;
  *(v15 + 120) = MEMORY[0x1E69E72F0];
  *(v15 + 96) = v11;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t ModelSortGroup.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15[-v8];
  LOBYTE(v8) = *(v0 + 1);
  v11 = *(v0 + 8);
  v15[0] = *v0;
  v10 = v15[0];
  v15[1] = v8;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = 0x7361506874706564;
  *(v12 + 40) = 0xE900000000000073;
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  *(v12 + 48) = v10;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static ModelSortGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = *(*(a1 + 8) + 16);
  v5 = *(*(a2 + 8) + 16);
  result = REMeshSortingComponentCheckIfEqual();
  if (result)
  {
    v8 = v3 != 3 && v2 == v3;
    if (v2 == 3)
    {
      return v3 == 3;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass()
{
  result = lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass;
  if (!lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelSortGroup.DepthPass and conformance ModelSortGroup.DepthPass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement()
{
  result = lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement;
  if (!lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelSortGroup.PlanarUIPlacement and conformance ModelSortGroup.PlanarUIPlacement);
  }

  return result;
}

void Entity.moveCharacter(by:deltaTime:relativeTo:collisionHandler:)(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  RECharacterControllerComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

LABEL_30:
    *a3 = 0;
    return;
  }

  v9 = *(v3 + 16);
  RECharacterControllerComponentStateGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (a1)
  {
    v10 = *(a1 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_10;
    }

    v12 = SceneNullable;
    v13 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v13)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v12);
    }

    v15 = Scene.physicsOrigin.getter();

    if (!v15)
    {
LABEL_10:
      v15 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v15 = 0;
  }

  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v15);
  if (!RECharacterControllerComponentMoveEx())
  {

    goto LABEL_30;
  }

  if (!a2)
  {
LABEL_26:
    *a3 = RECharacterControllerCollisionResultGetHitFlags();
    RERelease();

    return;
  }

  v32 = a3;

  CollisionCount = RECharacterControllerCollisionResultGetCollisionCount();
  if (CollisionCount < 0)
  {
    goto LABEL_32;
  }

  v17 = CollisionCount;
  if (!CollisionCount)
  {
LABEL_25:
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
    a3 = v32;
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    HitEntityAtCollisionIndex = RECharacterControllerCollisionResultGetHitEntityAtCollisionIndex();
    RECharacterControllerCollisionResultGetHitPositionAtCollisionIndex();
    v38 = v25;
    RECharacterControllerCollisionResultGetHitNormalAtCollisionIndex();
    v37 = v26;
    RECharacterControllerCollisionResultGetMoveDirectionAtCollisionIndex();
    v36 = v27;
    RECharacterControllerCollisionResultGetMoveDistanceAtCollisionIndex();
    v29 = v28;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v19 = swift_dynamicCastClassUnconditional();
      goto LABEL_18;
    }

    if (REEntityIsBeingDestroyed())
    {
      break;
    }

    v30 = specialized static Entity.entityInfoType(_:)();
    if (v30)
    {
      v20 = (*(v30 + 232))();
      v31 = *(v20 + 16);

      MEMORY[0x1C68F9740](v31, 0);
      *(v20 + 16) = HitEntityAtCollisionIndex;
      MEMORY[0x1C68F9740](HitEntityAtCollisionIndex, v20);

      goto LABEL_19;
    }

    v19 = makeEntity(for:)(HitEntityAtCollisionIndex);
LABEL_18:
    v20 = v19;
LABEL_19:
    ++v18;
    v22 = v37;
    v21 = v38;
    HIDWORD(v21) = v33;
    HIDWORD(v22) = v34;
    v23 = v36;
    HIDWORD(v23) = v35;
    v39[0] = v4;
    v39[1] = v20;
    v40 = v21;
    v41 = v22;
    v42 = v23;
    v43 = v29;

    a2(v39);

    if (v17 == v18)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void Entity.teleportCharacter(to:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  v4 = *(v2 + 16);
  RECharacterControllerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v5 = *(v2 + 16);
    RECharacterControllerComponentStateGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (a1)
    {
      v6 = *(a1 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_12;
      }

      v8 = SceneNullable;
      v9 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v9)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v8);
      }

      v10 = Scene.physicsOrigin.getter();

      if (!v10)
      {
LABEL_12:
        v10 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v10 = 0;
    }

    *v11.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v10);
    simd_float4x4.transform(position:)(a2, v11, v12, v13, v14);
    RECharacterControllerComponentSetPosition();
  }

  else
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t Entity.characterController.setter(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(v4, v1);
}

void (*Entity.characterController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 192) = v1;
  v5 = *(v1 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    v8 = Component;
    static CharacterControllerComponent.__fromCore(_:)(&v8, (v4 + 128));
    *(v4 + 184) = 0;
  }

  else
  {
    v9 = 1;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0;
    *(v4 + 184) = 1;
  }

  return Entity.characterController.modify;
}

void Entity.characterController.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 64;
  }

  v5 = v2[9];
  *v4 = v2[8];
  *(v4 + 16) = v5;
  *(v4 + 32) = v2[10];
  *(v4 + 41) = *(v2 + 169);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(v4, v3);

  free(v2);
}

void (*Entity.characterControllerState.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    v8 = Component;
    static CharacterControllerStateComponent.__fromCore(_:)(&v8, v4);
  }

  else
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
  }

  return Entity.characterControllerState.modify;
}

void Entity.characterControllerState.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation024CharacterControllerStateD0V_TtB5Tf4ndn_n(**a1, v1[1], *(v1 + 16), (*a1)[3]);

  free(v1);
}

__n128 simd_float4x4.decompose()(float32x4_t a1, int32x4_t a2, int8x16_t a3, __n128 a4)
{
  v10 = *MEMORY[0x1E69E9840];
  REDecomposeMatrix();
  simd_float4x4.scale.getter(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return a4;
}

double simd_float4x4.init(scale:)(float a1)
{
  HIDWORD(v1) = vdupq_lane_s32(0, 0).i32[1];
  *&v1 = a1;
  return v1;
}

float32x2_t simd_float4x4.scale.getter(float32x4_t a1, int32x4_t a2, int8x16_t a3)
{
  v3 = vmulq_f32(a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL))), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL)));
  v4 = vaddv_f32(*v3.f32);
  v5 = -1.0;
  if ((v3.f32[2] + v4) > 0.0)
  {
    v5 = 1.0;
  }

  v6 = vzip1_s32(*a1.f32, *a2.i8);
  v7 = vzip2_s32(*a1.f32, *a2.i8);
  v8 = vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  return vmul_n_f32(vsqrt_f32(vadd_f32(vmul_f32(v8, v8), vadd_f32(vmul_f32(v6, v6), vmul_f32(v7, v7)))), v5);
}

double simd_float4x4.rotation.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  REDecomposeMatrix();
  result = 0.0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __swiftcall simd_float3x3.init(_:)(simd_float3x3 *__return_ptr retstr, simd_float4x4 *a2)
{
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v4.i32[3] = 0;
  retstr->columns[0] = v2;
  retstr->columns[1] = v3;
  retstr->columns[2] = v4;
}

float32x4_t simd_float4x4.scale(_:)(float32x4_t a1)
{
  v2 = vmulq_lane_f32(v1[1], *a1.f32, 1);
  *v1 = vmulq_n_f32(*v1, a1.f32[0]);
  v1[1] = v2;
  result = vmulq_laneq_f32(v1[2], a1, 2);
  v1[2] = result;
  return result;
}

float32x4_t simd_float4x4.translate(_:)(float32x4_t a1)
{
  result = vaddq_f32(v1[3], a1);
  result.i32[3] = HIDWORD(*&v1[3]);
  v1[3] = result;
  return result;
}

double key path setter for simd_float4x4.scale : simd_float4x4(float32x4_t *a1, float32x4_t *a2)
{
  v3 = *a2;
  v10 = *a2;
  v11 = *a1;
  v3.i32[3] = 0;
  *v4.i64 = simd_normalize(v3);
  v4.i32[3] = v10.i32[3];
  *a2 = v4;
  v5 = a2[1];
  v10.i32[3] = v5.i32[3];
  v5.i32[3] = 0;
  *v6.i64 = simd_normalize(v5);
  v6.i32[3] = v10.i32[3];
  a2[1] = v6;
  v7 = a2[2];
  v10.i32[3] = v7.i32[3];
  v7.i32[3] = 0;
  *v8.i64 = simd_normalize(v7);
  v8.i32[3] = v10.i32[3];
  a2[2] = v8;
  *&result = simd_float4x4.scale(_:)(v11).u64[0];
  return result;
}

double simd_float4x4.scale.setter(float32x4_t a1)
{
  v2 = v1[1];
  v3 = vmulq_f32(*v1, *v1);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(*v1, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v5.i32[3] = HIDWORD(*v1);
  v6 = vmulq_f32(v2, v2);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(v2, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v8.i32[3] = v2.i32[3];
  *v1 = v5;
  v1[1] = v8;
  v9 = v1[2];
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12.i32[3] = v9.i32[3];
  v1[2] = v12;
  *&result = simd_float4x4.scale(_:)(a1).u64[0];
  return result;
}

void (*simd_float4x4.scale.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *v1;
  *(v3 + 16) = *v1;
  v6 = *(v1 + 1);
  *(v3 + 32) = v6;
  v7 = *(v1 + 2);
  *(v3 + 48) = v7;
  *&v8 = simd_float4x4.scale.getter(v5, v6, v7);
  *v4 = v8;
  return simd_float4x4.scale.modify;
}

void simd_float4x4.scale.modify(float32x4_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[2];
  v2 = (*a1)[3];
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = vmulq_f32(v5, v5);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  v8 = (*a1)[4].i64[0];
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v9 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v9.i32[3] = v5.i32[3];
  v10 = vmulq_f32(v3, v3);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  v12 = vrsqrte_f32(v11);
  v13 = vmul_f32(v12, vrsqrts_f32(v11, vmul_f32(v12, v12)));
  v14 = vmulq_n_f32(v3, vmul_f32(v13, vrsqrts_f32(v11, vmul_f32(v13, v13))).f32[0]);
  v14.i32[3] = v3.i32[3];
  v15 = vmulq_f32(v2, v2);
  v13.f32[0] = vaddv_f32(*v15.f32);
  *v8 = v9;
  v8[1] = v14;
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]), vmul_f32(*v15.f32, *v15.f32)));
  v16 = vmulq_n_f32(v2, vmul_f32(*v15.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v15.f32[2] + v13.f32[0]), vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v16.i32[3] = v2.i32[3];
  v8[2] = v16;
  simd_float4x4.scale(_:)(v4);

  free(v1);
}

void simd_float4x4.rotation.setter(float32x4_t a1)
{
  v7 = *(v1 + 48);
  LODWORD(v2) = simd_float4x4.scale.getter(*v1, *(v1 + 16), *(v1 + 32)).u32[0];
  *&v3 = specialized simd_float4x4.init(translation:rotation:scale:)(v7, a1, v2);
  *v1 = v3;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v6;
}

void (*simd_float4x4.rotation.modify(uint64_t *a1))(float32x4_t **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  *(v3 + 64) = *v1;
  *(v3 + 80) = v1[1];
  *(v3 + 96) = v1[2];
  *(v3 + 112) = v1[3];
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v5 = (v3 + 32);
  *(v3 + 48) = 0u;
  REDecomposeMatrix();
  *v4 = *v5;
  v6 = *MEMORY[0x1E69E9840];
  return simd_float4x4.rotation.modify;
}

void simd_float4x4.rotation.modify(float32x4_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[8].i64[0];
  v8 = *(*a1)[7].i64;
  v9 = **a1;
  LODWORD(v3) = simd_float4x4.scale.getter((*a1)[4], (*a1)[5], (*a1)[6]).u32[0];
  *&v4 = specialized simd_float4x4.init(translation:rotation:scale:)(v8, v9, v3);
  *v2 = v4;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v7;

  free(v1);
}

__n128 simd_float4x4.translation.setter(__n128 result)
{
  result.n128_u32[3] = v1[3].n128_u32[3];
  v1[3] = result;
  return result;
}

__n128 (*simd_float4x4.translation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 48);
  *(v3 + 16) = v4;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return simd_float4x4.translation.modify;
}

__n128 simd_float4x4.translation.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  *(*(v1 + 4) + 48) = v2;
  free(v1);
  return result;
}

double specialized simd_float4x4.init(translation:rotation:scale:)(double a1, float32x4_t a2, float a3)
{
  *v3.i64 = simd_matrix4x4(a2);
  *&result = vmulq_n_f32(v3, a3).u64[0];
  return result;
}

double simd_normalize(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

uint64_t GeometricPin.pose.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  if (!v1[4])
  {

LABEL_6:
    v10 = 0;
    v11 = v1[6];
    v12 = v1[7];
    v13 = v1[8];
    v14 = v1[9];
    goto LABEL_8;
  }

  v4 = v1[3];
  v5 = *(result + 16);
  String.utf8CString.getter();
  LODWORD(v5) = REEntityTryGetSkeletalJointPinPose();

  if (v5)
  {
    v6 = *(v1 + 3);
    v7 = *(v1 + 4);
    REPoseMultiply();
    v16 = v8;
    v17 = v9;

    v10 = 0;
    v12 = *(&v16 + 1);
    v11 = v16;
    v14 = *(&v17 + 1);
    v13 = v17;
  }

  else
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = 1;
  }

LABEL_8:
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v10;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void *GeometricPin.init(named:offsetPosition:offsetOrientation:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v6 = swift_weakInit();
  v6[3] = a3;
  v6[4] = a4;
  result = swift_weakAssign();
  result[1] = a1;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void *GeometricPin.init(named:skeletalJointName:offsetPosition:offsetOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v10 = swift_weakInit();
  v10[3] = a5;
  v10[4] = a6;
  result = swift_weakAssign();
  result[1] = a1;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t GeometricPin.position.getter()
{
  v11 = *MEMORY[0x1E69E9840];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (!*(v0 + 32))
  {

LABEL_6:
    v7 = *(v0 + 48);
    goto LABEL_7;
  }

  v2 = *(v0 + 24);
  v3 = *(Strong + 16);
  String.utf8CString.getter();
  LOBYTE(v3) = REEntityTryGetSkeletalJointPinPose();

  if ((v3 & 1) == 0)
  {

    result = 0;
    goto LABEL_8;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  REPoseMultiply();
  v10 = v6;

  *&v7 = v10;
LABEL_7:
  result = v7;
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GeometricPin.orientation.getter()
{
  v11 = *MEMORY[0x1E69E9840];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (!*(v0 + 32))
  {

LABEL_6:
    v7 = *(v0 + 64);
    goto LABEL_7;
  }

  v2 = *(v0 + 24);
  v3 = *(Strong + 16);
  String.utf8CString.getter();
  LOBYTE(v3) = REEntityTryGetSkeletalJointPinPose();

  if ((v3 & 1) == 0)
  {

    result = 0;
    goto LABEL_8;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  REPoseMultiply();
  v10 = v6;

  *&v7 = v10;
LABEL_7:
  result = v7;
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GeometricPin.position(relativeTo:)(uint64_t a1)
{
  GeometricPin.pose(relativeTo:)(a1, &v2);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t GeometricPin.pose(relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = *MEMORY[0x1E69E9840];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (!*(v3 + 32))
  {

LABEL_6:
    v23 = *(v3 + 64);
    v25 = *(v3 + 48);
    goto LABEL_7;
  }

  v7 = *(v3 + 24);
  v8 = *(Strong + 16);
  String.utf8CString.getter();
  LOBYTE(v8) = REEntityTryGetSkeletalJointPinPose();

  if ((v8 & 1) == 0)
  {

    v19 = 1;
    v18 = 0uLL;
    v20 = 0uLL;
    goto LABEL_8;
  }

  v9 = *(v3 + 48);
  v10 = *(v3 + 64);
  REPoseMultiply();
  v23 = v12;
  v25 = v11;

LABEL_7:
  v13 = swift_weakLoadStrong();
  LODWORD(v14) = DWORD2(v25);
  v24 = transformPose(_:from:to:)(v13, a1, *&v25, v14, v23);
  v26 = v15;
  v22 = v16;

  v18 = v22;
  v20 = v24;
  v19 = 0;
  v20.n128_u32[2] = v26;
LABEL_8:
  *a2 = v20;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GeometricPin.orientation(relativeTo:)(uint64_t a1)
{
  GeometricPin.pose(relativeTo:)(a1, v2);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2[2];
  }
}

uint64_t GeometricPin.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GeometricPin.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void (*GeometricPin.offsetPosition.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 48);
  return SpatialMediaComponent.spatialMediaPlaneOffset.modify;
}

void (*GeometricPin.offsetOrientation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 64);
  return GeometricPin.offsetOrientation.modify;
}

void GeometricPin.offsetOrientation.modify(void **a1)
{
  v1 = *a1;
  *(v1[2] + 64) = *v1;
  free(v1);
}

uint64_t GeometricPin.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return String.hash(into:)();
}

__n128 transformPose(_:from:to:)(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  *v5.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, a2);
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of transformPose(_:from:to:));
  specialized simd_float4x4.init(translation:rotation:scale:)(a3, a5, v9);
  v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v10.f32[0]), v15, *v10.f32, 1), v16, v10, 2), v17, v10, 3);
  REDecomposeMatrix();
  v11 = *MEMORY[0x1E69E9840];
  return v19;
}

void GeometricPin.alignment(to:relativeTo:)(uint64_t a1@<X1>, float32x4_t *a2@<X8>)
{
  GeometricPin.pose(relativeTo:)(a1, v29);
  if (v30)
  {
    goto LABEL_7;
  }

  v27 = v29[0];
  GeometricPin.pose(relativeTo:)(a1, v31);
  if (v33)
  {
    goto LABEL_7;
  }

  v4 = v32;
  if (one-time initialization token for identity != -1)
  {
    v26 = v32;
    swift_once();
    v4 = v26;
  }

  *v5.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v27, v4, 1.0);
  v25 = v6;
  v28 = v5;
  v23 = v8;
  v24 = v7;
  GeometricPin.pose(relativeTo:)(a1, v34);
  if (v35 & 1) != 0 || (v20 = v34[0], GeometricPin.pose(relativeTo:)(a1, v36), (v38))
  {
LABEL_7:
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v20, v37, 1.0);
    v18 = v14;
    v19 = v15;
    v21 = v16;
    v22 = v17;
    v39.columns[1] = v25;
    v39.columns[0] = v28;
    v39.columns[3] = v23;
    v39.columns[2] = v24;
    v40 = __invert_f4(v39);
    v9 = 0;
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[0].f32[0]), v19, *v40.columns[0].f32, 1), v21, v40.columns[0], 2), v22, v40.columns[0], 3);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[1].f32[0]), v19, *v40.columns[1].f32, 1), v21, v40.columns[1], 2), v22, v40.columns[1], 3);
    v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[2].f32[0]), v19, *v40.columns[2].f32, 1), v21, v40.columns[2], 2), v22, v40.columns[2], 3);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v40.columns[3].f32[0]), v19, *v40.columns[3].f32, 1), v21, v40.columns[3], 2), v22, v40.columns[3], 3);
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4].i8[0] = v9;
}

Swift::Int GeometricPin.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeometricPin()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeometricPin()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeometricPin()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t HasTransform.align(_:to:)@<X0>(float32x4_t *a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (result && (v4 = *(result + 16), result = , v4 == *(v1 + 16)))
  {
    v10 = HasHierarchy.parent.getter();
    GeometricPin.alignment(to:relativeTo:)(v10, v24);
    v22 = v24[1];
    v23 = v24[0];
    v20 = v24[3];
    v21 = v24[2];
    v5 = v25;

    if ((v5 & 1) == 0)
    {
      v11 = HasTransform.transform.getter();
      specialized simd_float4x4.init(translation:rotation:scale:)(v13, v12, *&v11);
      REMakeSRTFromMatrix();
      if (one-time initialization token for identity != -1)
      {
        v18 = v14;
        v19 = v15;
        v17 = v16;
        swift_once();
        v16 = v17;
        v14 = v18;
        v15 = v19;
      }

      result = HasTransform.transform.setter(v14, v15, v16);
    }

    v7 = v22;
    v6 = v23;
    v9 = v20;
    v8 = v21;
  }

  else
  {
    v5 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4].i8[0] = v5;
  return result;
}

void Entity.attach(_:to:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  REAttachedTransformComponentGetComponentType();
  v11 = REEntityGetOrAddComponentByClass();
  REAttachedTransformComponentDetach();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = a2[4];
    v27 = a1;
    if (v12)
    {
      v33 = a2[3];
      v34 = v12;

      static String.Encoding.utf8.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v28 = StringProtocol.cString(using:)();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v28 = 0;
    }

    v14 = a2[1];
    v15 = a2[2];
    v33 = v14;
    v34 = v15;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.cString(using:)();
    v17 = *(v6 + 8);
    v17(v9, v5);
    if (v16)
    {
      v18 = Strong;
      v19 = *(Strong + 16);
      REAttachedTransformComponentSetTargetPinWithName();

      v20 = *(v18 + 16);
      v33 = v14;
      v34 = v15;
      static String.Encoding.utf8.getter();
      v21 = StringProtocol.cString(using:)();
      v17(v9, v5);

      if (v21)
      {
        v26 = v11;
        REAttachedTransformComponentAttach();

        outlined init with copy of GeometricPin?(v27, &v30);
        if (!v32)
        {

          outlined destroy of GeometricPin?(&v30);
          return;
        }

        outlined init with take of GeometricPin(&v30, &v33);
        if (!swift_weakLoadStrong())
        {

          outlined destroy of GeometricPin(&v33);
          return;
        }

        if (v37)
        {
          v30 = v36;
          v31 = v37;

          static String.Encoding.utf8.getter();
          StringProtocol.cString(using:)();
          v17(v9, v5);
        }

        v30 = v34;
        v31 = v35;

        static String.Encoding.utf8.getter();
        v22 = StringProtocol.cString(using:)();
        v17(v9, v5);

        if (v22)
        {
          v23 = swift_weakLoadStrong();
          if (v23)
          {
            v24 = v23;

            v25 = *(v24 + 16);

            REAttachedTransformComponentSetSourcePinWithName();

            outlined destroy of GeometricPin(&v33);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  Strong = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
  v13 = Strong;
}

BOOL specialized static GeometricPin.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v4 = a1->i64[1] == a2->i64[1] && a1[1].i64[0] == a2[1].i64[0];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2].i64[0];
  v6 = a2[2].i64[0];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = a1[1].i64[1] == a2[1].i64[1] && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  result = 0;
  v9 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
  if (v9.i8[0] & 1) != 0 && (v9.i8[2] & 1) != 0 && (v9.i8[4])
  {
    if (vminv_u16(vmovn_s32(vceqq_f32(a1[4], a2[4]))))
    {
      Strong = swift_weakLoadStrong();
      v11 = swift_weakLoadStrong();
      if (Strong)
      {
        if (v11)
        {
          v12 = *(Strong + 16);
          v13 = v11;

          v14 = *(v13 + 16);

          return v12 == v14;
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t outlined init with copy of GeometricPin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeometricPin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometricPin and conformance GeometricPin()
{
  result = lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin;
  if (!lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometricPin and conformance GeometricPin);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeometricPin(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GeometricPin(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __RKScenePhysics.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x50656E6563534552, 0xEE00736369737968, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKScenePhysics.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKScenePhysics.Registration.init()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError();
    swift_allocError();
    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RKScenePhysics.Registration.deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKScenePhysics.Registration.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __RKScenePhysics.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKScenePhysics.registration = a1;
}

uint64_t key path setter for static __RKScenePhysics.registration : __RKScenePhysics.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKScenePhysics.registration = v1;
}

uint64_t Scene.getOrAddInternalComponentPointer()()
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return 0;
  }

  v1 = *(static __RKScenePhysics.registration + 3);
  v2 = *(v0 + 16);
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (v4 >= 1)
  {
    v5 = *ComponentsOfCustomType;
    return RECustomComponentGetObject();
  }

  if (!Scene.AnchorCollection.endIndex.getter())
  {
    REEntityCreate();
    RESceneAddEntity();
    result = Scene.AnchorCollection.endIndex.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v7 = Scene.AnchorCollection.subscript.getter(0)[2];

  result = REEntityAddComponentByClass();
  if (result)
  {
    return RECustomComponentGetObject();
  }

  return result;
}

void *Scene.__gravity.getter()
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return 0;
  }

  v1 = *(static __RKScenePhysics.registration + 3);
  v2 = *(v0 + 16);
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (!v4)
  {
    return 0;
  }

  v5 = *ComponentsOfCustomType;
  result = RECustomComponentGetObject();
  if (result)
  {
    v7 = result;
    result = *result;
    v8 = v7[1];
  }

  return result;
}

void *Scene.__gravity.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if (static __RKScenePhysics.registration)
  {
    if (a3)
    {
      v8 = *(static __RKScenePhysics.registration + 3);
      v9 = *(v3 + 16);
      result = REEntityGetCustomComponent();
      if (result)
      {
        return REEntityRemoveComponentByClass();
      }
    }

    else
    {
      result = Scene.getOrAddInternalComponentPointer()();
      if (result)
      {
        *result = a1;
        result[1] = a2;
      }
    }
  }

  return result;
}

void (*Scene.__gravity.modify(uint64_t *a1))(uint64_t **a1)
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
  *(v3 + 48) = v1;
  swift_beginAccess();
  v5 = static __RKScenePhysics.registration;
  if (!static __RKScenePhysics.registration)
  {
    goto LABEL_9;
  }

  v6 = *(static __RKScenePhysics.registration + 3);
  v7 = *(v1 + 16);
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (!v9 || (v10 = *ComponentsOfCustomType, (Object = RECustomComponentGetObject()) == 0))
  {
    v5 = 0;
LABEL_9:
    v13 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = 0;
  v5 = *Object;
  v13 = Object[1];
LABEL_10:
  *v4 = v5;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  return Scene.__gravity.modify;
}

void Scene.__gravity.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  if (static __RKScenePhysics.registration)
  {
    if (v1[2])
    {
      v4 = *(static __RKScenePhysics.registration + 3);
      v5 = *(v1[6] + 16);
      if (REEntityGetCustomComponent())
      {
        REEntityRemoveComponentByClass();
      }
    }

    else
    {
      v6 = Scene.getOrAddInternalComponentPointer()();
      if (v6)
      {
        *v6 = v2;
        v6[1] = v3;
      }
    }
  }

  free(v1);
}

uint64_t Scene.__adaptiveTimeStep.getter()
{
  swift_beginAccess();
  if (static __RKScenePhysics.registration && (v1 = *(static __RKScenePhysics.registration + 3), v2 = *(v0 + 16), ComponentsOfCustomType = RESceneGetComponentsOfCustomType(), v4) && (v5 = *ComponentsOfCustomType, (Object = RECustomComponentGetObject()) != 0))
  {
    return *(Object + 16);
  }

  else
  {
    return 2;
  }
}

uint64_t Scene.__adaptiveTimeStep.setter(char a1)
{
  result = swift_beginAccess();
  if (static __RKScenePhysics.registration)
  {
    if (a1 == 2)
    {
      v4 = *(static __RKScenePhysics.registration + 3);
      v5 = *(v1 + 16);
      result = REEntityGetCustomComponent();
      if (result)
      {
        return REEntityRemoveComponentByClass();
      }
    }

    else
    {
      result = Scene.getOrAddInternalComponentPointer()();
      if (result)
      {
        *(result + 16) = a1 & 1;
      }
    }
  }

  return result;
}

void (*Scene.__adaptiveTimeStep.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  if (static __RKScenePhysics.registration && (v5 = *(static __RKScenePhysics.registration + 3), v6 = *(v1 + 16), ComponentsOfCustomType = RESceneGetComponentsOfCustomType(), v8) && (v9 = *ComponentsOfCustomType, (Object = RECustomComponentGetObject()) != 0))
  {
    v11 = *(Object + 16);
  }

  else
  {
    v11 = 2;
  }

  *(v4 + 32) = v11;
  return Scene.__adaptiveTimeStep.modify;
}

void Scene.__adaptiveTimeStep.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (static __RKScenePhysics.registration)
  {
    if (v2 == 2)
    {
      v3 = *(static __RKScenePhysics.registration + 3);
      v4 = *(v1[3] + 16);
      if (REEntityGetCustomComponent())
      {
        REEntityRemoveComponentByClass();
      }
    }

    else
    {
      v5 = Scene.getOrAddInternalComponentPointer()();
      if (v5)
      {
        *(v5 + 16) = v2 & 1;
      }
    }
  }

  free(v1);
}

uint64_t getEnumTagSinglePayload for __RKScenePhysics(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKScenePhysics(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKScenePhysics.Registration.RegistrationError and conformance __RKScenePhysics.Registration.RegistrationError);
  }

  return result;
}

uint64_t AudioPlaybackController._proto_fade(to:duration:)()
{
  Duration.components.getter();
  Duration.components.getter();
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  REAudioPlayerComponentFadeTokenToGainWithDuration();

  return RENetworkMarkComponentDirty();
}

void CharacterControllerStateComponent.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static CharacterControllerStateComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REComponentGetEntity();
  RECharacterControllerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECharacterControllerComponentGetVelocity();
    v8 = v4;
    result = RECharacterControllerComponentOnGround();
    v6 = v8;
  }

  else
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    result = 0;
    v6 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = result;
  return result;
}

uint64_t CharacterControllerStateComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v16[0] = *v0;
  v16[1] = v16[0];
  v10 = *(v0 + 16);
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FC0;
  *(v11 + 32) = 0x756F72476E4F7369;
  *(v11 + 40) = 0xEA0000000000646ELL;
  v12 = MEMORY[0x1E69E6370];
  *(v11 + 48) = v10;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x797469636F6C6576;
  *(v11 + 88) = 0xE800000000000000;
  *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v13 = swift_allocObject();
  *(v11 + 96) = v13;
  *(v13 + 16) = v16[0];
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id __RCInteractionsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __RCInteractionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __RCEntity.invokeCustomTrigger(named:overrides:)(Swift::String named, Swift::OpaquePointer_optional overrides)
{
  rawValue = overrides.value._rawValue;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v6 = *(v2 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v8 = SceneNullable;
    v9 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v9)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v8);
    }

    Scene.__interactionService.getter();
    v11 = v10;

    ObjectType = swift_getObjectType();
    (*(v11 + 48))(countAndFlagsBits, object, 0, rawValue, ObjectType, v11);

    swift_unknownObjectRelease();
  }
}

uint64_t __RCEntity.registerCustomAction(named:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v11 = result;
    v12 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v12)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v11);
    }

    Scene.__interactionService.getter();
    v14 = v13;

    ObjectType = swift_getObjectType();
    (*(v14 + 56))(a1, a2, a3, a4, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __RCEntity.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t __RCEntity.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t __RCEntity.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1C68F3280]();
  (*(v1 + 16))(v1, v2);
}

uint64_t specialized static __RCInteractionsController.__invokeCustomTrigger(named:onEntityNamed:inSceneNamed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 80, v25);
  v7 = v26;
  v8 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_20:
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C68F41F0](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            __swift_destroy_boxed_opaque_existential_1(v25);

            Scene.__interactionService.getter();
            v20 = v19;

            ObjectType = swift_getObjectType();
            (*(v20 + 48))(a1, a2, 0, 0, ObjectType, v20);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_16;
          }
        }

        v15 = *(v13 + 16);
        RESceneGetName();
        if (String.init(cString:)() == a3 && v16 == a4)
        {
          goto LABEL_17;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_18;
        }

        ++v12;
      }

      while (v14 != v11);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t specialized static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 80, v32);
  v11 = v33;
  v12 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = v13;
  v31 = a2;
  if (v13 >> 62)
  {
LABEL_20:
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v16 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1C68F41F0](v16, v14);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            __swift_destroy_boxed_opaque_existential_1(v32);

            Scene.__interactionService.getter();
            v24 = v23;

            ObjectType = swift_getObjectType();
            v26 = swift_allocObject();
            *(v26 + 16) = a5;
            *(v26 + 24) = a6;
            v27 = *(v24 + 56);

            v27(a1, v31, partial apply for closure #2 in static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:), v26, ObjectType, v24);

            swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v16 + 32);

          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_16;
          }
        }

        v19 = *(v17 + 16);
        RESceneGetName();
        if (String.init(cString:)() == a3 && v20 == a4)
        {
          goto LABEL_17;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_18;
        }

        ++v16;
      }

      while (v18 != v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t partial apply for closure #2 in static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0x614E797469746E45, 0xEA0000000000656DLL);
}

uint64_t MaterialDefinitionResource.deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t MaterialDefinitionResource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t MaterialDefinitionResource.__allocating_init(_:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MaterialDefinitionResource();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t MaterialDefinitionResource.BuildParameters.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MaterialDefinitionResource.BuildParameters.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.overrideMaterial.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.techniqueMapping.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.library.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

unint64_t MaterialDefinitionResource.BuildParameters.DebugMapping.init(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a3[1] = a2;
  a3[2] = result;
  *a3 = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.debugMappings.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.library.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.debugMapping.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.debugMapping.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.library.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.entry.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.entry.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.ShaderData.init(entry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.vertexShader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.vertexShader.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);

  result = v6;
  *(v1 + 40) = v6;
  *(v1 + 56) = v2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.pixelShader.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v2, v3, v4);
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.pixelShader.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v1[8], v1[9], v1[10]);
  result = v4;
  *(v1 + 4) = v4;
  v1[10] = v2;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.depthCompareFunction.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.depthCompareFunction.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.cullMode.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.cullMode.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.colorWriteMask.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.State.colorWriteMask.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void MaterialDefinitionResource.BuildParameters.Technique.State.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.state.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  result = *(v1 + 120);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 136);
  return result;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.state.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v2;
  result = *(a1 + 32);
  *(v1 + 120) = result;
  *(v1 + 136) = *(a1 + 48);
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.functionConstants.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.variations.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.Technique.defaultVariations.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

__n128 MaterialDefinitionResource.BuildParameters.Technique.init(name:vertexShader:fragmentShader:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = *a4;
  v9 = a4[1].n128_u64[0];
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 64) = 0;
  *(a5 + 88) = 514;
  *(a5 + 96) = 0;
  *(a5 + 104) = 1;
  *(a5 + 112) = 0;
  *(a5 + 120) = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  v10 = MEMORY[0x1E69E7CC0];
  *(a5 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a5 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(v10);
  *(a5 + 160) = v10;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 40) = v12;
  *(a5 + 56) = v8;
  outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(0, 0, 0);
  result = v13;
  *(a5 + 64) = v13;
  *(a5 + 80) = v9;
  return result;
}

uint64_t MaterialDefinitionResource.BuildParameters.techniques.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

unint64_t MaterialDefinitionResource.BuildParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[3] = result;
  a1[4] = 0;
  a1[5] = v2;
  a1[6] = v2;
  return result;
}

uint64_t static MaterialDefinitionResource.load(_:services:)(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v12 = v3;
  v13 = *(a1 + 40);
  v5 = specialized static MaterialDefinitionResource.createBuilder(_:)(&v10);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v10);
  v6 = *(&v11 + 1);
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  (*(v7 + 32))(v6, v7);
  v8 = REAssetManagerMaterialDefinitionAssetBuilderBuild();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  RERelease();
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for MaterialDefinitionResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v8;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v5;
}

uint64_t static MaterialDefinitionResource.loadAsync(_:services:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v33 = *(a1 + 40);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v34);
  outlined init with copy of __REAssetService(a2 + 120, v38);
  v8 = v39;
  v9 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  LOBYTE(v9) = (*(v9 + 56))(v8, v9);
  v10 = v35;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v14 = swift_allocObject();
  *(v14 + 16) = AssetRequest;
  if (v9)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  v15 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  *(v15 + 16) = v14;
  v16 = (v15 + 16);
  v34[0] = v3;
  v34[1] = v4;
  v34[2] = v5;
  v35 = v6;
  v36 = v7;
  v37 = v33;
  specialized static MaterialDefinitionResource.createBuilder(_:)(v34);
  outlined init with copy of __REAssetService(a2 + 120, v34);
  v17 = v35;
  v18 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v18 + 32))(v17, v18);
  v19 = REAssetManagerMaterialDefinitionAssetBuilderBuild();
  __swift_destroy_boxed_opaque_existential_1(v34);
  RERelease();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1887600;
  swift_beginAccess();
  v22 = *v16;
  *(v21 + 56) = Request;
  *(v21 + 32) = v22;
  type metadata accessor for LoadRequestDependencies();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 24) = v24;
  swift_beginAccess();
  *(v23 + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation26MaterialDefinitionResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation26MaterialDefinitionResourceCGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA26MaterialDefinitionResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA26MaterialDefinitionResourceCs5Error_pGSgGMR);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v26 + 16) = v27;
  *(v26 + 24) = 0;
  *(v26 + 32) = -1;
  *(v25 + 16) = v26;
  v28 = swift_allocObject();
  v28[2] = partial apply for closure #1 in static MaterialDefinitionResource.loadAsync(_:services:);
  v28[3] = v20;
  v28[4] = v26;
  v28[5] = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation26MaterialDefinitionResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation26MaterialDefinitionResourceCs5Error_pGMR);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v25 + 24) = Future.init(_:)();
  return v25;
}

uint64_t closure #1 in static MaterialDefinitionResource.loadAsync(_:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = swift_allocObject();
  v10[2] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v10[3] = v8;
  v10[4] = a4;
  v10[5] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in static MaterialDefinitionResource.loadAsync(_:services:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = *(v9 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v18[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_49;
  v15 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v15);

  _Block_release(v11);

  swift_beginAccess();
  v16 = *(*(a3 + 16) + 16);
  return REAssetLoadRequestAddAsset();
}

void closure #1 in closure #1 in static MaterialDefinitionResource.loadAsync(_:services:)(char a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for MaterialDefinitionResource();
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v8, 0);

    swift_beginAccess();
    v9 = *(a5 + 16);
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_52_0;
    v10 = _Block_copy(aBlock);
    v11 = _Block_copy(v10);
    v12 = *(v9 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v16[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v16[3] = &block_descriptor_59;
    v14 = _Block_copy(v16);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v14);

    _Block_release(v10);
  }

  else
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    v15 = swift_allocError();
    a2(v15, 1);
  }
}

uint64_t MaterialDefinitionResource.update(from:services:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4);
  v6 = a1[1];
  v12 = *a1;
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 40);
  specialized static MaterialDefinitionResource.createBuilder(_:)(&v12);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v12);
  v7 = *(&v13 + 1);
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  (*(v8 + 32))(v7, v8);
  v9 = *(v3 + 16);
  LOBYTE(a2) = REAssetManagerMaterialDefinitionAssetBuilderUpdateExistingAsset();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  if ((a2 & 1) == 0)
  {
    lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError();
    swift_allocError();
    swift_willThrow();
  }

  result = RERelease();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MaterialDefinitionResource.udpate(from:services:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = *(a1 + 40);
  return MaterialDefinitionResource.update(from:services:)(v5, a2);
}

uint64_t MaterialDefinitionResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t outlined copy of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized MaterialDefinitionResource.__allocating_init(path:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v11);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(&v11, v13);
  v7 = *(v6 + 32);

  v7(v5, v6);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(&v11);
  if (AssetHandle)
  {

    REAssetHandleLoadNow();
    type metadata accessor for MaterialDefinitionResource();
    v9 = swift_allocObject();
    *(v9 + 16) = AssetHandle;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();

    return v9;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v11 = 0xD000000000000024;
    v12 = 0x80000001C18EA270;
    MEMORY[0x1C68F3410](a1, a2);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static MaterialDefinitionResource.createBuilder(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v113 = a1[5];
  v105 = a1[6];
  v6 = REMaterialDefinitionAssetBuilderCreate();
  if (v2)
  {
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetName();
  }

  if (v3)
  {
    v7 = *(v3 + 16);
  }

  v115 = v6;
  REMaterialDefinitionAssetBuilderSetOverrideMaterial();
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = (v14 << 10) | (16 * v15);
      v17 = (*(v4 + 48) + v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v4 + 56) + v16);
      v21 = *v20;
      v22 = v20[1];
      String.utf8CString.getter();
      String.utf8CString.getter();
      REMaterialDefinitionAssetBuilderSetTechniqueMapping();

      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_91;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v4 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v23 = *(v5 + 16);
  }

  result = REMaterialDefinitionAssetBuilderSetLibrary();
  v111 = *(v113 + 16);
  if (!v111)
  {
LABEL_32:
    v41 = v115;
    v104 = *(v105 + 16);
    if (!v104)
    {
      return v41;
    }

    v42 = 0;
LABEL_34:
    v109 = v42;
    v43 = v105 + 32 + 168 * v42;
    v44 = *v43;
    v45 = *(v43 + 32);
    v118 = *(v43 + 16);
    v119 = v45;
    v117 = v44;
    v46 = *(v43 + 48);
    v47 = *(v43 + 64);
    v48 = *(v43 + 96);
    v122 = *(v43 + 80);
    v123 = v48;
    v120 = v46;
    v121 = v47;
    v49 = *(v43 + 112);
    v50 = *(v43 + 128);
    v51 = *(v43 + 144);
    v127 = *(v43 + 160);
    v125 = v50;
    v126 = v51;
    v124 = v49;
    v52 = v118;
    outlined init with copy of MaterialDefinitionResource.BuildParameters.Technique(&v117, v116);
    v53 = REMaterialDefinitionAssetBuilderAddTechnique();
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetTechniqueName();

    if (v52)
    {
      v54 = *(v52 + 16);
    }

    v55 = v119;
    REMaterialDefinitionAssetBuilderSetTechniqueLibrary();
    if (v55)
    {
      String.utf8CString.getter();

      REMaterialDefinitionAssetBuilderSetTechniqueDebugMapping();
    }

    if (*(&v119 + 1))
    {
      v56 = *(*(&v119 + 1) + 16);
    }

    v57 = v121;
    v58 = v122;
    REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderLibrary();
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetTechniqueVertexShaderEntry();

    if (v58)
    {
      if (v57)
      {
        v59 = *(v57 + 16);
      }

      REMaterialDefinitionAssetBuilderSetTechniquePixelShaderLibrary();
      String.utf8CString.getter();
      REMaterialDefinitionAssetBuilderSetTechniquePixelShaderEntry();

      outlined consume of MaterialDefinitionResource.BuildParameters.Technique.ShaderData?(v57, *(&v57 + 1), v58);
    }

    v60 = BYTE9(v122);
    v61 = BYTE8(v123);
    v62 = BYTE8(v124);
    v63 = BYTE8(v125);
    if (BYTE8(v122) == 2)
    {
      if (BYTE9(v122) == 2)
      {
        goto LABEL_46;
      }
    }

    else
    {
      REMaterialDefinitionAssetBuilderSetTechniqueStateAlphaBlend();
      if (v60 == 2)
      {
LABEL_46:
        if (v61)
        {
          goto LABEL_47;
        }

        goto LABEL_80;
      }
    }

    REMaterialDefinitionAssetBuilderSetTechniqueStateWriteDepth();
    if (v61)
    {
LABEL_47:
      if (v62)
      {
        goto LABEL_48;
      }

      goto LABEL_81;
    }

LABEL_80:
    REMaterialDefinitionAssetBuilderSetTechniqueStateDepthCompareFunction();
    if (v62)
    {
LABEL_48:
      if (v63)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_81:
    REMaterialDefinitionAssetBuilderSetTechniqueStateCullMode();
    if (v63)
    {
LABEL_50:
      v64 = v53;
      v110 = v109 + 1;
      v65 = v126;
      v66 = v126 + 64;
      v67 = 1 << *(v126 + 32);
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v69 = v68 & *(v126 + 64);
      v70 = (v67 + 63) >> 6;

      for (i = 0; v69; result = )
      {
        v72 = i;
LABEL_59:
        v73 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v74 = (v72 << 10) | (16 * v73);
        v75 = (*(v65 + 48) + v74);
        v76 = *v75;
        v77 = v75[1];
        v78 = (*(v65 + 56) + v74);
        v79 = *v78;
        v80 = v78[1];
        String.utf8CString.getter();
        String.utf8CString.getter();
        REMaterialDefinitionAssetBuilderSetTechniqueFunctionConstant();
      }

      while (1)
      {
        v72 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v72 >= v70)
        {

          v107 = *(&v126 + 1) + 64;
          v81 = 1 << *(*(&v126 + 1) + 32);
          if (v81 < 64)
          {
            v82 = ~(-1 << v81);
          }

          else
          {
            v82 = -1;
          }

          v83 = v82 & *(*(&v126 + 1) + 64);
          v106 = (v81 + 63) >> 6;

          v84 = 0;
          v41 = v115;
          v85 = v64;
          v108 = result;
          while (v83)
          {
LABEL_70:
            v87 = __clz(__rbit64(v83));
            v83 &= v83 - 1;
            v88 = v87 | (v84 << 6);
            v89 = *(*(result + 56) + 8 * v88);
            v90 = *(v89 + 16);
            if (v90)
            {
              v112 = v83;
              v114 = v84;
              v91 = (*(result + 48) + 16 * v88);
              v93 = *v91;
              v92 = v91[1];
              swift_bridgeObjectRetain_n();

              v94 = (v89 + 40);
              v95 = v41;
              v96 = v85;
              do
              {
                v97 = *(v94 - 1);
                v98 = *v94;
                String.utf8CString.getter();

                REMaterialDefinitionAssetBuilderAddTechniqueVariation();

                String.utf8CString.getter();
                String.utf8CString.getter();

                REMaterialDefinitionAssetBuilderSetTechniqueVariation();

                v94 += 2;
                --v90;
              }

              while (v90);

              swift_bridgeObjectRelease_n();
              v41 = v95;
              v85 = v96;
              result = v108;
              v83 = v112;
              v84 = v114;
            }
          }

          while (1)
          {
            v86 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_90;
            }

            if (v86 >= v106)
            {

              v99 = v127;
              v100 = *(v127 + 16);
              if (v100)
              {

                v101 = (v99 + 40);
                do
                {
                  v102 = *(v101 - 1);
                  v103 = *v101;

                  REMaterialDefinitionAssetBuilderAddTechniqueDefaultVariation();
                  String.utf8CString.getter();

                  REMaterialDefinitionAssetBuilderSetTechniqueDefaultVariation();

                  v101 += 2;
                  --v100;
                }

                while (v100);
              }

              else
              {
              }

              outlined destroy of MaterialDefinitionResource.BuildParameters.Technique(&v117);

              v42 = v110;
              if (v110 != v104)
              {
                if (v110 < *(v105 + 16))
                {
                  goto LABEL_34;
                }

                __break(1u);
              }

              return v41;
            }

            v83 = *(v107 + 8 * v86);
            ++v84;
            if (v83)
            {
              v84 = v86;
              goto LABEL_70;
            }
          }
        }

        v69 = *(v66 + 8 * v72);
        ++i;
        if (v69)
        {
          i = v72;
          goto LABEL_59;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_49:
    REMaterialDefinitionAssetBuilderSetTechniqueStateColorWriteMask();
    goto LABEL_50;
  }

  v24 = 0;
  while (v24 < *(v113 + 16))
  {
    v25 = (v113 + 32 + 24 * v24);
    v27 = v25[1];
    v26 = v25[2];
    ++v24;
    v28 = *v25;

    REMaterialDefinitionAssetBuilderAddDebugMapping();
    String.utf8CString.getter();
    REMaterialDefinitionAssetBuilderSetDebugMappingName();

    v29 = 0;
    v30 = 1 << *(v26 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v26 + 64);
    v33 = (v30 + 63) >> 6;
    if (v32)
    {
      while (1)
      {
        v34 = v29;
LABEL_30:
        v35 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v36 = v35 | (v34 << 6);
        v37 = (*(v26 + 48) + 16 * v36);
        v38 = *v37;
        v39 = v37[1];
        v40 = *(*(v26 + 56) + 4 * v36);
        String.utf8CString.getter();

        REMaterialDefinitionAssetBuilderSetDebugMappingEntry();

        if (!v32)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_89;
      }

      if (v34 >= v33)
      {
        break;
      }

      v32 = *(v26 + 64 + 8 * v34);
      ++v29;
      if (v32)
      {
        v29 = v34;
        goto LABEL_30;
      }
    }

    if (v24 == v111)
    {
      goto LABEL_32;
    }
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError()
{
  result = lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError;
  if (!lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError;
  if (!lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialDefinitionResource.LoadError and conformance MaterialDefinitionResource.LoadError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_17RealityFoundation26MaterialDefinitionResourceC15BuildParametersV9TechniqueV10ShaderDataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialDefinitionResource.BuildParameters.Technique.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[49])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.BeamCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7375636F66 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.BeamCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.BeamCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Audio.Directivity.CodingKeys()
{
  v1 = 0x65726964696E6D6FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835099490;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Audio.Directivity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.OmnidirectionalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.OmnidirectionalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys()
{
  if (*v0)
  {
    result = 0x41676E696E65706FLL;
  }

  else
  {
    result = 0x726574656D616964;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.Directivity.SphericalApproximationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574656D616964 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x41676E696E65706FLL && a2 == 0xEC000000656C676ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.Directivity.SphericalApproximationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Audio.Directivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *v1;
  v18 = v1[1];
  v19 = *(v1 + 16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19)
  {
    if (v19 != 1)
    {
      v39 = 1;
      lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();
      v25 = v29;
      v26 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v25, v31);
      return (*(v35 + 8))(v16, v26);
    }

    v42 = 2;
    lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();
    v21 = v32;
    v22 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = 0;
    v23 = v34;
    v24 = v37;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v24)
    {
      v40 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v33 + 8))(v21, v23);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();
    v22 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v28 + 8))(v12, v9);
  }

  return (*(v35 + 8))(v16, v22);
}

uint64_t Audio.Directivity.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x1C68F4C10](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1C68F4C50](v4);
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x1C68F4C10](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C68F4C50](v3);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1C68F4C50](v4);
  }

  return MEMORY[0x1C68F4C10](1);
}

Swift::Int Audio.Directivity.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Audio.Directivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO32SphericalApproximationCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO25OmnidirectionalCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v50 = *(v46 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO14BeamCodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO11DirectivityO10CodingKeys33_1928A484B4E4C4067D3BE3233C707E40LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v50;
    v23 = v51;
    v45 = 0;
    v53 = v15;
    v24 = v52;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v55 = v25;
    v56 = v25 + 32;
    v57 = 0;
    v58 = v26;
    v27 = specialized Collection<>.popFirst()();
    if (v27 == 3 || v57 != v58 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v34 = &type metadata for Audio.Directivity;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        v59 = 1;
        lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys();
        v28 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v28)
        {
          (*(v22 + 8))(v9, v46);
          (*(v53 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v29 = 2;
          v30 = 0;
          v31 = 0;
LABEL_16:
          *v24 = v30;
          *(v24 + 8) = v31;
          *(v24 + 16) = v29;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      else
      {
        v59 = 2;
        lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys();
        v39 = v23;
        v40 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v40)
        {
          v59 = 0;
          v41 = v48;
          KeyedDecodingContainer.decode(_:forKey:)();
          v42 = v53;
          v30 = v43;
          v59 = 1;
          KeyedDecodingContainer.decode(_:forKey:)();
          v31 = v44;
          (*(v49 + 8))(v39, v41);
          (*(v42 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v29 = 1;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v59 = 0;
      lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys();
      v37 = v45;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        KeyedDecodingContainer.decode(_:forKey:)();
        v30 = v38;
        (*(v47 + 8))(v13, v10);
        (*(v53 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v29 = 0;
        v31 = 0;
        goto LABEL_16;
      }
    }

    (*(v53 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Audio.Directivity()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Audio.Directivity()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Audio.Directivity.hash(into:)();
  return Hasher._finalize()();
}

BOOL specialized static Audio.Directivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = *a1;
    v11 = *a2;
    return v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1)
    {
      v6 = *a1;
      v7 = *a2;
      if (v2 == v3)
      {
        v8 = *(a2 + 8);
        return *(a1 + 8) == v5;
      }
    }

    return 0;
  }

  v12 = *&v5 | *&v3;
  return v4 == 2 && v12 == 0;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.CodingKeys and conformance Audio.Directivity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.SphericalApproximationCodingKeys and conformance Audio.Directivity.SphericalApproximationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.OmnidirectionalCodingKeys and conformance Audio.Directivity.OmnidirectionalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity.BeamCodingKeys and conformance Audio.Directivity.BeamCodingKeys);
  }

  return result;
}

uint64_t specialized Audio.Directivity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835099490 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726964696E6D6FLL && a2 == 0xEF6C616E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C18EA2A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int Entity.CoordinateSpaceReference.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void Entity.transformMatrix(relativeTo:)(char *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  if (RESceneSpaceRootComponentFindComponentInHierarchy() && (v19[0] = v4, specialized static Entity.conversionMatrix(from:to:requiresImmersiveSpaceOpen:)(v19, 1, v20), (v21 & 1) == 0))
  {
    v17 = v20[2];
    v18 = v20[3];
    v15 = v20[0];
    v16 = v20[1];
    *v11.i64 = findWorldMatrix4x4FFromTransformComponent(_:)(v2);
    v6 = 0;
    v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v11.f32[0]), v16, *v11.f32, 1), v17, v11, 2), v18, v11, 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v12.f32[0]), v16, *v12.f32, 1), v17, v12, 2), v18, v12, 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v13.f32[0]), v16, *v13.f32, 1), v17, v13, 2), v18, v13, 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v14.f32[0]), v16, *v14.f32, 1), v17, v14, 2), v18, v14, 3);
    v19[0] = 0;
  }

  else
  {
    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4].i8[0] = v6;
}

double findWorldMatrix4x4FFromTransformComponent(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1C69004D0](*(a1 + 16));
  v3 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
    RETransformServiceGetWorldMatrix4x4F();
  }

  else
  {
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RETransformComponentGetWorldMatrix4x4F();
    }

    else if (specialized HasHierarchy.parent.getter())
    {
      v6 = findWorldMatrix4x4FFromTransformComponent(_:)();

      return v6;
    }

    else
    {
      *&result = 1065353216;
    }
  }

  return result;
}

uint64_t specialized static Entity.conversionMatrix(from:to:requiresImmersiveSpaceOpen:)@<X0>(char *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  IsSelfInImmersiveSpace = RESceneSpaceRootComponentGetIsSelfInImmersiveSpace();
  result = RESceneSpaceRootComponentGetIsImmersiveSpaceOpen();
  if ((v5 & 1) == 0)
  {
    if ((IsSelfInImmersiveSpace & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v12 = 1;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    goto LABEL_8;
  }

  if (!(result & 1 | ((a2 & 1) == 0)))
  {
    goto LABEL_6;
  }

  if (IsSelfInImmersiveSpace)
  {
LABEL_7:
    v12 = 0;
    v11 = *&zmmword_1C1887630[48];
    v10 = *&zmmword_1C1887630[32];
    v9 = *&zmmword_1C1887630[16];
    v8 = *zmmword_1C1887630;
    goto LABEL_8;
  }

  result = RESceneSpaceRootComponentGetSceneToImmersiveTransform();
  v12 = 0;
LABEL_8:
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference()
{
  result = lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference;
  if (!lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.CoordinateSpaceReference and conformance Entity.CoordinateSpaceReference);
  }

  return result;
}

uint64_t one-time initialization function for SpatialMediaLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, SpatialMediaLogger);
  __swift_project_value_buffer(v0, SpatialMediaLogger);
  if (one-time initialization token for SpatialMediaLog != -1)
  {
    swift_once();
  }

  v1 = SpatialMediaLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for SpatialMediaLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  SpatialMediaLog = result;
  return result;
}

uint64_t AudioFileResource.CreateOptions.mixGroupName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AudioFileResource.CreateOptions.mixGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void AudioFileResource.CreateOptions.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.CreateOptions.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AudioFileResource.CreateOptions.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.CreateOptions.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

double AudioFileResource.CreateOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 257;
  *a1 = 257;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  return result;
}

uint64_t AudioFileResource.CreateOptions.init(from:)@<X0>(uint64_t a1@<X8>)
{
  InputMode = REAudioFileAssetGetInputMode();
  if (InputMode >= 3)
  {
    goto LABEL_21;
  }

  v3 = InputMode;
  Streaming = REAudioFileAssetGetStreaming();
  LoopCount = REAudioFileAssetGetLoopCount();
  RandomizeStart = REAudioFileAssetGetRandomizeStart();
  v7 = REAudioFileAssetGetMixGroupName();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  NormalizationMode = REAudioFileAssetGetNormalizationMode();
  REAudioFileAssetGetTargetLUFS();
  if (NormalizationMode == 2)
  {
    v15 = 0;
LABEL_12:
    v14 = v13;
    goto LABEL_13;
  }

  v14 = 0.0;
  if (NormalizationMode != 1)
  {
    v15 = -1;
    goto LABEL_13;
  }

  if (v13 != *MEMORY[0x1E6998DF0])
  {
    v15 = 1;
    goto LABEL_12;
  }

  v15 = 2;
LABEL_13:
  CalibrationMode = REAudioFileAssetGetCalibrationMode();
  result = REAudioFileAssetGetCalibrationLevel();
  switch(CalibrationMode)
  {
    case 0:
      v20 = 0;
      v19 = -1;
LABEL_20:
      *a1 = 0x20001u >> (8 * (v3 & 0x1F));
      *(a1 + 1) = Streaming ^ 1;
      *(a1 + 2) = LoopCount != 0;
      *(a1 + 3) = RandomizeStart;
      *(a1 + 8) = v9;
      *(a1 + 16) = v11;
      *(a1 + 24) = v14;
      *(a1 + 32) = v15;
      *(a1 + 40) = v20;
      *(a1 + 48) = v19;
      return result;
    case 1:
      v19 = 0;
LABEL_19:
      v20 = v18;
      goto LABEL_20;
    case 2:
      v19 = 1;
      goto LABEL_19;
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static AudioFileResource.CreateOptions.== infix(_:_:)(double *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[3];
  v27 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 1);
  v25 = v9;
  v26 = *(a1 + 1);
  v29 = *(a2 + 2);
  v30 = *(a1 + 2);
  v10 = *(a1 + 1) == 0;
  v11 = *(a2 + 3);
  if (*(a1 + 1))
  {
    v12 = 0x64616F6C657270;
  }

  else
  {
    v12 = 0x6D6165727473;
  }

  v28 = a2[32];
  v13 = a2[1];
  if (v10)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v15 = *(a2 + 5);
  if (a2[1])
  {
    v16 = 0x64616F6C657270;
  }

  else
  {
    v16 = 0x6D6165727473;
  }

  if (a2[1])
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE600000000000000;
  }

  v18 = a2[48];
  if (v12 == v16 && v14 == v17)
  {

    result = 0;
    if (v2 != v7 || ((v3 ^ v8) & 1) != 0)
    {
      return result;
    }

LABEL_23:
    if (v30)
    {
      if (!v29 || (v26 != v25 || v30 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (v27 == 255)
    {
      if (v28 != 255)
      {
        return 0;
      }

LABEL_43:
      if (v6 == 255)
      {
        if (v18 == 255)
        {
          return 1;
        }
      }

      else if (v18 != 255)
      {
        if (v6)
        {
          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        if (v5 == v15)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v28 == 255)
    {
      return 0;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        result = 0;
        if (v28 != 2 || v11 != 0.0)
        {
          return result;
        }

        goto LABEL_43;
      }

      result = 0;
      if (v28 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v28)
      {
        return result;
      }
    }

    if (v4 != v11)
    {
      return result;
    }

    goto LABEL_43;
  }

  v24 = *(a2 + 3);
  v20 = v4;
  v21 = a2[48];
  v22 = v6;
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v23 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    v6 = v22;
    v18 = v21;
    v4 = v20;
    v11 = v24;
    if (((v3 ^ v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioFileResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AudioFileResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

CGColorRef HasAmbientLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v7);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA014__AmbientLightD0V_Tt0B5(v7, &v5);

  result = v5;
  if (v5)
  {
    v4 = v6;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 1143652352;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for HasAmbientLight.light : <A>A(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = *a1;
  v7 = v2;
  v4 = v6;
  return HasAmbientLight.light.setter(&v6);
}

uint64_t HasAmbientLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA014__AmbientLightD0V_TtB5(v2, v3, 0, *v5);

  return v4(v7, 0);
}

void (*HasAmbientLight.light.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  HasAmbientLight.light.getter(v7);
  return HasAmbientLight.light.modify;
}

void HasAmbientLight.light.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 2);
  v5 = (*a1)[4];
  v7 = v3;
  v8 = v4;
  if (a2)
  {
    v6 = v3;
    HasAmbientLight.light.setter(&v7);
  }

  else
  {
    HasAmbientLight.light.setter(&v7);
  }

  free(v2);
}

double PhysicsMotionComponent.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static PhysicsMotionComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  REMotionStateComponentGetLinearVelocity();
  v7 = v4;
  result = REMotionStateComponentGetAngularVelocity();
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t PhysicsMotionComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = v1[1];
  REMotionStateComponentSetLinearVelocity();
  REMotionStateComponentSetAngularVelocity();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance PhysicsMotionComponent@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  REMotionStateComponentGetLinearVelocity();
  v7 = v4;
  result = REMotionStateComponentGetAngularVelocity();
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance PhysicsMotionComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = v1[1];
  REMotionStateComponentSetLinearVelocity();
  REMotionStateComponentSetAngularVelocity();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = a2;
    v4 = result;
    if (!a2)
    {
      return v4;
    }

    v6 = a2 + result;
    v7 = result;
    while ((v4 & 0x8000000000000000) == 0)
    {
      v8 = *(a3 + 16);
      result = REEntityGetChildCount();
      if (v7 >= result)
      {
        goto LABEL_10;
      }

      ++v7;
      if (!--v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 < 0)
  {
    goto LABEL_26;
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  if (!a4)
  {
LABEL_22:
    result = outlined copy of [A : B].Index._Variant<A, B>(v9, v8, v7 & 1);
    v14 = v9;
    v15 = v7;
LABEL_23:
    *a5 = v14;
    *(a5 + 8) = v8;
    *(a5 + 16) = v15 & 1;
    return result;
  }

  v10 = v5;
  v11 = *v5;
  v28 = v10[1];
  result = outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
  v12 = 0;
  v13 = a4 - 1;
  while (1)
  {
    v17 = v28;
    if (v28)
    {
      goto LABEL_9;
    }

    if (v11)
    {
      result = AnimationLibraryResource.keyedResources.getter();
      v17 = result;
LABEL_9:
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v17 = MEMORY[0x1E69E7CC8];
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    v14 = 1 << *(v17 + 32);
    if (v9 >= v14)
    {
      goto LABEL_21;
    }

    v18 = v9 >> 6;
    v19 = *(v17 + 64 + 8 * (v9 >> 6));
    if (((v19 >> v9) & 1) == 0)
    {
      break;
    }

    if (*(v17 + 36) != v8)
    {
      goto LABEL_25;
    }

    v20 = v19 & (-2 << (v9 & 0x3F));
    if (v20)
    {
      v14 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
      outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
    }

    else
    {
      v21 = v18 << 6;
      v22 = v18 + 1;
      v23 = (v17 + 8 * v18 + 72);
      while (v22 < (v14 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
          outlined consume of [String : AudioResource].Index._Variant(v9, v8, v7 & 1);
          v14 = __clz(__rbit64(v24)) + v21;
          goto LABEL_5;
        }
      }

      outlined init with copy of [String : String](&v28, v27, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
      outlined consume of [String : AudioResource].Index._Variant(v9, v8, v7 & 1);
    }

LABEL_5:
    v8 = *(v17 + 36);

    v7 = 0;
    v15 = 0;
    v9 = v14;
    if (v12++ == v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10RealityKit9TransformV_Tt1g5(uint64_t result, __n128 a2, __n128 a3, __n128 a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v4;
      v5 = 32;
      do
      {
        v6 = (result + v5);
        *v6 = a2;
        v6[1] = a3;
        v6[2] = a4;
        v5 += 48;
        --v4;
      }

      while (v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t result, int32x2_t a2)
{
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 7)
  {
    v4 = 0;
    v5 = a2.i32[0];
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v3 += v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = a2.i32[0];
  v6 = vdupq_lane_s32(a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t AnimationLibraryResource.__deallocating_deinit()
{
  v1 = v0[2];
  RERelease();
  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t AnimationLibraryResource.resource(_:)(unint64_t a1)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v1 + 24);
  if (*(v5 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *(v1 + 24) = result;
    goto LABEL_11;
  }

  v6 = v5 + 8 * a1;
  if (*(v6 + 32))
  {
    v7 = *(v6 + 32);
LABEL_15:

    return v7;
  }

  v8 = *(v1 + 16);
  Entry = REAnimationLibraryAssetGetEntry();
  type metadata accessor for AnimationResource();
  v2 = swift_allocObject();
  v2[2] = Entry;
  if (REAssetHandleAssetType() == 11)
  {
    REAnimationSceneAssetGetRootTimeline();
  }

  Name = REAnimationAssetGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v2[3] = Name;
  v2[4] = v11;
  RERetain();
  REAssetSetSwiftObject();
  swift_beginAccess();
  v3 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v3;
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (*(v3 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v3 + 32 + 8 * a1);
  *(v3 + 32 + 8 * a1) = v2;
  *(v1 + 24) = v3;
  swift_endAccess();

  if (*(v3 + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v3 + 32 + 8 * a1);
  if (v7)
  {

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t AnimationLibraryResource.keyedResources.getter()
{
  v1 = v0;
  v2 = v0[4];
  if (v2)
  {

    return v2;
  }

  swift_beginAccess();
  v3 = *(v1[3] + 16);
  if (!v3)
  {
LABEL_20:
    v17 = v1[2];
    KeyCount = REAnimationLibraryAssetGetKeyCount();
    if (KeyCount < 1)
    {
      v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v50 = v1[4];
      v1[4] = v2;
    }

    else
    {
      v19 = KeyCount;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v20 + 16) = v19;
      REAnimationLibraryAssetGetKeys();
      *(v20 + 16) = v19;

      v53 = *(v20 + 16);
      if (v53)
      {
        v21 = 0;
        v2 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v21 >= *(v20 + 16))
          {
            goto LABEL_46;
          }

          v25 = *(v20 + 32 + 8 * v21);
          EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();
          if (EntryIndexFromKey)
          {
            break;
          }

LABEL_24:
          if (v53 == ++v21)
          {
            goto LABEL_42;
          }
        }

        v27 = EntryIndexFromKey;
        v28 = String.init(cString:)();
        v30 = *v27;
        if ((*v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v31 = v1[3];
        if (v30 >= *(v31 + 16))
        {
          goto LABEL_48;
        }

        v32 = v31 + 8 * v30;
        v33 = *(v32 + 32);
        if (!v33)
        {
          goto LABEL_53;
        }

        v34 = v28;
        v35 = v29;
        v36 = *(v32 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
        v40 = v2[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_49;
        }

        v44 = v39;
        if (v2[3] >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v49 = v38;
            specialized _NativeDictionary.copy()();
            v38 = v49;
            if (v44)
            {
LABEL_23:
              v22 = v38;

              v23 = v2[7];
              v24 = *(v23 + 8 * v22);
              *(v23 + 8 * v22) = v33;

              goto LABEL_24;
            }

            goto LABEL_36;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_55;
          }
        }

        if (v44)
        {
          goto LABEL_23;
        }

LABEL_36:
        v2[(v38 >> 6) + 8] |= 1 << v38;
        v46 = (v2[6] + 16 * v38);
        *v46 = v34;
        v46[1] = v35;
        *(v2[7] + 8 * v38) = v33;
        v47 = v2[2];
        v42 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v42)
        {
          goto LABEL_52;
        }

        v2[2] = v48;
        goto LABEL_24;
      }

      v2 = MEMORY[0x1E69E7CC8];
LABEL_42:

      v51 = v1[4];
      v1[4] = v2;
    }

    return v2;
  }

  v4 = 4;
  while (1)
  {
    v6 = v4 - 4;
    v7 = v1[3];
    if ((v4 - 4) >= *(v7 + 16))
    {
      break;
    }

    if (*(v7 + 8 * v4))
    {
      v5 = *(v7 + 8 * v4);
    }

    else
    {
      v8 = v1[2];
      Entry = REAnimationLibraryAssetGetEntry();
      type metadata accessor for AnimationResource();
      v10 = swift_allocObject();
      v10[2] = Entry;
      if (REAssetHandleAssetType() == 11)
      {
        REAnimationSceneAssetGetRootTimeline();
      }

      Name = REAnimationAssetGetName();
      if (Name)
      {
        Name = String.init(cString:)();
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v10[3] = Name;
      v10[4] = v12;
      RERetain();
      REAssetSetSwiftObject();
      swift_beginAccess();
      v13 = v1[3];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v1[3] = v13;
      if ((v14 & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        v1[3] = v13;
      }

      if (v6 >= *(v13 + 16))
      {
        goto LABEL_50;
      }

      v15 = *(v13 + 8 * v4);
      *(v13 + 8 * v4) = v10;
      v1[3] = v13;
      swift_endAccess();

      if (v6 >= *(v13 + 16))
      {
        goto LABEL_51;
      }

      if (!*(v13 + 8 * v4))
      {
        goto LABEL_54;
      }

      v16 = *(v13 + 8 * v4);
    }

    ++v4;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AnimationLibraryResource.resourceArray.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 24) + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    for (i = 4; ; ++i)
    {
      v7 = i - 4;
      v8 = *(v1 + 24);
      if ((i - 4) >= *(v8 + 16))
      {
        break;
      }

      if (*(v8 + 8 * i))
      {
        v5 = *(v8 + 8 * i);
      }

      else
      {
        v9 = *(v1 + 16);
        Entry = REAnimationLibraryAssetGetEntry();
        type metadata accessor for AnimationResource();
        v11 = swift_allocObject();
        v11[2] = Entry;
        if (REAssetHandleAssetType() == 11)
        {
          REAnimationSceneAssetGetRootTimeline();
        }

        Name = REAnimationAssetGetName();
        if (Name)
        {
          Name = String.init(cString:)();
        }

        else
        {
          v13 = 0xE000000000000000;
        }

        v11[3] = Name;
        v11[4] = v13;
        RERetain();
        REAssetSetSwiftObject();
        swift_beginAccess();
        v14 = *(v1 + 24);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 24) = v14;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          v14 = result;
          *(v1 + 24) = result;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(v14 + 8 * i);
        *(v14 + 8 * i) = v11;
        *(v1 + 24) = v14;
        swift_endAccess();

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_22;
        }

        if (!*(v14 + 8 * i))
        {
          goto LABEL_23;
        }

        v16 = *(v14 + 8 * i);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v17 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (!--v2)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t AnimationLibraryDefinition.addResource(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = v3;
  v5 = *v3;
  v6 = v27[4];
  if (v6)
  {
    v7 = v27[4];
  }

  else if (v5)
  {
    v8 = a2;
    v9 = AnimationLibraryResource.resourceArray.getter();
    a2 = v8;
    v7 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v29 = a2;
  if (v7 >> 62)
  {
LABEL_33:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_18;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v12 = *(v7 + 8 * v11 + 32);

      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_13;
    }

    v13 = MEMORY[0x1C68F41F0](v11, v7);
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_13:
    v14 = *(a3 + 16);
    v15 = *(v13 + 16);

    ++v11;
    if (v14 == v15)
    {

      v17 = v29;
      v18 = v5;
      v19 = v27;
      v20 = v27[1];
      if (v20)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_18:

  v16 = v6;
  v17 = v29;
  v18 = v5;
  if (!v6)
  {
    if (v5)
    {
      v16 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }
  }

  v30 = v16;

  MEMORY[0x1C68F3650](v23);
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v19 = v27;
  v27[4] = v30;
  v20 = v27[1];
  if (v20)
  {
LABEL_30:

    v22 = v20;
    goto LABEL_31;
  }

LABEL_22:

  if (v18)
  {
    v21 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v22 = v21;
LABEL_31:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a1, v17, isUniquelyReferenced_nonNull_native);

  v19[1] = v22;
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = __CocoaDictionary.Index.age.getter();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      __CocoaDictionary.Index.key.getter();
      type metadata accessor for __REAsset();
      swift_dynamicCast();
      a2 = specialized __RawDictionaryStorage.find<A>(_:)();
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    __CocoaDictionary.lookup(_:)();
    type metadata accessor for __REAsset();
    swift_dynamicCast();
    v8 = v12;
    type metadata accessor for RESceneDescriptor();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t AnimationLibraryDefinition.removeResource(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (v2[1])
  {
    v7 = v2[1];
  }

  else if (v6)
  {
    v8 = *v2;
    v7 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v22 = v7;

  v9 = specialized Dictionary._Variant.removeValue(forKey:)(a1, a2);

  v10 = v22;
  v3[1] = v22;
  if (!v9)
  {
    return v9;
  }

  v11 = 0;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v11;
LABEL_16:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    if (*(*(*(v10 + 56) + ((v16 << 9) | (8 * v17))) + 16) == *(v9 + 16))
    {
      return v9;
    }
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v10 + 64 + 8 * v16);
    ++v11;
    if (v14)
    {
      v11 = v16;
      goto LABEL_16;
    }
  }

  v18 = v3[4];
  if (v18)
  {

    v19 = v18;
  }

  else
  {

    if (v6)
    {
      v19 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }
  }

  v22 = v19;

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v22, v9);

  if (v22 >> 62)
  {
LABEL_28:
    result = __CocoaSet.count.getter();
    v21 = result;
    if (result >= v6)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21 >= v6)
  {
LABEL_25:
    specialized Array.replaceSubrange<A>(_:with:)(v6, v21);

    v3[4] = v22;
    return v9;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t AnimationLibraryDefinition.removeAll(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (v2[1])
  {
    v5 = v2[1];
  }

  else
  {
    if (v4)
    {
      v6 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = v6;
  }

  v7 = specialized _NativeDictionary.filter(_:)(v5, a1);

  v2[1] = v7;
  v8 = v2[4];
  if (v8)
  {

    v9 = v8;
  }

  else
  {

    if (v4)
    {
      v9 = AnimationLibraryResource.resourceArray.getter();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  v13 = v9;

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v13, a1);

  if (v13 >> 62)
  {
    result = __CocoaSet.count.getter();
    v12 = result;
    if (result >= v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
LABEL_14:
      specialized Array.replaceSubrange<A>(_:with:)(v10, v12);

      v2[4] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

int64_t AnimationLibraryDefinition.defaultResource.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = specialized AnimationLibraryDefinition.defaultResourceKey.getter(*v0, v1, v0[2], v0[3]);
  if (v4)
  {
    if (v1)
    {
      if (*(v1 + 16))
      {
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
        v7 = v6;

        if (v7)
        {
          v8 = *(*(v1 + 56) + 8 * v5);
        }

        return 0;
      }

      goto LABEL_15;
    }

    if (!v2)
    {
LABEL_15:

      return 0;
    }

    v13 = *(v2 + 16);
    String.utf8CString.getter();

    EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

    if (EntryIndexFromKey)
    {
      result = *EntryIndexFromKey;
      return AnimationLibraryResource.resource(_:)(result);
    }

    return 0;
  }

  v10 = v0[4];
  if (!v10)
  {
    result = 0;
    if (!v2)
    {
      return result;
    }

    return AnimationLibraryResource.resource(_:)(result);
  }

  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v15 = v0[4];
    }

    v16 = v0[4];
    result = __CocoaSet.count.getter();
    v10 = v16;
    if (result <= 0)
    {
      return 0;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= 0)
    {
      return 0;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1C68F41F0](0);
  }

  if (*(v11 + 16))
  {
    v12 = *(v10 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnimationLibraryDefinition.createAsset()()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    v67 = MEMORY[0x1E69E7CC8];
    REAnimationLibraryDefinitionCreate();
    v5 = v0[4];
    v68 = v5;
    if (!v5)
    {
      if (*v0)
      {
        v5 = AnimationLibraryResource.resourceArray.getter();
      }

      else
      {
        v5 = MEMORY[0x1E69E7CC0];
      }
    }

    v60 = v0;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
      goto LABEL_71;
    }

    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    outlined init with copy of [String : String](&v68, v66, &_sSay10RealityKit17AnimationResourceCGSgMd, &_sSay10RealityKit17AnimationResourceCGSgMR);
    v9 = 0;
    v63 = 0;
    v10 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v11 = v9;
      if (v9 == v8)
      {
        goto LABEL_34;
      }

      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C68F41F0](v11, v5);
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_66;
          }

          v12 = *(v5 + 8 * v11 + 32);

          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        v13 = *(v12 + 16);
        if (!v10[2])
        {
          break;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(*(v12 + 16));
        if ((v14 & 1) == 0)
        {
          break;
        }

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_34;
        }
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v67;
      v64 = v67;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_68;
      }

      v23 = v18;
      if (v16[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v26 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v26;
      v10 = v64;
      if ((v23 & 1) == 0)
      {
LABEL_29:
        v10[(v17 >> 6) + 8] |= 1 << v17;
        *(v10[6] + 8 * v17) = v13;
        *(v10[7] + 8 * v17) = v63;
        v27 = v10[2];
        v21 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v21)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v10[2] = v28;
        v25 = v63;
        goto LABEL_31;
      }

LABEL_27:
      v25 = v63;
      *(v10[7] + 8 * v17) = v63;
LABEL_31:
      v67 = v10;
      swift_endAccess();
      REAnimationLibraryDefinitionAddEntryAsset();

      v63 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_34:

        v29 = v60;
        v30 = v60[1];
        if (v30)
        {
          v5 = v30 + 64;
          v31 = 1 << *(v30 + 32);
          v32 = -1;
          if (v31 < 64)
          {
            v32 = ~(-1 << v31);
          }

          v7 = v32 & *(v30 + 64);
          v33 = (v31 + 63) >> 6;
          v34 = v60[1];

          v35 = 0;
          v61 = v30;
          while (2)
          {
            if (!v7)
            {
              while (1)
              {
                v37 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  break;
                }

                if (v37 >= v33)
                {

                  v29 = v60;
                  goto LABEL_61;
                }

                v7 = *(v5 + 8 * v37);
                ++v35;
                if (v7)
                {
                  v35 = v37;
                  goto LABEL_45;
                }
              }

LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              v8 = __CocoaSet.count.getter();
              goto LABEL_9;
            }

LABEL_45:
            v38 = __clz(__rbit64(v7)) | (v35 << 6);
            v39 = (*(v30 + 48) + 16 * v38);
            v40 = *v39;
            v41 = v39[1];
            v42 = *(*(*(v30 + 56) + 8 * v38) + 16);
            v62 = *v39;
            if (!v10[2] || (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v42), (v44 & 1) == 0))
            {
              swift_beginAccess();

              v45 = swift_isUniquelyReferenced_nonNull_native();
              v46 = v67;
              v65 = v67;
              v48 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
              v49 = v46[2];
              v50 = (v47 & 1) == 0;
              v51 = v49 + v50;
              if (__OFADD__(v49, v50))
              {
                goto LABEL_69;
              }

              v52 = v47;
              if (v46[3] >= v51)
              {
                if (v45)
                {
                  v55 = v63;
                  v10 = v65;
                  if ((v47 & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v55 = v63;
                  v10 = v65;
                  if ((v52 & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v45);
                v53 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
                if ((v52 & 1) != (v54 & 1))
                {
                  goto LABEL_74;
                }

                v48 = v53;
                v55 = v63;
                v10 = v65;
                if ((v52 & 1) == 0)
                {
LABEL_56:
                  v10[(v48 >> 6) + 8] |= 1 << v48;
                  *(v10[6] + 8 * v48) = v42;
                  *(v10[7] + 8 * v48) = v55;
                  v56 = v10[2];
                  v21 = __OFADD__(v56, 1);
                  v57 = v56 + 1;
                  if (v21)
                  {
                    goto LABEL_73;
                  }

                  v10[2] = v57;
LABEL_58:
                  v67 = v10;
                  swift_endAccess();
                  REAnimationLibraryDefinitionAddEntryAsset();
                  if (__OFADD__(v55, 1))
                  {
                    goto LABEL_70;
                  }

                  v63 = v55 + 1;
LABEL_39:
                  v7 &= v7 - 1;
                  String.utf8CString.getter();

                  REAnimationLibraryDefinitionAddKeyedEntryIndex();

                  v30 = v61;
                  continue;
                }
              }

              *(v10[7] + 8 * v48) = v55;
              goto LABEL_58;
            }

            break;
          }

          v36 = *(v10[7] + 8 * v43);

          goto LABEL_39;
        }

LABEL_61:
        specialized AnimationLibraryDefinition.defaultResourceKey.getter(*v29, v30, v29[2], v29[3]);
        if (v58)
        {
          String.utf8CString.getter();

          REAnimationLibraryDefinitionSetDefaultEntryKey();
        }

        AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
        RERelease();

        return AnimationLibraryAsset;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_74;
    }

LABEL_26:
    v10 = v64;
    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  return 0;
}

double AnimationLibraryComponent.init(dictionaryLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(a1, v6);
  v3 = v7;

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

double AnimationLibraryComponent.init(animations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnimationLibraryComponent.AnimationCollection.init(dictionary:)(a1, v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.init(dictionary:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  *&v18 = 0;
  *(&v18 + 1) = MEMORY[0x1E69E7CC8];
  v6 = result + 64;
  v5 = *(result + 64);
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v5) != 0)
  {
    do
    {
      v11 = v4;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v2 + 56) + 8 * v13);

      AnimationLibraryDefinition.addResource(_:_:)(v15, v16, v17);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      *a2 = v18;
      *(a2 + 16) = xmmword_1C18A4F10;
      *(a2 + 32) = 0;
      return result;
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double AnimationLibraryComponent.init()@<D0>(uint64_t a1@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AnimationLibraryComponent.defaultKey.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of String??(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*AnimationLibraryComponent.defaultKey.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v4[3] = v7;
  v8 = v1[3];
  v4[4] = v8;
  *v4 = specialized AnimationLibraryDefinition.defaultResourceKey.getter(v5, v6, v7, v8);
  v4[1] = v9;
  return AnimationLibraryComponent.defaultKey.modify;
}

void AnimationLibraryComponent.defaultKey.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = (*a1)[1];

    outlined consume of String??(v6, v5);
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v9 = v2[1];
  }

  else
  {
    outlined consume of String??((*a1)[3], v5);
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
  }

  free(v2);
}

uint64_t static AnimationLibraryComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v5 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v6 = swift_allocObject();
    v6[4] = 0;
    v6[2] = v5;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    result = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v6[3] = result;
    v9 = xmmword_1C1887610;
    v10 = 0uLL;
  }

  else
  {
    result = specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], &v11);
    v6 = v11;
    v10 = v12;
    v9 = v13;
  }

  *a2 = v6;
  *(a2 + 8) = v10;
  *(a2 + 24) = v9;
  return result;
}

uint64_t AnimationLibraryComponent.animations.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of String??(v4, v5);
}

__n128 AnimationLibraryComponent.animations.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];

  outlined consume of String??(v6, v7);

  result = *a1;
  v10 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v10;
  v1[4] = v3;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.count.getter()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 16);
}

BOOL AnimationLibraryComponent.AnimationCollection.isEmpty.getter()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 1;
    }
  }

  return *(v2 + 16) == 0;
}

uint64_t AnimationLibraryComponent.AnimationCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;

    v4 = AnimationLibraryResource.keyedResources.getter();
    v5 = -1 << *(v4 + 32);
    v6 = _HashTable.startBucket.getter();
  }

  else
  {
    if (v1[1])
    {
      v4 = v1[1];
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = -1 << *(v4 + 32);

    v6 = _HashTable.startBucket.getter();
  }

  v8 = *(v4 + 36);

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.endIndex.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;

    v4 = AnimationLibraryResource.keyedResources.getter();

    v5 = *(v4 + 32);
    v6 = *(v4 + 36);
  }

  else
  {
    if (v1[1])
    {
      v7 = v1[1];
    }

    else
    {
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = *(v7 + 32);
    v6 = *(v7 + 36);
  }

  *a1 = 1 << v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.makeIterator()@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v3)
  {
    goto LABEL_4;
  }

  if (*v1)
  {
    v7 = *v1;
    v3 = AnimationLibraryResource.keyedResources.getter();
LABEL_4:

    goto LABEL_5;
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_5:
  outlined consume of String??(v4, v5);

  v9 = -1 << *(v3 + 32);
  v10 = ~v9;
  v11 = *(v3 + 64);
  v12 = -v9;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  *a1 = v3;
  a1[1] = v3 + 64;
  a1[2] = v10;
  a1[3] = 0;
  a1[4] = v13 & v11;
  return result;
}

uint64_t (*AnimationLibraryComponent.AnimationCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return AnimationLibraryComponent.AnimationCollection.subscript.modify;
}

uint64_t AnimationLibraryComponent.AnimationCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  *(a2 + 48) = v10;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  outlined copy of String??(v11, v12);

  outlined copy of [A : B].Index._Variant<A, B>(v3, v4, v5);

  return outlined copy of [A : B].Index._Variant<A, B>(v6, v7, v8);
}

uint64_t AnimationLibraryComponent.AnimationCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized _NativeDictionary.index(after:)(v4, v5, v6, v7);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.formIndex(after:)(uint64_t a1)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  v8 = specialized _NativeDictionary.index(after:)(v5, v6, v7, v3);
  v10 = v9;
  v12 = v11;

  result = outlined consume of [String : AudioResource].Index._Variant(v5, v6, v7);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

void *AnimationLibraryComponent.AnimationCollection.subscript.getter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v1[1])
  {
    v5 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v6 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = v6;
  }

  v7 = specialized Dictionary.subscript.getter(&v9, v2, v3, v4, v5);

  return v7;
}

uint64_t AnimationLibraryComponent.AnimationCollection.Iterator.next()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4;
  if (v5)
  {
LABEL_9:
    v11 = (v5 - 1) & v5;
    v12 = __clz(__rbit64(v5)) | (v6 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v14 = v13[1];
    v19 = *v13;
    v15 = *(*(v1 + 56) + 8 * v12);

    v16 = v6;
    v17 = v11;
    v9 = v16;
LABEL_10:
    outlined copy of [A : B].Iterator._Variant<A, B>();
    outlined consume of [String : AnimationResource].Iterator._Variant();
    *v0 = v1;
    v0[1] = v2;
    v0[2] = v3;
    v0[3] = v9;
    v0[4] = v17;
    return v19;
  }

  else
  {
    v7 = (v3 + 64) >> 6;
    if (v7 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = (v3 + 64) >> 6;
    }

    v9 = v8 - 1;
    v10 = v0[3];
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v17 = 0;
        v19 = 0;
        goto LABEL_10;
      }

      v5 = *(v2 + 8 * v6);
      ++v10;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AnimationLibraryComponent.AnimationCollection.Iterator@<X0>(uint64_t *a1@<X8>)
{
  result = AnimationLibraryComponent.AnimationCollection.Iterator.next()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

BOOL static AnimationLibraryComponent.AnimationCollection.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static AnimationLibraryComponent.AnimationCollection.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.Index.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for AnimationResource();

  return Dictionary.Index.hash(into:)();
}

uint64_t AnimationLibraryComponent.AnimationCollection.Index.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 >= *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result >= *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 < *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for AnimationResource();

  return Dictionary.Index.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  type metadata accessor for AnimationResource();
  Dictionary.Index.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t (*a1)(void, void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2, v2[1]);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized Dictionary.subscript.getter(a1 + 2, v4, v5, v6, v7);
  v11 = v10;

  *a1 = v9;
  a1[1] = v11;
  return protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection;
}

uint64_t protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
}

uint64_t protocol witness for Collection.subscript.getter in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  *(a2 + 48) = v10;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  outlined copy of String??(v11, v12);

  outlined copy of [A : B].Index._Variant<A, B>(v3, v4, v5);

  return outlined copy of [A : B].Index._Variant<A, B>(v6, v7, v8);
}

uint64_t protocol witness for Collection.indices.getter in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  outlined copy of String??(v5, v6);

  *(a1 + 40) = specialized AnimationLibraryDefinition.startIndex.getter(v3, v4);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9 & 1;
  result = specialized AnimationLibraryDefinition.endIndex.getter(v3, v4);
  *(a1 + 64) = result;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12 & 1;
  return result;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance AnimationLibraryComponent.AnimationCollection()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 1;
    }
  }

  return *(v2 + 16) == 0;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Collection.index(_:offsetBy:)(*a1, *(a1 + 8), *(a1 + 16), a2, a3);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  return specialized Collection.index(_:offsetBy:limitedBy:)(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16), a4);
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return specialized Collection.distance(from:to:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized _NativeDictionary.index(after:)(v4, v5, v6, v7);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  v8 = specialized _NativeDictionary.index(after:)(v5, v6, v7, v3);
  v10 = v9;
  v12 = v11;

  result = outlined consume of [String : AudioResource].Index._Variant(v5, v6, v7);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance AnimationLibraryComponent.AnimationCollection()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 16);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance AnimationLibraryComponent.AnimationCollection(unint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance AnimationLibraryComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v5 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v6 = swift_allocObject();
    v6[4] = 0;
    v6[2] = v5;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    result = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v6[3] = result;
    v9 = xmmword_1C1887610;
    v10 = 0uLL;
  }

  else
  {
    result = specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], &v11);
    v6 = v11;
    v10 = v12;
    v9 = v13;
  }

  *a2 = v6;
  *(a2 + 8) = v10;
  *(a2 + 24) = v9;
  return result;
}

double protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance AnimationLibraryComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(a1, v6);
  v3 = v7;

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

double _Proto_AnimationLibraryComponent_v1.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = 0;
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = xmmword_1C18A4F10;
  *(a1 + 32) = 0;
  return result;
}

uint64_t (*_Proto_AnimationLibraryComponent_v1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return _Proto_AnimationLibraryComponent_v1.subscript.modify;
}

uint64_t _Proto_AnimationLibraryComponent_v1.addToLibrary(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 3;

      AnimationLibraryDefinition.addResource(_:_:)(v3, v4, v5);

      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t AnimationLibraryComponent.unkeyedResources.getter()
{
  result = specialized AnimationLibraryDefinition.unkeyedResources.getter(*v0, *(v0 + 8), *(v0 + 32));
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_3;
  }

  v2 = result;
  v3 = __CocoaSet.count.getter();
  result = v2;
  if (!v3)
  {
LABEL_3:

    return 0;
  }

  return result;
}

double static _Proto_AnimationLibraryComponent_v1.__fromCore(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v5 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v6 = swift_allocObject();
    v6[4] = 0;
    v6[2] = v5;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    v8 = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v9 = 0;
    v6[3] = v8;
  }

  else
  {
    v6 = 0;
    v9 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t *AnimationLibraryComponent.__toCore(_:)(uint64_t *result)
{
  v2 = *result;
  if (v1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v1[3] == 1;
  }

  if (v3 && v1[4] == 0)
  {
    if (!*v1)
    {
      return result;
    }

    v5 = *(*v1 + 16);
  }

  else
  {
    result = AnimationLibraryDefinition.createAsset()();
    if (!result)
    {
      return result;
    }
  }

  return REAnimationLibraryComponentAssignAnimationLibraryAsset();
}

double protocol witness for static Component.__fromCore(_:) in conformance _Proto_AnimationLibraryComponent_v1@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v5 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v6 = swift_allocObject();
    v6[4] = 0;
    v6[2] = v5;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    v8 = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v9 = 0;
    v6[3] = v8;
  }

  else
  {
    v6 = 0;
    v9 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *), void (*a4)(_OWORD *))
{
  v6 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v6;
  v10 = *(v4 + 32);
  v7 = a3(v9);
  a4(v9);
  return v7;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _Proto_AnimationLibraryComponent_v1(unint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

uint64_t AnimationLibraryComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v29[0] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v29 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v33 = v12;
  v34 = v11;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1887600;
  *(v16 + 32) = 0x73656D616ELL;
  *(v16 + 40) = 0xE500000000000000;
  v29[1] = v12;
  v29[2] = v11;
  v29[3] = v13;
  v29[4] = v14;
  v29[5] = v15;

  outlined copy of String??(v13, v14);

  outlined copy of String??(v13, v14);

  AnimationLibraryComponent.AnimationCollection.makeIterator()(v30);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = v30[0];
    v19 = v32;
    if (!v32)
    {
      break;
    }

    v20 = v31;
LABEL_8:
    v22 = (*(v30[0] + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
    v24 = *v22;
    v23 = v22[1];
    v31 = v20;
    v32 = (v19 - 1) & v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v26 = *(v17 + 2);
    v25 = *(v17 + 3);
    if (v26 >= v25 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17);
    }

    *(v17 + 2) = v26 + 1;
    v27 = &v17[16 * v26];
    *(v27 + 4) = v24;
    *(v27 + 5) = v23;
  }

  v21 = v31;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= ((v30[2] + 64) >> 6))
    {
      outlined consume of [String : AnimationResource].Iterator._Variant();
      *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(v16 + 48) = v17;
      v28 = type metadata accessor for Mirror.DisplayStyle();
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
      (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
      return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
    }

    v19 = *(v30[1] + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _Proto_AnimationLibraryComponent_v1.makeIterator()@<X0>(unint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else if (*v1)
  {
    v3 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v4 = -1 << *(v3 + 32);
  v5 = *(v3 + 64);
  v6 = ~v4;
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  *a1 = v3;
  a1[1] = v3 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v8 & v5;
}

double protocol witness for Sequence.makeIterator() in conformance _Proto_AnimationLibraryComponent_v1@<D0>(void (*a1)(_OWORD *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(v11);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];

  outlined consume of String??(v6, v7);

  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v12;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationLibraryComponent()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(v4);
  outlined destroy of AnimationLibraryComponent(v4);
  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance AnimationLibraryComponent(unint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

uint64_t AnimationLibraryComponent.animationResource(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 8);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v6)
      {
        v7 = *(*(v4 + 56) + 8 * v5);
      }
    }
  }

  else if (*v3)
  {
    v9 = *(*v3 + 16);
    String.utf8CString.getter();
    EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

    if (EntryIndexFromKey)
    {
      return AnimationLibraryResource.resource(_:)(*EntryIndexFromKey);
    }
  }

  return 0;
}

uint64_t key path setter for AnimationLibraryComponent.AnimationCollection.subscript(_:) : AnimationLibraryComponent.AnimationCollection(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;

    AnimationLibraryDefinition.addResource(_:_:)(v3, v4, v5);
  }

  else
  {
    AnimationLibraryDefinition.removeResource(_:)(*a3, a3[1]);
  }
}

uint64_t AnimationLibraryComponent.AnimationCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    AnimationLibraryDefinition.addResource(_:_:)(a2, a3, a1);
  }

  else
  {
    AnimationLibraryDefinition.removeResource(_:)(a2, a3);
  }
}

uint64_t (*AnimationLibraryComponent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return _Proto_AnimationLibraryComponent_v1.subscript.modify;
}

uint64_t AnimationLibraryComponent.AnimationCollection.subscript.modify(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    if (v4)
    {
      v6 = *a1;

      AnimationLibraryDefinition.addResource(_:_:)(v5, v3, v4);
    }

    else
    {
      AnimationLibraryDefinition.removeResource(_:)(a1[1], v3);
    }
  }

  else
  {
    if (v4)
    {
      v7 = *a1;

      AnimationLibraryDefinition.addResource(_:_:)(v5, v3, v4);
    }

    AnimationLibraryDefinition.removeResource(_:)(a1[1], v3);
  }
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10RealityKit17AnimationResourceCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i5Kit17kL4CTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n04_s17i12Foundation26k39LibraryDefinitionV9removeAllyy0A3Kit0C8L27CFSbSS3key_AG5valuet_tXEfU_AJTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = __CocoaDictionary.Index.age.getter();
    if (result == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      type metadata accessor for __REAsset();
      swift_dynamicCast();
      specialized __RawDictionaryStorage.find<A>(_:)();
      v6 = v5;

      if (v6)
      {
        __CocoaDictionary.Index.dictionary.getter();
        v7 = __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = _HashTable.occupiedBucket(after:)();
  v8 = *(a4 + 36);
  return result;
}

uint64_t specialized AnimationLibraryDefinition.endIndex.getter(uint64_t a1, unint64_t a2)
{
  if (a1)
  {

    v2 = AnimationLibraryResource.keyedResources.getter();

    v3 = *(v2 + 32);
    v4 = *(v2 + 36);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = *(v5 + 32);
    v6 = *(v5 + 36);
  }

  return 1 << v3;
}

uint64_t specialized AnimationLibraryDefinition.startIndex.getter(uint64_t a1, unint64_t a2)
{
  if (a1)
  {

    v2 = AnimationLibraryResource.keyedResources.getter();
    v3 = -1 << *(v2 + 32);
    v4 = _HashTable.startBucket.getter();
  }

  else
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = -1 << *(v2 + 32);

    v4 = _HashTable.startBucket.getter();
  }

  v6 = *(v2 + 36);

  return v4;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceCSgMd, &_s10RealityKit17AnimationResourceCSgMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t specialized AnimationLibraryDefinition.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for AnimationResource();
  result = MEMORY[0x1C68F3120](v4, MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);
  v12 = result;
  v7 = xmmword_1C18A4F10;
  if (v4)
  {
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;

      AnimationLibraryDefinition.addResource(_:_:)(v9, v10, v11);

      --v4;
    }

    while (v4);
    result = v12;
    v7 = xmmword_1C18A4F10;
  }

  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = v7;
  *(a2 + 32) = 0;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v12 = a1;
    v13 = a2;
    v14 = __CocoaSet.count.getter();
    a2 = v13;
    v3 = v14;
    a1 = v12;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = *(MEMORY[0x1C68F41F0](v4, a1) + 16);
      v10 = *(v8 + 16);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v10)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(*(a1 + 8 * v4 + 32) + 16) == *(a2 + 16))
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1C68F41F0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}