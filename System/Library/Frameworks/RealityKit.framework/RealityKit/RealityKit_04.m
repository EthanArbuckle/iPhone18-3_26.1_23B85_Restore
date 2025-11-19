uint64_t getEnumTagSinglePayload for REARCapturedFrame(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for REARCapturedFrame(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t closure #1 in static ARView.fulfillPixelCastRequest(_:renderManager:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PixelCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PixelCastHit();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  if (a2 >= 1)
  {
    if (!RESceneFindEntity())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
      v12 = type metadata accessor for Scene.PixelCastError();
      lazy protocol witness table accessor for type Scene.PixelCastError and conformance Scene.PixelCastError();
      v13 = swift_allocError();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E697A318], v12);
      v16[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy17RealityFoundation12PixelCastHitVSgs5Error_pGMd);
      CheckedContinuation.resume(throwing:)();
      v11 = v8;
      return outlined destroy of ARConfigurationCreateResult?(v11, &_s17RealityFoundation12PixelCastHitVSgMd);
    }

    RESceneUnderstandingComponentGetComponentType();
    if (!REEntityGetComponentByClass() || RESceneUnderstandingComponentGetSourceType() != 1)
    {
      type metadata accessor for Entity();
      static Entity.fromCore(_:ignoringEntityInfo:)();
      PixelCastHit.init(entity:normal:position:meshPart:instance:primitive:barycentric:)();
      outlined destroy of ARConfigurationCreateResult?(v8, &_s17RealityFoundation12PixelCastHitVSgMd);
      v10(v5, 0, 1, v9);
      outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v5, v8, &_s17RealityFoundation12PixelCastHitVSgMd);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v8, v5, &_s17RealityFoundation12PixelCastHitVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy17RealityFoundation12PixelCastHitVSgs5Error_pGMd);
  CheckedContinuation.resume(returning:)();
  v11 = v8;
  return outlined destroy of ARConfigurationCreateResult?(v11, &_s17RealityFoundation12PixelCastHitVSgMd);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<RERenderGraphSelectionConcludeResult>, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t specialized static ARView.fulfillPixelCastRequest(_:renderManager:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for __AssetRef();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  v9 = v8 - 8;
  v62 = *(v8 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v55 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - v18;
  *v19 = a1;
  v20 = a2[1];
  *(v19 + 1) = *a2;
  *(v19 + 2) = v20;
  *(v19 + 3) = a2[2];
  v21 = *(v9 + 72);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy17RealityFoundation12PixelCastHitVSgs5Error_pGMd);
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v64 = v22;
  v24(&v19[v21], a3, v22);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v16, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);

  v25 = v16[2];
  v26 = *(v9 + 72);
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v65 = vmulq_n_f32(v25, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v63 = *(v23 + 8);
  v63(v16 + v26, v22);
  *v29.f32 = vsub_f32(0, *v65.f32);
  v29.f32[2] = 0.0 - v65.f32[2];
  v29.i32[3] = 0;
  v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  v31 = vmlaq_f32(vmulq_f32(v30, xmmword_1E1255CC0), xmmword_1E1254070, v29);
  v32 = v29;
  v57 = v29;
  v33 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  v34 = vmulq_f32(v31, v31);
  *&v35 = v34.f32[1] + (v34.f32[2] + v34.f32[0]);
  *v34.f32 = vrsqrte_f32(v35);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v32)), v36, v30);
  v36.i32[3] = 0;
  v55[1] = v36;
  v55[0] = vrev64q_s32(vuzp1q_s32(v37, vextq_s8(0, v37, 0xCuLL)));
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v16, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);

  v65 = v16[1];
  v38 = *(v9 + 72);
  v39 = v13;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v13, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);

  v40 = *(v9 + 72);
  v41 = v65;
  v41.i32[1] = *(v39 + 5);
  v65 = v41;
  v42 = v56;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v56, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);

  v43 = *(v9 + 72);
  v44.i64[0] = v65.i64[0];
  v44.i32[2] = *(v42 + 24);
  v44.i32[3] = 1.0;
  v65 = v44;
  v45 = (v42 + v43);
  v46 = v63;
  v47 = v64;
  v63(v45, v64);
  v46(&v39[v40], v47);
  v46(v16 + v38, v47);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.renderService.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
  type metadata accessor for RERenderManager();
  swift_dynamicCast();
  pickingEmitter.getter();
  v48 = v58;
  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  (*(v59 + 8))(v48, v60);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v16, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  v49 = *(v9 + 72);
  v50 = Scene.coreScene.getter();

  v63(v16 + v49, v64);
  RERenderGraphSelectionEmitterSetParamsWithTargetSizeEx();
  dispatch thunk of RERenderManager.__coreRenderManager.getter();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v19, v16, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  v51 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v16, v52 + v51, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  aBlock[4] = partial apply for closure #1 in static ARView.fulfillPixelCastRequest(_:renderManager:);
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<RERenderGraphSelectionConcludeResult>, @unowned Int) -> ();
  aBlock[3] = &block_descriptor_8;
  v53 = _Block_copy(aBlock);

  RERenderGraphSelectionEmitterAddConcludeCallback();
  _Block_release(v53);
  RERenderGraphSelectionEmitterSetScene();
  pickingEmitter.getter();
  dispatch thunk of __RERenderGraphEmitter.setup(mgr:)();

  pickingEmitter.getter();
  dispatch thunk of __RERenderGraphEmitter.execute(mgr:)();

  pickingEmitter.getter();
  dispatch thunk of __RERenderGraphEmitter.unsetup(mgr:)();

  return outlined destroy of ARConfigurationCreateResult?(v19, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
}

uint64_t specialized static ARView.fulfillPixelCastRequests(renderManager:)()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  type metadata accessor for Scene();
  v9 = static Scene.pixelCastRequests.getter();
  static Scene.pixelCastRequests.setter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v28 + 64);
    v12 = *(v0 + 80);
    v25 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v26 = *(v0 + 72);
    v27 = v11;
    do
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v13, v8, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
      v14 = *(v8 + 1);
      v15 = *(v8 + 2);
      v16 = *(v8 + 12);
      v17 = v28;
      v18 = *(v28 + 64);
      *v5 = *v8;
      *(v5 + 1) = v14;
      *(v5 + 2) = v15;
      *(v5 + 12) = v16;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy17RealityFoundation12PixelCastHitVSgs5Error_pGMd);
      v20 = *(v19 - 8);
      (*(v20 + 32))(&v5[v18], &v8[v27], v19);
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v5, v2, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
      v21 = *v2;
      v22 = *(v2 + 2);
      v29[0] = *(v2 + 1);
      v29[1] = v22;
      v29[2] = *(v2 + 3);
      v23 = *(v17 + 64);
      specialized static ARView.fulfillPixelCastRequest(_:renderManager:)(v21, v29, &v2[v23]);

      outlined destroy of ARConfigurationCreateResult?(v5, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);
      (*(v20 + 8))(&v2[v23], v19);
      v13 += v26;
      --v10;
    }

    while (v10);
  }
}

uint64_t partial apply for closure #1 in static ARView.fulfillPixelCastRequest(_:renderManager:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd);

  return closure #1 in static ARView.fulfillPixelCastRequest(_:renderManager:)(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Scene.PixelCastError and conformance Scene.PixelCastError()
{
  result = lazy protocol witness table cache variable for type Scene.PixelCastError and conformance Scene.PixelCastError;
  if (!lazy protocol witness table cache variable for type Scene.PixelCastError and conformance Scene.PixelCastError)
  {
    type metadata accessor for Scene.PixelCastError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Scene.PixelCastError and conformance Scene.PixelCastError);
  }

  return result;
}

uint64_t outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id DirectionalLightComponent.color.getter()
{
  v0 = DirectionalLightComponent.__color.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v1;
}

void key path getter for DirectionalLightComponent.color : DirectionalLightComponent(void *a1@<X8>)
{
  v2 = DirectionalLightComponent.__color.getter();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v3;
}

void DirectionalLightComponent.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  DirectionalLightComponent.__color.setter();
}

void (*DirectionalLightComponent.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = DirectionalLightComponent.__color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return DirectionalLightComponent.color.modify;
}

void DirectionalLightComponent.color.modify(void **a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v2;
    v4 = [v3 CGColor];
    DirectionalLightComponent.__color.setter();
  }

  else
  {
    v5 = [v2 CGColor];
    DirectionalLightComponent.__color.setter();
  }
}

void DirectionalLightComponent.init(color:intensity:)(void *a1)
{
  v1 = [a1 CGColor];
  DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)();
}

void DirectionalLightComponent.init(color:intensity:isRealWorldProxy:)(void *a1)
{
  v1 = [a1 CGColor];
  DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)();
}

uint64_t DirectionalLightComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for DirectionalLightComponent();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E12545E0;
  *(v13 + 32) = 0x726F6C6F63;
  *(v13 + 40) = 0xE500000000000000;
  v14 = DirectionalLightComponent.__color.getter();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v16 = type metadata accessor for UIColor();
  *(v13 + 48) = v15;
  *(v13 + 72) = v16;
  *(v13 + 80) = 0x7469736E65746E69;
  *(v13 + 88) = 0xE900000000000079;
  DirectionalLightComponent.intensity.getter();
  v17 = MEMORY[0x1E69E6448];
  *(v13 + 96) = v18;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0xD000000000000010;
  *(v13 + 136) = 0x80000001E12586F0;
  v19 = DirectionalLightComponent.isRealWorldProxy.getter();
  *(v13 + 168) = MEMORY[0x1E69E6370];
  *(v13 + 144) = v19 & 1;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x1E12F43C0](v3, v5, v6, v7);
    outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

Swift::Void __swiftcall ARView.setupMetalLayer()()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = OBJC_IVAR____TtC10RealityKit6ARView_backingLayer;
    v3 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
    if (!v3)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    [v3 setPixelFormat_];
    v4 = *(v0 + v2);
    if (!v4)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = *MEMORY[0x1E695F0F0];
    v6 = v4;
    v7 = CGColorSpaceCreateWithName(v5);
    [v6 setColorspace_];

    v8 = *(v0 + v2);
    if (!v8)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v8 setWantsExtendedDynamicRangeContent_];
LABEL_15:
    v15 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
    if (v15)
    {
      [v15 setFramebufferOnly_];
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = MTLCreateSystemDefaultDevice();
  if (!v9)
  {
LABEL_13:
    v14 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v14 setColorspace_];
    goto LABEL_15;
  }

  v10 = [v9 supportsFamily_];
  v11 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
  if (v10)
  {
    if (!v11)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = 553;
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = 80;
LABEL_12:
    v13 = v11;
    [v13 setPixelFormat_];

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
}

id ARRenderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall ARView.__enablePauseEngineOnLeaveForeground()()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground;
  if ((*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground) & 1) == 0)
  {
    v2 = [objc_opt_self() defaultCenter];
    [v2 addObserver:v0 selector:sel_willResignActiveWithNotification_ name:*MEMORY[0x1E69DDBC8] object:0];
    [v2 addObserver:v0 selector:sel_restartEngineWithNotification_ name:*MEMORY[0x1E69DDAB0] object:0];

    *(v0 + v1) = 1;
  }
}

id ARView.contentScaleFactor.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARView();
  return objc_msgSendSuper2(&v2, sel_contentScaleFactor);
}

void ARView.contentScaleFactor.setter(double a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ARView();
  objc_msgSendSuper2(&v8, sel_setContentScaleFactor_, a1);
  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_initialized) == 1)
  {
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    [v1 contentScaleFactor];
    ARView.resizeDrawable(size:scaleFactor:)(v4, v6, v7);
  }
}

Swift::Void __swiftcall ARView.__disablePauseEngineOnLeaveForeground()()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground;
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground) == 1)
  {
    v2 = [objc_opt_self() defaultCenter];
    [v2 removeObserver:v0 name:*MEMORY[0x1E69DDBC8] object:0];
    [v2 removeObserver:v0 name:*MEMORY[0x1E69DDAB0] object:0];

    *(v0 + v1) = 0;
  }
}

Swift::Void __swiftcall ARView.didMoveToSuperview()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ARView();
  objc_msgSendSuper2(&v4, sel_didMoveToSuperview);
  v1 = [v0 superview];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView;
    if ((*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView) & 1) == 0)
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      dispatch thunk of __Engine.__start()();

      *(v0 + v2) = 1;
    }
  }

  else
  {
    v3 = OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView;
    if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView) == 1)
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      dispatch thunk of __Engine.__stop()();

      *(v0 + v3) = 0;
    }
  }
}

Swift::Void __swiftcall ARView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ARView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 contentScaleFactor];
  ARView.resizeDrawable(size:scaleFactor:)(v2, v4, v5);
}

void ARView.touchesBegan(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = v4;
  v9 = specialized Collection.first.getter(a1);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  [v9 locationInView_];
  v12 = v11;
  v14 = v13;
  type metadata accessor for InputManager();
  if (v12 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= 2147483650.0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 < 2147483650.0)
  {
    MEMORY[0x1E12F1CC0](a3, v12, v14, 0);

LABEL_9:
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v16.receiver = v7;
    v16.super_class = type metadata accessor for ARView();
    objc_msgSendSuper2(&v16, *a4, isa, a2);

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t @objc ARView.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

id ARRenderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ARRenderView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ARRenderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ARRenderView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ARRenderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ARRenderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARRenderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E12F4410](a1, a2, v7);
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UITouch);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UITouch);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t specialized ARView.willResignActive(notification:)()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v2 = dispatch thunk of __Engine.isRunning.getter();

  *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground) = v2 & 1;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v3 = dispatch thunk of __Engine.isRunning.getter();

  if (v3)
  {
    v5 = OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView;
    if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView) == 1)
    {
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      dispatch thunk of __Engine.__stop()();

      *(v1 + v5) = 0;
    }
  }

  return result;
}

void specialized ARView.restartEngine(notification:)()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground) == 1)
  {
    v1 = OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView;
    if ((*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView) & 1) == 0)
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      dispatch thunk of __Engine.__start()();

      *(v0 + v1) = 1;
    }
  }
}

uint64_t static TextureResource.load(named:in:)()
{
  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v0 = textureLoader;
  v4[3] = &type metadata for TextureLoader;
  v4[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v4[0] = v0;
  v1 = v0;
  v2 = static TextureResource.load(named:in:textureLoader:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t static TextureResource.loadAsync(named:in:)()
{
  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v0 = textureLoader;
  v4[3] = &type metadata for TextureLoader;
  v4[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v4[0] = v0;
  v1 = v0;
  v2 = static TextureResource.loadAsync(named:in:textureLoader:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t static TextureResource.load(named:in:options:)()
{
  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v0 = textureLoader;
  v4[3] = &type metadata for TextureLoader;
  v4[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v4[0] = v0;
  v1 = v0;
  v2 = static TextureResource.load(named:in:options:textureLoader:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t static TextureResource.loadAsync(named:in:options:)()
{
  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v0 = textureLoader;
  v4[3] = &type metadata for TextureLoader;
  v4[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v4[0] = v0;
  v1 = v0;
  v2 = static TextureResource.loadAsync(named:in:options:textureLoader:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t TextureResource.__allocating_init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for TextureResource.MipmapsMode();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15TextureResourceC8SemanticOSgMd);
  v4[9] = swift_task_alloc();
  type metadata accessor for TextureResource.CreateOptions();
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.__allocating_init(named:in:), v7, v6);
}

uint64_t TextureResource.__allocating_init(named:in:)()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for TextureResource.Semantic();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  (*(v3 + 104))(v2, *MEMORY[0x1E697A1C8], v4);
  v7 = v5;
  TextureResource.CreateOptions.init(semantic:mipmapsMode:)();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = TextureResource.__allocating_init(named:in:);
  v9 = v0[10];
  v10 = v0[4];
  v12 = v0[2];
  v11 = v0[3];

  return (specialized TextureResource.__allocating_init(named:in:options:))(v12, v11, v10, v9);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TextureResource.__allocating_init(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = v4[12];
    v7 = v4[13];
    v8 = TextureResource.__allocating_init(named:in:);
  }

  else
  {
    v4[16] = a1;
    v6 = v4[12];
    v7 = v4[13];
    v8 = TextureResource.__allocating_init(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t TextureResource.__allocating_init(named:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = TextureResource.__allocating_init(named:in:options:);

  return specialized TextureResource.__allocating_init(named:in:options:)(a1, a2, a3, a4);
}

uint64_t TextureResource.__allocating_init(named:in:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t createMTLTextureLoaderOptions(from:)(uint64_t a1)
{
  v2 = type metadata accessor for TextureResource.Semantic();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15TextureResourceC8SemanticOSg_AFtMd);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15TextureResourceC8SemanticOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v64 - v20;
  v21 = type metadata accessor for TextureResource.MipmapsMode();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  TextureResource.CreateOptions.mipmapsMode.getter();
  v28 = *(v22 + 104);
  v28(v24, *MEMORY[0x1E697A1C0], v21);
  v29 = MEMORY[0x1E12F1F10](v27, v24);
  v30 = *(v22 + 8);
  v30(v24, v21);
  v30(v27, v21);
  v77 = a1;
  if (v29)
  {
    v31 = *MEMORY[0x1E69743E0];
    v83 = MEMORY[0x1E69E6370];
    LOBYTE(v82) = 1;
    outlined init with take of Any(&v82, v81);
    v32 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v32;
  }

  else
  {
    TextureResource.CreateOptions.mipmapsMode.getter();
    v28(v24, *MEMORY[0x1E697A1C8], v21);
    v34 = MEMORY[0x1E12F1F10](v27, v24);
    v30(v24, v21);
    v30(v27, v21);
    v35 = MEMORY[0x1E69E7CC8];
    if ((v34 & 1) == 0)
    {
      goto LABEL_6;
    }

    v31 = *MEMORY[0x1E69743E8];
    v83 = MEMORY[0x1E69E6370];
    LOBYTE(v82) = 1;
    outlined init with take of Any(&v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v35;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v31, isUniquelyReferenced_nonNull_native);
  v35 = v80;
LABEL_6:
  v73 = v35;
  v36 = v75;
  TextureResource.CreateOptions.semantic.getter();
  v37 = *MEMORY[0x1E697A1D0];
  v38 = v78;
  v39 = v79;
  v40 = v74;
  v68 = *(v79 + 104);
  v68(v74, v37, v78);
  v41 = *(v39 + 56);
  v69 = v39 + 56;
  v67 = v41;
  v41(v40, 0, 1, v38);
  v42 = *(v76 + 48);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v36, v8, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v40, &v8[v42], &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  v43 = *(v39 + 48);
  if (v43(v8, 1, v38) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v40, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    outlined destroy of ARConfigurationCreateResult?(v36, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    if (v43(&v8[v42], 1, v38) == 1)
    {
      v44 = v8;
LABEL_15:
      outlined destroy of ARConfigurationCreateResult?(v44, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v45 = v66;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v8, v66, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  if (v43(&v8[v42], 1, v38) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v74, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    outlined destroy of ARConfigurationCreateResult?(v75, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    (*(v79 + 8))(v45, v38);
LABEL_11:
    outlined destroy of ARConfigurationCreateResult?(v8, &_s10RealityKit15TextureResourceC8SemanticOSg_AFtMd);
    goto LABEL_12;
  }

  v55 = v79;
  v56 = &v8[v42];
  v57 = v65;
  (*(v79 + 32))(v65, v56, v38);
  lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic, MEMORY[0x1E697A1E0]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v55 + 8);
  v59(v57, v78);
  outlined destroy of ARConfigurationCreateResult?(v74, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  outlined destroy of ARConfigurationCreateResult?(v75, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  v59(v45, v78);
  v38 = v78;
  outlined destroy of ARConfigurationCreateResult?(v8, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  if (v58)
  {
    goto LABEL_24;
  }

LABEL_12:
  v46 = v71;
  TextureResource.CreateOptions.semantic.getter();
  v47 = v70;
  v68(v70, *MEMORY[0x1E697A1D8], v38);
  v67(v47, 0, 1, v38);
  v48 = *(v76 + 48);
  v49 = v72;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v46, v72, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v47, v49 + v48, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  if (v43(v49, 1, v38) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v47, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    outlined destroy of ARConfigurationCreateResult?(v46, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    if (v43((v49 + v48), 1, v38) == 1)
    {
      v44 = v49;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v50 = v64;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v49, v64, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  if (v43((v49 + v48), 1, v38) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v47, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    outlined destroy of ARConfigurationCreateResult?(v46, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
    (*(v79 + 8))(v50, v38);
LABEL_18:
    outlined destroy of ARConfigurationCreateResult?(v49, &_s10RealityKit15TextureResourceC8SemanticOSg_AFtMd);
    goto LABEL_19;
  }

  v60 = v79;
  v61 = v65;
  (*(v79 + 32))(v65, v49 + v48, v38);
  lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic, MEMORY[0x1E697A1E0]);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v61, v38);
  outlined destroy of ARConfigurationCreateResult?(v47, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  outlined destroy of ARConfigurationCreateResult?(v46, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  v63(v50, v38);
  outlined destroy of ARConfigurationCreateResult?(v49, &_s10RealityKit15TextureResourceC8SemanticOSgMd);
  if (v62)
  {
LABEL_24:
    result = v73;
    if (*(v73 + 16))
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_19:
  v51 = *MEMORY[0x1E69743F8];
  v83 = MEMORY[0x1E69E6370];
  LOBYTE(v82) = 0;
  outlined init with take of Any(&v82, v81);
  v52 = v73;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v52;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v51, v53);
  result = v80;
  if (*(v80 + 16))
  {
    return result;
  }

LABEL_25:

  return 0;
}

id TextureLoader.loadTexture(name:bundle:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = MEMORY[0x1E12F3F80](a1, a2);
  if (createMTLTextureLoaderOptions(from:)(a4))
  {
    type metadata accessor for MTKTextureLoaderOption(0);
    lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);
    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v19[0] = 0;
  v15 = [a5 newTextureWithName:v13 scaleFactor:a3 bundle:v14.super.isa options:v19 error:v12];

  if (v15)
  {
    v16 = v19[0];
  }

  else
  {
    v17 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

void TextureLoader.loadTexture(name:bundle:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = [objc_opt_self() mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = MEMORY[0x1E12F3F80](a1, a2);
  if (createMTLTextureLoaderOptions(from:)(a4))
  {
    type metadata accessor for MTKTextureLoaderOption(0);
    lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v21[4] = partial apply for closure #1 in TextureLoader.loadTexture(name:bundle:options:completionHandler:);
  v21[5] = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLTexture?, @guaranteed Error?) -> ();
  v21[3] = &block_descriptor_9;
  v20 = _Block_copy(v21);

  [a7 newTextureWithName:v17 scaleFactor:a3 bundle:v18.super.isa options:v20 completionHandler:v16];
  _Block_release(v20);
}

void closure #1 in TextureLoader.loadTexture(name:bundle:options:completionHandler:)(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    a3(v5, 0);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v6 = a2;
    a3(a2, 1);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLTexture?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t one-time initialization function for textureLoader()
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.renderService.getter();

  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = [objc_allocWithZone(MEMORY[0x1E6974438]) initWithDevice_];
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_1(v4);
  textureLoader = v2;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1, double a2)
{
  Hasher.init(_seed:)();
  RKARSystem.HitTestScreenPoint.hash(into:)(a1, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v4, a1, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12F4460](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLVAC013CollisionCastF0VSgGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 56);
      v40 = *(*(v8 + 48) + 16 * v22);
      v24 = *(v38 + 72);
      v25 = v23 + v24 * v22;
      if (v39)
      {
        outlined init with take of CollisionCastHit?(v25, v7);
      }

      else
      {
        outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v25, v7, &_s10RealityKit16CollisionCastHitVSgMd);
      }

      Hasher.init(_seed:)();
      v26 = *&v40;
      if (*&v40 == 0.0)
      {
        v26 = 0.0;
      }

      MEMORY[0x1E12F4800](*&v26);
      v27 = *(&v40 + 1);
      if (*(&v40 + 1) == 0.0)
      {
        v27 = 0.0;
      }

      MEMORY[0x1E12F4800](*&v27);
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v40;
      result = outlined init with take of CollisionCastHit?(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_38:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8ARAnchorCGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MTKTextureLoaderOptionaypGMd);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd) - 8) + 72) * v12;

    return outlined assign with take of CollisionCastHit?(a1, v20);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v12, a1, v18, a3, a4);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit11ModelEntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit11ModelEntityCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit14FaceMeshEntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit14FaceMeshEntityCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSShySo16ARReferenceImageCGGMd);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSShySo17ARReferenceObjectCGGMd);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSaySS_12CoreGraphics7CGFloatVtGGMd);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1, a5);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26[0] = a4;
  v26[1] = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v26[0]);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1, v26[0]);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for MTKTextureLoaderOption(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a3[6] + 16 * a1);
  *v8 = a4;
  v8[1] = a5;
  v9 = a3[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  result = outlined init with take of CollisionCastHit?(a2, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLVAC013CollisionCastF0VSgGMd);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v26 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = *(v6 + 56);
        v24 = *(v3 + 72) * v21;
        v27 = *(*(v6 + 48) + 16 * v21);
        outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v23 + v24, v5, &_s10RealityKit16CollisionCastHitVSgMd);
        *(*(v8 + 48) + v22) = v27;
        result = outlined init with take of CollisionCastHit?(v5, *(v8 + 56) + v24);
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

        v1 = v26;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMd);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit11ModelEntityCGMd);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit14FaceMeshEntityCGMd);
}

void *specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v3 = v1;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
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

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8ARAnchorCGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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
LABEL_14:
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
        result = v23;
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
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MTKTextureLoaderOptionaypGMd);
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
        result = v18;
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

uint64_t specialized TextureResource.__allocating_init(named:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  Options = type metadata accessor for TextureResource.CreateOptions();
  v5[8] = Options;
  v5[9] = *(Options - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x1EEE6DFA0](specialized TextureResource.__allocating_init(named:in:options:), v8, v7);
}

uint64_t specialized TextureResource.__allocating_init(named:in:options:)()
{
  v1 = v0[5];
  (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
  v2 = one-time initialization token for textureLoader;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = textureLoader;
  v0[2] = textureLoader;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  *v6 = v0;
  v6[1] = specialized TextureResource.__allocating_init(named:in:options:);
  v8 = v0[10];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];

  return MEMORY[0x1EEDD64A8](v11, v9, v10, v8, v0 + 2, &type metadata for TextureLoader, v7);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];
  v5 = v0[16];

  return v4(v5);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t specialized TextureResource.__allocating_init(named:in:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = specialized TextureResource.__allocating_init(named:in:options:);
  }

  else
  {
    v4[16] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = specialized TextureResource.__allocating_init(named:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of CollisionCastHit?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static ParticleEmitterComponent.Presets.fireworks.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v116 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v99 - v5;
  v110 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  v130 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v107 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v129 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v119 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v127 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v117 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v128 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v105 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v15 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v123 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v99 - v24;
  v126 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter();
  v112 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v111 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  ParticleEmitterComponent.init()();
  ParticleEmitterComponent.ParticleEmitter.init()();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()();
  (*(v19 + 104))(v21, *MEMORY[0x1E697A7E8], v18);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v15 + 104))(v17, *MEMORY[0x1E697A7C0], v121);
  ParticleEmitterComponent.birthLocation.setter();
  v121 = xmmword_1E1252ED0;
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v99 + 104))(v14, *MEMORY[0x1E697A738], v100);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  v102[13](v101, *MEMORY[0x1E697A7F0], v103);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v105 + 104))(v104, *MEMORY[0x1E697A7D0], v106);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v29(v132, 0);
  v30 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v30(v132, 0);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v31(v132, 0);
  v32 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v32(v132, 0);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v33(v132, 0);
  v34 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v34(v132, 0);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v35(v132, 0);
  LODWORD(v105) = *MEMORY[0x1E697A770];
  v36 = *(v128 + 104);
  v128 += 104;
  v106 = v36;
  v36(v118);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v37(v132, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v38(v132, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v39(v132, 0);
  LODWORD(v103) = *MEMORY[0x1E697A798];
  v40 = *(v127 + 104);
  v127 += 104;
  v104 = v40;
  (v40)(v117);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v41(v132, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v42(v132, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v43(v132, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v44(v132, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v45(v132, 0);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v46(v132, 0);
  v47 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v47(v132, 0);
  v48 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v48(v132, 0);
  v49 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v49(v132, 0);
  v50 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v50(v132, 0);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v51(v132, 0);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v52(v132, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v53(v132, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v54(v132, 0);
  v55 = *MEMORY[0x1E697A768];
  v56 = *(v129 + 104);
  v129 += 104;
  v102 = v56;
  (v56)(v119, v55, v125);
  v57 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v57(v132, 0);
  v58 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v58(v132, 0);
  v59 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v59(v132, 0);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v60(v132, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v61(v132, 0);
  v62 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v62(v132, 0);
  v63 = *MEMORY[0x1E697A7B0];
  v64 = *(v130 + 13);
  v130 += 104;
  v101 = v64;
  v65 = v107;
  (v64)(v107, v63, v120);
  v66 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v66(v132, 0);
  v67 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v67(v132, 0);
  v68 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v68(v132, 0);
  v69 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v69(v132, 0);
  CGColorCreateGenericRGB(226.0, 0.0, 27.0, 1.0);
  v70 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v70(v132, 0);
  CGColorCreateGenericRGB(0.0, 104.0, 184.0, 1.0);
  v71 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v71(v132, 0);
  v72 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v72(v132, 0);
  v73 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v73(v132, 0);
  v74 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v74(v132, 0);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrame.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrameVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.rowCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.columnCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRate.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRateVariation.setter();
  v75 = *MEMORY[0x1E697A780];
  v76 = *(v109 + 104);
  v77 = v108;
  v78 = v110;
  v76(v108, v75, v110);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.animationMode.setter();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  (v106)(v118, v105, v122);
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  (v104)(v117, v103, v124);
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  (v102)(v119, *MEMORY[0x1E697A758], v125);
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  (v101)(v65, *MEMORY[0x1E697A7A0], v120);
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  CGColorCreateGenericRGB(244.0, 129.0, 29.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  CGColorCreateGenericRGB(97.0, 184.0, 26.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v79 = v123;
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrame.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrameVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.rowCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.columnCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRate.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRateVariation.setter();
  v76(v77, v75, v78);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.animationMode.setter();
  type metadata accessor for TextureResource();
  v80 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v81 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v82 = textureLoader;
  v132[3] = &type metadata for TextureLoader;
  v132[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v132[0] = v82;
  v83 = v82;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v132);
  v84 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v84(v132, 0);
  v85 = v111;
  ParticleEmitterComponent.mainEmitter.getter();
  ParticleEmitterComponent.ParticleEmitter.image.getter();
  v128 = a1;
  v86 = v112;
  v87 = *(v112 + 8);
  v129 = v112 + 8;
  v130 = v87;
  (v87)(v85, v126);
  v88 = v28;
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v89 = v113;
  v90 = *(v113 + 16);
  v91 = v115;
  v92 = v114;
  v90(v115, v79, v114);
  v93 = *(v89 + 56);
  v93(v91, 0, 1, v92);
  ParticleEmitterComponent.ParticleEmitter.imageSequence.setter();
  v90(v91, v131, v92);
  v93(v91, 0, 1, v92);
  v94 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.imageSequence.setter();
  v94(v132, 0);
  v95 = v116;
  v96 = v126;
  (*(v86 + 16))(v116, v88, v126);
  (*(v86 + 56))(v95, 0, 1, v96);
  ParticleEmitterComponent.spawnedEmitter.setter();
  v97 = *(v89 + 8);
  v97(v123, v92);
  v97(v131, v92);
  return (v130)(v88, v96);
}

uint64_t MultipeerConnectivityService.__allocating_init(session:)(void *a1)
{
  v2 = swift_allocObject();
  MultipeerConnectivityService.init(session:)(a1);
  return v2;
}

uint64_t MultipeerConnectivityService.init(session:)(void *a1)
{
  v2 = v1;
  v2[2] = 0;
  v2[6] = 0x61A800000002;
  if ([a1 encryptionPreference] != 1)
  {
    lazy protocol witness table accessor for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    type metadata accessor for MultipeerConnectivityService();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v2[7] = a1;
  type metadata accessor for __ServiceLocator();
  v4 = a1;
  static __ServiceLocator.shared.getter();
  v5 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  v2[4] = v5;
  result = MEMORY[0x1E12F5400](v5);
  if (result)
  {
    v2[5] = result;
    v7 = RENetworkSystemEnableMultipeerConnectivity();

    v2[3] = v7;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t MultipeerConnectivityService.entity(for:)()
{
  result = RENetworkSystemFindEntityWithGuid();
  if (result)
  {
    type metadata accessor for Entity();
    return static Entity.fromCore(_:ignoringEntityInfo:)();
  }

  return result;
}

double MultipeerConnectivityService.owner(of:)@<D0>(uint64_t a1@<X8>)
{
  Entity.coreEntity.getter();
  RENetworkComponentGetComponentType();
  if (REEntityGetComponentByClass() && (v3 = RENetworkComponentOwnerPeerID(), v4 = MEMORY[0x1E12F4E40](*(v1 + 24), v3), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v5 = type metadata accessor for MCPeerID(), swift_dynamicCast()))
  {
    *(a1 + 24) = v5;
    *(a1 + 32) = &protocol witness table for MCPeerID;
    *a1 = v7;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t MultipeerConnectivityService.giveOwnership(of:toPeer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Entity.coreEntity.getter();
  RENetworkComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    v6 = result;
    result = RENetworkComponentIsAuthoritative();
    if (result)
    {
      outlined init with copy of SynchronizationPeerID(a2, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pMd);
      type metadata accessor for MCPeerID();
      result = swift_dynamicCast();
      if (result)
      {
        v7 = MEMORY[0x1E12F4E30](*(v3 + 24));
        if (v7)
        {
          MEMORY[0x1E12F4F50](v6, v7);

          return 1;
        }

        else
        {

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t MultipeerConnectivityService.__fromCore(peerID:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  __PeerIDRef.__as<A>(_:)();
  v4 = MEMORY[0x1E12F4E40](v3);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = type metadata accessor for MCPeerID();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v9;
    v8 = &protocol witness table for MCPeerID;
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v5;
  a1[4] = v8;
  *a1 = v7;
  return result;
}

uint64_t MultipeerConnectivityService.__toCore(peerID:)(uint64_t a1)
{
  outlined init with copy of SynchronizationPeerID(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pMd);
  type metadata accessor for MCPeerID();
  if (swift_dynamicCast())
  {
    v2 = MEMORY[0x1E12F4E30](*(v1 + 24));
    v6 = MEMORY[0x1E69E76D8];
    v5[0] = v2;
    static __PeerIDRef.__fromCore(_:)();
  }

  else
  {
    v6 = MEMORY[0x1E69E76D8];
    v5[0] = 0;
    static __PeerIDRef.__fromCore(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

Swift::Void __swiftcall MultipeerConnectivityService.startSync()()
{
  v1 = *(v0 + 24);
  MEMORY[0x1E12F4E50](v1, *(v0 + 48), *(v0 + 52));
  MEMORY[0x1E12F4E60](v1, *(v0 + 56));
  v2 = *(v0 + 32);
  MEMORY[0x1E12F4E20](v1);
  REAssetRegisterAssetSyncNetworkSession();
  if (MEMORY[0x1E12F5440](v2))
  {
    MEMORY[0x1E12F4E20](v1);

    RESharedClockServiceSetSession();
  }
}

Swift::Void __swiftcall MultipeerConnectivityService.stopSync()()
{
  v1 = *(v0 + 32);
  REAssetUnregisterAssetSyncNetworkSession();
  MEMORY[0x1E12F4E70](*(v0 + 24));
  if (MEMORY[0x1E12F5440](v1))
  {

    RESharedClockServiceSetSession();
  }
}

uint64_t MultipeerConnectivityService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError()
{
  result = lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError;
  if (!lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError;
  if (!lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultipeerConnectivityService.SynchronizationError and conformance MultipeerConnectivityService.SynchronizationError);
  }

  return result;
}

unint64_t type metadata accessor for MCPeerID()
{
  result = lazy cache variable for type metadata for MCPeerID;
  if (!lazy cache variable for type metadata for MCPeerID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MCPeerID);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVG_So0H0Cs5NeverOTg504_s10d5Kit10f72C8updateAR6engine12viewportSize9timeDeltayAA8__EngineC_So6CGSizeVSdtFSo8h5CAC08g6M033_7ijklmnO8LLVXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(a1, &_s10RealityKit16CollisionCastHitVSgSgMd);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v19 = v23;
      }

      outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(*(v19 + 56) + *(v12 + 72) * v17, v10, &_s10RealityKit16CollisionCastHitVSgMd);
      specialized _NativeDictionary._delete(at:)(v17, v19);
      *v4 = v19;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return outlined destroy of ARConfigurationCreateResult?(v10, &_s10RealityKit16CollisionCastHitVSgSgMd);
  }

  else
  {
    outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(a1, v14, &_s10RealityKit16CollisionCastHitVSgMd);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v20, a2, a3);
    *v4 = v23;
  }

  return result;
}

uint64_t RKARSystem.debugAnchorPlaneMaterial.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, Swift::Float a3@<S0>, Swift::Float a4@<S1>)
{
  v8 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit13UnlitMaterialVSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22[-v14];
  v16 = *a1;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v8 + v16, v15, &_s10RealityKit13UnlitMaterialVSgMd);
  v17 = type metadata accessor for UnlitMaterial();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a2, v15, v17);
  }

  outlined destroy of ARConfigurationCreateResult?(v15, &_s10RealityKit13UnlitMaterialVSgMd);
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UIColor);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, a3, a4, 0.6).super.isa;
  v20 = [(objc_class *)isa CGColor];
  UnlitMaterial.init(color:)();

  (*(v18 + 16))(v13, a2, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  outlined assign with take of Material?(v13, v8 + v16, &_s10RealityKit13UnlitMaterialVSgMd);
  return swift_endAccess();
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
  v12 = *(*(v9 + 56) + 8 * v7);
  specialized _NativeDictionary._delete(at:)(v7, v9);
  *v4 = v9;
  return v12;
}

void RKARSystem.cachedGestureHitTest(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = v32 - v8;
  v9 = type metadata accessor for CollisionGroup();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v13 = *(Type - 8);
  MEMORY[0x1EEE9AC00](Type);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  v38 = *(v36 - 8);
  v16 = MEMORY[0x1EEE9AC00](v36);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19;
  v21 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cachedGestureHitTestResults;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v24)
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(*(v22 + 56) + *(v38 + 72) * v23, v20, &_s10RealityKit16CollisionCastHitVSgMd);
      outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v20, a1, &_s10RealityKit16CollisionCastHitVSgMd);
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = a1;
  if (!Strong)
  {
    goto LABEL_12;
  }

  v26 = Strong;
  (*(v13 + 104))(v15, *MEMORY[0x1E697A2D8], Type);
  static CollisionGroup.all.getter();
  ARView.ray(through:)(v39);
  if (v40)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    (*(v34 + 8))(v11, v35);
    (*(v13 + 8))(v15, Type);
    if (*(v27 + 16))
    {
      v28 = type metadata accessor for CollisionCastHit();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v18, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v28);

      (*(v29 + 56))(v18, 0, 1, v28);
LABEL_13:
      v31 = v37;
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v18, v37, &_s10RealityKit16CollisionCastHitVSgMd);
      (*(v38 + 56))(v31, 0, 1, v36);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v31, a2, a3);
      swift_endAccess();
      outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v18, v33, &_s10RealityKit16CollisionCastHitVSgMd);
      return;
    }

LABEL_12:
    v30 = type metadata accessor for CollisionCastHit();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    goto LABEL_13;
  }

  if (*&v26[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
    v32[0] = v39[1];
    v32[1] = v39[0];

    v27 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();

    goto LABEL_9;
  }

  __break(1u);
}

void RKARSystem.update(engine:viewportSize:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = CACurrentMediaTime();
  v10 = [*(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) configuration];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      v10 = 0;
    }
  }

  v12 = v10 != 0;

  v13 = *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_isFaceSession);
  *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_isFaceSession) = v12;
  if (v12 != v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      ARView.updateEnvironment()();
    }
  }

  if ((*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode) & 1) != 0 || a2 <= 0.0 || a3 <= 0.0)
  {
    static __REOSLog.UpdateLoop.getter();
    static __RESignpostID.UpdateLoop.getter();
    type metadata accessor for __REOSSignpostScope();
    swift_allocObject();
    __REOSSignpostScope.init(osLog:signpostID:name:)();

    RKARSystem.updateLighting()();
    RKARSystem.updateCollaborationState()();
    RKARSystem.updateSceneUnderstandingOptions()();
  }

  else
  {
    specialized RKARSystem.updateAR(engine:viewportSize:timeDelta:)(a1, a2, a3);
  }

  v16 = OBJC_IVAR____TtC10RealityKit10RKARSystem_lastUpdateTime;
  specialized RKARSystem.updateCommon(engine:viewportSize:timeDelta:)();
  *(v4 + v16) = v9;
}

uint64_t RKARSystem.cameraRenderGraph.getter(uint64_t *a1)
{
  v2 = *a1;
  result = *(v1 + *a1);
  if (!result)
  {
    v4 = v1;
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = dispatch thunk of __Engine.services.getter();

      if (v5)
      {
        dispatch thunk of __ServiceLocator.assetService.getter();

        v6 = v9;
        v7 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v7 + 32))(v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v8);
        result = REAssetManagerCreateAssetHandle();
        if (result)
        {
          *(v4 + v2) = result;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t FaceMeshEntity.__deallocating_deinit()
{
  Entity.deinit();

  return swift_deallocClassInstance();
}

uint64_t @objc RKARSystem.SessionDelegate.session(_:didAdd:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARAnchor);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a3;
    v12 = a1;
    a5(v8);
  }
}

id RKARSystem.SessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RKARSystem.SessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RKARSystem.session.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
  [*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) forceEnvironmentTexturingToManualMode_];
  v5 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_delegate);
  [a1 _removeObserver_];
  [*(v2 + v4) _addObserver_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
    v8 = Strong;
    swift_beginAccess();
    v9 = *&v8[v7];

    if (v9)
    {
      v10 = *(v2 + v4);
      RealityFusionSession.configure(with:)(v10);
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    if (!*(v11 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {
      __break(1u);
      return;
    }

    v13 = *(v2 + v4);
    Scene.setSession(_:)(v13);
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
    v16 = v14;
    swift_beginAccess();
    *(v15 + 2) = 0;
  }
}

void RKARSystem.cameraMode.didset(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode;
  if (*a1 != *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      ARView.__renderGraphEmitter.setter(v3);
      ARView.updateEnvironment()();
      if (*(v1 + v2) == 1)
      {
        v4 = &Strong[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
        swift_beginAccess();
        if (v4[2] == 1)
        {
          v5 = [Strong session];
          [v5 pause];
        }
      }

      else
      {
        ARView.updateARSession(restartIfPaused:)(1);
      }
    }
  }
}

uint64_t RKARSystem.camera.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {

      v2 = dispatch thunk of Scene.defaultCamera.getter();

      return v2;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RKARSystem.orientation.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] == 1)
    {
      v1 = *&Strong[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation];

      return v1;
    }
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v5 = [v3 window];

  if (!v5)
  {
    return 3;
  }

  v6 = [v5 windowScene];

  if (!v6)
  {
    return 3;
  }

  v7 = [v6 interfaceOrientation];

  result = v7;
  if (!v7)
  {
    return 3;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RKARSystem.HashableARAnchor()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = [v5 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RKARSystem.HashableARAnchor()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RKARSystem.HashableARAnchor()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = [v5 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RKARSystem.HashableARAnchor(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v12 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v11, v4);
  return v14 & 1;
}

CGColorRef one-time initialization function for defaultAmbientColor()
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  static RKARSystem.defaultAmbientColor = result;
  return result;
}

uint64_t one-time initialization function for __useARQuickLookFeatheringSettings()
{
  result = closure #1 in variable initialization expression of static RKARSystem.__useARQuickLookFeatheringSettings();
  static RKARSystem.__useARQuickLookFeatheringSettings = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static RKARSystem.__useARQuickLookFeatheringSettings()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1 && ((v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v4 = v3, v1, v2 == 0xD000000000000024) ? (v5 = 0x80000001E1259540 == v4) : (v5 = 0), v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t RKARSystem.renderOptions.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for __AssetRef();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions;
  v11 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions);
  if (((*a1 >> 8) & 1) != ((v11 & 0x100) == 0))
  {
    goto LABEL_5;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = dispatch thunk of __Engine.services.getter();

  if (!v12)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();

  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v14 + 24))(v13, v14);
  RERenderManagerSetEnableProbeLighting();
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  v11 = *(v2 + v10);
LABEL_5:
  if (((v9 & 4) == 0) == ((v11 >> 2) & 1))
  {

    dispatch thunk of __RERenderGraphEmitter.__handle.getter();

    __AssetRef.__as<A>(_:)();
    (*(v5 + 8))(v8, v4);
    result = RERenderGraphEmitterAssetSetRuntimeSettingBool();
    v11 = *(v2 + v10);
  }

  if (((v9 & 8) == 0) == ((v11 >> 3) & 1))
  {

    dispatch thunk of __RERenderGraphEmitter.__handle.getter();

    __AssetRef.__as<A>(_:)();
    (*(v5 + 8))(v8, v4);
    result = RERenderGraphEmitterAssetSetRuntimeSettingBool();
    v11 = *(v2 + v10);
  }

  if (((v9 & 0x10) == 0) == ((v11 >> 4) & 1))
  {

    dispatch thunk of __RERenderGraphEmitter.__handle.getter();

    __AssetRef.__as<A>(_:)();
    (*(v5 + 8))(v8, v4);
    result = RERenderGraphEmitterAssetSetRuntimeSettingBool();
    v11 = *(v2 + v10);
  }

  if (((v9 & 0x20) == 0) == ((v11 >> 5) & 1))
  {

    dispatch thunk of __RERenderGraphEmitter.__handle.getter();

    __AssetRef.__as<A>(_:)();
    (*(v5 + 8))(v8, v4);
    return RERenderGraphEmitterAssetSetRuntimeSettingBool();
  }

  return result;
}

void RKARSystem.init(engine:arView:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v84 = a2;
  v85 = a1;
  ObjectType = swift_getObjectType();
  v83 = type metadata accessor for __AssetRef();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25RKARSegmentationComponentVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26PerspectiveCameraComponentVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v73 - v8;
  swift_weakInit();
  v9 = OBJC_IVAR____TtC10RealityKit10RKARSystem_delegate;
  *&v2[v9] = [objc_allocWithZone(type metadata accessor for RKARSystem.SessionDelegate()) init];
  v77 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode;
  v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_capturedFrame];
  *v10 = 0u;
  v10[1] = 0u;
  v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_isFaceSession] = 0;
  v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_useLowSampleAA] = 0;
  v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_updateCameraViewDescriptorSettings] = 0;
  *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_prevOrientation] = 0;
  v11 = &v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_suDepthFeatheringMaterial];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v76 = v11;
  *(v11 + 4) = 0;
  v12 = &v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraPassthroughMaterial];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v75 = v12;
  v13 = &v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraSegmentationCompositeMaterial];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v74 = v13;
  *(v13 + 4) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v73 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraCombinedPostProcessMaterials;
  *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraCombinedPostProcessMaterials] = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_addedAnchors] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_updatedAnchors] = v15;
  *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_removedAnchors] = v15;
  v16 = OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore;
  *&v3[v16] = dispatch_semaphore_create(1);
  v17 = OBJC_IVAR____TtC10RealityKit10RKARSystem_faceMeshEntitiesByAnchorIdentifier;
  *&v3[v17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit14FaceMeshEntityCTt0g5Tf4g_n(v14);
  v18 = OBJC_IVAR____TtC10RealityKit10RKARSystem_shadowReceiverEntitiesByAnchorIdentifier;
  *&v3[v18] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(v14);
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_lastUpdateTime] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientIntensity] = 0;
  v19 = OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor;
  if (one-time initialization token for defaultAmbientColor != -1)
  {
    swift_once();
  }

  v20 = static RKARSystem.defaultAmbientColor;
  *&v3[v19] = static RKARSystem.defaultAmbientColor;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_zNear] = 0x3F847AE147AE147BLL;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_zFar] = 0x408F400000000000;
  v21 = &v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix];
  v22 = *(MEMORY[0x1E69E9B18] + 16);
  v23 = *(MEMORY[0x1E69E9B18] + 32);
  v24 = *(MEMORY[0x1E69E9B18] + 48);
  *v21 = *MEMORY[0x1E69E9B18];
  v21[1] = v22;
  v21[2] = v23;
  v21[3] = v24;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraNoiseRandomTranslation] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent] = 0;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraWorldMatrixFromARFrame] = 1;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraProjectionMatrixFromARFrame] = 1;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem___autoFireStartTriggerOnPlacement] = 1;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted] = 0;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_needInitialCollaborationData] = 1;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_netSessionObserver] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_connectedPeers] = v14;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___cameraRenderGraph] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___depthOfFieldRenderGraph] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___motionBlurRenderGraph] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedRenderGraph] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedHDRRenderGraph] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___debugAxisEntity] = 0;
  v25 = OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___debugAnchorPlaneMaterial;
  v26 = type metadata accessor for UnlitMaterial();
  v27 = *(*(v26 - 8) + 56);
  v27(&v3[v25], 1, 1, v26);
  v27(&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___debugProbeMaterial], 1, 1, v26);
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_worldOrigin] = 0;
  v28 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier;
  v29 = v20;
  *&v3[v28] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(v14);
  v30 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugPlanesByAnchorIdentifier;
  *&v3[v30] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit11ModelEntityCTt0g5Tf4g_n(v14);
  v31 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugProbesByAnchorIdentifier;
  *&v3[v31] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit11ModelEntityCTt0g5Tf4g_n(v14);
  v32 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cachedGestureHitTestResults;
  *&v3[v32] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLV_AC013CollisionCastF0VSgTt0g5Tf4g_n(v14);
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_lastARFrameTimeStamp] = 0;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_maxNumberOfAttemptsToGetARFrameInDuplicateCase] = 5;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_sleepDurationInDuplicateARFrameCase] = 500;
  v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_shouldRenderCameraFeed] = 1;
  swift_weakAssign();
  v33 = v84;
  swift_unknownObjectWeakAssign();
  v34 = [objc_allocWithZone(MEMORY[0x1E69864D8]) init];
  v35 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_session] = v34;
  v36 = v33;
  if (!specialized static RKARSystem.cameraUsageDescriptionInPlist.getter())
  {
    v3[v77] = 1;
  }

  if (!dispatch thunk of __Engine.services.getter())
  {
    __break(1u);
    goto LABEL_23;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();

  v37 = v92;
  v38 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v39 = (*(v38 + 8))(v37, v38);
  type metadata accessor for RKARTextureCache();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache] = RKARTextureCache.init(device:)(v39);
  v40 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*&v36[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = *&v3[v35];

  Scene.setSession(_:)(v41);

  if (!*&v36[v40])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = dispatch thunk of Scene.defaultCamera.getter();

  if (v42)
  {
    goto LABEL_11;
  }

  if (*&v36[v40])
  {

    dispatch thunk of Scene.addDefaultCamera()();
LABEL_11:

    if (*&v36[v40])
    {

      v43 = dispatch thunk of Scene.defaultCamera.getter();

      if (v43)
      {
        v44 = type metadata accessor for PerspectiveCameraComponent();
        (*(*(v44 - 8) + 56))(v79, 1, 1, v44);
        v45 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v45(&v88, 0);
        Entity.coreEntity.getter();
        RECustomMatrixCameraComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        v46 = v80;
        RKARSegmentationComponent.init()();
        v47 = type metadata accessor for RKARSegmentationComponent();
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
        v48 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v48(&v88, 0);
        dispatch thunk of Entity.name.setter();
        *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity] = 0;
        type metadata accessor for __MaterialResource();
        static __MaterialResource.createMaterial(assetPath:in:)();
        v50 = v76;
        swift_beginAccess();
        outlined assign with take of Material?(&v88, v50, &_s10RealityKit8Material_pSgMd);
        swift_endAccess();
        static __MaterialResource.createMaterial(assetPath:in:)();
        v51 = v75;
        swift_beginAccess();
        outlined assign with take of Material?(&v88, v51, &_s10RealityKit8Material_pSgMd);
        swift_endAccess();
        static __MaterialResource.createMaterial(assetPath:in:)();
        v66 = v74;
        swift_beginAccess();
        outlined assign with take of Material?(&v88, v66, &_s10RealityKit8Material_pSgMd);
        swift_endAccess();
        v86 = MEMORY[0x1E69E7CC0];
        v67 = 16;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 16, 0);
        v68 = &off_1F5C0FF28;
        v69 = v86;
        do
        {

          static __MaterialResource.createMaterial(assetPath:in:)();

          v86 = v69;
          v71 = *(v69 + 16);
          v70 = *(v69 + 24);
          if (v71 >= v70 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
            v69 = v86;
          }

          *(v69 + 16) = v71 + 1;
          outlined init with take of Material(&v88, v69 + 40 * v71 + 32);
          v68 += 2;
          --v67;
          v72 = v83;
        }

        while (v67);
        swift_arrayDestroy();
        *&v3[v73] = v69;

        v49 = v82;
        v52 = dispatch thunk of __Engine.services.getter();
        v53 = v81;
        if (v52)
        {
          v83 = v43;
          dispatch thunk of __ServiceLocator.assetService.getter();

          v54 = v89;
          v55 = v90;
          __swift_project_boxed_opaque_existential_1(&v88, v89);
          (*(v55 + 32))(v54, v55);
          __swift_destroy_boxed_opaque_existential_1(&v88);
          AssetHandle = REAssetManagerCreateAssetHandle();
          if (AssetHandle)
          {
            v57 = AssetHandle;
            type metadata accessor for __REAsset();
            v58 = MEMORY[0x1E69E6B70];
            v89 = MEMORY[0x1E69E6B70];
            *&v88 = v57;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_1(&v88);
            static __REAsset.__fromHandleTransfer(_:)();
            v59 = *(v53 + 8);
            v59(v49, v72);
            type metadata accessor for __RERenderGraphEmitter();
            swift_allocObject();
            *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_simpleForwardEmitter] = __RERenderGraphEmitter.init(_:)();
            v60 = REAssetManagerCreateAssetHandle();
            if (v60)
            {
              v89 = v58;
              *&v88 = v60;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_1(&v88);
              static __REAsset.__fromHandleTransfer(_:)();
              v59(v49, v72);
              swift_allocObject();
              *&v3[OBJC_IVAR____TtC10RealityKit10RKARSystem_arEmitter] = __RERenderGraphEmitter.init(_:)();
              v87.receiver = v3;
              v87.super_class = ObjectType;
              v61 = objc_msgSendSuper2(&v87, sel_init);
              v62 = OBJC_IVAR____TtC10RealityKit10RKARSystem_delegate;
              swift_unknownObjectWeakAssign();
              v63 = v61;
              RKARSystem.setDefaultRenderSettings()();
              v64 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
              [*&v63[OBJC_IVAR____TtC10RealityKit10RKARSystem_session] _addObserver_];
              [*&v63[v64] forceEnvironmentTexturingToManualMode_];
              v65 = CACurrentMediaTime();

              *&v63[OBJC_IVAR____TtC10RealityKit10RKARSystem_lastUpdateTime] = v65;
              *&v63[OBJC_IVAR____TtC10RealityKit10RKARSystem_lastARFrameTimeStamp] = 0;

              __swift_destroy_boxed_opaque_existential_1(v91);
              return;
            }

            goto LABEL_29;
          }

LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

id RKARSystem.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraPassthroughMaterial];
  swift_beginAccess();
  v4 = *(v3 + 3);
  if (v4)
  {
    v5 = *(v3 + 4);
    v6 = __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    (*(v5 + 8))(v4, v5);
    (*(v7 + 8))(v10, v4);
    dispatch thunk of __MaterialResource.coreAsset.getter();

    REMaterialAssetClearParameter();
    REMaterialAssetClearParameter();
  }

  RKARSystem.endCollaborativeMapBuilding()();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

Swift::Void __swiftcall RKARSystem.updateGuidedFilterOcclusion(viewportSize:)(CGSize viewportSize)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v2 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (MEMORY[0x1E12F5420](v2))
  {
    if (RESceneUnderstandingServiceIsGuidedFilterOcclusionEnabled())
    {
      v3 = *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
      v4 = *(v3 + 32);
      if (v4)
      {
        v5 = *(v3 + 40);
        image = v4;
        v6 = v5;
        if (CVMetalTextureGetTexture(image))
        {
          v7 = CVMetalTextureGetTexture(v6);

          if (v7)
          {
            swift_unknownObjectRelease();
            v8 = *(v3 + 32);
            if (v8)
            {
              v9 = *(v3 + 40);
              v10 = v8;
              v11 = v9;
              if (CVMetalTextureGetTexture(v10))
              {
                v12 = CVMetalTextureGetTexture(v11);

                swift_unknownObjectRelease();
                if (v12)
                {
                  if (RKARSystem.camera.getter())
                  {
                    type metadata accessor for Entity();
                    HasTransform.transformMatrix(relativeTo:)();
                    RESceneUnderstandingServiceSetGuidedFilterOcclusionCameraFeed();
                  }

                  swift_unknownObjectRelease();
                }
              }

              else
              {
              }
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t RKARSystem.updateCameraProjectionMatrix(from:viewportSize:)(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for __EntityRef();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if (*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {

      v12 = dispatch thunk of Scene.defaultCamera.getter();

      if (!v12)
      {
        return result;
      }

      dispatch thunk of Entity.__coreEntity.getter();
      __AssetRef.__as<A>(_:)();
      (*(v7 + 8))(v9, v6);
      RECustomMatrixCameraComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
      }

      if (a2 > 0.0 && a3 > 0.0)
      {
        v13 = [a1 camera];
        [v13 projectionMatrixForOrientation:RKARSystem.orientation.getter() viewportSize:a2 zNear:a3 zFar:{0.01, 1000.0}];
        v18[0] = v14;
        v18[1] = v15;
        v18[2] = v16;
        v18[3] = v17;

        RECustomMatrixCameraComponentSetRenderProjectionMatrix();
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void RKARSystem.updateLighting(_:)(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 2) == 0)
  {
    v2 = [a1 lightEstimate];
    if (v2)
    {
      if (*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode))
      {
      }

      else
      {
        v3 = *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity);
        v21 = v2;
        if (v3)
        {
          [v2 ambientIntensity];
          type metadata accessor for AmbientLight();
          v4 = HasAmbientLight.light.modify();
          __AmbientLightComponent.intensity.setter();
          v4(v23, 0);
          v2 = v21;
        }

        [v2 ambientIntensity];
        *&v5 = v5;
        v6 = fminf(*&v5, 1000.0) + -1000.0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v8 = Strong;
          swift_beginAccess();
        }

        powf((v6 / 1000.0) + 1.0, 0.25);
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
          v11 = v9;
          swift_beginAccess();
          v12 = *&v11[v10];

          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = dispatch thunk of Entity.components.modify();
          v14 = type metadata accessor for ImageBasedLightComponent();
          v15 = Entity.ComponentSet.subscript.modify();
          if (!(*(*(v14 - 8) + 48))(v16, 1, v14))
          {
            ImageBasedLightComponent.intensityExponent.setter();
          }

          v15(&v22, 0);
          v13(v23, 0);
        }

        if (v3)
        {
          [v21 ambientColorTemperature];
          *&v17 = v17;
          *&v19 = specialized RKARSystem.colorTemperatureToSRGB(_:)(*&v17, v18);
          v22 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd);
          lazy protocol witness table accessor for type Float and conformance Float();
          SIMD3<>.cgColor.getter();
          type metadata accessor for AmbientLight();
          v20 = HasAmbientLight.light.modify();
          __AmbientLightComponent.color.setter();
          v20(v23, 0);
        }
      }
    }
  }
}

uint64_t RKARSystem.removeAnchors(_:)(unint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  if (a1 >> 62)
  {
LABEL_28:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      v13 = 0;
      v14 = OBJC_IVAR____TtC10RealityKit10RKARSystem_faceMeshEntitiesByAnchorIdentifier;
      v46 = result;
      v47 = a1 & 0xC000000000000001;
      v41 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
      v42 = a1 & 0xFFFFFFFFFFFFFF8;
      v15 = (v37 + 8);
      v36 = (v4 + 8);
      v40 = a1;
      v43 = v6;
      while (1)
      {
        if (v47)
        {
          v16 = MEMORY[0x1E12F44E0](v13, a1, v9);
        }

        else
        {
          if (v13 >= *(v42 + 16))
          {
            goto LABEL_27;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        RKARSystem.removeAnchorDebugVisualization(for:)(v16);
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          break;
        }

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          v24 = v17;
          RKARSystem.removeProbeDebugVisualization(for:)(v23);
          goto LABEL_15;
        }

LABEL_16:
        v25 = [v17 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        v4 = *(v2 + v14);
        if (*(v4 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v11), (v26 & 1) != 0))
        {
          swift_endAccess();
          v27 = *v15;

          v45 = v27;
          v27(v11, v6);
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v28 = result;
            if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
            {
              __break(1u);
              return result;
            }

            v29 = v38;
            dispatch thunk of Scene.anchors.getter();

            Scene.AnchorCollection.remove(_:)();

            (*v36)(v29, v39);
          }

          v30 = [v17 identifier];
          v31 = v44;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();
          v4 = *(v2 + v14);
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if (v33)
          {
            v34 = v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v4 = *(v2 + v14);
            v48 = v4;
            *(v2 + v14) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v4 = v48;
            }

            v45((*(v4 + 48) + *(v37 + 72) * v34), v43);

            specialized _NativeDictionary._delete(at:)(v34, v4);
            *(v2 + v14) = v4;
          }

          swift_endAccess();

          v6 = v43;
          result = v45(v44, v43);
          a1 = v40;
        }

        else
        {
          swift_endAccess();

          result = (*v15)(v11, v6);
        }

        ++v13;
        if (v18 == v46)
        {
          return result;
        }
      }

      v20 = v19;
      v21 = v17;
      RKARSystem.removePlaneDebugVisualization(for:)(v20);
LABEL_15:

      goto LABEL_16;
    }
  }

  return result;
}

void RKARSystem.addAnchors(_:)(unint64_t a1)
{
  v2 = v1;
  v74 = *MEMORY[0x1E69E9840];
  v58 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UUID();
  v6 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions;
    v62 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
    v59 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier;
    v66 = a1 & 0xC000000000000001;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugProbesByAnchorIdentifier;
    v56 = (v4 + 8);
    v61 = v6 + 1;
    v49 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugPlanesByAnchorIdentifier;
    v50 = "__probeDebugGeometry";
    v48 = "__axisDebugGeometry";
    v51 = xmmword_1E12531A0;
    v60 = xmmword_1E1253190;
    v53 = a1;
    v55 = i;
    v65 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions;
    while (1)
    {
      if (v66)
      {
        v11 = MEMORY[0x1E12F44E0](v9, a1);
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_37;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((*(v2 + v10) & 8) != 0)
      {
        v6 = specialized RKARSystem.createDebugAxis()();
        type metadata accessor for Entity();
        HasTransform.position.setter();
        [v12 transform];
        HasTransform.setTransformMatrix(_:relativeTo:)();
        Entity.turnIntoNinja()();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          if (!*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
          {
            __break(1u);
LABEL_42:
            __break(1u);
          }

          v16 = v57;
          dispatch thunk of Scene.anchors.getter();

          Scene.AnchorCollection.appendNinja(_:)();
          (*v56)(v16, v58);
        }

        v17 = [v12 identifier];
        v18 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v59;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *(v2 + v19);
        *(v2 + v19) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v18, isUniquelyReferenced_nonNull_native);
        (*v61)(v18, v64);
        *(v2 + v19) = v67;
        swift_endAccess();

        v10 = v65;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (!v35 || (*(v2 + v10) & 0x10) == 0)
        {
          goto LABEL_7;
        }

        v36 = v35;
        v23 = v12;
        [v36 extent];
        v52 = v37;
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.assetService.getter();

        v6 = v72;
        v38 = v73;
        __swift_project_boxed_opaque_existential_1(&v68, v72);
        (*(v38 + 32))(v6, v38);
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v68 = 0x1000100010001;
        v69 = 0;
        v70 = v52;
        v71 = DWORD2(v52);
        LOWORD(v72) = 257;
        BYTE2(v72) = 1;
        if (!REAssetManagerMeshMemoryAssetCreateBox())
        {

          goto LABEL_6;
        }

        type metadata accessor for MeshResource();
        swift_allocObject();
        MeshResource.init(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
        v39 = swift_allocObject();
        *(v39 + 16) = v51;
        *(v39 + 56) = type metadata accessor for UnlitMaterial();
        *(v39 + 64) = MEMORY[0x1E697A178];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v39 + 32));

        RKARSystem.debugAnchorPlaneMaterial.getter(&OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___debugProbeMaterial, boxed_opaque_existential_0, 0.0, 1.0);
        type metadata accessor for ModelEntity();
        swift_allocObject();
        v6 = ModelEntity.init(mesh:materials:)();

        dispatch thunk of Entity.name.setter();

        [v36 transform];
        HasTransform.setTransformMatrix(_:relativeTo:)();
        Entity.turnIntoNinja()();
        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          if (!*(v41 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
          {
            __break(1u);
            return;
          }

          v43 = v57;
          dispatch thunk of Scene.anchors.getter();

          Scene.AnchorCollection.appendNinja(_:)();
          (*v56)(v43, v58);
        }

        v44 = [v36 identifier];
        v33 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = &v75;
        goto LABEL_34;
      }

      if ((*(v2 + v10) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      v22 = v21;
      v23 = v12;
      v6 = [v22 geometry];
      v4 = v6;
      if (*(ARPlaneGeometry.vertices.getter() + 16) > 0xFFuLL)
      {
        goto LABEL_38;
      }

      v24 = REGeomMeshCreateFromPolygon();

      if (v24)
      {
        v67 = v24;
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.assetService.getter();

        v25 = v72;
        v26 = v73;
        __swift_project_boxed_opaque_existential_1(&v68, v72);
        (*(v26 + 32))(v25, v26);
        __swift_destroy_boxed_opaque_existential_1(&v68);
        if (REAssetManagerMeshMemoryAssetCreate())
        {
          type metadata accessor for MeshResource();
          swift_allocObject();
          MeshResource.init(_:)();
          RERelease();
          RERelease();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
          v27 = swift_allocObject();
          *(v27 + 16) = v51;
          *(v27 + 56) = type metadata accessor for UnlitMaterial();
          *(v27 + 64) = MEMORY[0x1E697A178];
          v28 = __swift_allocate_boxed_opaque_existential_0((v27 + 32));

          RKARSystem.debugAnchorPlaneMaterial.getter(&OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___debugAnchorPlaneMaterial, v28, 1.0, 0.0);
          type metadata accessor for ModelEntity();
          swift_allocObject();
          v6 = ModelEntity.init(mesh:materials:)();

          dispatch thunk of Entity.name.setter();

          [v22 transform];
          HasTransform.setTransformMatrix(_:relativeTo:)();
          Entity.turnIntoNinja()();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            if (!*(v29 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
            {
              goto LABEL_42;
            }

            v31 = v57;
            dispatch thunk of Scene.anchors.getter();

            Scene.AnchorCollection.appendNinja(_:)();
            (*v56)(v31, v58);
          }

          v32 = [v22 identifier];
          v33 = v63;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = &v76;
LABEL_34:
          v45 = *(v34 - 32);
          swift_beginAccess();

          v46 = swift_isUniquelyReferenced_nonNull_native();
          v67 = *(v2 + v45);
          *(v2 + v45) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v33, v46);
          (*v61)(v33, v64);
          *(v2 + v45) = v67;
          swift_endAccess();

          a1 = v53;
          goto LABEL_6;
        }

        RERelease();
        a1 = v53;
      }

LABEL_6:
      i = v55;
      v10 = v65;
LABEL_7:
      v4 = RKARSystem.createFaceGeometry(for:)(v12);

      ++v9;
      if (v13 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

void *RKARSystem.updateDepthOfField(for:)(void *result)
{
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 0x10) == 0)
  {
    v2 = result;
    v3 = [result camera];
    [v3 focalLength];

    v4 = [v2 camera];
    [v4 imageResolution];

    v5 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
    v6 = [*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) configuration];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 videoFormat];

      v9 = [v8 device];
      [v9 lensAperture];
    }

    v10 = [*(v1 + v5) configuration];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 videoFormat];

      v13 = [v12 device];
      [v13 lensPosition];
      v15 = v14;

      v16 = v15 * 7.5;
    }

    else
    {
      v16 = 7.5;
    }

    expf(v16);
    RKARSystem.cameraRenderGraph.getter(&OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___depthOfFieldRenderGraph);
    RERenderGraphAssetSetRuntimeNodeSetting();
    RERenderGraphAssetSetRuntimeNodeSetting();
    RERenderGraphAssetSetRuntimeNodeSetting();
    return RERenderGraphAssetSetRuntimeNodeSetting();
  }

  return result;
}

void RKARSystem.updateMotionBlur(for:)(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 8) == 0)
  {
    v2 = [a1 camera];
    [v2 exposureDuration];

    RKARSystem.cameraRenderGraph.getter(&OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___motionBlurRenderGraph);
    RERenderGraphAssetSetRuntimeNodeSettingFloat();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong session];

      v7 = [v5 configuration];
      if (v7)
      {
        v6 = [v7 videoFormat];
        [v6 framesPerSecond];

        RERenderGraphAssetSetRuntimeNodeSettingUInt32();
      }
    }
  }
}

void RKARSystem.updateCameraNoise(for:)(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions;
    if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 0x20) != 0)
    {
      v7 = &OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedRenderGraph;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedHDRRenderGraph;
    }

    RKARSystem.cameraRenderGraph.getter(v7);
    if ((*(v1 + v6) & 1) == 0)
    {
      [a1 cameraGrainIntensity];
      if (v8 > 0.0)
      {
        v9 = [a1 cameraGrainTexture];
        if (v9)
        {
          v10 = v9;
          v11 = *&v5[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer];
          if (!v11)
          {
            __break(1u);
            return;
          }

          [v11 drawableSize];
          v13 = v12;
          v15 = v14;
          v16 = [a1 camera];
          [v16 imageResolution];

          v17 = [a1 camera];
          [v17 imageResolution];

          if (v15 >= v13)
          {
            v18 = &selRef_height;
          }

          else
          {
            v18 = &selRef_width;
          }

          if (v15 >= v13)
          {
            v19 = &selRef_width;
          }

          else
          {
            v19 = &selRef_height;
          }

          [v10 *v18];
          v20 = [v10 *v19];
          v38 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix);
          v39 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix + 16);
          v36 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix + 32);
          v37 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix + 48);
          v21 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v20, 0.0, 6.2832);
          v23 = v22;
          specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v21, 0.0, 0.8);
          v41 = v24 + 0.1;
          v40 = cosf(v23);
          *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraNoiseRandomTranslation) = vadd_f32(vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf(v23)), LODWORD(v40)), v41), *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraNoiseRandomTranslation));
          v25 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraCombinedPostProcessMaterials);
          v26 = *(v25 + 16);
          if (v26)
          {
            v27 = v25 + 32;

            do
            {
              outlined init with copy of SynchronizationPeerID(v27, v42);
              v28 = v43;
              v29 = v44;
              __swift_project_boxed_opaque_existential_1(v42, v43);
              (*(v29 + 8))(v28, v29);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              REMaterialAssetSetFloat2F();
              v30 = v43;
              v31 = v44;
              __swift_project_boxed_opaque_existential_1(v42, v43);
              (*(v31 + 8))(v30, v31);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              REMaterialAssetSetFloat2F();
              v32 = v43;
              v33 = v44;
              __swift_project_boxed_opaque_existential_1(v42, v43);
              (*(v33 + 8))(v32, v33);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              [a1 cameraGrainIntensity];
              REMaterialAssetSetFloat();
              v34 = v43;
              v35 = v44;
              __swift_project_boxed_opaque_existential_1(v42, v43);
              (*(v35 + 8))(v34, v35);
              __swift_destroy_boxed_opaque_existential_1(v42);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              REMaterialAssetSetTexture();
              v27 += 40;
              --v26;
            }

            while (v26);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }

    RERenderGraphAssetSetRuntimeNodeSettingBool();
  }
}

Swift::Void __swiftcall RKARSystem.updateSceneUnderstandingOptions()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
    return;
  }

  v4 = dispatch thunk of Scene.synchronizationService.getter();

  if (v4)
  {
    type metadata accessor for MultipeerConnectivityService();
    v5 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v6 = v5 == 0;
    if (v5)
    {
      v7 = 12;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
    v6 = 1;
  }

  if ((v6 & *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted)) != 0)
  {
    v8 = 12;
  }

  else
  {
    v8 = v7;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v9 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
    swift_beginAccess();
    ARView.Environment.sceneUnderstanding.getter(v22);
    v12 = v22[0];
    ARView.updateEnvironment()();
    if (v8 != v12)
    {
      swift_beginAccess();
      ARView.Environment.sceneUnderstanding.getter(&v19);
      v19 = v8;
      v13 = v21;
      if ((v21 & v8) != 0 && (static os_log_type_t.debug.getter(), type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log), v14 = static OS_os_log.default.getter(), os_log(_:dso:log:type:_:)(), v14, v13 = v21, (v21 & v8) != 0))
      {
        v15 = ~v8;
      }

      else
      {
        v15 = -1;
      }

      v21 = v15 & v13;
      v18 = v13;
      ARView.Environment.SceneUnderstanding.options.didset(&v18);
      v16 = v21;
      v17 = 0x100000000;
      if (!v20)
      {
        v17 = 0;
      }

      *v11 = v17 | v19;
      *(v11 + 8) = v16;
      swift_endAccess();
      ARView.updateEnvironment()();
    }
  }
}

void RKARSystem.updateLighting()()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity))
  {
    type metadata accessor for AmbientLight();
    v1 = HasAmbientLight.light.modify();
    __AmbientLightComponent.intensity.setter();
    v1(v13, 0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    v6 = v4;
    swift_beginAccess();
    v7 = *&v6[v5];

    if (v7)
    {
      v8 = dispatch thunk of Entity.components.modify();
      v9 = type metadata accessor for ImageBasedLightComponent();
      v10 = Entity.ComponentSet.subscript.modify();
      if (!(*(*(v9 - 8) + 48))(v11, 1, v9))
      {
        ImageBasedLightComponent.intensityExponent.setter();
      }

      v10(&v12, 0);
      v8(v13, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t RKARSystem.updateBodyTracking(with:)(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v57 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BodyTrackingComponent.Target();
  v56 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for BodyTrackingComponent();
  v54 = *(v67 - 8);
  v7 = MEMORY[0x1EEE9AC00](v67);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_65:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v5;
  v62 = v4;
  v63 = v2;
  if (v10)
  {
    v4 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v2 = v4;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E12F44E0](v2, a1, v7);
        }

        else
        {
          if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v12 = *(a1 + 8 * v2 + 32);
        }

        v5 = v12;
        v4 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          break;
        }

        ++v2;
        if (v4 == v10)
        {
          goto LABEL_19;
        }
      }

      v5 = v13;
      MEMORY[0x1E12F4070]();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v68;
    }

    while (v4 != v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v59 = v11 >> 62;
  if (v11 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v65;
  v15 = v66;
  if (v14 <= 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_55:
  }

  v18 = Strong;
  v64 = v11;
  if (!*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    goto LABEL_69;
  }

  Scene.coreScene.getter();

  ComponentsOfType = RESceneGetComponentsOfType();
  if (v20 < 0)
  {
    goto LABEL_68;
  }

  v21 = v20;
  if (!v20)
  {

    goto LABEL_55;
  }

  v22 = ComponentsOfType;
  v48[0] = v18;
  v23 = type metadata accessor for Entity();
  v58 = 0;
  v61 = (v56 + 88);
  v60 = *MEMORY[0x1E697A2C8];
  v52 = *MEMORY[0x1E697A2C0];
  v55 = v64 & 0xFFFFFFFFFFFFFF8;
  if (v64 < 0)
  {
    v24 = v64;
  }

  else
  {
    v24 = (v64 & 0xFFFFFFFFFFFFFF8);
  }

  v48[1] = v24;
  v51 = (v56 + 96);
  v49 = v64 & 0xC000000000000001;
  v50 = (v57 + 4);
  v53 = (v57 + 1);
  v25 = (v54 + 8);
  v56 = v23;
  v57 = (v54 + 8);
  while (1)
  {
    REComponentGetEntity();
    static Entity.fromCore(_:ignoringEntityInfo:)();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_31;
    }

    HasBodyTracking.bodyTracking.getter();
    if ((BodyTrackingComponent.isPaused.getter() & 1) == 0)
    {
      break;
    }

    (*v25)(v9, v67);
LABEL_31:

LABEL_32:
    v22 += 8;
    if (!--v21)
    {
    }
  }

  BodyTrackingComponent.target.getter();
  v26 = (*v61)(v15, v16);
  if (v26 == v60)
  {
    (*v51)(v15, v16);
    v27 = v62;
    v28 = v15;
    v29 = v63;
    v30 = (*v50)(v62, v28, v63);
    MEMORY[0x1EEE9AC00](v30);
    v48[-2] = v27;
    v31 = v58;
    v32 = specialized Sequence.first(where:)(partial apply for closure #2 in RKARSystem.updateBodyTracking(with:), &v48[-4], v64);
    if (!v32)
    {

      (*v25)(v9, v67);
      return (*v53)(v27, v29);
    }

    v58 = v31;
    v33 = v32;
    v34 = [v33 skeleton];
    v35 = v27;
    v36 = [v34 coreRESkeleton];

    v37 = *v53;
    v38 = v36;
    v37(v35, v29);
    v16 = v65;
    if (!v38)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  if (v26 != v52)
  {
    goto LABEL_70;
  }

  v39 = v64;
  if (v59)
  {
    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *(v55 + 16);
  }

  if (!v40)
  {
    (*v25)(v9, v67);
  }

  if (v49)
  {
    v41 = MEMORY[0x1E12F44E0](0, v39);
LABEL_47:
    v42 = v41;
    v43 = [v41 skeleton];

    v44 = [v43 coreRESkeleton];
    v38 = v44;
    if (!v38)
    {
LABEL_60:
      (*v57)(v9, v67);
    }

LABEL_48:
    [v38 localJointTransformsSRT];
    [v38 jointTransformCount];
    Entity.coreEntity.getter();
    if ((REEntityCharacterSetSkeletalPoseLocalRotations() & 1) == 0)
    {
      static os_log_type_t.error.getter();
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
      v45 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    Entity.coreEntity.getter();
    if (REEntityCharacterSetSkeletalPoseJointLocalSpace())
    {

      v46 = v38;
    }

    else
    {
      static os_log_type_t.error.getter();
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
      v46 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v15 = v66;

    v25 = v57;
    (*v57)(v9, v67);
    goto LABEL_32;
  }

  if (*(v55 + 16))
  {
    v41 = *(v39 + 32);
    goto LABEL_47;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in RKARSystem.updateBodyTracking(with:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

Swift::Void __swiftcall RKARSystem.removeFaceGeometry(for:)(ARAnchor a1)
{
  v2 = v1;
  v4 = type metadata accessor for Scene.AnchorCollection();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &isa - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &isa - v13;
  v15 = [(objc_class *)a1.super.isa identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = OBJC_IVAR____TtC10RealityKit10RKARSystem_faceMeshEntitiesByAnchorIdentifier;
  swift_beginAccess();
  if (*(*(v2 + v16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
  {
    isa = a1.super.isa;
    swift_endAccess();
    v18 = *(v8 + 8);

    v23 = v18;
    v18(v14, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_6:
      v21 = [(objc_class *)isa identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      specialized Dictionary.removeValue(forKey:)(v10, specialized _NativeDictionary.copy());
      swift_endAccess();

      v23(v10, v7);
      return;
    }

    v20 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {

      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.remove(_:)();

      (*(v24 + 8))(v6, v4);
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
    (*(v8 + 8))(v14, v7);
  }
}

uint64_t RKARSystem.createFaceGeometry(for:)(void (*a1)(void, void))
{
  v92 = a1;
  v2 = type metadata accessor for Scene.AnchorCollection();
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnchoringComponent.Target();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14ModelComponentVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for OcclusionMaterial();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v74 - v28;
  v93 = v1;
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 0x440) != 0)
  {
    return 0;
  }

  v77 = v18;
  v78 = v12;
  v79 = v15;
  v80 = v27;
  v81 = v6;
  v82 = v9;
  v83 = v26;
  v84 = v22;
  v85 = v20;
  v86 = v25;
  objc_opt_self();
  v31 = v92;
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    return 0;
  }

  v33 = v32;
  v34 = v31;
  v35 = [v33 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = OBJC_IVAR____TtC10RealityKit10RKARSystem_faceMeshEntitiesByAnchorIdentifier;
  v37 = v93;
  swift_beginAccess();
  v38 = *(v37 + v36);
  if (*(v38 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v40)
    {
      v30 = *(*(v38 + 56) + 8 * v39);
      swift_endAccess();

      (*(v83 + 8))(v29, v86);
      return v30;
    }
  }

  swift_endAccess();
  v76 = v34;
  v92 = *(v83 + 8);
  v92(v29, v86);
  type metadata accessor for FaceMeshEntity(0);
  swift_allocObject();
  v30 = Entity.init()();
  type metadata accessor for MeshResource();
  v41 = [v33 geometry];
  v42 = static MeshResource.generateFace(faceGeometry:fillMesh:)();

  v43 = v84;
  OcclusionMaterial.init(receivesDynamicLighting:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1E12531A0;
  v45 = MEMORY[0x1E697A1F8];
  *(v44 + 56) = v19;
  *(v44 + 64) = v45;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v44 + 32));
  v47 = *(v85 + 16);
  v75 = v19;
  v47(boxed_opaque_existential_0, v43, v19);

  v48 = v77;
  v83 = v42;
  ModelComponent.init(mesh:materials:)();
  v49 = type metadata accessor for ModelComponent();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  HasModel.model.setter();
  v50 = *MEMORY[0x1E697A308];
  v51 = type metadata accessor for SceneUnderstandingComponent.EntityType();
  v52 = *(v51 - 8);
  v53 = v78;
  (*(v52 + 104))(v78, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);

  v54 = v79;
  SceneUnderstandingComponent.init(entityType:)();
  v55 = type metadata accessor for SceneUnderstandingComponent();
  v56 = v33;
  v57 = v36;
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v58 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v58(v95, 0);
  [v33 transform];
  HasTransform.setTransformMatrix(_:relativeTo:)();
  HasTransform.setScale(_:relativeTo:)();
  v59 = *(MEMORY[0x1E69E9B18] + 16);
  v60 = *(MEMORY[0x1E69E9B18] + 32);
  v61 = *(MEMORY[0x1E69E9B18] + 48);
  v62 = v81;
  *v81 = *MEMORY[0x1E69E9B18];
  v62[1] = v59;
  v62[2] = v60;
  v62[3] = v61;
  (*(v90 + 104))(v62, *MEMORY[0x1E697A268], v91);
  v63 = v82;
  AnchoringComponent.init(_:)();
  v64 = type metadata accessor for AnchoringComponent();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v65(v95, 0);
  v66 = v76;
  v67 = [v56 identifier];

  v68 = v80;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = v93;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v69 + v57);
  *(v69 + v57) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v68, isUniquelyReferenced_nonNull_native);
  v92(v68, v86);
  *(v69 + v57) = v94;
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {

    goto LABEL_11;
  }

  v72 = result;
  if (*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    v73 = v87;
    dispatch thunk of Scene.anchors.getter();

    Scene.AnchorCollection.append(_:)();

    (*(v88 + 8))(v73, v89);
LABEL_11:
    (*(v85 + 8))(v84, v75);
    return v30;
  }

  __break(1u);
  return result;
}

char *RKARSystem.updateFaceGeometry(for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Scene.AnchorCollection();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *&v47 = v11;
    v48 = result;
    v19 = a1;
    v20 = [v19 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = OBJC_IVAR____TtC10RealityKit10RKARSystem_faceMeshEntitiesByAnchorIdentifier;
    swift_beginAccess();
    if (*(*(v2 + v21) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v17), (v22 & 1) != 0))
    {
      v46 = v19;
      swift_endAccess();
      v23 = *(v15 + 8);

      v23(v17, v14);
      v24 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 0x440;

      v25 = dispatch thunk of Entity.scene.getter();
      v26 = v25;
      if (v24)
      {

        if (!v26 || (, result = swift_unknownObjectWeakLoadStrong(), v27 = v46, !result))
        {
        }

        v28 = result;
        if (*&result[OBJC_IVAR____TtC10RealityKit6ARView__scene])
        {

          dispatch thunk of Scene.anchors.getter();

          Scene.AnchorCollection.remove(_:)();

          return (*(v47 + 8))(v13, v10);
        }

        __break(1u);
        goto LABEL_24;
      }

      if (v25)
      {

        v29 = v46;
      }

      else
      {
        result = swift_unknownObjectWeakLoadStrong();
        v29 = v46;
        if (result)
        {
          v30 = result;
          if (!*&result[OBJC_IVAR____TtC10RealityKit6ARView__scene])
          {
LABEL_24:
            __break(1u);
            return result;
          }

          dispatch thunk of Scene.anchors.getter();

          Scene.AnchorCollection.append(_:)();

          (*(v47 + 8))(v13, v10);
        }
      }

      type metadata accessor for FaceMeshEntity(0);
      HasTransform.scale(relativeTo:)();
      v47 = v31;
      v32 = v48;
      [v48 transform];
      HasTransform.setTransformMatrix(_:relativeTo:)();
      HasTransform.setScale(_:relativeTo:)();
      type metadata accessor for MeshResource();
      v33 = [v32 geometry];
      static MeshResource.generateFace(faceGeometry:fillMesh:)();

      v34 = HasModel.model.modify();
      v36 = v35;
      v37 = type metadata accessor for ModelComponent();
      if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
      {

        ModelComponent.mesh.setter();
      }

      v34(v50, 0);
      v38 = *MEMORY[0x1E697A308];
      v39 = type metadata accessor for SceneUnderstandingComponent.EntityType();
      v40 = *(v39 - 8);
      (*(v40 + 104))(v6, v38, v39);
      (*(v40 + 56))(v6, 0, 1, v39);
      SceneUnderstandingComponent.init(entityType:)();
      v41 = type metadata accessor for SceneUnderstandingComponent();
      (*(*(v41 - 8) + 56))(v9, 0, 1, v41);
      v42 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v42(v50, 0);
      v49 = &unk_1F5C2C630;
      v43 = swift_dynamicCastObjCProtocolConditional();
      if (v43)
      {
        v44 = v43;
        v29 = v29;
        [v44 isTracked];
        dispatch thunk of Entity.isEnabled.setter();
      }

      else
      {
      }
    }

    else
    {
      swift_endAccess();

      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

void closure #1 in RKARSystem.session(_:didUpdate:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (swift_weakLoadStrong())
    {
      v5 = OBJC_IVAR____TtC10RealityKit10RKARSystem_cachedGestureHitTestResults;
      swift_beginAccess();
      *(a1 + v5) = MEMORY[0x1E69E7CC8];

      v6 = &v10[OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate];
      swift_beginAccess();
      v7 = *v6;
      v8 = OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate;
      swift_beginAccess();
      if (v10[v8])
      {
        v7 = a2;
      }

      v9 = __Engine.coreEngine.getter();
      MEMORY[0x1E12F4C90](v9, v7);
    }

    else
    {
    }
  }
}

void type metadata completion function for RKARSystem()
{
  type metadata accessor for UnlitMaterial?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UnlitMaterial?()
{
  if (!lazy cache variable for type metadata for UnlitMaterial?)
  {
    type metadata accessor for UnlitMaterial();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnlitMaterial?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RKARSystem.HashableARAnchor and conformance RKARSystem.HashableARAnchor()
{
  result = lazy protocol witness table cache variable for type RKARSystem.HashableARAnchor and conformance RKARSystem.HashableARAnchor;
  if (!lazy protocol witness table cache variable for type RKARSystem.HashableARAnchor and conformance RKARSystem.HashableARAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RKARSystem.HashableARAnchor and conformance RKARSystem.HashableARAnchor);
  }

  return result;
}

uint64_t RKARSystem.HitTestScreenPoint.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E12F4800](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E12F4800](*&v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RKARSystem.HitTestScreenPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  RKARSystem.HitTestScreenPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RKARSystem.HitTestScreenPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  RKARSystem.HitTestScreenPoint.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RKARSystem.HitTestScreenPoint and conformance RKARSystem.HitTestScreenPoint()
{
  result = lazy protocol witness table cache variable for type RKARSystem.HitTestScreenPoint and conformance RKARSystem.HitTestScreenPoint;
  if (!lazy protocol witness table cache variable for type RKARSystem.HitTestScreenPoint and conformance RKARSystem.HitTestScreenPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RKARSystem.HitTestScreenPoint and conformance RKARSystem.HitTestScreenPoint);
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v35 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit6EntityCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v0;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v33 = (v2 + 8);
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      v20 = [v19 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = v34;
      dispatch thunk of Hashable.hash(into:)();
      (*v33)(v4, v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v1 = v31;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo7UITouchCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo16ARReferenceImageCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo17ARReferenceObjectCGMd);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(MEMORY[0x1E697A640], &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E696B330], &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E697A660], &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit6EntityCGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo16ARReferenceImageCGMd);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo17ARReferenceObjectCGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v32 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit6EntityCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v0;
    v32 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v33 = (v2 + 8);
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      v20 = v19;
      v21 = [v20 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = v34;
      dispatch thunk of Hashable.hash(into:)();
      (*v33)(v4, v22);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v31;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo16ARReferenceImageCGMd);
}

{
  return specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo17ARReferenceObjectCGMd);
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      v12 = v10 == 0.0 ? 0.0 : v10;
      MEMORY[0x1E12F4800](*&v12);
      v13 = v11 == 0.0 ? 0.0 : v11;
      MEMORY[0x1E12F4800](*&v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_26:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8ARAnchorCtMd);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - v14;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_22;
  }

  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a1 + v17, v53 - v14, &_s10Foundation4UUIDV_So8ARAnchorCtMd);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  specialized _NativeDictionary.copy()();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v64 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v30 = swift_dynamicCast();
    v31 = v54;
    if ((v30 & 1) == 0)
    {

      (*(v31 + 8))(v10, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v55 = *(v54 + 72);
  v35 = v20;
  v60((v34 + v55 * v20), v10, v61);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v59 + v57 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v39, v15, &_s10Foundation4UUIDV_So8ARAnchorCtMd);
      v60(v10, v15, v61);
      v18 = *&v15[v56];
      v41 = *a3;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, 1);
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v60((v49[6] + v55 * v42), v10, v61);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v57;
      v38 = v59;
      if (v58 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1E12F4010](0xD00000000000001BLL, 0x80000001E1259740);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12F4010](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1E12F6170](&v7, 8);
  if (((v5 * vcvts_n_f32_u64(v7 & 0xFFFFFF, 0x18uLL)) + a2) == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v54) = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = *v2;
  Hasher.init(_seed:)();
  v57 = a1;
  v13 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v15 = *(v6 + 8);
  v55 = v5;
  v56 = v6 + 8;
  v15(v11, v5);
  v16 = Hasher._finalize()();
  v17 = v12;
  v18 = v12 + 56;
  v19 = -1 << *(v12 + 32);
  v20 = v16 & ~v19;
  v21 = *(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20;
  v53 = v3;
  if (v21)
  {
    v52 = v14;
    v22 = ~v19;
    while (1)
    {
      v23 = v17;
      v24 = *(v17[6] + 8 * v20);
      v25 = [v24 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v57 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = static UUID.== infix(_:_:)();
      v28 = v55;
      v15(v8, v55);
      v15(v11, v28);
      if (v27)
      {
        break;
      }

      v20 = (v20 + 1) & v22;
      v17 = v23;
      if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        v29 = 1;
        goto LABEL_8;
      }
    }

    v29 = 0;
    v17 = v23;
LABEL_8:
    v30 = v27 ^ 1u;
    v3 = v53;
  }

  else
  {
    v30 = 1;
    v29 = 1;
  }

  v31 = v17[2];
  v32 = v31 + v29;
  if (__OFADD__(v31, v29))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = v17[3];
  if (v33 < v32 || (v54 & 1) == 0)
  {
    if (v54)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v33 >= v32)
      {
        specialized _NativeSet.copy()();
        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v52 = v30;
    v34 = *v3;
    Hasher.init(_seed:)();
    v35 = [v57 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v55;
    dispatch thunk of Hashable.hash(into:)();
    v15(v11, v36);
    v37 = Hasher._finalize()();
    v38 = v34 + 56;
    v54 = v34;
    v39 = -1 << *(v34 + 32);
    v20 = v37 & ~v39;
    if ((*(v34 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v40 = ~v39;
      while (1)
      {
        v41 = *(*(v54 + 48) + 8 * v20);
        v42 = [v41 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = [v57 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v43) = static UUID.== infix(_:_:)();
        v44 = v55;
        v15(v8, v55);
        v15(v11, v44);
        if (v43)
        {
          break;
        }

        v20 = (v20 + 1) & v40;
        if (((*(v38 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v3 = v53;
      if ((v52 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      v3 = v53;
      if (v52)
      {
LABEL_25:
        v45 = *v3;
        *(*v3 + 8 * (v20 >> 6) + 56) |= 1 << v20;
        *(*(v45 + 48) + 8 * v20) = v57;
        v46 = *(v45 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (!v47)
        {
          result = 0;
          *(v45 + 16) = v48;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v30)
  {
    goto LABEL_25;
  }

LABEL_28:
  v50 = *(*v3 + 48);
  result = *(v50 + 8 * v20);
  *(v50 + 8 * v20) = v57;
  return result;
}

BOOL specialized static RKARSystem.cameraUsageDescriptionInPlist.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = MEMORY[0x1E12F3F80](0xD000000000000018, 0x80000001E1259360);
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  outlined destroy of ARConfigurationCreateResult?(v5, &_sypSgMd);
  return v2 != 0;
}

double specialized RKARSystem.colorTemperatureToSRGB(_:)(float a1, double a2)
{
  v2 = fminf(fmaxf(a1, 1000.0), 30000.0);
  *&a2 = v2 * 0.01;
  if (v2 < 6600.0)
  {
    v7 = ((*&a2 + -2.0) * -0.44597) + -155.25;
    v8 = logf(*&a2 + -2.0);
    v6.i32[0] = 1132396544;
    v6.f32[1] = v7 + (v8 * 104.49);
    v6.i64[1] = 0;
  }

  else
  {
    v3 = vadd_f32(vdup_lane_s32(*&a2, 0), 0xC2480000C25C0000);
    v10 = v3.f32[0];
    v4 = vadd_f32(vmul_f32(v3, 0x3DA2AE973DE9E513), 0x43A2B98643AFFD0BLL);
    v11 = logf(v3.f32[1]);
    v5.f32[0] = logf(v10);
    v5.f32[1] = v11;
    *v6.f32 = vadd_f32(v4, vmul_f32(v5, 0xC1E0AEB0C22103C0));
  }

  if (v2 >= 2000.0 && v2 < 6600.0)
  {
    v12 = v6;
    logf((v2 * 0.01) + -10.0);
    v6 = v12;
  }

  *&result = vmulq_f32(v6, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

uint64_t specialized RKARSystem.updateAnchors(_:frame:)()
{
  v1 = v0;
  v90 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  if (v10 >> 62)
  {
LABEL_42:
    v65 = v10;
    result = __CocoaSet.count.getter();
    v10 = v65;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      v15 = 0;
      v82 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions;
      v76 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier;
      v67 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugProbesByAnchorIdentifier;
      v75 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugPlanesByAnchorIdentifier;
      v80 = v10;
      v81 = v10 & 0xC000000000000001;
      v77 = (v3 + 8);
      v69 = v2;
      v68 = v5;
      v74 = v8;
      v78 = v13;
      v79 = result;
      while (1)
      {
        if (v81)
        {
          v16 = MEMORY[0x1E12F44E0](v15, v11);
        }

        else
        {
          v16 = *(v10 + 8 * v15 + 32);
        }

        v17 = v16;
        if ((*(v1 + v82) & 8) != 0)
        {
          v18 = [v16 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v19 = v76;
          swift_beginAccess();
          if (*(*(v1 + v19) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v13), (v20 & 1) != 0))
          {
            swift_endAccess();
            v21 = *v77;

            v21(v13, v2);
            v8 = v74;
            [v17 transform];
            v73 = v22;
            v72 = v23;
            v71 = v24;
            v70 = v25;
            type metadata accessor for Entity();
            HasTransform.setTransformMatrix(_:relativeTo:)();
          }

          else
          {
            swift_endAccess();
            (*v77)(v13, v2);
          }
        }

        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (!v26)
        {
          break;
        }

        if ((*(v1 + v82) & 0x10) != 0)
        {
          v27 = v26;
          v28 = v17;
          v29 = [v27 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = v75;
          swift_beginAccess();
          v31 = *(v1 + v30);
          if (*(v31 + 16))
          {
            v32 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            if (v33)
            {
              v34 = *(*(v31 + 56) + 8 * v32);
              swift_endAccess();
              v5 = *v77;

              v5(v8, v2);
              [v27 transform];
              v73 = v35;
              v72 = v36;
              v71 = v37;
              v70 = v38;
              v2 = type metadata accessor for ModelEntity();
              v8 = v34;
              HasTransform.setTransformMatrix(_:relativeTo:)();
              v13 = [v27 geometry];
              v3 = v13;
              if (*(ARPlaneGeometry.vertices.getter() + 16) > 0xFFuLL)
              {
                __break(1u);
                goto LABEL_42;
              }

              *&v73 = v28;
              v39 = REGeomMeshCreateFromPolygon();

              if (!v39)
              {
                goto LABEL_36;
              }

              v83 = v39;
              type metadata accessor for __ServiceLocator();
              static __ServiceLocator.shared.getter();
              dispatch thunk of __ServiceLocator.assetService.getter();

              v40 = v88;
              v41 = v89;
              __swift_project_boxed_opaque_existential_1(&v84, v88);
              (*(v41 + 32))(v40, v41);
              __swift_destroy_boxed_opaque_existential_1(&v84);
              if (!REAssetManagerMeshMemoryAssetCreate())
              {
                RERelease();
LABEL_36:

LABEL_37:
                v2 = v69;
                v8 = v74;
                goto LABEL_6;
              }

              type metadata accessor for MeshResource();
              swift_allocObject();
              MeshResource.init(_:)();
              RERelease();
              RERelease();

              v42 = HasModel.model.modify();
              v44 = v43;
              v45 = type metadata accessor for ModelComponent();
              if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
              {

                ModelComponent.mesh.setter();
              }

              v42(&v84, 0);

LABEL_33:
              v2 = v69;
              v8 = v74;
              goto LABEL_6;
            }
          }

          swift_endAccess();

          (*v77)(v8, v2);
        }

LABEL_6:
        ++v15;
        RKARSystem.updateFaceGeometry(for:)(v17);

        v13 = v78;
        v10 = v80;
        if (v79 == v15)
        {
          return RKARSystem.updateBodyTracking(with:)(v80);
        }
      }

      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (!v46 || (*(v1 + v82) & 0x10) == 0)
      {
        goto LABEL_6;
      }

      v47 = v46;
      v48 = v17;
      v49 = [v47 identifier];
      v50 = v68;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = v67;
      swift_beginAccess();
      if (!*(*(v1 + v51) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v50), (v52 & 1) == 0))
      {
        swift_endAccess();

        v2 = v69;
        (*v77)(v50, v69);
        goto LABEL_6;
      }

      swift_endAccess();
      v53 = *v77;

      v53(v50, v69);
      [v47 transform];
      v73 = v54;
      v72 = v55;
      v71 = v56;
      v70 = v57;
      type metadata accessor for ModelEntity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
      [v47 extent];
      v73 = v58;
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.assetService.getter();

      v59 = v88;
      v60 = v89;
      __swift_project_boxed_opaque_existential_1(&v84, v88);
      (*(v60 + 32))(v59, v60);
      __swift_destroy_boxed_opaque_existential_1(&v84);
      v84 = 0x1000100010001;
      v85 = 0;
      v86 = v73;
      v87 = DWORD2(v73);
      LOWORD(v88) = 257;
      BYTE2(v88) = 1;
      if (!REAssetManagerMeshMemoryAssetCreateBox())
      {

        goto LABEL_37;
      }

      type metadata accessor for MeshResource();
      swift_allocObject();
      MeshResource.init(_:)();
      v61 = HasModel.model.modify();
      v63 = v62;
      v64 = type metadata accessor for ModelComponent();
      if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
      {

        ModelComponent.mesh.setter();
      }

      v61(&v84, 0);

      goto LABEL_33;
    }
  }

  return result;
}

void specialized RKARSystem.updateAR(engine:viewportSize:timeDelta:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8ARAnchorCtMd);
  v220 = *(v8 - 8);
  v221 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v218 = v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v219 = v211 - v11;
  v12 = type metadata accessor for __AssetRef();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSSignpostID();
  MEMORY[0x1EEE9AC00](v16 - 8);
  static __REOSLog.UpdateLoop.getter();
  static __RESignpostID.UpdateLoop.getter();
  type metadata accessor for __REOSSignpostScope();
  swift_allocObject();
  __REOSSignpostScope.init(osLog:signpostID:name:)();

  v17 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
  v18 = [*(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) currentFrame];
  if (v18)
  {
    v19 = v18;
    v20 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v216 = a1;
      v217.i64[0] = v20;

      v22 = OBJC_IVAR____TtC10RealityKit10RKARSystem_lastARFrameTimeStamp;
      if (*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_lastARFrameTimeStamp) <= 0.0 || ([v19 timestamp], v23 != *(v4 + v22)))
      {
LABEL_21:
        v40 = v19;
        [v40 timestamp];
        *(v4 + v22) = v41;
        v42 = RKARSystem.orientation.getter();
        v43 = v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_capturedFrame;
        v44 = *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_capturedFrame);
        v215.super.isa = v40;
        *v43 = v40;
        *(v43 + 8) = v42;
        *(v43 + 16) = a2;
        *(v43 + 24) = a3;

        dispatch thunk of __RERenderGraphEmitter.__handle.getter();

        __AssetRef.__as<A>(_:)();
        (*(v13 + 8))(v15, v12);
        RERenderGraphEmitterAssetSetRuntimeSettingUInt32();
        v45 = [*(v4 + v17) configuration];
        if (v45)
        {
          v46 = v45;
          v47 = ~[v45 frameSemantics] & 3;
          v48 = [v46 frameSemantics];

          v213.i32[0] = v48 & 1;
          if (v47)
          {
            v50 = 0;
          }

          else
          {
            v49 = *(*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 56);
            if (v49 && CVMetalTextureGetTexture(v49))
            {
              swift_unknownObjectRelease();
              v50 = 1;
            }

            else
            {
              v50 = 0;
              v213.i32[0] = 1;
            }
          }
        }

        else
        {
          v213.i32[0] = 0;
          v50 = 0;
        }

        v53 = swift_unknownObjectWeakLoadStrong();
        if (!v53)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v54 = v53;
        v214.i32[0] = v50;
        v55 = OBJC_IVAR____TtC10RealityKit6ARView___disableComposition;
        swift_beginAccess();
        LODWORD(v56) = v54[v55];

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v56 ^ 1;
          v59 = v57 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
          v60 = v57;
          swift_beginAccess();
          v61 = *(v59 + 16);
          v62 = *(v59 + 24);
          outlined copy of ARView.Environment.Background.Value(v61, v62);

          if (!v62)
          {
            goto LABEL_38;
          }

          if (v62 == 1)
          {
            outlined consume of ARView.Environment.Background.Value(v61, 1);
            v58 &= v214.i8[0] | v213.i8[0];
            goto LABEL_38;
          }

          outlined consume of ARView.Environment.Background.Value(v61, 2);
        }

        v58 = 0;
LABEL_38:
        v63 = OBJC_IVAR____TtC10RealityKit10RKARSystem_shouldRenderCameraFeed;
        *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_shouldRenderCameraFeed) = v58;
        v212.i64[0] = OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions;
        if ((*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions) & 0x20) != 0)
        {
          v64 = &OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedRenderGraph;
        }

        else
        {
          v64 = &OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___postProcessingCombinedHDRRenderGraph;
        }

        RKARSystem.cameraRenderGraph.getter(v64);
        RERenderGraphAssetSetRuntimeNodeSettingBool();
        v65 = *(v4 + v63);
        v66 = &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration;
        v216 = v4;
        if (v65 != 1)
        {
LABEL_53:
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

          if (!RFGetSceneUnderstandingServiceFromRE())
          {
            goto LABEL_59;
          }

          static __ServiceLocator.shared.getter();
          v96 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

          if (!MEMORY[0x1E12F5420](v96))
          {
            goto LABEL_59;
          }

          IsDepthFeatheringEnabled = RFSceneUnderstandingServiceIsDepthFeatheringEnabled();
          RESceneUnderstandingServiceIsGuidedFilterOcclusionEnabled();
          v98 = swift_unknownObjectWeakLoadStrong();
          if (!v98)
          {
            if (!IsDepthFeatheringEnabled)
            {
              goto LABEL_59;
            }

LABEL_70:
            if (one-time initialization token for __useARQuickLookFeatheringSettings != -1)
            {
              goto LABEL_152;
            }

            while (1)
            {
LABEL_59:
              v217.i32[0] = v56;
              v101 = v216;
              v102 = (v216 + OBJC_IVAR____TtC10RealityKit10RKARSystem_suDepthFeatheringMaterial);
              swift_beginAccess();
              v103 = v102[3];
              if (!v103)
              {
                goto LABEL_154;
              }

              v104 = v102[4];
              v105 = __swift_project_boxed_opaque_existential_1(v102, v102[3]);
              v106 = *(v103 - 8);
              v107 = MEMORY[0x1EEE9AC00](v105);
              v109 = v211 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v106 + 16))(v109, v107);
              (*(v104 + 8))(v103, v104);
              (*(v106 + 8))(v109, v103);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              REMaterialAssetSetFloat();
              v110 = (v101 + v66[311]);
              swift_beginAccess();
              v111 = v110[3];
              if (!v111)
              {
                goto LABEL_155;
              }

              v112 = v110[4];
              v113 = __swift_project_boxed_opaque_existential_1(v110, v110[3]);
              v114 = *(v111 - 8);
              v115 = MEMORY[0x1EEE9AC00](v113);
              v117 = v211 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v114 + 16))(v117, v115);
              (*(v112 + 8))(v111, v112);
              (*(v114 + 8))(v117, v111);
              dispatch thunk of __MaterialResource.coreAsset.getter();

              REMaterialAssetSetFloat();
              RKARSystem.updateGuidedFilterOcclusion(viewportSize:)(__PAIR128__(*&a3, *&a2));
              v118 = *(v101 + v212.i64[0]);
              RKARSystem.cameraRenderGraph.getter(&OBJC_IVAR____TtC10RealityKit10RKARSystem____lazy_storage___cameraRenderGraph);
              if ((v118 & 0x80) != 0 || ((v214.i32[0] | v213.i32[0]) & 1) == 0)
              {
                break;
              }

              RERenderGraphAssetSetRuntimeNodeSettingBool();
              RERenderGraphAssetSetRuntimeNodeSettingBool();
              RERenderGraphAssetSetRuntimeNodeSettingBool();
              RERenderGraphAssetSetRuntimeNodeSettingBool();
              RERenderGraphAssetSetRuntimeNodeSettingBool();
              v119 = (v101 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraSegmentationCompositeMaterial);
              swift_beginAccess();
              v120 = v119[3];
              if (v120)
              {
                v121 = v119[4];
                v122 = __swift_project_boxed_opaque_existential_1(v119, v119[3]);
                v123 = *(v120 - 8);
                v124 = MEMORY[0x1EEE9AC00](v122);
                v126 = v211 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v123 + 16))(v126, v124);
                (*(v121 + 8))(v120, v121);
                (*(v123 + 8))(v126, v120);
                dispatch thunk of __MaterialResource.coreAsset.getter();

                REMaterialAssetSetFloat4x4F();
              }

              if (RKARSystem.camera.getter())
              {
                v127 = dispatch thunk of Entity.components.modify();
                v128 = type metadata accessor for RKARSegmentationComponent();
                v129 = Entity.ComponentSet.subscript.modify();
                if ((*(*(v128 - 8) + 48))(v130, 1, v128))
                {
                  v129(v225, 0);
                  v127(v222, 0);
                  v101 = v216;
                }

                else
                {
                  v101 = v216;
                  v131 = *(*(v216 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 48);
                  if (v131)
                  {
                    v132 = CVMetalTextureGetTexture(v131);
                  }

                  RKARSegmentationComponent.segmentationBuffer.setter();
                  v129(v225, 0);
                  v127(v222, 0);
                }
              }

              v133 = RKARSystem.camera.getter();
              isa = v215.super.isa;
              if (v133)
              {
                v135 = dispatch thunk of Entity.components.modify();
                v136 = type metadata accessor for RKARSegmentationComponent();
                v137 = Entity.ComponentSet.subscript.modify();
                if ((*(*(v136 - 8) + 48))(v138, 1, v136))
                {
                  v137(v225, 0);
                  v135(v222, 0);
                  v101 = v216;
                }

                else
                {
                  v101 = v216;
                  v139 = *(*(v216 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 56);
                  if (v139)
                  {
                    v140 = CVMetalTextureGetTexture(v139);
                  }

                  RKARSegmentationComponent.estimatedDepthData.setter();
                  v137(v225, 0);
                  v135(v222, 0);
                }

                isa = v215.super.isa;
              }

              if (RKARSystem.camera.getter())
              {
                v141 = dispatch thunk of Entity.components.modify();
                v142 = type metadata accessor for RKARSegmentationComponent();
                v143 = Entity.ComponentSet.subscript.modify();
                if ((*(*(v142 - 8) + 48))(v144, 1, v142))
                {
                  v143(v225, 0);
                  v141(v222, 0);
                  v101 = v216;
                }

                else
                {
                  v101 = v216;
                  v145 = *(v216 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
                  v146 = *(v145 + 32);
                  if (v146)
                  {
                    v147 = *(v145 + 40);
                    v148 = v146;
                    v149 = v147;
                    if (CVMetalTextureGetTexture(v148))
                    {
                      CVMetalTextureGetTexture(v149);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }

                    v101 = v216;
                  }

                  RKARSegmentationComponent.cameraTextureY.setter();
                  v143(v225, 0);
                  v141(v222, 0);
                }

                isa = v215.super.isa;
              }

              if (RKARSystem.camera.getter())
              {
                v150 = dispatch thunk of Entity.components.modify();
                v151 = type metadata accessor for RKARSegmentationComponent();
                v152 = Entity.ComponentSet.subscript.modify();
                if ((*(*(v151 - 8) + 48))(v153, 1, v151))
                {
                  v152(v225, 0);
                  v150(v222, 0);

                  v101 = v216;
                }

                else
                {
                  v101 = v216;
                  v154 = *(v216 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
                  v155 = *(v154 + 32);
                  if (v155)
                  {
                    v156 = *(v154 + 40);
                    v157 = v155;
                    v158 = v156;
                    if (CVMetalTextureGetTexture(v157))
                    {
                      CVMetalTextureGetTexture(v158);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }

                    v101 = v216;
                  }

                  RKARSegmentationComponent.cameraTextureCbCr.setter();
                  v152(v225, 0);
                  v150(v222, 0);
                }

                goto LABEL_105;
              }

LABEL_106:
              if ((v217.i8[0] & 1) == 0)
              {
                v159 = v110[3];
                if (!v159)
                {
                  goto LABEL_158;
                }

                v160 = v110[4];
                v161 = __swift_project_boxed_opaque_existential_1(v110, v110[3]);
                v162 = *(v159 - 8);
                v163 = MEMORY[0x1EEE9AC00](v161);
                v165 = v211 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v162 + 16))(v165, v163);
                (*(v160 + 8))(v159, v160);
                (*(v162 + 8))(v165, v159);
                dispatch thunk of __MaterialResource.coreAsset.getter();

                REMaterialAssetSetFloat();
                isa = v215.super.isa;
              }

              if (*(v101 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraWorldMatrixFromARFrame) == 1)
              {
                v166 = [(objc_class *)isa camera];
                [v166 viewMatrixForOrientation_];
                v217 = v167;
                v213 = v169;
                v214 = v168;
                v212 = v170;

                if (RKARSystem.camera.getter())
                {
                  v227.columns[0] = v217;
                  v227.columns[2] = v213;
                  v227.columns[1] = v214;
                  v227.columns[3] = v212;
                  v228 = __invert_f4(v227);
                  v217 = v228.columns[0];
                  v213 = v228.columns[2];
                  v214 = v228.columns[1];
                  v212 = v228.columns[3];
                  type metadata accessor for Entity();
                  HasTransform.setTransformMatrix(_:relativeTo:)();
                }
              }

              if (*(v101 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraProjectionMatrixFromARFrame) == 1)
              {
                RKARSystem.updateCameraProjectionMatrix(from:viewportSize:)(isa, a2, a3);
              }

              RKARSystem.updateLighting(_:)(isa);
              v171 = OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore;
              v172 = *(v101 + OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore);
              OS_dispatch_semaphore.wait()();

              v173 = OBJC_IVAR____TtC10RealityKit10RKARSystem_removedAnchors;
              swift_beginAccess();

              v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVG_So0H0Cs5NeverOTg504_s10d5Kit10f72C8updateAR6engine12viewportSize9timeDeltayAA8__EngineC_So6CGSizeVSdtFSo8h5CAC08g6M033_7ijklmnO8LLVXEfU_Tf1cn_nTm(v174);

              v175 = OBJC_IVAR____TtC10RealityKit10RKARSystem_addedAnchors;
              swift_beginAccess();

              v177 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVG_So0H0Cs5NeverOTg504_s10d5Kit10f72C8updateAR6engine12viewportSize9timeDeltayAA8__EngineC_So6CGSizeVSdtFSo8h5CAC08g6M033_7ijklmnO8LLVXEfU_Tf1cn_nTm(v176);

              v56 = OBJC_IVAR____TtC10RealityKit10RKARSystem_updatedAnchors;
              swift_beginAccess();

              v179 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10RealityKit10RKARSystemC16HashableARAnchor33_7C42569567E429B6AB2725E2C535D529LLVG_So0H0Cs5NeverOTg504_s10d5Kit10f72C8updateAR6engine12viewportSize9timeDeltayAA8__EngineC_So6CGSizeVSdtFSo8h5CAC08g6M033_7ijklmnO8LLVXEfU_Tf1cn_nTm(v178);
              v214.i64[0] = 0;

              v180 = MEMORY[0x1E69E7CD0];
              *(v216 + v173) = MEMORY[0x1E69E7CD0];

              *(v216 + v175) = v180;
              v181 = v216;

              *(v181 + v56) = v180;

              v182 = *(v181 + v171);
              OS_dispatch_semaphore.signal()();

              v217.i64[0] = v66;
              RKARSystem.removeAnchors(_:)(v66);
              RKARSystem.addAnchors(_:)(v177);

              specialized RKARSystem.updateAnchors(_:frame:)();
              if (v179 >> 62)
              {
                v183 = __CocoaSet.count.getter();
              }

              else
              {
                v183 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v184 = MEMORY[0x1E69E7CC0];
              if (v183)
              {
                v226 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v183 & ~(v183 >> 63), 0);
                if (v183 < 0)
                {
                  __break(1u);
                  goto LABEL_151;
                }

                v185 = 0;
                v186 = v226;
                do
                {
                  if ((v179 & 0xC000000000000001) != 0)
                  {
                    v187 = MEMORY[0x1E12F44E0](v185, v179);
                  }

                  else
                  {
                    v187 = *(v179 + 8 * v185 + 32);
                  }

                  v188 = v187;
                  v189 = *(v221 + 48);
                  v190 = [v187 identifier];
                  v191 = v219;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  *(v191 + v189) = v188;
                  v226 = v186;
                  v193 = *(v186 + 16);
                  v192 = *(v186 + 24);
                  v66 = (v193 + 1);
                  if (v193 >= v192 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v192 > 1, v193 + 1, 1);
                    v191 = v219;
                    v186 = v226;
                  }

                  ++v185;
                  *(v186 + 16) = v66;
                  outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v191, v186 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v193, &_s10Foundation4UUIDV_So8ARAnchorCtMd);
                }

                while (v183 != v185);

                v184 = MEMORY[0x1E69E7CC0];
              }

              else
              {

                v186 = MEMORY[0x1E69E7CC0];
              }

              v56 = v217.i64[0];
              if (*(v186 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8ARAnchorCGMd);
                v194 = static _DictionaryStorage.allocate(capacity:)();
              }

              else
              {
                v194 = MEMORY[0x1E69E7CC8];
              }

              v226 = v194;

              v196 = v214.i64[0];
              specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v195, 1, &v226);
              if (v196)
              {
                goto LABEL_160;
              }

              if (v56 >> 62)
              {
                v197 = __CocoaSet.count.getter();
                if (!v197)
                {
LABEL_145:

                  if (!*(MEMORY[0x1E69E7CC0] + 16))
                  {
                    goto LABEL_146;
                  }

LABEL_142:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo8ARAnchorCGMd);
                  v209 = static _DictionaryStorage.allocate(capacity:)();
LABEL_147:
                  v226 = v209;

                  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v210, 1, &v226);
                  if (v196)
                  {
                    goto LABEL_160;
                  }

                  v52 = v215.super.isa;
                  RKARSystem.updateDepthOfField(for:)(v215.super.isa);
                  RKARSystem.updateMotionBlur(for:)(v52);
                  RKARSystem.updateCameraNoise(for:)(v52);
                  RKARSystem.updateFeaturePointDebugVisualization(for:)(v52);
                  RKARSystem.updateCollaborationState()();
                  RKARSystem.updateSceneUnderstandingOptions()();
                  goto LABEL_149;
                }
              }

              else
              {
                v197 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v197)
                {
                  goto LABEL_145;
                }
              }

              v219 = 0;
              v226 = v184;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v197 & ~(v197 >> 63), 0);
              if ((v197 & 0x8000000000000000) == 0)
              {
                v198 = 0;
                v199 = v226;
                v200 = v56;
                v201 = v56 & 0xC000000000000001;
                do
                {
                  if (v201)
                  {
                    v202 = MEMORY[0x1E12F44E0](v198, v200);
                  }

                  else
                  {
                    v202 = *(v200 + 8 * v198 + 32);
                  }

                  v203 = v202;
                  v204 = *(v221 + 48);
                  v205 = [v202 identifier];
                  v206 = v218;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  *(v206 + v204) = v203;
                  v226 = v199;
                  v208 = *(v199 + 16);
                  v207 = *(v199 + 24);
                  if (v208 >= v207 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v207 > 1, v208 + 1, 1);
                    v206 = v218;
                    v199 = v226;
                  }

                  ++v198;
                  *(v199 + 16) = v208 + 1;
                  outlined init with take of (scene: Scene, ray: RERay, continuation: CheckedContinuation<PixelCastHit?, Error>)(v206, v199 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v208, &_s10Foundation4UUIDV_So8ARAnchorCtMd);
                  v200 = v217.i64[0];
                }

                while (v197 != v198);

                v196 = v219;
                if (*(v199 + 16))
                {
                  goto LABEL_142;
                }

LABEL_146:
                v209 = MEMORY[0x1E69E7CC8];
                goto LABEL_147;
              }

LABEL_151:
              __break(1u);
LABEL_152:
              swift_once();
            }

            RERenderGraphAssetSetRuntimeNodeSettingBool();
            RERenderGraphAssetSetRuntimeNodeSettingBool();
            RERenderGraphAssetSetRuntimeNodeSettingBool();
            RERenderGraphAssetSetRuntimeNodeSettingBool();
            RERenderGraphAssetSetRuntimeNodeSettingBool();
LABEL_105:
            isa = v215.super.isa;
            goto LABEL_106;
          }

          v99 = *&v98[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
          if (v99)
          {
            v100 = *(v99 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions);

            if (!IsDepthFeatheringEnabled || (v100 & 0x40) != 0)
            {
              goto LABEL_59;
            }

            goto LABEL_70;
          }

          goto LABEL_159;
        }

        if (dispatch thunk of __Engine.services.getter())
        {
          dispatch thunk of __ServiceLocator.renderService.getter();

          v67 = v223;
          v68 = v224;
          __swift_project_boxed_opaque_existential_1(v222, v223);
          (*(v68 + 24))(v67, v68);
          v211[1] = RERenderManagerGetCameraStreamManager();
          v69 = *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
          RKARTextureCache.extractTextures(from:)(v215);
          v70 = RKARSystem.orientation.getter();
          *&v71 = ARFrame.displayToCameraMatrix(for:viewportSize:)(v70);
          v72 = (v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_displayToCameraMatrix);
          *v72 = v71;
          v72[1] = v73;
          v72[2] = v74;
          v72[3] = v75;
          exp2f(*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent));
          v76 = (v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraPassthroughMaterial);
          swift_beginAccess();
          v77 = v76[3];
          if (v77)
          {
            v78 = v76[4];
            v79 = __swift_project_boxed_opaque_existential_1(v76, v76[3]);
            v80 = *(v77 - 8);
            v81 = MEMORY[0x1EEE9AC00](v79);
            v83 = v211 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v80 + 16))(v83, v81);
            (*(v78 + 8))(v77, v78);
            (*(v80 + 8))(v83, v77);
            dispatch thunk of __MaterialResource.coreAsset.getter();

            REMaterialAssetSetFloat();
            v84 = *(v69 + 32);
            if (v84)
            {
              v85 = *(v69 + 40);
              v86 = v84;
              v87 = v85;
              if (CVMetalTextureGetTexture(v86))
              {
                v88 = CVMetalTextureGetTexture(v87);

                if (v88)
                {
                  v89 = v76[3];
                  if (v89)
                  {
                    v90 = v76[4];
                    v91 = __swift_project_boxed_opaque_existential_1(v76, v76[3]);
                    v92 = *(v89 - 8);
                    v93 = MEMORY[0x1EEE9AC00](v91);
                    v95 = v211 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v92 + 16))(v95, v93);
                    (*(v90 + 8))(v89, v90);
                    (*(v92 + 8))(v95, v89);
                    dispatch thunk of __MaterialResource.coreAsset.getter();

                    RECameraStreamManagerSetARKitPassthrough();
                    REMaterialAssetSetTexture();
                    REMaterialAssetSetTexture();
                    REMaterialAssetSetFloat4x4F();
                  }

                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            __swift_destroy_boxed_opaque_existential_1(v222);
            v66 = &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration;
            goto LABEL_53;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          swift_unexpectedError();
          __break(1u);
          return;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      usleep(0x1F4u);
      v24 = [*(v4 + v17) currentFrame];
      if (v24)
      {
        v25 = v24;
        [v24 timestamp];
        if (v26 != *(v4 + v22))
        {
          goto LABEL_19;
        }

        [v19 timestamp];
        if (v27 != *(v4 + v22))
        {
          goto LABEL_21;
        }

        usleep(0x1F4u);
        v28 = [*(v4 + v17) currentFrame];
        if (v28)
        {
          v25 = v28;
          [v28 timestamp];
          if (v29 != *(v4 + v22))
          {
            goto LABEL_19;
          }

          [v19 timestamp];
          if (v30 != *(v4 + v22))
          {
            goto LABEL_21;
          }

          usleep(0x1F4u);
          v31 = [*(v4 + v17) currentFrame];
          if (v31)
          {
            v25 = v31;
            [v31 timestamp];
            if (v32 != *(v4 + v22))
            {
              goto LABEL_19;
            }

            [v19 timestamp];
            if (v33 != *(v4 + v22))
            {
              goto LABEL_21;
            }

            usleep(0x1F4u);
            v34 = [*(v4 + v17) currentFrame];
            if (v34)
            {
              v25 = v34;
              [v34 timestamp];
              if (v35 != *(v4 + v22))
              {
                goto LABEL_19;
              }

              [v19 timestamp];
              if (v36 != *(v4 + v22))
              {
                goto LABEL_21;
              }

              usleep(0x1F4u);
              v37 = [*(v4 + v17) currentFrame];
              if (v37)
              {
                v25 = v37;
                [v37 timestamp];
                if (v38 == *(v4 + v22))
                {
LABEL_20:

                  goto LABEL_21;
                }

LABEL_19:
                v39 = v25;
                v25 = v19;
                v19 = v39;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v51 = (v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_capturedFrame);
  v52 = *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_capturedFrame);
  *v51 = 0u;
  v51[1] = 0u;
LABEL_149:
}