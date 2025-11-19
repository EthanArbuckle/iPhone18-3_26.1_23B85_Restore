void *protocol witness for RawRepresentable.init(rawValue:) in conformance ARView.EntityGestures@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for RKARSystem.HitTestScreenPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RKARSystem.HitTestScreenPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E11CF0CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E11CF104()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11CF140(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E11CF164()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11CF19C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E11CF204()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E11CF23C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11CF274()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_1E11CF2D4@<D0>(_OWORD *a1@<X8>)
{
  ARView.renderCallbacks.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So9MTLDevice_pIegg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E11CF340@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E11CF3BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E11CF420()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E11CF460()
{
  MEMORY[0x1E12F6220](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1E11CF4C8(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = *a1;
  v3 = v2;
  ARView.Environment.SceneUnderstanding.options.didset(&v3);
}

double sub_1E11CF53C@<D0>(uint64_t a1@<X8>)
{
  ParticleEmitterComponent.ParticleEmitter.color.getter(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

double sub_1E11CF58C@<D0>(_OWORD *a1@<X8>)
{
  ParticleEmitterComponent.timing.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_1E11CF610@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void *sub_1E11CF6E4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a2 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1E11CF750@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a2 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1E11CF784(_BYTE *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality) = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E11CF7D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Entity();
  result = HasHierarchy.parent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E11CF810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SpatialTrackingSession.Configuration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E11CF8BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SpatialTrackingSession.Configuration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E11CF9AC@<X0>(uint64_t *a1@<X8>)
{
  result = AccessibilityComponent.traitsRawValue.getter();
  *a1 = result;
  return result;
}

void *sub_1E11CFA00@<X0>(void *a1@<X8>)
{
  result = AccessibilityComponent.customRotors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E11CFD50@<X0>(uint64_t *a1@<X8>)
{
  result = GroupActivitiesSynchronizationService.entities.getter();
  *a1 = result;
  return result;
}

__n128 sub_1E11CFDB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E11CFDC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11CFDF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E11CFEDC()
{
  MEMORY[0x1E12F6220](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11CFF14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1E11CFF98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E11CFFF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void *sub_1E11D0060@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a2 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions);
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_1E11D011C@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_1E11D0170(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

uint64_t sub_1E11D01FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1E11D0258(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t sub_1E11D03A4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E11D0434()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E11D047C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E11D04B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11D04F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11D0528()
{
  v1 = type metadata accessor for Participant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E11D05FC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[18];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy17RealityFoundation12PixelCastHitVSgs5Error_pGMd);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E11D073C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E11D0774()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E11D07AC()
{
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E11D0848()
{
  v1 = *(type metadata accessor for AccessibilityComponent.RotorType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LocalizedStringResource();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E11D0940()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E11D0978()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1E11D0C4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  *a2 = result;
  return result;
}

uint64_t sub_1E11D0CE0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  result = swift_beginAccess();
  *a2 = *(v3 + 2);
  return result;
}

uint64_t sub_1E11D0D38(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  result = swift_beginAccess();
  *(v3 + 2) = v2;
  return result;
}

_DWORD *sub_1E11D0D98(_DWORD *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent) = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1E11D0DCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = *(*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 16);
    *a2 = v3;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1E11D0E6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor);
    *a2 = v3;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in static ARKitRunner.runSession(_:configuration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_continuation;
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v10, a2 + v13);
  swift_endAccess();
  return [a3 runWithConfiguration:a4 options:0];
}

id ARKitRunner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARKitRunner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in ARSessionManager.configure(withRFServiceManager:onReferencesChanged:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a1;
  }

  return a3(Strong);
}

uint64_t closure #2 in ARSessionManager.configure(withRFServiceManager:onReferencesChanged:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = a1;
  }

  return a3(Strong);
}

uint64_t ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SpatialTrackingSession.Configuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:), v14);
}

uint64_t closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:);

  return ARSessionManager.runARKitSession(withSupportedCapabilities:)(a1, a5);
}

uint64_t closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of ARConfigurationCreateResult?(a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ARConfigurationCreateResult?(a3, &_sScPSgMd);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of ARConfigurationCreateResult?(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ARConfigurationCreateResult?(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t key path getter for ARSessionManager.isRunningUserProvidedARSession : ARSessionManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t key path setter for ARSessionManager.isRunningUserProvidedARSession : ARSessionManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t ARSessionManager.isRunningUserProvidedARSession.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t ARSessionManager.__allocating_init(arView:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  v3 = a1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  swift_beginAccess();
  *(v3 + 2) = 0;
  return v2;
}

uint64_t ARSessionManager.init(arView:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  v2 = a1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  swift_beginAccess();
  *(v2 + 2) = 0;
  return v1;
}

uint64_t ARSessionManager.getSupportedCapabilities(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27ARConfigurationCreateResultVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ARConfigurationCreateResult();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  createARConfiguration(requestedConfiguration:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v7, &_s10RealityKit27ARConfigurationCreateResultVSgMd);
    SpatialTrackingSession.Configuration.camera.getter();
    return SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  }

  else
  {
    outlined init with take of ARConfigurationCreateResult(v7, v11);
    v13 = *(v8 + 20);
    v14 = type metadata accessor for SpatialTrackingSession.Configuration();
    (*(*(v14 - 8) + 16))(a2, &v11[v13], v14);
    return outlined destroy of ARConfigurationCreateResult(v11);
  }
}

uint64_t ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ARSessionManager.configureViewUsingSession(_:supportedCapabilities:), 0, 0);
}

uint64_t ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.configureViewUsingSession(_:supportedCapabilities:), v2, v1);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  closure #1 in ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(v1, v2);

  return MEMORY[0x1EEE6DFA0](ARSessionManager.configureViewUsingSession(_:supportedCapabilities:), 0, 0);
}

{
  return (*(v0 + 8))();
}

void closure #1 in ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v11 = *(a1 + 16);
  v12 = [v11 session];
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARSession);
  LOBYTE(a1) = static NSObject.== infix(_:_:)();

  v13 = v11;
  if ((a1 & 1) == 0)
  {
    [v11 setSession_];
  }

  v14 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
  v15 = specialized Set.contains(_:)(v10, v14);

  v16 = *(v8 + 8);
  v16(v10, v7);
  v43 = v13;
  v17 = &v13[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
  swift_beginAccess();
  *v17 = v15 & 1;
  if ((v15 & 1) == 0)
  {
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *(v17 + 4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo16ARReferenceImageCGTt0g5Tf4g_n(v18);

    *(v40 + 24) = 0;
  }

  v19 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
  v20 = specialized Set.contains(_:)(v10, v19);

  v16(v10, v7);
  v17[1] = v20 & 1;
  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E69E7CC0];
    *(v17 + 3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *(v17 + 5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySo17ARReferenceObjectCGTt0g5Tf4g_n(v21);

    *(v40 + 32) = 0;
  }

  v22 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
  v23 = specialized Set.contains(_:)(v6, v22);

  v24 = v42;
  v25 = *(v41 + 8);
  v25(v6, v42);
  v26 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
  v27 = specialized Set.contains(_:)(v6, v26);

  v25(v6, v24);
  if (v27)
  {
    v28 = v23 & 1 | 2;
  }

  else
  {
    v28 = v23 & 1;
  }

  v29 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
  v30 = specialized Set.contains(_:)(v6, v29);

  v25(v6, v24);
  if (v30)
  {
    v28 |= 4u;
  }

  v31 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
  v32 = specialized Set.contains(_:)(v6, v31);

  v25(v6, v24);
  v33 = v28 | 0xC;
  if ((v32 & 1) == 0)
  {
    v33 = v28;
  }

  v34 = v33 | 0x80;
  v35 = &v43[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  swift_beginAccess();
  ARView.Environment.sceneUnderstanding.getter(&v44);
  v36 = v46;
  v46 = v34;
  v47 = v36;
  ARView.Environment.SceneUnderstanding.options.didset(&v47);
  v37 = v46;
  v38 = 0x100000000;
  if (!v45)
  {
    v38 = 0;
  }

  *v35 = v38 | v44;
  *(v35 + 2) = v37;
  swift_endAccess();
  ARView.updateEnvironment()();
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ARSessionManager.runARKitSession(withSupportedCapabilities:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27ARConfigurationCreateResultVSgMd);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

uint64_t ARSessionManager.runARKitSession(withSupportedCapabilities:)()
{
  v1 = v0[13];
  createARConfiguration(requestedConfiguration:)(v0[5], v1);
  v2 = type metadata accessor for ARConfigurationCreateResult();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[13];
  if (v3 == 1)
  {
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[4];
    outlined destroy of ARConfigurationCreateResult?(v4, &_s10RealityKit27ARConfigurationCreateResultVSgMd);
    SpatialTrackingSession.UnavailableCapabilities.init()();
    (*(v6 + 56))(v7, 0, 1, v5);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[6];
    v11 = *v4;
    v0[14] = *v4;
    v12 = v4;
    v13 = v11;
    outlined destroy of ARConfigurationCreateResult(v12);
    v0[15] = *(v10 + 16);
    v0[16] = type metadata accessor for MainActor();
    v0[17] = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), v15, v14);
  }
}

{
  v1 = *(v0 + 120);

  *(v0 + 144) = [v1 session];

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

{
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), v2, v1);
}

{
  v1 = *(v0 + 48);

  *(v0 + 160) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

{
  if (*(v0 + 160))
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    v5 = specialized Set.contains(_:)(v1, v4);

    (*(v2 + 8))(v1, v3);
    if (v5)
    {
      specialized static ARSessionManager.configureImageTracking(arConfiguration:arReferenceImages:)(*(v0 + 112), *(v0 + 160));
    }
  }

  *(v0 + 168) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), v7, v6);
}

{
  v1 = *(v0 + 48);

  *(v0 + 176) = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

{
  if (v0[22])
  {
    v2 = v0[11];
    v1 = v0[12];
    v3 = v0[10];
    v4 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    v5 = specialized Set.contains(_:)(v1, v4);

    (*(v2 + 8))(v1, v3);
    if ((v5 & 1) != 0 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = v6;
      v8 = v0[14];
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
      lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceObject and conformance NSObject, &lazy cache variable for type metadata for ARReferenceObject);
      v9 = v8;
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v7 setDetectionObjects_];
    }

    else
    {
    }
  }

  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = ARSessionManager.runARKitSession(withSupportedCapabilities:);
  v12 = v0[18];
  v13 = v0[14];

  return specialized static ARKitRunner.runSession(_:configuration:)(v12, v13);
}

{
  v1 = v0[24];
  if (v1)
  {
    SpatialTrackingSession.UnavailableCapabilities.init()();
    v0[2] = v1;
    type metadata accessor for related decl 'e' for ARErrorCode(0);
    lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);
    _BridgedStoredNSError.code.getter();
    if (v0[3] == 103)
    {
      SpatialTrackingSession.UnavailableCapabilities.internalCameraUnauthorized.setter();
      SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
      SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedAnchorCapabilities.setter();
      SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
      SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.setter();
    }

    else
    {
      SpatialTrackingSession.UnavailableCapabilities.internalCameraUnauthorized.setter();
      SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
      SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedAnchorCapabilities.setter();
      SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
      SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.setter();
    }

    v4 = v0[18];
    v5 = v0[14];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[4];

    (*(v7 + 32))(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v0[25] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), v3, v2);
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  closure #1 in ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(v2, v1);

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);

  (*(v3 + 56))(v4, 1, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t ARSessionManager.runARKitSession(withSupportedCapabilities:)(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](ARSessionManager.runARKitSession(withSupportedCapabilities:), 0, 0);
}

uint64_t ARSessionManager.stop()()
{
  v1[5] = v0;
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for SpatialTrackingSession.Configuration();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.stop(), 0, 0);
}

{
  v0[12] = *(v0[5] + 16);
  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.stop(), v2, v1);
}

{
  v1 = *(v0 + 96);

  *(v0 + 120) = [v1 session];

  return MEMORY[0x1EEE6DFA0](ARSessionManager.stop(), 0, 0);
}

{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E697A678], v0[6]);
  SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  v0[16] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ARSessionManager.stop(), v2, v1);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);

  closure #1 in ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(v2, v1);

  return MEMORY[0x1EEE6DFA0](ARSessionManager.stop(), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    [*(v0 + 120) pause];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ARSessionManager.deinit()
{

  return v0;
}

uint64_t ARSessionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager;

  return ARSessionManager.runARKitSession(withSupportedCapabilities:)(a1, a2);
}

uint64_t protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for ARKitRunnable.runARKitSessionWithoutRequesting(withSupportedCapabilities:) in conformance ARSessionManager(uint64_t a1)
{
  v3 = type metadata accessor for SpatialTrackingSession.Configuration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v10;
  (*(v4 + 32))(&v14[v13], v6, v3);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tt2g5(0, 0, v9, &closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)partial apply, v14);
}

uint64_t protocol witness for ARKitRunnable.stop() in conformance ARSessionManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return ARSessionManager.stop()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIAccessibilityTraits(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E12F4890](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIAccessibilityTraits(uint64_t a1, uint64_t a2)
{
  v3 = static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIAccessibilityTraits@<X0>(uint64_t *a1@<X8>)
{
  result = static UInt64._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance MTKTextureLoaderOption()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1E12F4050](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MTKTextureLoaderOption()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MTKTextureLoaderOption()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance MTKTextureLoaderOption(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance MTKTextureLoaderOption(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance MTKTextureLoaderOption@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1E12F3F80](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for ARErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for ARErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for ARErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for ARErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for ARErrorCode()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance RESyncPacketDeliveryMethodType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MTKTextureLoaderOption()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for ARErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for ARErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for ARErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for ARErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIAccessibilityTraits()
{
  lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits);
  lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MTKTextureLoaderOption@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1E12F3F80](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MTKTextureLoaderOption@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MTKTextureLoaderOption()
{
  lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);
  lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type MTKTextureLoaderOption and conformance MTKTextureLoaderOption, type metadata accessor for MTKTextureLoaderOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v4, &v13, &_sSS_yptMd);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void specialized ARKitRunner.session(_:didChange:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v16[0] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_lock);
  os_unfair_lock_lock(v12 + 4);
  v13 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_continuation;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v1 + v13, v7, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v7, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if ((a1 | 2) == 2)
    {
      type metadata accessor for related decl 'e' for ARErrorCode(0);
      v17 = 501;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
      lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);
      v14 = v1;
      _BridgedStoredNSError.init(_:userInfo:)();
      v17 = v16[1];
      CheckedContinuation.resume(returning:)();
      (*(v9 + 8))(v11, v8);
      v15 = v16[0];
      (*(v9 + 56))(v16[0], 1, 1, v8);
      swift_beginAccess();
      outlined assign with take of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v15, v14 + v13);
      swift_endAccess();
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }
  }

  os_unfair_lock_unlock(v12 + 4);
}

void specialized ARKitRunner.session(_:didUpdate:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_lock);
  os_unfair_lock_lock(v12 + 4);
  v13 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_continuation;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v1 + v13, v7, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v7, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14[0] = 0;
    CheckedContinuation.resume(returning:)();
    (*(v9 + 8))(v11, v8);
    (*(v9 + 56))(v5, 1, 1, v8);
    swift_beginAccess();
    outlined assign with take of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v5, v1 + v13);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v12 + 4);
}

void specialized ARKitRunner.session(_:didFailWithError:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v17 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_lock);
  os_unfair_lock_lock(v13 + 4);
  v14 = OBJC_IVAR____TtC10RealityKitP33_98DEB876138878DC696D4005FE1B9B4811ARKitRunner_continuation;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v2 + v14, v8, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v8, &_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    type metadata accessor for related decl 'e' for ARErrorCode(0);
    if (swift_dynamicCast())
    {
      v18 = v19;
    }

    else
    {
      v19 = 501;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
      lazy protocol witness table accessor for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for ARErrorCode and conformance related decl 'e' for ARErrorCode, type metadata accessor for related decl 'e' for ARErrorCode);
      _BridgedStoredNSError.init(_:userInfo:)();
      v19 = v18;
    }

    CheckedContinuation.resume(returning:)();
    (*(v10 + 8))(v12, v9);
    v16 = v17;
    (*(v10 + 56))(v17, 1, 1, v9);
    swift_beginAccess();
    outlined assign with take of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v16, v2 + v14);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v13 + 4);
}

uint64_t specialized static ARKitRunner.runSession(_:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](specialized static ARKitRunner.runSession(_:configuration:), 0, 0);
}

uint64_t specialized static ARKitRunner.runSession(_:configuration:)()
{
  v1 = type metadata accessor for ARKitRunner();
  v7 = *(v0 + 24);
  v2 = [objc_allocWithZone(v1) init];
  *(v0 + 40) = v2;
  [v7 _addObserver_];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSC11ARErrorCodeLeVSgMd);
  *v4 = v0;
  v4[1] = specialized static ARKitRunner.runSession(_:configuration:);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001E1256F60, partial apply for closure #1 in static ARKitRunner.runSession(_:configuration:), v3, v5);
}

{

  return MEMORY[0x1EEE6DFA0](specialized static ARKitRunner.runSession(_:configuration:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  [*(v0 + 24) _removeObserver_];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t specialized ARSessionManager.configure(withRFServiceManager:onReferencesChanged:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v9 = (v6 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents);
  swift_beginAccess();
  v10 = v9[8];
  v9[8] = partial apply for closure #1 in ARSessionManager.configure(withRFServiceManager:onReferencesChanged:);
  v9[9] = v8;

  sub_1E11CF140(v10);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v13 = v9[6];
  v9[6] = partial apply for closure #2 in ARSessionManager.configure(withRFServiceManager:onReferencesChanged:);
  v9[7] = v12;

  sub_1E11CF140(v13);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)(uint64_t a1)
{
  v4 = *(type metadata accessor for SpatialTrackingSession.Configuration() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return closure #1 in ARSessionManager.runARKitSessionWithoutRequesting(withSupportedCapabilities:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of ARConfigurationCreateResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARConfigurationCreateResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ARConfigurationCreateResult(uint64_t a1)
{
  v2 = type metadata accessor for ARConfigurationCreateResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ARReferenceObject(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized static ARSessionManager.configureImageTracking(arConfiguration:arReferenceImages:)(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
    lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceImage and conformance NSObject, &lazy cache variable for type metadata for ARReferenceImage);
    v6 = a1;
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v5 setDetectionImages_];

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(a2 + 16);
    }

    [v5 setMaximumNumberOfTrackedImages_];
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
    lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceImage and conformance NSObject, &lazy cache variable for type metadata for ARReferenceImage);
    v13 = a1;
    v11 = Set._bridgeToObjectiveC()().super.isa;
    [v10 setDetectionImages_];

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *(a2 + 16);
    }

    [v10 setMaximumNumberOfTrackedImages_];
  }
}

uint64_t type metadata accessor for ARKitRunner()
{
  result = type metadata singleton initialization cache for ARKitRunner;
  if (!type metadata singleton initialization cache for ARKitRunner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ARKitRunner()
{
  type metadata accessor for CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CheckedContinuation<related decl e for ARErrorCode?, Never>?()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ARSessionManager.runARKitSession(withSupportedCapabilities:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ARSessionManager.stop()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return v4();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_float4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_float4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UIEdgeInsets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIEdgeInsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type related decl e for ARErrorCode and conformance related decl e for ARErrorCode(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined assign with take of CheckedContinuation<related decl e for ARErrorCode?, Never>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySC11ARErrorCodeLeVSgs5NeverOGSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SpatialTrackingSession.Configuration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t outlined init with copy of CheckedContinuation<related decl e for ARErrorCode?, Never>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ARConfigurationCreateResult?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t type metadata accessor for ARReferenceObject(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5TA_79(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSg_Tg5(a1, v4);
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RERay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RERay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for related decl e for ARErrorCode(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t closure #1 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    RESyncParticipantGetAddress();
    v2 = String.init(cString:)();
    v4 = v3;
    v5 = *(*(v1 + 40) + 16);
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      goto LABEL_23;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v7)
    {
      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E12F44E0](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_18:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            v7 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v9 = *(v6 + 8 * v8 + 32);

          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_18;
          }
        }

        v11 = (*(v9 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_address);
        v12 = *v11 == v2 && v11[1] == v4;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          PeerID = RESyncParticipantGetPeerID();

          *(*(v9 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID) = PeerID;
        }

        ++v8;
      }

      while (v10 != v7);
    }
  }

  return result;
}

uint64_t closure #2 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  aBlock[4] = partial apply for closure #1 in closure #2 in GroupActivitiesSynchronizationSession.init(session:discoveryView:);
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_27;
  v4 = _Block_copy(aBlock);

  RESyncViewEnumerateObjects();

  _Block_release(v4);
  swift_beginAccess();
  v5 = *(v2 + 16);

  return v5;
}

uint64_t closure #1 in closure #2 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (RENetGetEntityFromSyncObject() && (REEntityIsNonHiddenAndInHierarchy() & 1) != 0)
  {
    return 1;
  }

  swift_beginAccess();
  result = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  LOBYTE(a4) = v7(a2, a3, a4);

  return a4 & 1;
}

uint64_t closure #3 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GroupSession.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v9, a1, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E696B2C0])
    {
      (*(v7 + 96))(v9, v6);
      v11 = *v9;
      if (one-time initialization token for groupActivities != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.groupActivities);
      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v11;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_1E11CD000, v14, v15, "Session invalidated due: %@", v16, 0xCu);
        outlined destroy of NSObject?(v17);
        MEMORY[0x1E12F6150](v17, -1, -1);
        MEMORY[0x1E12F6150](v16, -1, -1);
      }

      GroupSession.localParticipant.getter();
      GroupActivitiesSynchronizationDiscoveryView.remove(participant:)(v5);

      return (*(v3 + 8))(v5, v2);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t closure #4 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v23 = result;
  if (result)
  {

    v11 = GroupSession.activeParticipants.getter();
    v12 = *(v11 + 16);
    v13 = *(v9 + 16);
    v22[1] = a3;
    if (v12 <= v13 >> 3)
    {
      v24 = v9;
      specialized Set._subtract<A>(_:)(v11);

      v14 = v24;
    }

    else
    {
      v14 = specialized _NativeSet.subtracting<A>(_:)(v11, v9);
    }

    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 56);
    v18 = (v15 + 63) >> 6;
    v22[0] = v6 + 16;
    v19 = (v6 + 8);

    for (i = 0; v17; i = v21)
    {
      v21 = i;
LABEL_12:
      (*(v6 + 16))(v8, *(v14 + 48) + *(v6 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v5);
      closure #1 in closure #4 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)(v8, v23);
      v17 &= v17 - 1;
      (*v19)(v8, v5);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
      }

      v17 = *(v14 + 56 + 8 * v21);
      ++i;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    result = (*v19)(v8, v5);
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #4 in GroupActivitiesSynchronizationSession.init(session:discoveryView:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*(a2 + 40) + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v14 = a1;

  v10 = specialized Sequence.first(where:)(partial apply for closure #1 in Array<A>.first(with:), v13, v9);

  if (!v10)
  {

    GroupSession.localParticipant.getter();
    v11 = MEMORY[0x1E12F2E20](v7, a1);
    (*(v5 + 8))(v7, v4);
    GroupActivitiesSynchronizationDiscoveryView.add(participant:isLocal:)(a1, v11 & 1);
  }
}

uint64_t GroupActivitiesSynchronizationSession.deinit()
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v1 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (MEMORY[0x1E12F5440](v1))
  {
    RESharedClockServiceSetSession();
  }

  RESyncNetSessionRemoveObserver();
  RESyncRelease();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  result = REServiceLocatorGetNetworkSyncManager();
  if (result)
  {
    RESyncServiceStopSyncWithSession();
    RESyncRelease();
    MEMORY[0x1E12F4D00](*(v0 + 16));
    RERelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GroupActivitiesSynchronizationSession.__deallocating_deinit()
{
  GroupActivitiesSynchronizationSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized GroupActivitiesSynchronizationSession.init(session:discoveryView:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v49 - v7;
  v8 = *(v5 + 80);
  v56 = *(v5 + 88);
  v57 = v8;
  type metadata accessor for GroupSession.State();
  v9 = type metadata accessor for Published.Publisher();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v49 - v10;
  v11 = type metadata accessor for __REECSManagerRef();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E7CC0];
  v3[5] = a2;
  v3[6] = v19;
  v58 = a2;

  v3[2] = REEntityCreate();
  aBlock = 0x746F6F52636E7953;
  v60 = 0xE90000000000002DLL;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v16 + 8))(v18, v15);
  MEMORY[0x1E12F4010](v20, v22);

  String.utf8CString.getter();

  REEntitySetName();

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.sceneService.getter();

  v23 = v62;
  v24 = v63;
  __swift_project_boxed_opaque_existential_1(&aBlock, v62);
  (*(v24 + 4))(v23, v24);
  __AssetRef.__as<A>(_:)();
  (*(v12 + 8))(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  REECSManagerGetScene();
  RESceneAddEntity();
  RESyncNetSessionConfigurationCreate();
  RESyncNetSessionConfigurationSetIsLocal();
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = MEMORY[0x1E12F3F80](0xD000000000000034, 0x80000001E1256FF0);
  [v25 BOOLForKey_];

  result = RESyncNetSessionConfigurationSetUnreliableSyncEnabled();
  if (!*(*(v58 + 24) + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  RESyncNetSessionConfigurationSetDiscoveryView();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  result = REServiceLocatorGetNetworkSyncManager();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3[3] = RESyncServiceCreateSessionAndStartSync();
  RESyncRelease();
  v3[4] = RESyncNetSessionObserverCreate();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v31 = v56;
  v30 = v57;
  v29[2] = v57;
  v29[3] = v31;
  v29[4] = v28;
  v63 = partial apply for closure #1 in GroupActivitiesSynchronizationSession.init(session:discoveryView:);
  v64 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> ();
  v62 = &block_descriptor;
  v32 = _Block_copy(&aBlock);

  RESyncNetSessionObserverOnParticipantJoin();
  _Block_release(v32);
  RESyncNetSessionAddObserver();
  result = RESyncServiceGetSyncSession();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v30;
  v34[3] = v31;
  v34[4] = v33;
  v63 = partial apply for closure #2 in GroupActivitiesSynchronizationSession.init(session:discoveryView:);
  v64 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned OpaquePointer) -> (@unowned Bool);
  v62 = &block_descriptor_10;
  v35 = _Block_copy(&aBlock);

  RESyncSessionSetViewFilterCB();
  _Block_release(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E1252BD0;
  v37 = v49;
  v38 = v53;
  GroupSession.$state.getter();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;

  v41 = v51;
  swift_getWitnessTable();
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v37, v41);
  *(v36 + 32) = v42;
  v43 = v52;
  GroupSession.$activeParticipants.getter();
  v44 = swift_allocObject();
  swift_weakInit();

  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v38;
  lazy protocol witness table accessor for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher();

  v46 = v55;
  v47 = Publisher<>.sink(receiveValue:)();

  (*(v54 + 8))(v43, v46);
  *(v36 + 40) = v47;
  v3[6] = v36;

  static __ServiceLocator.shared.getter();
  v48 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (MEMORY[0x1E12F5440](v48))
  {
    RESharedClockServiceSetSession();
  }

  return v3;
}

uint64_t specialized GroupActivitiesSynchronizationSession.__allocating_init(session:discoveryView:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GroupActivitiesSynchronizationSession();
  swift_allocObject();
  return specialized GroupActivitiesSynchronizationSession.init(session:discoveryView:)(a1, a2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t ARView.PostProcessContext.init(_:_:_:_:_:_:_:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>, double a11@<D4>)
{
  a6->n128_u64[0] = result;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  a6[2].n128_u64[0] = a5;
  a6[3] = a7;
  a6[4] = a8;
  a6[5] = a9;
  a6[6] = a10;
  a6[7].n128_f64[0] = a11;
  return result;
}

uint64_t ARView.PostProcessContext.device.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t ARView.PostProcessContext.commandBuffer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t ARView.PostProcessContext.sourceColorTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ARView.PostProcessContext.sourceDepthTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ARView.PostProcessContext.targetColorTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 32) = a1;
  return result;
}

void ARView.PostProcessContext.projection.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

uint64_t key path getter for ARView.RenderCallbacks.prepareWithDevice : ARView.RenderCallbacks@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed MTLDevice) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v3);
}

uint64_t key path setter for ARView.RenderCallbacks.prepareWithDevice : ARView.RenderCallbacks(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MTLDevice) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v3);
  result = sub_1E11CF140(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t ARView.RenderCallbacks.prepareWithDevice.getter()
{
  v1 = *v0;
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(*v0);
  return v1;
}

uint64_t ARView.RenderCallbacks.prepareWithDevice.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E11CF140(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for ARView.RenderCallbacks.postProcess : ARView.RenderCallbacks@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ARView.PostProcessContext) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v3);
}

uint64_t key path setter for ARView.RenderCallbacks.postProcess : ARView.RenderCallbacks(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ARView.PostProcessContext) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v3);
  result = sub_1E11CF140(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ARView.RenderCallbacks.postProcess.getter()
{
  v1 = *(v0 + 16);
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v1);
  return v1;
}

uint64_t ARView.RenderCallbacks.postProcess.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E11CF140(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double ARView.RenderCallbacks.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ARView.renderCallbacks.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for __SceneRef();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__coreScene.getter();

    __AssetRef.__as<A>(_:)();
    (*(v4 + 8))(v7, v3);
    v8 = RESceneGetPrepareWithDeviceRenderCallback();
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MTLDevice) -> ();
    }

    else
    {
      v9 = 0;
    }

    if (RESceneGetPostProcessRenderCallback())
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sy10RealityKit6ARViewC18PostProcessContextVcMd);
      if (swift_dynamicCast())
      {
        result = swift_allocObject();
        *(result + 16) = v11;
        v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ARView.PostProcessContext) -> (@out ());
LABEL_13:
        *a1 = v8;
        a1[1] = v9;
        a1[2] = v10;
        a1[3] = result;
        return result;
      }
    }

    else
    {
      outlined destroy of Any?(v14);
    }

    v10 = 0;
    result = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ARView.renderCallbacks : ARView(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v5[0]);
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v2);
  return ARView.renderCallbacks.setter(v5);
}

uint64_t ARView.renderCallbacks.setter(uint64_t *a1)
{
  v3 = type metadata accessor for __SceneRef();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  v22 = v1;
  if (!*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];

  dispatch thunk of Scene.__coreScene.getter();

  __AssetRef.__as<A>(_:)();
  (*(v4 + 8))(v7, v3);
  if (!v12)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sy10RealityKit6ARViewC18PostProcessContextVcSgMd);
    v29 = 0;
    v30 = 0;
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    _bridgeAnythingToObjectiveC<A>(_:)();
    RESceneSetPostProcessRenderCallback();
    swift_unknownObjectRelease();
    REScenePostProcessRenderCallbackClearCameraViewHandles();
    if (v9)
    {
LABEL_14:

      sub_1E11CF140(v9);
      sub_1E11CF140(v12);
      v27 = v9;
      v28 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = thunk for @escaping @callee_guaranteed (@guaranteed MTLDevice) -> ();
      v26 = &block_descriptor_0;
      v18 = _Block_copy(&aBlock);

      goto LABEL_15;
    }

LABEL_8:
    sub_1E11CF140(0);
    sub_1E11CF140(v12);
    v18 = 0;
LABEL_15:
    RESceneSetPrepareWithDeviceRenderCallback();
    _Block_release(v18);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sy10RealityKit6ARViewC18PostProcessContextVcSgMd);
  v29 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ARView.PostProcessContext) -> ();
  v30 = v13;
  __swift_project_boxed_opaque_existential_1(&v29, v31);

  _bridgeAnythingToObjectiveC<A>(_:)();
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = v11;
  v27 = partial apply for closure #1 in ARView.renderCallbacks.setter;
  v28 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  v26 = &block_descriptor_14;
  v15 = _Block_copy(&aBlock);
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v9);
  _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v12);

  RESceneSetPostProcessRenderCallback();
  _Block_release(v15);
  result = swift_unknownObjectRelease();
  if (!*(v22 + v8))
  {
    goto LABEL_19;
  }

  active = dispatch thunk of Scene.internalActiveCamera.getter();

  if (active)
  {

    if (*(v22 + v8))
    {

      v17 = dispatch thunk of Scene.internalActiveCamera.getter();
      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v22 + v8))
  {

    v17 = dispatch thunk of Scene.defaultCamera.getter();
LABEL_11:
    v19 = v17;

    if (!v19)
    {
      sub_1E11CF140(v9);
      sub_1E11CF140(v12);
      static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      return __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    Entity.coreEntity.getter();

    RECameraViewDescriptorsComponentGetComponentType();
    result = REEntityGetComponentByClass();
    if (result)
    {
      RECameraViewDescriptorsComponentCameraViewDescriptorHandleByIndex();
      REScenePostProcessRenderCallbackAddCameraViewHandle();

      if (v9)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

void closure #1 in ARView.renderCallbacks.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  if (a4)
  {
    v5 = RERenderCallbacksPostProcessGetDevice();
    v6 = RERenderCallbacksPostProcessGetCommandBuffer();
    v7 = RERenderCallbacksPostProcessGetSourceColorTexture();
    v8 = RERenderCallbacksPostProcessGetSourceDepthTexture();
    v9 = RERenderCallbacksPostProcessGetTargetColorTexture();
    RERenderCallbacksPostProcessGetProjection();
    v17 = v11;
    v18 = v10;
    v15 = v13;
    v16 = v12;
    RERenderCallbacksPostProcessGetSimulationTime();
    *&v19 = v5;
    *(&v19 + 1) = v6;
    *&v20 = v7;
    *(&v20 + 1) = v8;
    *&v21 = v9;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    a4(&v19);
    v27[4] = v23;
    v27[5] = v24;
    v27[6] = v25;
    v28 = v26;
    v27[0] = v19;
    v27[1] = v20;
    v27[2] = v21;
    v27[3] = v22;
    outlined destroy of ARView.PostProcessContext(v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MTLDevice) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void (*ARView.renderCallbacks.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  ARView.renderCallbacks.getter(v3);
  return ARView.renderCallbacks.modify;
}

void ARView.renderCallbacks.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v7;
  v9[3] = v6;
  if (a2)
  {
    _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v4);
    _s10RealityKit6ARViewC18PostProcessContextVIegn_SgWOy_0(v7);
    ARView.renderCallbacks.setter(v9);
    v8 = v3[2];
    sub_1E11CF140(*v3);
    sub_1E11CF140(v8);
  }

  else
  {
    ARView.renderCallbacks.setter(v9);
  }

  free(v3);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

__n128 __swift_memcpy120_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.PostProcessContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for ARView.PostProcessContext(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARView.RenderCallbacks(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ARView.RenderCallbacks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MTLDevice) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t Entity.ConfigurationCatalog.init(from:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(from:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(from:)()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = Entity.ConfigurationCatalog.init(from:);
  v2 = v0[6];
  v3 = v0[2];

  return Entity.ConfigurationCatalog.init(fromURL:)(v3, v2);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.init(from:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[5] + 8))(v0[3], v0[4]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[5] + 8))(v0[3], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t Entity.ConfigurationCatalog.init(fromURL:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Entity.ConfigurationCatalog();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(fromURL:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(fromURL:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  static Entity.ConfigurationCatalog.resolveRealityFileURL(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[3];
    outlined destroy of ARConfigurationCreateResult?(v0[10], &_s10Foundation3URLVSgMd);
    type metadata accessor for ImportSession();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    type metadata accessor for Entity();
    v9 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)();
    v0[16] = v9;
    if (v9)
    {
      v22 = v0[4];
      v23 = v9;
      v24 = ImportSession.core.getter();
      Options = type metadata accessor for Entity.ConfigurationCatalog.LoadOptions();
      (*(*(Options - 8) + 56))(v22, 1, 1, Options);

      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = Entity.ConfigurationCatalog.init(fromURL:);
      v27 = v0[8];
      v28 = v0[4];

      return MEMORY[0x1EEDD6AA0](v27, v24, v23, v28);
    }

    else
    {
      v29 = v0[11];
      v30 = v0[12];
      v31 = v0[3];
      v32 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError();
      swift_allocError();
      v34 = v33;
      v8(v33, v31, v29);
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E697A340], v32);
      swift_willThrow();
      (*(v30 + 8))(v0[3], v0[11]);

      v10 = v0[1];

      return v10();
    }
  }

  else
  {
    v12 = v0[15];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v16 = v0[5];
    (*(v14 + 32))(v12, v0[10], v15);
    (*(v14 + 16))(v13, v12, v15);
    v17 = type metadata accessor for Entity.ConfigurationCatalog.LoadOptions();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = Entity.ConfigurationCatalog.init(fromURL:);
    v19 = v0[13];
    v20 = v0[9];
    v21 = v0[5];

    return MEMORY[0x1EEDD6AA8](v20, v19, v21);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.init(fromURL:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.init(fromURL:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0[12] + 8);
  v1(v0[3], v0[11]);
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  v1(v0[15], v0[11]);
  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.init(fromURL:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.init(fromURL:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[12];

  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  (*(v1 + 8))(v0[3], v0[11]);
  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0[12] + 8);
  v1(v0[3], v0[11]);
  v1(v0[15], v0[11]);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[12];

  (*(v1 + 8))(v0[3], v0[11]);

  v2 = v0[1];

  return v2();
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError)
  {
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError);
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.init(from:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Entity.ConfigurationCatalog();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(from:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(from:options:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  static Entity.ConfigurationCatalog.resolveRealityFileURL(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[3];
    outlined destroy of ARConfigurationCreateResult?(v0[11], &_s10Foundation3URLVSgMd);
    type metadata accessor for ImportSession();
    v8 = *(v6 + 16);
    v8(v4, v7, v5);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    type metadata accessor for Entity();
    v9 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)();
    v0[17] = v9;
    v10 = v0[4];
    if (v9)
    {
      v23 = v0[5];
      v24 = v9;
      v25 = ImportSession.core.getter();
      outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(v10, v23);

      v26 = swift_task_alloc();
      v0[20] = v26;
      *v26 = v0;
      v26[1] = Entity.ConfigurationCatalog.init(from:options:);
      v27 = v0[9];
      v28 = v0[5];

      return MEMORY[0x1EEDD6AA0](v27, v25, v24, v28);
    }

    else
    {
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[3];
      v32 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError();
      swift_allocError();
      v34 = v33;
      v8(v33, v31, v30);
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E697A340], v32);
      swift_willThrow();
      outlined destroy of ARConfigurationCreateResult?(v10, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
      (*(v29 + 8))(v0[3], v0[12]);

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v13 = v0[16];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[6];
    v18 = v0[4];
    (*(v15 + 32))(v13, v0[11], v16);
    (*(v15 + 16))(v14, v13, v16);
    outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(v18, v17);
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    v19[1] = Entity.ConfigurationCatalog.init(from:options:);
    v20 = v0[14];
    v21 = v0[10];
    v22 = v0[6];

    return MEMORY[0x1EEDD6AA8](v21, v20, v22);
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.init(from:options:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.init(from:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[3];
  outlined destroy of ARConfigurationCreateResult?(v0[4], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  v4 = *(v2 + 8);
  v4(v3, v1);
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[2];
  v4(v0[16], v0[12]);
  (*(v6 + 32))(v8, v5, v7);

  v9 = v0[1];

  return v9();
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.init(from:options:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.init(from:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[4];

  outlined destroy of ARConfigurationCreateResult?(v2, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  v3 = v0[9];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  (*(v1 + 8))(v0[3], v0[12]);
  (*(v4 + 32))(v6, v3, v5);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[3];
  outlined destroy of ARConfigurationCreateResult?(v0[4], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  v4 = *(v2 + 8);
  v4(v3, v1);
  v4(v0[16], v0[12]);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[13];
  v2 = v0[4];

  outlined destroy of ARConfigurationCreateResult?(v2, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  (*(v1 + 8))(v0[3], v0[12]);

  v3 = v0[1];

  return v3();
}

uint64_t outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for EntityTranslationGestureRecognizer.entity : EntityTranslationGestureRecognizer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  specialized EntityGestureRecognizer.entityWillChange(_:)(v5, &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
  v6 = (v4 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
  swift_beginAccess();
  *v6 = v2;
  v6[1] = v3;
}

id specialized EntityGestureRecognizer.entityWillChange(_:)(uint64_t a1)
{
  return specialized EntityGestureRecognizer.entityWillChange(_:)(a1, &OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity);
}

{
  return specialized EntityGestureRecognizer.entityWillChange(_:)(a1, &OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity);
}

id specialized EntityGestureRecognizer.entityWillChange(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  result = [v4 isEnabled];
  if (result)
  {
    v7 = *a2;
    result = swift_beginAccess();
    if (*&v4[v7])
    {
      if (a1)
      {
        type metadata accessor for Entity();
        lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);

        v8 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v8)
        {
          return result;
        }
      }
    }

    else if (!a1)
    {
      return result;
    }

    return [v4 setState_];
  }

  return result;
}

uint64_t EntityTranslationGestureRecognizer.entity.setter(uint64_t a1, uint64_t a2)
{
  specialized EntityGestureRecognizer.entityWillChange(_:)(a1, &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
  v5 = (v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*EntityTranslationGestureRecognizer.entity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return EntityTranslationGestureRecognizer.entity.modify;
}

void EntityTranslationGestureRecognizer.entity.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48));
  if (a2)
  {

    specialized EntityGestureRecognizer.entityWillChange(_:)(v6, &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    specialized EntityGestureRecognizer.entityWillChange(_:)(*(*a1 + 24), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity);
    *v5 = v3;
    v5[1] = v4;
  }

  free(v2);
}

void EntityTranslationGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v5 = a2;

  v7 = specialized Set._Variant.filter(_:)(v6, v4, v5);

  v8 = &v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation];
  v9 = v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation + 16];
  v10 = [v4 numberOfTouches];
  if (v9 == 1)
  {

    if (v10 >= 1)
    {
      v11 = EntityTranslationGestureRecognizer.calcTouchHeight()();
      v12 = &v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight];
      *v12 = v11;
      v12[4] = BYTE4(v11) & 1;
      v13 = [v4 view];
      [v4 locationInView_];
      v15 = v14;
      v17 = v16;

      v18 = [v4 view];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for ARView();
        if (swift_dynamicCastClass() && (v20 = *v12, LOBYTE(v32[0]) = v12[4], specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v20 | (LOBYTE(v32[0]) << 32), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v32), (v35 & 1) == 0))
        {
          v24 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v15, v17, *v32, v32[1], *&v33, v34);
          v26 = v25;
          v28 = v27;

          if ((v28 & 1) == 0)
          {
            *v8 = v24;
            *(v8 + 1) = v26;
            v8[16] = 0;
            v29 = &v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation];
            *v29 = v24;
            *(v29 + 1) = v26;
            v29[16] = 0;
            v30 = &v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation];
            *v30 = v15;
            v30[1] = v17;
            *(v30 + 16) = 0;
            v31 = &v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation];
            *v31 = v15;
            v31[1] = v17;
            *(v31 + 16) = 0;
            return;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *(v7 + 16);
    }

    if (v21 >= 1)
    {
      EntityTranslationGestureRecognizer.touchCentroidChanged()();
      if (v4[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun] != 1)
      {
        return;
      }

      v22 = v4;
      v23 = 2;
      goto LABEL_17;
    }

    if (v10 > 0)
    {
      return;
    }
  }

  v22 = v4;
  v23 = 5;
LABEL_17:

  [v22 setState_];
}

unint64_t EntityTranslationGestureRecognizer.calcTouchHeight()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for CollisionCastHit();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 view];
  [v1 locationInView_];
  v11 = v10;
  v13 = v12;

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  type metadata accessor for ARView();
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_8:
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_9;
  }

  v17 = *(result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v17)
  {
    v18 = v17;
    RKARSystem.cachedGestureHitTest(_:)(v4, v11, v13);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v25[0] = 1;
      specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(0x100000000, &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v25);
      if ((v28 & 1) == 0)
      {
        v23 = v26;
        v24 = v27;
        CollisionCastHit.position.getter();
        v21.i32[3] = 1.0;
        v22 = vmulq_f32(v23, vsubq_f32(v21, v24));
        *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        *v22.i8 = vadd_f32(*v22.i8, vdup_lane_s32(*v22.i8, 1));
        v24 = v22;
        (*(v6 + 8))(v8, v5);
        v20 = 0;
        v19 = v24.u32[0];
        goto LABEL_11;
      }

      (*(v6 + 8))(v8, v5);
LABEL_10:
      v19 = 0;
      v20 = 1;
LABEL_11:
      v25[0] = v20;
      return v19 | (v20 << 32);
    }

LABEL_9:
    outlined destroy of ARConfigurationCreateResult?(v4, &_s10RealityKit16CollisionCastHitVSgMd);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void EntityTranslationGestureRecognizer.touchCentroidChanged()()
{
  v1 = v0;
  v2 = EntityTranslationGestureRecognizer.calcTouchHeight()();
  v3 = (v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight);
  *v3 = v2;
  *(v3 + 4) = BYTE4(v2) & 1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(0);
  if ((v7 & 1) == 0)
  {
    v8 = v5;
    v9 = v6;
    v10 = [v0 view];
    [v1 locationInView_];
    v12 = v11;
    v14 = v13;

    v15 = [v1 view];
    if (v15)
    {
      v31 = v15;
      type metadata accessor for ARView();
      if (swift_dynamicCastClass() && (v16 = *v3, LOBYTE(v33[0]) = *(v3 + 4), specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v16 | (LOBYTE(v33[0]) << 32), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v33), (v36 & 1) == 0))
      {
        v17 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v12, v14, *v33, v33[1], *&v34, v35);
        v19 = v18;
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          *&v22 = v8;
          *(&v22 + 1) = v9;
          *v32 = v22;
          v23 = v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation;
          *v23 = v17;
          *(v23 + 1) = v19;
          v23[16] = 0;
          v24 = [v1 view];
          [v1 locationInView_];
          v26 = v25;
          v28 = v27;

          v29 = v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation;
          *v29 = v26;
          *(v29 + 1) = v28;
          v29[16] = 0;
          v30 = *((*v4 & *v1) + 0xC0);

          v30(0, *v32);
        }
      }

      else
      {
      }
    }
  }
}

void EntityTranslationGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, type metadata accessor for UITouch);
    Set.Iterator.init(_cocoa:)();
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    v9 = v28;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v21 = v7;
  v13 = (v7 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      outlined consume of Set<UITouch>.Iterator._Variant();
      if ([v3 numberOfTouches] < 1)
      {
        if (v3[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun] == 1)
        {
          v20 = 3;
        }

        else
        {
          v20 = 5;
        }

        [v3 setState_];
      }

      else
      {
        EntityTranslationGestureRecognizer.touchCentroidChanged()();
        if (v3[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun] == 1)
        {
          [v3 setState_];
        }
      }

      return;
    }

    while (1)
    {
      [v3 ignoreTouch:v18 forEvent:{a2, v21, v22}];

      v8 = v16;
      v9 = v17;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v22 = v19;
        type metadata accessor for UITouch();
        swift_dynamicCast();
        v18 = v23;
        v16 = v8;
        v17 = v9;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t @objc EntityTranslationGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, type metadata accessor for UITouch);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

uint64_t specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(a1, &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, a2);
}

{
  return specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(a1, &OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity, a2);
}

uint64_t specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AnchoringComponent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v64 - v15);
  v17 = *a2;
  result = swift_beginAccess();
  v20 = *(v3 + v17);
  if (!v20)
  {
    goto LABEL_18;
  }

  v67.i64[0] = v8;
  *&v64 = v3;
  LODWORD(v19) = a1;
  if ((a1 & 0x100000000) != 0)
  {
    *&v19 = 0.0;
  }

  v68 = v19;
  v66.i64[0] = *v20;

  v21 = Entity.anchor.getter();
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
    v65.i64[0] = a3;
    v26 = v25;
    *v16 = v23;
    v16[1] = v24;

    HasAnchoring.anchoring.getter();
    AnchoringComponent.target.getter();

    (*(v67.i64[0] + 8))(v10, v7);
    v27 = *(*(v26 - 8) + 56);
    v28 = v26;
    a3 = v65.i64[0];
    v27(v16, 0, 1, v28);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  }

  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v16, v14, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
  if ((*(*(v30 - 8) + 48))(v14, 1, v30) == 1)
  {
    HasTransform.transformMatrix(relativeTo:)();
    v66 = v31;
    v67 = v32;

    v33 = vmulq_f32(v66, v66);
    *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v33.i32[0] = vadd_f32(*v33.i8, vdup_lane_s32(*v33.i8, 1)).u32[0];
    v34 = vrsqrte_f32(v33.u32[0]);
    v35 = vmul_f32(v34, vrsqrts_f32(v33.u32[0], vmul_f32(v34, v34)));
    v66 = vmulq_n_f32(v66, vmul_f32(v35, vrsqrts_f32(v33.u32[0], vmul_f32(v35, v35))).f32[0]);
    result = outlined destroy of ARConfigurationCreateResult?(v16, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
    v36 = v66;
LABEL_21:
    v51 = 0;
    v52 = vaddq_f32(v67, vmulq_n_f32(v36, *&v68));
    goto LABEL_22;
  }

  v37 = *(v30 + 48);
  v38 = type metadata accessor for AnchoringComponent.Target();
  v39 = *(v38 - 8);
  if ((*(v39 + 88))(&v14[v37], v38) != *MEMORY[0x1E697A278])
  {
    HasTransform.transformMatrix(relativeTo:)();
    v66 = v46;
    v67 = v47;

    v48 = vmulq_f32(v66, v66);
    *v48.i8 = vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
    v48.i32[0] = vadd_f32(*v48.i8, vdup_lane_s32(*v48.i8, 1)).u32[0];
    v49 = vrsqrte_f32(v48.u32[0]);
    v50 = vmul_f32(v49, vrsqrts_f32(v48.u32[0], vmul_f32(v49, v49)));
    v66 = vmulq_n_f32(v66, vmul_f32(v50, vrsqrts_f32(v48.u32[0], vmul_f32(v50, v50))).f32[0]);
    outlined destroy of ARConfigurationCreateResult?(v16, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
    result = (*(v39 + 8))(&v14[v37], v38);
    v36 = v66;
    goto LABEL_21;
  }

  v40 = [v64 view];
  if (!v40)
  {
    outlined destroy of ARConfigurationCreateResult?(v16, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);

LABEL_18:
    v51 = 1;
    v36 = 0uLL;
    v52 = 0uLL;
LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = v36;
    *(a3 + 32) = 0u;
    *(a3 + 48) = v52;
    *(a3 + 64) = v51;
    return result;
  }

  v41 = v40;
  type metadata accessor for ARView();
  result = swift_dynamicCastClass();
  if (!result)
  {

    result = outlined destroy of ARConfigurationCreateResult?(v16, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
    goto LABEL_18;
  }

  if (*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      Transform.init(matrix:)();
      v67 = v43;
      v64 = v45;
      v65 = v44;
    }

    else
    {
      Transform.init()();
      v67 = v53;
      v64 = v55;
      v65 = v54;
    }

    specialized simd_float4x4.init(translation:rotation:scale:)(*&v64, v65);
    v65 = v56;
    v67 = v57;
    HasTransform.position(relativeTo:)();
    v66 = v58;

    v59 = vsubq_f32(0, v65);
    v60.i32[0] = vextq_s8(v66, v66, 8uLL).u32[0];
    v60.i32[1] = 1.0;
    v61 = vadd_f32(vmul_f32(vsub_f32(*v66.f32, *v67.f32), *v59.f32), vmul_f32(vsub_f32(v60, *&vextq_s8(v67, v67, 8uLL)), *&vextq_s8(v59, v59, 8uLL)));
    v62 = vmulq_f32(v59, v59);
    *v62.i8 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
    v63 = vaddq_f32(v67, vmulq_n_f32(v59, vadd_f32(v61, vdup_lane_s32(v61, 1)).f32[0]));
    v61.i32[0] = vadd_f32(*v62.i8, vdup_lane_s32(*v62.i8, 1)).u32[0];
    *v62.i8 = vrsqrte_f32(v61.u32[0]);
    *v62.i8 = vmul_f32(*v62.i8, vrsqrts_f32(v61.u32[0], vmul_f32(*v62.i8, *v62.i8)));
    v66 = vmulq_n_f32(v59, vmul_f32(*v62.i8, vrsqrts_f32(v61.u32[0], vmul_f32(*v62.i8, *v62.i8))).f32[0]);
    v67 = v63;
    result = outlined destroy of ARConfigurationCreateResult?(v16, &_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
    v36 = vsubq_f32(0, v66);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall EntityTranslationGestureRecognizer.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastTranslation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastFrameTime;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun) = 0;
}

Swift::Bool __swiftcall EntityTranslationGestureRecognizer.canPrevent(_:)(UIGestureRecognizer *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!v6)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v8 = *(v4 + 8);
  v9 = a1;

  v10 = v8(ObjectType, v4);
  if (!v10)
  {

LABEL_7:
    v15.receiver = v1;
    v15.super_class = type metadata accessor for EntityTranslationGestureRecognizer();
    v13 = [(UIGestureRecognizer *)&v15 canPreventGestureRecognizer:a1];
    return v13 & 1;
  }

  v11 = v10;

  v12 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v11, v6);

  v13 = v12;
  return v13 & 1;
}

float32x2_t EntityTranslationGestureRecognizer.translation(in:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation);
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation + 16) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation);
    if ((*(v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation + 16) & 1) == 0)
    {
      v4 = (v3 + 1);
      v6 = *v3;
      v5 = *v3;
      v7 = &v2[1];
      vld1q_dup_f64(v7);
      vld1q_dup_f64(v4);
      result = vsub_f32(__PAIR64__(HIDWORD(v6), v5), *v2);
      if (a1)
      {
        type metadata accessor for Entity();
        HasTransform.convert(direction:from:)();
      }
    }
  }

  return result;
}

float32x4_t EntityTranslationGestureRecognizer.setTranslation(_:in:)(uint64_t a1, float32x4_t result)
{
  v3 = (v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation);
  if ((*(v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation + 16) & 1) == 0)
  {
    v4 = result;
    v5 = v3->i64[0];
    v6 = *v3;
    if (a1)
    {
      v12 = *v3;
      v13 = result;
      type metadata accessor for Entity();
      HasTransform.convert(direction:to:)();
      v6 = v12;
      v4 = v13;
    }

    *&v7 = vsub_f32(__PAIR64__(v6.u32[1], v5), *result.f32);
    *(&v7 + 1) = vsubq_f32(v6, result).u32[2];
    v8 = v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation;
    *v8 = v7;
    *(v8 + 16) = 0;
    v9 = (v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastTranslation);
    *v9 = v4;
    v9[1].i8[0] = 0;
    v10 = *(v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation + 16);
    v11 = (v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation);
    result = *(v2 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation);
    *v11 = result;
    v11[1].n128_u8[0] = v10;
  }

  return result;
}

__n128 EntityTranslationGestureRecognizer.velocity(in:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for Entity();
    HasTransform.convert(direction:from:)();
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity);
  }

  return result;
}

id EntityTranslationGestureRecognizer.location(in:)(uint64_t a1)
{
  v3 = [v1 view];
  [v1 locationInView_];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    type metadata accessor for ARView();
    if (!swift_dynamicCastClass() || (v10 = *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight], LOBYTE(v16[0]) = v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight + 4], specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v10 | (LOBYTE(v16[0]) << 32), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v16), (v19 & 1) != 0) || (v11 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v5, v7, *v16, v16[1], *&v17, v18), (v12 & 1) != 0))
    {

      return 0;
    }

    else if (a1)
    {
      type metadata accessor for Entity();
      HasTransform.convert(position:from:)();
      v15 = v13;

      return v15;
    }

    else
    {
      v14 = v11;

      return v14;
    }
  }

  return result;
}

id EntityTranslationGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v2) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id EntityTranslationGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight];
  *v8 = 0;
  v8[4] = 1;
  v9 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastTranslation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastFrameTime];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v2[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun] = 0;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a1, v24, &_sypSgMd);
  v14 = v25;
  if (v25)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(v14 - 8);
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for EntityTranslationGestureRecognizer();
  v23.receiver = v2;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, sel_initWithTarget_action_, v19, a2);
  swift_unknownObjectRelease();
  outlined destroy of ARConfigurationCreateResult?(a1, &_sypSgMd);
  return v21;
}

id EntityTranslationGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityTranslationGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityTranslationGestureRecognizer(uint64_t **a1))(void *a1)
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
  v2[4] = EntityTranslationGestureRecognizer.entity.modify(v2);
  return protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityTranslationGestureRecognizer;
}

void protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityTranslationGestureRecognizer(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized EntityGestureRecognizer.doesEntity(_:contain:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!a2)
  {
    return 0;
  }

  type metadata accessor for Entity();

  v5 = HasHierarchy.parent.getter();
  if (v5 && (v6 = v5, , v6 == a1))
  {

    return 1;
  }

  else
  {
    v7 = HasHierarchy.parent.getter();
    v8 = a3(a1, v7);

    return v8 & 1;
  }
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p41UIEventCtFSbAGXEfU_AA0c11TranslationdE0C_Q00T3Kit0v11TranslationwX0CSo7UIEventCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
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

    v10 = a4;
    v11 = a5;
    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, v10, v11);
    v13 = v12;

    return v13;
  }

  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v49 = a2;
  v61 = a5;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v46 - v8;
  v59 = type metadata accessor for CollisionCastHit();
  v9 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v62 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
  swift_beginAccess();
  v54 = 0;
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  v52 = (v9 + 48);
  v48 = (v9 + 32);
  v47 = (v9 + 8);
  v55 = (v9 + 56);
  v58 = a3;
  v53 = a4;
  v50 = v11;
  do
  {
    while (1)
    {
      if (!v15)
      {
        v20 = v16;
        while (1)
        {
          v16 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_30;
          }

          v21 = *(v12 + 8 * v16);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v15 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v22 = *(*(a3 + 48) + 8 * (v19 | (v16 << 6)));
      v23 = *&a4[v62];
      if (!v23)
      {
        v18 = v22;
        goto LABEL_5;
      }

      v63 = v15;
      v57 = v19 | (v16 << 6);
      v24 = a4;
      v25 = v22;

      v26 = [v24 view];
      v56 = v25;
      v27 = v25;
      a4 = v24;
      [v27 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v24 view];
      if (!v32)
      {

        v35 = v60;
        v15 = v63;
LABEL_21:
        (*v55)(v35, 1, 1, v59);
        a3 = v58;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v35 = v60;
      v15 = v63;
      if (!v34)
      {

        goto LABEL_21;
      }

      v36 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v36)
      {
        goto LABEL_32;
      }

      v37 = v36;
      v38 = v60;
      RKARSystem.cachedGestureHitTest(_:)(v60, v29, v31);

      v35 = v38;
      v39 = v59;
      if ((*v52)(v38, 1, v59) == 1)
      {

        a3 = v58;
        a4 = v53;
LABEL_22:
        outlined destroy of ARConfigurationCreateResult?(v35, &_s10RealityKit16CollisionCastHitVSgMd);
        goto LABEL_5;
      }

      v40 = v50;
      (*v48)(v50, v35, v39);

      v41 = v40;
      v42 = CollisionCastHit.entity.getter();

      a4 = v53;
      if (v42 == v23)
      {

        (*v47)(v41, v59);
        a3 = v58;
        break;
      }

      v43 = CollisionCastHit.entity.getter();
      v44 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v43);

      (*v47)(v50, v59);
      a3 = v58;
      if (v44)
      {
        break;
      }

LABEL_5:
      [a4 ignoreTouch:v22 forEvent:v61];
    }

    *(v51 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
  }

  while (!__OFADD__(v54++, 1));
  __break(1u);
LABEL_30:

  specialized _NativeSet.extractSubset(using:count:)(v51, v49, v54, a3);
}

{
  v49 = a2;
  v61 = a5;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v46 - v8;
  v59 = type metadata accessor for CollisionCastHit();
  v9 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v62 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
  swift_beginAccess();
  v54 = 0;
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  v52 = (v9 + 48);
  v48 = (v9 + 32);
  v47 = (v9 + 8);
  v55 = (v9 + 56);
  v58 = a3;
  v53 = a4;
  v50 = v11;
  do
  {
    while (1)
    {
      if (!v15)
      {
        v20 = v16;
        while (1)
        {
          v16 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_30;
          }

          v21 = *(v12 + 8 * v16);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v15 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v22 = *(*(a3 + 48) + 8 * (v19 | (v16 << 6)));
      v23 = *&a4[v62];
      if (!v23)
      {
        v18 = v22;
        goto LABEL_5;
      }

      v63 = v15;
      v57 = v19 | (v16 << 6);
      v24 = a4;
      v25 = v22;

      v26 = [v24 view];
      v56 = v25;
      v27 = v25;
      a4 = v24;
      [v27 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v24 view];
      if (!v32)
      {

        v35 = v60;
        v15 = v63;
LABEL_21:
        (*v55)(v35, 1, 1, v59);
        a3 = v58;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v35 = v60;
      v15 = v63;
      if (!v34)
      {

        goto LABEL_21;
      }

      v36 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v36)
      {
        goto LABEL_32;
      }

      v37 = v36;
      v38 = v60;
      RKARSystem.cachedGestureHitTest(_:)(v60, v29, v31);

      v35 = v38;
      v39 = v59;
      if ((*v52)(v38, 1, v59) == 1)
      {

        a3 = v58;
        a4 = v53;
LABEL_22:
        outlined destroy of ARConfigurationCreateResult?(v35, &_s10RealityKit16CollisionCastHitVSgMd);
        goto LABEL_5;
      }

      v40 = v50;
      (*v48)(v50, v35, v39);

      v41 = v40;
      v42 = CollisionCastHit.entity.getter();

      a4 = v53;
      if (v42 == v23)
      {

        (*v47)(v41, v59);
        a3 = v58;
        break;
      }

      v43 = CollisionCastHit.entity.getter();
      v44 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v43);

      (*v47)(v50, v59);
      a3 = v58;
      if (v44)
      {
        break;
      }

LABEL_5:
      [a4 ignoreTouch:v22 forEvent:v61];
    }

    *(v51 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
  }

  while (!__OFADD__(v54++, 1));
  __break(1u);
LABEL_30:

  specialized _NativeSet.extractSubset(using:count:)(v51, v49, v54, a3);
}

{
  v49 = a2;
  v61 = a5;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v46 - v8;
  v59 = type metadata accessor for CollisionCastHit();
  v9 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v62 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  swift_beginAccess();
  v54 = 0;
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  v52 = (v9 + 48);
  v48 = (v9 + 32);
  v47 = (v9 + 8);
  v55 = (v9 + 56);
  v58 = a3;
  v53 = a4;
  v50 = v11;
  do
  {
    while (1)
    {
      if (!v15)
      {
        v20 = v16;
        while (1)
        {
          v16 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_30;
          }

          v21 = *(v12 + 8 * v16);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v15 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v22 = *(*(a3 + 48) + 8 * (v19 | (v16 << 6)));
      v23 = *&a4[v62];
      if (!v23)
      {
        v18 = v22;
        goto LABEL_5;
      }

      v63 = v15;
      v57 = v19 | (v16 << 6);
      v24 = a4;
      v25 = v22;

      v26 = [v24 view];
      v56 = v25;
      v27 = v25;
      a4 = v24;
      [v27 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v24 view];
      if (!v32)
      {

        v35 = v60;
        v15 = v63;
LABEL_21:
        (*v55)(v35, 1, 1, v59);
        a3 = v58;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v35 = v60;
      v15 = v63;
      if (!v34)
      {

        goto LABEL_21;
      }

      v36 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v36)
      {
        goto LABEL_32;
      }

      v37 = v36;
      v38 = v60;
      RKARSystem.cachedGestureHitTest(_:)(v60, v29, v31);

      v35 = v38;
      v39 = v59;
      if ((*v52)(v38, 1, v59) == 1)
      {

        a3 = v58;
        a4 = v53;
LABEL_22:
        outlined destroy of ARConfigurationCreateResult?(v35, &_s10RealityKit16CollisionCastHitVSgMd);
        goto LABEL_5;
      }

      v40 = v50;
      (*v48)(v50, v35, v39);

      v41 = v40;
      v42 = CollisionCastHit.entity.getter();

      a4 = v53;
      if (v42 == v23)
      {

        (*v47)(v41, v59);
        a3 = v58;
        break;
      }

      v43 = CollisionCastHit.entity.getter();
      v44 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v43);

      (*v47)(v50, v59);
      a3 = v58;
      if (v44)
      {
        break;
      }

LABEL_5:
      [a4 ignoreTouch:v22 forEvent:v61];
    }

    *(v51 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
  }

  while (!__OFADD__(v54++, 1));
  __break(1u);
LABEL_30:

  specialized _NativeSet.extractSubset(using:count:)(v51, v49, v54, a3);
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v73 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v52[-v9];
  v69 = type metadata accessor for CollisionCastHit();
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v56 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = a2;
  v16 = a3;
  v72 = v16;
  v68 = v15;
  if (v12 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v58 = v13;
    v59 = v4;
    v57 = v52;
    MEMORY[0x1EEE9AC00](v16);
    v60 = &v52[-((v14 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v60, v14);
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v14 = v19 & *(a1 + 56);
    v70 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
    swift_beginAccess();
    v20 = 0;
    v13 = (v18 + 63) >> 6;
    v61 = (v10 + 48);
    v62 = 0;
    v55 = (v10 + 32);
    v54 = (v10 + 8);
    v63 = (v10 + 56);
    v4 = v15;
    v66 = a1;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v25 = *(*(a1 + 48) + 8 * (v22 | (v20 << 6)));
      v10 = *&v4[v70];
      if (!v10)
      {
        v21 = v25;
        goto LABEL_6;
      }

      v71 = v14;
      v65 = v22 | (v20 << 6);
      v26 = v25;

      v27 = [v4 view];
      v64 = v26;
      [v26 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v4 view];
      if (!v32)
      {

        v14 = v71;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v14 = v71;
      if (!v34)
      {

LABEL_22:
        v37 = v67;
        (*v63)(v67, 1, 1, v69);
LABEL_23:
        a1 = v66;
        outlined destroy of ARConfigurationCreateResult?(v37, &_s10RealityKit16CollisionCastHitVSgMd);
        v4 = v68;
        goto LABEL_6;
      }

      v35 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v35)
      {
        __break(1u);
      }

      v36 = v35;
      v37 = v67;
      RKARSystem.cachedGestureHitTest(_:)(v67, v29, v31);

      v38 = v69;
      if ((*v61)(v37, 1, v69) == 1)
      {

        goto LABEL_23;
      }

      v39 = v56;
      (*v55)();

      v40 = CollisionCastHit.entity.getter();

      if (v40 == v10)
      {

        (*v54)(v39, v38);
        a1 = v66;
        v4 = v68;
LABEL_28:

        *&v60[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_31:
          v46 = specialized _NativeSet.extractSubset(using:count:)(v60, v58, v62, a1);

          return v46;
        }
      }

      else
      {
        v41 = CollisionCastHit.entity.getter();
        v42 = v39;
        v43 = v68;
        v53 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v10, v41);

        v44 = v42;
        v4 = v43;
        (*v54)(v44, v69);
        a1 = v66;
        if (v53)
        {
          goto LABEL_28;
        }

LABEL_6:
        [v4 ignoreTouch:v25 forEvent:v72];
      }
    }

    v23 = v20;
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v20 >= v13)
      {
        goto LABEL_31;
      }

      v24 = *(v17 + 8 * v20);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      v15 = v68;
      continue;
    }

    break;
  }

  v48 = swift_slowAlloc();
  v49 = v68;
  v50 = a1;
  v51 = v72;
  v46 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p41UIEventCtFSbAGXEfU_AA0c11TranslationdE0C_Q00T3Kit0v11TranslationwX0CSo7UIEventCTf1nnc_n(v48, v13, v50, v49, v51);

  MEMORY[0x1E12F6150](v48, -1, -1);

  return v46;
}

{
  v4 = v3;
  v73 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v52[-v9];
  v69 = type metadata accessor for CollisionCastHit();
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v56 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = a2;
  v16 = a3;
  v72 = v16;
  v68 = v15;
  if (v12 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v58 = v13;
    v59 = v4;
    v57 = v52;
    MEMORY[0x1EEE9AC00](v16);
    v60 = &v52[-((v14 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v60, v14);
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v14 = v19 & *(a1 + 56);
    v70 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
    swift_beginAccess();
    v20 = 0;
    v13 = (v18 + 63) >> 6;
    v61 = (v10 + 48);
    v62 = 0;
    v55 = (v10 + 32);
    v54 = (v10 + 8);
    v63 = (v10 + 56);
    v4 = v15;
    v66 = a1;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v25 = *(*(a1 + 48) + 8 * (v22 | (v20 << 6)));
      v10 = *&v4[v70];
      if (!v10)
      {
        v21 = v25;
        goto LABEL_6;
      }

      v71 = v14;
      v65 = v22 | (v20 << 6);
      v26 = v25;

      v27 = [v4 view];
      v64 = v26;
      [v26 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v4 view];
      if (!v32)
      {

        v14 = v71;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v14 = v71;
      if (!v34)
      {

LABEL_22:
        v37 = v67;
        (*v63)(v67, 1, 1, v69);
LABEL_23:
        a1 = v66;
        outlined destroy of ARConfigurationCreateResult?(v37, &_s10RealityKit16CollisionCastHitVSgMd);
        v4 = v68;
        goto LABEL_6;
      }

      v35 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v35)
      {
        __break(1u);
      }

      v36 = v35;
      v37 = v67;
      RKARSystem.cachedGestureHitTest(_:)(v67, v29, v31);

      v38 = v69;
      if ((*v61)(v37, 1, v69) == 1)
      {

        goto LABEL_23;
      }

      v39 = v56;
      (*v55)();

      v40 = CollisionCastHit.entity.getter();

      if (v40 == v10)
      {

        (*v54)(v39, v38);
        a1 = v66;
        v4 = v68;
LABEL_28:

        *&v60[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_31:
          v46 = specialized _NativeSet.extractSubset(using:count:)(v60, v58, v62, a1);

          return v46;
        }
      }

      else
      {
        v41 = CollisionCastHit.entity.getter();
        v42 = v39;
        v43 = v68;
        v53 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v10, v41);

        v44 = v42;
        v4 = v43;
        (*v54)(v44, v69);
        a1 = v66;
        if (v53)
        {
          goto LABEL_28;
        }

LABEL_6:
        [v4 ignoreTouch:v25 forEvent:v72];
      }
    }

    v23 = v20;
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v20 >= v13)
      {
        goto LABEL_31;
      }

      v24 = *(v17 + 8 * v20);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      v15 = v68;
      continue;
    }

    break;
  }

  v48 = swift_slowAlloc();
  v49 = v68;
  v50 = a1;
  v51 = v72;
  v46 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p34UIEventCtFSbAGXEfU_AA0c5ScaledE0C_Q00T3Kit0v5ScalewX0CSo7UIEventCTf1nnc_n(v48, v13, v50, v49, v51);

  MEMORY[0x1E12F6150](v48, -1, -1);

  return v46;
}

{
  v4 = v3;
  v73 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v52[-v9];
  v69 = type metadata accessor for CollisionCastHit();
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v56 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = a2;
  v16 = a3;
  v72 = v16;
  v68 = v15;
  if (v12 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v58 = v13;
    v59 = v4;
    v57 = v52;
    MEMORY[0x1EEE9AC00](v16);
    v60 = &v52[-((v14 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v60, v14);
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v14 = v19 & *(a1 + 56);
    v70 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
    swift_beginAccess();
    v20 = 0;
    v13 = (v18 + 63) >> 6;
    v61 = (v10 + 48);
    v62 = 0;
    v55 = (v10 + 32);
    v54 = (v10 + 8);
    v63 = (v10 + 56);
    v4 = v15;
    v66 = a1;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v25 = *(*(a1 + 48) + 8 * (v22 | (v20 << 6)));
      v10 = *&v4[v70];
      if (!v10)
      {
        v21 = v25;
        goto LABEL_6;
      }

      v71 = v14;
      v65 = v22 | (v20 << 6);
      v26 = v25;

      v27 = [v4 view];
      v64 = v26;
      [v26 locationInView_];
      v29 = v28;
      v31 = v30;

      v32 = [v4 view];
      if (!v32)
      {

        v14 = v71;
        goto LABEL_22;
      }

      v33 = v32;
      type metadata accessor for ARView();
      v34 = swift_dynamicCastClass();
      v14 = v71;
      if (!v34)
      {

LABEL_22:
        v37 = v67;
        (*v63)(v67, 1, 1, v69);
LABEL_23:
        a1 = v66;
        outlined destroy of ARConfigurationCreateResult?(v37, &_s10RealityKit16CollisionCastHitVSgMd);
        v4 = v68;
        goto LABEL_6;
      }

      v35 = *(v34 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
      if (!v35)
      {
        __break(1u);
      }

      v36 = v35;
      v37 = v67;
      RKARSystem.cachedGestureHitTest(_:)(v67, v29, v31);

      v38 = v69;
      if ((*v61)(v37, 1, v69) == 1)
      {

        goto LABEL_23;
      }

      v39 = v56;
      (*v55)();

      v40 = CollisionCastHit.entity.getter();

      if (v40 == v10)
      {

        (*v54)(v39, v38);
        a1 = v66;
        v4 = v68;
LABEL_28:

        *&v60[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_31:
          v46 = specialized _NativeSet.extractSubset(using:count:)(v60, v58, v62, a1);

          return v46;
        }
      }

      else
      {
        v41 = CollisionCastHit.entity.getter();
        v42 = v39;
        v43 = v68;
        v53 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v10, v41);

        v44 = v42;
        v4 = v43;
        (*v54)(v44, v69);
        a1 = v66;
        if (v53)
        {
          goto LABEL_28;
        }

LABEL_6:
        [v4 ignoreTouch:v25 forEvent:v72];
      }
    }

    v23 = v20;
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v20 >= v13)
      {
        goto LABEL_31;
      }

      v24 = *(v17 + 8 * v20);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      v15 = v68;
      continue;
    }

    break;
  }

  v48 = swift_slowAlloc();
  v49 = v68;
  v50 = a1;
  v51 = v72;
  v46 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p37UIEventCtFSbAGXEfU_AA0c8RotationdE0C_Q00T3Kit0v8RotationwX0CSo7UIEventCTf1nnc_n(v48, v13, v50, v49, v51);

  MEMORY[0x1E12F6150](v48, -1, -1);

  return v46;
}

uint64_t specialized Set._Variant.filter(_:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CollisionCastHit();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, a3);
  }

  v58 = v13;
  v62 = v11;
  v14 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  v15 = a2;
  v16 = a3;
  v17 = __CocoaSet.makeIterator()();
  v18 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
  swift_beginAccess();
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v20 = v19;
    v63 = type metadata accessor for UITouch();
    v21 = v20;
    v55 = (v10 + 8);
    v56 = (v10 + 32);
    v60 = (v10 + 48);
    v61 = (v10 + 56);
    v59 = MEMORY[0x1E69E7CD0];
    v57 = v17;
    while (1)
    {
      v64 = v21;
      swift_dynamicCast();
      v22 = v65;
      v23 = *&v15[v18];
      if (v23)
      {

        v24 = [v15 view];
        [v22 locationInView_];
        v26 = v25;
        v28 = v27;

        v29 = [v15 view];
        if (!v29)
        {

LABEL_12:
          (*v61)(v8, 1, 1, v62);
          goto LABEL_13;
        }

        v30 = v29;
        type metadata accessor for ARView();
        result = swift_dynamicCastClass();
        if (!result)
        {

          goto LABEL_12;
        }

        v32 = *(result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
        if (!v32)
        {
LABEL_37:
          __break(1u);
          return result;
        }

        v33 = v32;
        RKARSystem.cachedGestureHitTest(_:)(v8, v26, v28);

        v34 = v62;
        if ((*v60)(v8, 1, v62) == 1)
        {

LABEL_13:
          outlined destroy of ARConfigurationCreateResult?(v8, &_s10RealityKit16CollisionCastHitVSgMd);
          goto LABEL_14;
        }

        v35 = v18;
        v36 = v16;
        v37 = v58;
        (*v56)(v58, v8, v34);

        v38 = CollisionCastHit.entity.getter();

        if (v38 == v23)
        {

          (*v55)(v37, v34);
          v16 = v36;
          v18 = v35;
LABEL_21:
          v41 = v65;
          v42 = *(v59 + 16);
          if (*(v59 + 24) <= v42)
          {
            specialized _NativeSet.resize(capacity:)(v42 + 1);
          }

          v43 = v66;
          result = NSObject._rawHashValue(seed:)(*(v66 + 40));
          v44 = v43 + 56;
          v45 = -1 << *(v43 + 32);
          v46 = result & ~v45;
          v47 = v46 >> 6;
          if (((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6))) != 0)
          {
            v48 = __clz(__rbit64((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v49 = 0;
            v50 = (63 - v45) >> 6;
            do
            {
              if (++v47 == v50 && (v49 & 1) != 0)
              {
                __break(1u);
                goto LABEL_37;
              }

              v51 = v47 == v50;
              if (v47 == v50)
              {
                v47 = 0;
              }

              v49 |= v51;
              v52 = *(v44 + 8 * v47);
            }

            while (v52 == -1);
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
          }

          *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          *(*(v43 + 48) + 8 * v48) = v41;
          v53 = *(v43 + 16) + 1;
          v59 = v43;
          *(v43 + 16) = v53;
          goto LABEL_15;
        }

        v39 = CollisionCastHit.entity.getter();
        v40 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v39);

        (*v55)(v37, v62);
        v16 = v36;
        v18 = v35;
        if (v40)
        {
          goto LABEL_21;
        }
      }

LABEL_14:
      [v15 ignoreTouch:v22 forEvent:v16];

LABEL_15:
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  v59 = v14;
LABEL_36:

  return v59;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CollisionCastHit();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, a3);
  }

  v58 = v13;
  v62 = v11;
  v14 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  v15 = a2;
  v16 = a3;
  v17 = __CocoaSet.makeIterator()();
  v18 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
  swift_beginAccess();
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v20 = v19;
    v63 = type metadata accessor for UITouch();
    v21 = v20;
    v55 = (v10 + 8);
    v56 = (v10 + 32);
    v60 = (v10 + 48);
    v61 = (v10 + 56);
    v59 = MEMORY[0x1E69E7CD0];
    v57 = v17;
    while (1)
    {
      v64 = v21;
      swift_dynamicCast();
      v22 = v65;
      v23 = *&v15[v18];
      if (v23)
      {

        v24 = [v15 view];
        [v22 locationInView_];
        v26 = v25;
        v28 = v27;

        v29 = [v15 view];
        if (!v29)
        {

LABEL_12:
          (*v61)(v8, 1, 1, v62);
          goto LABEL_13;
        }

        v30 = v29;
        type metadata accessor for ARView();
        result = swift_dynamicCastClass();
        if (!result)
        {

          goto LABEL_12;
        }

        v32 = *(result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
        if (!v32)
        {
LABEL_37:
          __break(1u);
          return result;
        }

        v33 = v32;
        RKARSystem.cachedGestureHitTest(_:)(v8, v26, v28);

        v34 = v62;
        if ((*v60)(v8, 1, v62) == 1)
        {

LABEL_13:
          outlined destroy of ARConfigurationCreateResult?(v8, &_s10RealityKit16CollisionCastHitVSgMd);
          goto LABEL_14;
        }

        v35 = v18;
        v36 = v16;
        v37 = v58;
        (*v56)(v58, v8, v34);

        v38 = CollisionCastHit.entity.getter();

        if (v38 == v23)
        {

          (*v55)(v37, v34);
          v16 = v36;
          v18 = v35;
LABEL_21:
          v41 = v65;
          v42 = *(v59 + 16);
          if (*(v59 + 24) <= v42)
          {
            specialized _NativeSet.resize(capacity:)(v42 + 1);
          }

          v43 = v66;
          result = NSObject._rawHashValue(seed:)(*(v66 + 40));
          v44 = v43 + 56;
          v45 = -1 << *(v43 + 32);
          v46 = result & ~v45;
          v47 = v46 >> 6;
          if (((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6))) != 0)
          {
            v48 = __clz(__rbit64((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v49 = 0;
            v50 = (63 - v45) >> 6;
            do
            {
              if (++v47 == v50 && (v49 & 1) != 0)
              {
                __break(1u);
                goto LABEL_37;
              }

              v51 = v47 == v50;
              if (v47 == v50)
              {
                v47 = 0;
              }

              v49 |= v51;
              v52 = *(v44 + 8 * v47);
            }

            while (v52 == -1);
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
          }

          *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          *(*(v43 + 48) + 8 * v48) = v41;
          v53 = *(v43 + 16) + 1;
          v59 = v43;
          *(v43 + 16) = v53;
          goto LABEL_15;
        }

        v39 = CollisionCastHit.entity.getter();
        v40 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v39);

        (*v55)(v37, v62);
        v16 = v36;
        v18 = v35;
        if (v40)
        {
          goto LABEL_21;
        }
      }

LABEL_14:
      [v15 ignoreTouch:v22 forEvent:v16];

LABEL_15:
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  v59 = v14;
LABEL_36:

  return v59;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CollisionCastHit();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, a3);
  }

  v58 = v13;
  v62 = v11;
  v14 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  v15 = a2;
  v16 = a3;
  v17 = __CocoaSet.makeIterator()();
  v18 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  swift_beginAccess();
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v20 = v19;
    v63 = type metadata accessor for UITouch();
    v21 = v20;
    v55 = (v10 + 8);
    v56 = (v10 + 32);
    v60 = (v10 + 48);
    v61 = (v10 + 56);
    v59 = MEMORY[0x1E69E7CD0];
    v57 = v17;
    while (1)
    {
      v64 = v21;
      swift_dynamicCast();
      v22 = v65;
      v23 = *&v15[v18];
      if (v23)
      {

        v24 = [v15 view];
        [v22 locationInView_];
        v26 = v25;
        v28 = v27;

        v29 = [v15 view];
        if (!v29)
        {

LABEL_12:
          (*v61)(v8, 1, 1, v62);
          goto LABEL_13;
        }

        v30 = v29;
        type metadata accessor for ARView();
        result = swift_dynamicCastClass();
        if (!result)
        {

          goto LABEL_12;
        }

        v32 = *(result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
        if (!v32)
        {
LABEL_37:
          __break(1u);
          return result;
        }

        v33 = v32;
        RKARSystem.cachedGestureHitTest(_:)(v8, v26, v28);

        v34 = v62;
        if ((*v60)(v8, 1, v62) == 1)
        {

LABEL_13:
          outlined destroy of ARConfigurationCreateResult?(v8, &_s10RealityKit16CollisionCastHitVSgMd);
          goto LABEL_14;
        }

        v35 = v18;
        v36 = v16;
        v37 = v58;
        (*v56)(v58, v8, v34);

        v38 = CollisionCastHit.entity.getter();

        if (v38 == v23)
        {

          (*v55)(v37, v34);
          v16 = v36;
          v18 = v35;
LABEL_21:
          v41 = v65;
          v42 = *(v59 + 16);
          if (*(v59 + 24) <= v42)
          {
            specialized _NativeSet.resize(capacity:)(v42 + 1);
          }

          v43 = v66;
          result = NSObject._rawHashValue(seed:)(*(v66 + 40));
          v44 = v43 + 56;
          v45 = -1 << *(v43 + 32);
          v46 = result & ~v45;
          v47 = v46 >> 6;
          if (((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6))) != 0)
          {
            v48 = __clz(__rbit64((-1 << v46) & ~*(v43 + 56 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v49 = 0;
            v50 = (63 - v45) >> 6;
            do
            {
              if (++v47 == v50 && (v49 & 1) != 0)
              {
                __break(1u);
                goto LABEL_37;
              }

              v51 = v47 == v50;
              if (v47 == v50)
              {
                v47 = 0;
              }

              v49 |= v51;
              v52 = *(v44 + 8 * v47);
            }

            while (v52 == -1);
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
          }

          *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          *(*(v43 + 48) + 8 * v48) = v41;
          v53 = *(v43 + 16) + 1;
          v59 = v43;
          *(v43 + 16) = v53;
          goto LABEL_15;
        }

        v39 = CollisionCastHit.entity.getter();
        v40 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v23, v39);

        (*v55)(v37, v62);
        v16 = v36;
        v18 = v35;
        if (v40)
        {
          goto LABEL_21;
        }
      }

LABEL_14:
      [v15 ignoreTouch:v22 forEvent:v16];

LABEL_15:
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  v59 = v14;
LABEL_36:

  return v59;
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

double specialized simd_float4x4.init(translation:rotation:scale:)(double a1, float32x4_t a2)
{
  v3 = simd_matrix4x4(a2);
  simd_float4x4.scale(_:)();
  SIMD4<>._xyz.getter();
  SIMD4<>._xyz.setter();
  return v3;
}

void specialized EntityTranslationGestureRecognizer.touchesMoved(_:with:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v9 = [v0 view];
  [v1 locationInView_];
  v63 = v10;
  v62 = v11;

  if ([v1 numberOfTouches] >= 1)
  {
    v12 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight];
    v13 = *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight];
    LOBYTE(v67[0]) = v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight + 4];
    specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v13 | (LOBYTE(v67[0]) << 32), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v64);
    if ((v66 & 1) == 0)
    {
      v14 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation];
      if ((v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingWorldLocation + 16] & 1) == 0)
      {
        v60 = v65;
        v15 = *v14;
        v59 = *v14;
        v16 = [v1 view];
        if (v16)
        {
          v61.i64[0] = v16;
          type metadata accessor for ARView();
          if (swift_dynamicCastClass() && (v17 = *v12, LOBYTE(v67[0]) = v12[4], specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v17 | (LOBYTE(v67[0]) << 32), &OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity, v67), (v70 & 1) == 0))
          {
            v19 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, *&v63, *&v62, *v67, v67[1], *&v68, v69);
            v21 = v20;
            v23 = v22;

            if ((v23 & 1) == 0)
            {
              v26 = v59;
              v26.i32[0] = v15;
              v58 = v26;
              v25.i64[0] = v19;
              v61 = v25;
              *v24.f32 = vsub_f32(*v26.f32, v19);
              v27 = v59.f32[2];
              v24.f32[2] = v59.f32[2] - *&v21;
              v59 = v24;
              specialized SIMD.subscript.getter(xmmword_1E1252DD0, COERCE_DOUBLE(2));
              v29 = vmulq_f32(v59, v28);
              v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
              v30 = vmuls_lane_f32(v29.f32[0], v28, 2);
              *v28.f32 = vsub_f32(*v58.f32, vmul_n_f32(*v28.f32, v29.f32[0]));
              v29.i64[1] = v61.i64[1];
              *v29.f32 = vsub_f32(*v61.f32, *v28.f32);
              v28.f32[2] = v27 - v30;
              v28.i32[3] = 0;
              v31.f32[0] = *&v21 - (v27 - v30);
              v60 = v29;
              v59 = v31;
              v29.i64[1] = v31.u32[0];
              v61 = v29;
              v32 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastWorldLocation];
              *v32 = v19;
              *(v32 + 1) = v21;
              v32[16] = 0;
              *v14 = v28;
              v14[16] = 0;
              v33 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastTranslation];
              if ((v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastTranslation + 16] & 1) == 0 && (v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastFrameTime + 8] & 1) == 0)
              {
                v34 = *v33;
                v58 = *v33;
                v35 = *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastFrameTime];
                Date.init()();
                static Date.now.getter();
                Date.timeIntervalSince(_:)();
                v37 = v36;
                v38 = *(v3 + 8);
                v38(v6, v2);
                v38(v8, v2);
                v39 = v37 - v35;
                if (v37 - v35 > 2.22044605e-16)
                {
                  *&v39 = v39;
                  v40.i32[3] = v60.i32[3];
                  *v40.f32 = vdiv_f32(vsub_f32(*v60.f32, __PAIR64__(v58.u32[1], v34)), vdup_lane_s32(*&v39, 0));
                  v40.f32[2] = (v59.f32[0] - v58.f32[2]) / *&v39;
                  __asm { FMOV            V2.4S, #0.25 }

                  *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity] = vmlaq_f32(*&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity], _Q2, vsubq_f32(v40, *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_velocity]));
                }
              }

              Date.init()();
              static Date.now.getter();
              Date.timeIntervalSince(_:)();
              v47 = v46;
              v48 = *(v3 + 8);
              v48(v6, v2);
              v48(v8, v2);
              v49 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastFrameTime];
              *v49 = v47;
              v49[8] = 0;
              *v33 = v61;
              v33[16] = 0;
              v50 = &v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation];
              v51 = v62;
              *v50 = v63;
              *(v50 + 1) = v51;
              v50[16] = 0;
              v52 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun;
              if (v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_hasBegun] == 1)
              {
                [v1 setState_];
              }

              else
              {
                v53 = vmul_f32(*v60.f32, *v60.f32);
                v54 = (v59.f32[0] * v59.f32[0]) + vaddv_f32(v53);
                if (one-time initialization token for translationBeginWorldThresholdSq != -1)
                {
                  swift_once();
                }

                v53.i32[0] = static EntityTranslationGestureRecognizer.Constants.translationBeginWorldThresholdSq;
                if (*&static EntityTranslationGestureRecognizer.Constants.translationBeginWorldThresholdSq < v54)
                {
                  goto LABEL_20;
                }

                if ((v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation + 16] & 1) == 0)
                {
                  *&v55.f64[0] = v63;
                  *&v55.f64[1] = v62;
                  v56 = vcvt_f32_f64(vsubq_f64(v55, *&v1[OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_startingScreenLocation]));
                  v53 = vmul_f32(v56, v56);
                  v57 = vaddv_f32(v53);
                  if (one-time initialization token for translationBeginScreenThresholdSq != -1)
                  {
                    swift_once();
                  }

                  v53.i32[0] = static EntityTranslationGestureRecognizer.Constants.translationBeginScreenThresholdSq;
                  if (*&static EntityTranslationGestureRecognizer.Constants.translationBeginScreenThresholdSq < v57)
                  {
LABEL_20:
                    [v1 setState_];
                    v1[v52] = 1;
                  }
                }
              }
            }
          }

          else
          {
            v18 = v61.i64[0];
          }
        }
      }
    }
  }
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

double TextComponent.edgeInsets.getter()
{
  TextComponent.coreEdgeInsets.getter();
  v1 = v0;
  TextComponent.coreEdgeInsets.getter();
  TextComponent.coreEdgeInsets.getter();
  TextComponent.coreEdgeInsets.getter();
  return v1;
}

double key path getter for TextComponent.edgeInsets : TextComponent@<D0>(double *a1@<X8>)
{
  TextComponent.coreEdgeInsets.getter();
  v3 = v2;
  TextComponent.coreEdgeInsets.getter();
  v5 = v4;
  TextComponent.coreEdgeInsets.getter();
  v7 = v6;
  TextComponent.coreEdgeInsets.getter();
  result = v8;
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t key path setter for TextComponent.edgeInsets : TextComponent(double *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = TextComponent.coreEdgeInsets.modify();
  *v6 = v4;
  v5(v14, 0);
  v7 = TextComponent.coreEdgeInsets.modify();
  *&v1 = v1;
  *(v8 + 4) = LODWORD(v1);
  v7(v14, 0);
  v9 = TextComponent.coreEdgeInsets.modify();
  *&v1 = v2;
  *(v10 + 8) = LODWORD(v1);
  v9(v14, 0);
  v11 = TextComponent.coreEdgeInsets.modify();
  *&v1 = v3;
  *(v12 + 12) = LODWORD(v1);
  return v11(v14, 0);
}

uint64_t TextComponent.edgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = TextComponent.coreEdgeInsets.modify();
  *v9 = v7;
  v8(v17, 0);
  v10 = TextComponent.coreEdgeInsets.modify();
  *&a2 = a2;
  *(v11 + 4) = LODWORD(a2);
  v10(v17, 0);
  v12 = TextComponent.coreEdgeInsets.modify();
  *&a3 = a3;
  *(v13 + 8) = LODWORD(a3);
  v12(v17, 0);
  v14 = TextComponent.coreEdgeInsets.modify();
  *&a4 = a4;
  *(v15 + 12) = LODWORD(a4);
  return v14(v17, 0);
}

void (*TextComponent.edgeInsets.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  TextComponent.coreEdgeInsets.getter();
  v6 = v5;
  TextComponent.coreEdgeInsets.getter();
  v8 = v7;
  TextComponent.coreEdgeInsets.getter();
  v10 = v9;
  TextComponent.coreEdgeInsets.getter();
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v10;
  v4[3] = v11;
  return TextComponent.edgeInsets.modify;
}

void TextComponent.edgeInsets.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 32;
  v3 = *(*a1 + 24);
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = TextComponent.coreEdgeInsets.modify();
  *v8 = v4;
  v7(v2, 0);
  v9 = TextComponent.coreEdgeInsets.modify();
  *(v10 + 4) = v5;
  v9(v2, 0);
  v11 = TextComponent.coreEdgeInsets.modify();
  *(v12 + 8) = v6;
  v11(v2, 0);
  v13 = TextComponent.coreEdgeInsets.modify();
  *&v3 = v3;
  *(v14 + 12) = LODWORD(v3);
  v13(v2, 0);

  free(v1);
}

uint64_t TextComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for TextComponent();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1252E70;
  *(v11 + 32) = 1702521203;
  *(v11 + 40) = 0xE400000000000000;
  TextComponent.size.getter();
  v13 = v12;
  v15 = v14;
  type metadata accessor for CGSize(0);
  *(v11 + 48) = v13;
  *(v11 + 56) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = 1954047348;
  *(v11 + 88) = 0xE400000000000000;
  *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  __swift_allocate_boxed_opaque_existential_0((v11 + 96));
  TextComponent.text.getter();
  *(v11 + 128) = 0x756F72676B636162;
  *(v11 + 136) = 0xEF726F6C6F43646ELL;
  v17 = TextComponent.backgroundColor.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGColorRefaSgMd);
  *(v11 + 144) = v17;
  *(v11 + 168) = v18;
  strcpy((v11 + 176), "cornerRadius");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;
  TextComponent.cornerRadius.getter();
  v19 = MEMORY[0x1E69E6448];
  *(v11 + 192) = v20;
  *(v11 + 216) = v19;
  *(v11 + 224) = 0x65736E4965676465;
  *(v11 + 232) = 0xEA00000000007374;
  TextComponent.coreEdgeInsets.getter();
  v22 = v21;
  TextComponent.coreEdgeInsets.getter();
  v24 = v23;
  TextComponent.coreEdgeInsets.getter();
  v26 = v25;
  TextComponent.coreEdgeInsets.getter();
  v28 = v27;
  type metadata accessor for UIEdgeInsets(0);
  *(v11 + 264) = v29;
  v30 = swift_allocObject();
  *(v11 + 240) = v30;
  v30[2] = v22;
  v30[3] = v24;
  v30[4] = v26;
  v30[5] = v28;
  v31 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static ParticleEmitterComponent.Presets.impact.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v98 = &v72 - v1;
  v2 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParticleEmitterComponent.init()();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()();
  (*(v18 + 104))(v20, *MEMORY[0x1E697A7E8], v17);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v14 + 104))(v16, *MEMORY[0x1E697A7C0], v13);
  ParticleEmitterComponent.birthLocation.setter();
  v88 = xmmword_1E1252ED0;
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v74 + 104))(v73, *MEMORY[0x1E697A750], v75);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  (*(v77 + 104))(v76, *MEMORY[0x1E697A7F0], v78);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v80 + 104))(v79, *MEMORY[0x1E697A7D0], v81);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v25 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v25(v99, 0);
  v26 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v26(v99, 0);
  v27 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v27(v99, 0);
  v28 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v28(v99, 0);
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v29(v99, 0);
  v30 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v30(v99, 0);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v31(v99, 0);
  (*(v83 + 104))(v82, *MEMORY[0x1E697A770], v84);
  v32 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v32(v99, 0);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v33(v99, 0);
  v34 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v34(v99, 0);
  (*(v86 + 104))(v85, *MEMORY[0x1E697A790], v87);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v35(v99, 0);
  v36 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v36(v99, 0);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v37(v99, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v38(v99, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v39(v99, 0);
  v40 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v40(v99, 0);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v41(v99, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v42(v99, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v43(v99, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v44(v99, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v45(v99, 0);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v46(v99, 0);
  v47 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v47(v99, 0);
  v48 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v48(v99, 0);
  (*(v90 + 104))(v89, *MEMORY[0x1E697A758], v91);
  v49 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v49(v99, 0);
  v50 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v50(v99, 0);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v51(v99, 0);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v52(v99, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v53(v99, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v54(v99, 0);
  (*(v93 + 104))(v92, *MEMORY[0x1E697A7A8], v94);
  v55 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v55(v99, 0);
  v56 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v56(v99, 0);
  v57 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v57(v99, 0);
  v58 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v58(v99, 0);
  CGColorCreateGenericRGB(255.0, 248.0, 228.0, 0.26);
  v59 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v59(v99, 0);
  CGColorCreateGenericRGB(134.0, 134.0, 134.0, 0.07);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v60(v99, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v61(v99, 0);
  v62 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v62(v99, 0);
  v63 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v63(v99, 0);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrame.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrameVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.rowCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.columnCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRate.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRateVariation.setter();
  (*(v96 + 104))(v95, *MEMORY[0x1E697A788], v97);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.animationMode.setter();
  v64 = v98;
  (*(v22 + 16))(v98, v24, v21);
  (*(v22 + 56))(v64, 0, 1, v21);
  v65 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.imageSequence.setter();
  v65(v99, 0);
  type metadata accessor for TextureResource();
  v66 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v67 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v68 = textureLoader;
  v99[3] = &type metadata for TextureLoader;
  v99[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v99[0] = v68;
  v69 = v68;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v99);
  v70 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v70(v99, 0);
  return (*(v22 + 8))(v24, v21);
}

unint64_t lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader()
{
  result = lazy protocol witness table cache variable for type TextureLoader and conformance TextureLoader;
  if (!lazy protocol witness table cache variable for type TextureLoader and conformance TextureLoader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureLoader and conformance TextureLoader);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t static ARKitAnchorComponent.coreComponentType.getter()
{
  v0 = type metadata accessor for CoreComponentType.OriginType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = RFGetAnchorSourceComponentType();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A528], v0);
  return CoreComponentType.init(originType:)();
}

id ARKitAnchorComponent.arAnchor.getter()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E11CD000, v4, v5, "Failed to retrieve ARKit anchor, returning fallback anchor", v6, 2u);
      MEMORY[0x1E12F6150](v6, -1, -1);
    }

    v7 = MEMORY[0x1E69E9B18];
    v8 = objc_allocWithZone(MEMORY[0x1E6986418]);
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];

    return [v8 initWithTransform_];
  }
}

id static ARKitAnchorComponent.__fromCore(_:)@<X0>(void *a1@<X8>)
{
  __ComponentRef.__getCore()();
  result = RFGetARAnchorFromAnchorSourceComponent();
  if (result)
  {
    v3 = result;
    v4 = RFGetARAnchorTypeFromAnchorSourceComponent();
    if (RFGetIsMeshAnchorFromAnchorSourceComponent())
    {
LABEL_3:
      objc_opt_self();
      result = swift_dynamicCastObjCClassUnconditional();
      goto LABEL_4;
    }

    if (v4 > 2)
    {
      if (v4 == 3 || v4 == 4 || v4 == 5)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (!v4)
      {
        result = v3;
        goto LABEL_4;
      }

      if (v4 == 1 || v4 == 2)
      {
        goto LABEL_3;
      }
    }

    result = 0;
  }

LABEL_4:
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Component.__coreComponentType.getter in conformance ARKitAnchorComponent()
{
  type metadata accessor for REComponentType(0);
  v3 = v0;
  v2[0] = 36;
  static __ComponentTypeRef.__fromCore(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t static ARKitAnchorComponent.__coreComponentType.getter()
{
  type metadata accessor for REComponentType(0);
  v3 = v0;
  v2[0] = 36;
  static __ComponentTypeRef.__fromCore(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static Component.coreComponentType.getter in conformance ARKitAnchorComponent()
{
  v0 = type metadata accessor for CoreComponentType.OriginType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = RFGetAnchorSourceComponentType();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A528], v0);
  return CoreComponentType.init(originType:)();
}

uint64_t static ARKitAnchorComponent.registerBuiltinComponent(_:)(void (*a1)(ValueMetadata *, _UNKNOWN **, uint64_t, uint64_t, char *, char *), uint64_t a2)
{
  v19 = a2;
  v20 = a1;
  v18 = type metadata accessor for ComponentInfo.Access();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentInfo.PlatformVersion();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComponentInfo.Availability();
  v16 = *(v9 - 8);
  v17 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13ComponentInfoV17SupportedPlatformVGMd);
  type metadata accessor for ComponentInfo.SupportedPlatform();
  *(swift_allocObject() + 16) = xmmword_1E1252F40;
  ComponentInfo.PlatformVersion.init(stringLiteral:)();
  static ComponentInfo.SupportedPlatform.iOS(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  ComponentInfo.PlatformVersion.init(stringLiteral:)();
  static ComponentInfo.SupportedPlatform.visionOS(_:)();
  v12(v8, v5);
  ComponentInfo.Availability.init(introduced:deprecated:obsoleted:)();
  v13 = RFGetAnchorSourceComponentType();
  v14 = v18;
  (*(v2 + 104))(v4, *MEMORY[0x1E697A458], v18);
  v21 = 1;
  v20(&type metadata for ARKitAnchorComponent, &protocol witness table for ARKitAnchorComponent, v13, 0x100000000, v4, v11);
  (*(v2 + 8))(v4, v14);
  return (*(v16 + 8))(v11, v17);
}

uint64_t getEnumTagSinglePayload for ARKitAnchorComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ARKitAnchorComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t key path setter for EntityScaleGestureRecognizer.entity : EntityScaleGestureRecognizer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  specialized EntityGestureRecognizer.entityWillChange(_:)(v5);
  v6 = (v4 + OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity);
  swift_beginAccess();
  *v6 = v2;
  v6[1] = v3;
}

uint64_t EntityScaleGestureRecognizer.entity.setter(uint64_t a1, uint64_t a2)
{
  specialized EntityGestureRecognizer.entityWillChange(_:)(a1);
  v5 = (v2 + OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*EntityScaleGestureRecognizer.entity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return EntityScaleGestureRecognizer.entity.modify;
}

void EntityScaleGestureRecognizer.entity.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48));
  if (a2)
  {

    specialized EntityGestureRecognizer.entityWillChange(_:)(v6);
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    specialized EntityGestureRecognizer.entityWillChange(_:)(v3);
    *v5 = v3;
    v5[1] = v4;
  }

  free(v2);
}

void EntityScaleGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v5 = a2;

  specialized Set._Variant.filter(_:)(v6, v4, v5);

  if ([v4 numberOfTouches])
  {
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v8.receiver = v4;
    v8.super_class = type metadata accessor for EntityScaleGestureRecognizer();
    objc_msgSendSuper2(&v8, sel_touchesBegan_withEvent_, isa, v5);
  }

  else
  {

    [v4 setState_];
  }
}

Swift::Bool __swiftcall EntityScaleGestureRecognizer.canPrevent(_:)(UIGestureRecognizer *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!v6)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v8 = *(v4 + 8);
  v9 = a1;

  v10 = v8(ObjectType, v4);
  if (!v10)
  {

LABEL_7:
    v15.receiver = v1;
    v15.super_class = type metadata accessor for EntityScaleGestureRecognizer();
    v13 = [(UIGestureRecognizer *)&v15 canPreventGestureRecognizer:a1];
    return v13 & 1;
  }

  v11 = v10;

  v12 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v11, v6);

  v13 = v12;
  return v13 & 1;
}

id EntityScaleGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v2) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id EntityScaleGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity];
  *v5 = 0;
  *(v5 + 1) = 0;
  outlined init with copy of Any?(a1, v16);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for EntityScaleGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  outlined destroy of ARConfigurationCreateResult?(a1, &_sypSgMd);
  return v13;
}

id EntityScaleGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityScaleGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityScaleGestureRecognizer(uint64_t **a1))(void *a1)
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
  v2[4] = EntityScaleGestureRecognizer.entity.modify(v2);
  return protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityTranslationGestureRecognizer;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p34UIEventCtFSbAGXEfU_AA0c5ScaledE0C_Q00T3Kit0v5ScalewX0CSo7UIEventCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
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

    v10 = a4;
    v11 = a5;
    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, v10, v11);
    v13 = v12;

    return v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for UITouch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for groupActivities()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.groupActivities);
  __swift_project_value_buffer(v0, static Logger.groupActivities);
  return Logger.init(subsystem:category:)();
}

uint64_t RESyncHandle.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    RESyncRelease();
  }

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t RKARSystem.multipeerService.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {
      __break(1u);
      return result;
    }

    v2 = dispatch thunk of Scene.synchronizationService.getter();

    if (v2)
    {
      type metadata accessor for MultipeerConnectivityService();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall RKARSystem.updateCollaborationState()()
{
  v1 = OBJC_IVAR____TtC10RealityKit10RKARSystem_session;
  v2 = [*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) configuration];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 isCollaborationEnabled];
LABEL_11:

      goto LABEL_13;
    }
  }

  v6 = [*(v0 + v1) configuration];
  if (v6)
  {
    v3 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7 && (v8 = [v7 templateConfiguration]) != 0)
    {
      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v5 = [v10 isCollaborationEnabled];
      }

      else
      {

        v5 = 0;
        v3 = v9;
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  v5 = 0;
LABEL_13:
  if (*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted) == 1)
  {
    if ((v5 & 1) == 0)
    {

      RKARSystem.endCollaborativeMapBuilding()();
    }
  }

  else if (v5)
  {

    RKARSystem.startCollaborativeMapBuilding()();
  }
}

Swift::Void __swiftcall RKARSystem.endCollaborativeMapBuilding()()
{
  v1 = OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted;
  if (*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {

        v4 = dispatch thunk of Scene.synchronizationService.getter();

        if (v4)
        {
          type metadata accessor for MultipeerConnectivityService();
          v5 = swift_dynamicCastClass();
          if (v5)
          {
            MEMORY[0x1E12F4E20](*(v5 + 24));
            v6 = OBJC_IVAR____TtC10RealityKit10RKARSystem_netSessionObserver;
            if (*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_netSessionObserver))
            {
              RESyncNetSessionRemoveObserver();
              RERelease();
              swift_unknownObjectRelease();
              *(v0 + v6) = 0;
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v7 = OBJC_IVAR____TtC10RealityKit10RKARSystem_connectedPeers;
            swift_beginAccess();
            *(v0 + v7) = MEMORY[0x1E69E7CC0];

            *(v0 + v1) = 0;
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void RKARSystem.startCollaborativeMapBuilding()()
{
  v1 = OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted;
  if ((*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_collaborationStarted) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {
        v4 = v0;

        v5 = dispatch thunk of Scene.synchronizationService.getter();

        if (v5)
        {
          type metadata accessor for MultipeerConnectivityService();
          v6 = swift_dynamicCastClass();
          if (v6)
          {
            MEMORY[0x1E12F4E20](*(v6 + 24));
            v7 = RESyncNetSessionObserverCreate();
            *(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_netSessionObserver) = v7;
            if (v7)
            {
              v21 = ARView.PostProcessContext.device.modify;
              v22 = 0;
              v17 = MEMORY[0x1E69E9820];
              v18 = 1107296256;
              v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
              v20 = &block_descriptor_1;
              v8 = _Block_copy(&v17);

              RENetSessionObserverOnStart();
              _Block_release(v8);
              v9 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v21 = partial apply for closure #2 in RKARSystem.startCollaborativeMapBuilding();
              v22 = v9;
              v17 = MEMORY[0x1E69E9820];
              v18 = 1107296256;
              v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned RENetSessionError) -> ();
              v20 = &block_descriptor_10_0;
              v10 = _Block_copy(&v17);

              RENetSessionObserverOnStop();
              _Block_release(v10);
              v11 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v21 = partial apply for closure #3 in RKARSystem.startCollaborativeMapBuilding();
              v22 = v11;
              v17 = MEMORY[0x1E69E9820];
              v18 = 1107296256;
              v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> ();
              v20 = &block_descriptor_14_0;
              v12 = _Block_copy(&v17);

              RENetSessionObserverOnParticipantJoin();
              _Block_release(v12);
              v13 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v21 = partial apply for closure #4 in RKARSystem.startCollaborativeMapBuilding();
              v22 = v13;
              v17 = MEMORY[0x1E69E9820];
              v18 = 1107296256;
              v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned RENetParticipantError) -> ();
              v20 = &block_descriptor_18;
              v14 = _Block_copy(&v17);

              RENetSessionObserverOnParticipantLeave();
              _Block_release(v14);
              v15 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v21 = partial apply for closure #5 in RKARSystem.startCollaborativeMapBuilding();
              v22 = v15;
              v17 = MEMORY[0x1E69E9820];
              v18 = 1107296256;
              v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned UnsafeRawPointer, @unowned UInt32) -> ();
              v20 = &block_descriptor_22;
              v16 = _Block_copy(&v17);

              RENetSessionObserverOnReceiveUserData();
              _Block_release(v16);
              RESyncNetSessionAddObserver();
            }

            swift_unknownObjectRelease();
            *(v4 + v1) = 1;
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void closure #2 in RKARSystem.startCollaborativeMapBuilding()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RKARSystem.endCollaborativeMapBuilding()();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned RENetSessionError) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void closure #3 in RKARSystem.startCollaborativeMapBuilding()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for REARNetworkParticipant();
    *(swift_allocObject() + 16) = a2;
    RERetain();
    v5 = OBJC_IVAR____TtC10RealityKit10RKARSystem_connectedPeers;
    v6 = swift_beginAccess();
    MEMORY[0x1E12F4070](v6);
    if (*((*(v4 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

uint64_t closure #4 in RKARSystem.startCollaborativeMapBuilding()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_connectedPeers;
    v5 = result;
    swift_beginAccess();
    v6 = *&v5[v4];

    if (v6 >> 62)
    {
      goto LABEL_15;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v9 = v8;
          v10 = *(MEMORY[0x1E12F44E0]() + 16);
          swift_unknownObjectRelease();
          v8 = v9;
          if (v10 == a2)
          {
LABEL_11:
            specialized Array.remove(at:)(v8);
          }

LABEL_8:
          if (v7 == ++v8)
          {
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_15:
        v11 = __CocoaSet.count.getter();
        if (v11 < 0)
        {
          __break(1u);
        }

        v7 = v11;
        if (!v11)
        {
        }
      }

      if (*(*(v6 + 8 * v8 + 32) + 16) == a2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned RENetParticipantError) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void closure #5 in RKARSystem.startCollaborativeMapBuilding()(int a1, int a2, _BYTE *__src, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 <= 0xE)
    {
      v8 = specialized Data.InlineData.init(_:)(__src, &__src[a4]);
      v9 = v10 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v6 = __DataStorage.init(bytes:length:)();
      v7 = v6;
      if (a4 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        *(v8 + 24) = v4;
        v9 = v7 | 0x8000000000000000;
      }

      else
      {
        v8 = v4 << 32;
        v9 = v6 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARCollaborationData);
    v13 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v13)
    {
      v14 = v13;
      v15 = *&v12[OBJC_IVAR____TtC10RealityKit10RKARSystem_session];
      [v15 updateWithCollaborationData_];
      outlined consume of Data._Representation(v8, v9);
    }

    else
    {
      outlined consume of Data._Representation(v8, v9);
    }
  }

  else
  {
    outlined consume of Data._Representation(v8, v9);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned UnsafeRawPointer, @unowned UInt32) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void RKARSystem.sendCollaborationDataToPeers(_:)(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_self();
    v13[0] = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v13];
    v5 = v13[0];
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [v3 vioDataType] == 7;
      isa = Data._bridgeToObjectiveC()().super.isa;
      RKARSystem.sendDataToPeers(_:sendUnreliably:)(isa, v9);

      outlined consume of Data._Representation(v6, v8);
    }

    else
    {
      v11 = v5;
      v12 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t RKARSystem.sendDataToPeers(_:sendUnreliably:)(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC10RealityKit10RKARSystem_connectedPeers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = RKARSystem.multipeerService.getter();
  if (result)
  {
    v8 = MEMORY[0x1E12F4E20](*(result + 24));
    v9 = *(v2 + v5);
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a2 & 1;
      *(v10 + 32) = v8;
      *(v10 + 40) = a1;

      v11 = a1;
      dispatch thunk of __Engine.asyncOnEngineQueue(_:)();

      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t closure #1 in RKARSystem.sendDataToPeers(_:sendUnreliably:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  v7 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12F44E0](i, v7);
      }

      else
      {
      }

      PeerID = RESyncParticipantGetPeerID();
      v11 = [a4 bytes];
      v12 = [a4 length];
      if (a2)
      {
        MEMORY[0x1E12F4F30](a3, PeerID, v11, v12, 3);
      }

      else
      {
        MEMORY[0x1E12F4F20](a3, PeerID, v11, v12, 3);
      }
    }
  }

  return result;
}

uint64_t REARNetworkParticipant.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

Swift::Void __swiftcall ARView.didMoveToWindow()()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ARView();
  objc_msgSendSuper2(&v18, sel_didMoveToWindow);
  v1 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_renderView];
  [v0 bounds];
  [v1 setFrame_];

  v2 = [v0 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 1;
  }

  *&v0[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation] = v5;
  *&v0[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = v5;
  v6 = [objc_opt_self() defaultCenter];
  v7 = [v0 window];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x1E12F3F80](0xD00000000000001ELL, 0x80000001E1257310);
    [v6 addObserver:v0 selector:sel_windowWillRotateWithNotification_ name:v9 object:v8];

    v10 = MEMORY[0x1E12F3F80](0xD000000000000027, 0x80000001E1257330);
    [v6 addObserver:v0 selector:sel_windowWillAnimateRotationWithNotification_ name:v10 object:v8];

    v11 = MEMORY[0x1E12F3F80](0xD00000000000001DLL, 0x80000001E1257360);
    v12 = v8;
    [v6 addObserver:v0 selector:sel_windowDidRotateWithNotification_ name:v11 object:v12];

    v13 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E12F3F80](0xD00000000000001ELL, 0x80000001E1257310);
    v15 = [v0 window];
    [v6 removeObserver:v0 name:v14 object:v15];

    v16 = MEMORY[0x1E12F3F80](0xD000000000000027, 0x80000001E1257330);
    v17 = [v0 window];
    [v6 removeObserver:v0 name:v16 object:v17];

    v12 = MEMORY[0x1E12F3F80](0xD00000000000001DLL, 0x80000001E1257360);
    v13 = [v0 window];
    [v6 removeObserver:v0 name:v12 object:v13];
  }
}

Swift::Void __swiftcall ARView.windowWillRotate(notification:)(NSNotification notification)
{
  v3 = type metadata accessor for __AssetRef();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(objc_class *)notification.super.isa object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v45[0] = v46;
  v45[1] = v47;
  if (!*(&v47 + 1))
  {
    v21 = v45;
LABEL_16:
    outlined destroy of Any?(v21);
    return;
  }

  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UIWindow);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v43;
  v8 = [v1 window];
  if (!v8)
  {

    goto LABEL_18;
  }

  v9 = v8;
  v42 = v1;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
LABEL_18:

    return;
  }

  v11 = [(objc_class *)notification.super.isa userInfo];
  if (!v11)
  {

    v46 = 0u;
    v47 = 0u;
    v21 = &v46;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = 0xD000000000000021;
  v44 = 0x80000001E12573A0;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v15 & 1) == 0))
  {

    outlined destroy of AnyHashable(v45);
    v46 = 0u;
    v47 = 0u;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, &v46);
  outlined destroy of AnyHashable(v45);

  if (!*(&v47 + 1))
  {
LABEL_21:

    v21 = &v46;
    goto LABEL_16;
  }

  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = *&v45[0];
  v17 = [*&v45[0] integerValue];
  v18 = OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation;
  v19 = v42;
  v20 = *&v42[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation];
  if (v20 == v17)
  {
LABEL_14:

    return;
  }

  *&v42[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = v20;
  *&v19[v18] = v17;
  v22 = *&v19[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (!v22)
  {
    __break(1u);
    return;
  }

  v23 = v22;

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  (*(v4 + 8))(v6, v3);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();

  v24 = OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation;
  v25 = v42;
  swift_beginAccess();
  if (v25[v24])
  {

    goto LABEL_18;
  }

  v26 = [v25 window];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  [v25 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v27 bounds];
  v49.origin.x = v36;
  v49.origin.y = v37;
  v49.size.width = v38;
  v49.size.height = v39;
  v48.origin.x = v29;
  v48.origin.y = v31;
  v48.size.width = v33;
  v48.size.height = v35;
  v40 = CGRectEqualToRect(v48, v49);

  if (v40)
  {
    v25[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] = 1;
  }
}

Swift::Void __swiftcall ARView.updateWindowRotation()()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation;
  if (v0[OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation] == 1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of RERenderManager.waitUntilScheduled()();
    v2 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_renderView];
    v8[0] = 0x3FF0000000000000;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0x3FF0000000000000;
    v8[4] = 0;
    v8[5] = 0;
    [v2 setTransform_];
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    [v0 contentScaleFactor];
    ARView.resizeDrawable(size:scaleFactor:)(v4, v6, v7);

    v0[v1] = 0;
  }
}

uint64_t specialized ARView.windowWillAnimateRotation(notification:)()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation;
  result = swift_beginAccess();
  if ((v0[v1] & 1) == 0 && v0[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] == 1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of RERenderManager.waitUntilScheduled()();
    v3 = OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation;
    v4 = ARCameraToDisplayRotation();
    v5 = ARCameraToDisplayRotation();
    v6 = SPAngleMakeWithDegrees((v5 - v4));
    if (fabsf(fabsf(v6) + -3.1416) <= 0.01)
    {
      v28 = *&v0[v3];
      v29 = v28 == 4 || v28 == 1;
      v30 = -0.00000023842;
      if (v29)
      {
        v30 = 0.00000023842;
      }

      if (v6 >= 0.0)
      {
        v30 = -v30;
      }

      v6 = v30 + v6;
      v21 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_renderView];
      [v0 bounds];
      MidX = CGRectGetMidX(v43);
      [v0 bounds];
    }

    else
    {
      v7 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
      [*&v0[OBJC_IVAR____TtC10RealityKit6ARView_renderView] bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v0 bounds];
      v44.origin.x = v16;
      v44.origin.y = v17;
      v44.size.width = v18;
      v44.size.height = v19;
      v41.origin.x = v9;
      v41.origin.y = v11;
      v41.size.width = v13;
      v41.size.height = v15;
      v20 = CGRectEqualToRect(v41, v44);
      v21 = *&v0[v7];
      [v0 bounds];
      if (v20)
      {
        MidX = CGRectGetMidY(*&v22);
        [v0 bounds];
        MidY = CGRectGetMidX(v42);
LABEL_16:
        [v21 setCenter_];

        v35 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_renderView];
        CGAffineTransformMakeRotation(&v40, v6);
        v38 = *&v40.c;
        v39 = *&v40.a;
        v37 = *&v40.tx;
        v36 = v35;
        *&v40.a = v39;
        *&v40.c = v38;
        *&v40.tx = v37;
        [v36 setTransform_];
      }

      MidX = CGRectGetMidX(*&v22);
      [v0 bounds];
    }

    MidY = CGRectGetMidY(*&v31);
    goto LABEL_16;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.description.getter()
{
  if ((SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = *(SpatialTrackingSession.UnavailableCapabilities.anchor.getter() + 16);

  if (v0)
  {
    v1 = SpatialTrackingSession.UnavailableCapabilities.anchor.getter();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh57C23UnavailableCapabilitiesV0A3KitE11descriptionSSvgSSAC13i3V16jK54Vcfu_33_0e2f2957bef5a9ec78f2a038ea1e8673AKSSTf3nnnpk_nTf1cn_nTm(v1, MEMORY[0x1E697A640], MEMORY[0x1E697A638]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v2 = BidirectionalCollection<>.joined(separator:)();
    v4 = v3;

    MEMORY[0x1E12F4010](v2, v4);

    MEMORY[0x1E12F4010](93, 0xE100000000000000);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = 0x203A726F68636E61;
    *(v8 + 5) = 0xE90000000000005BLL;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(SpatialTrackingSession.UnavailableCapabilities.sceneUnderstanding.getter() + 16);

  if (v10)
  {
    _StringGuts.grow(_:)(24);

    v12 = SpatialTrackingSession.UnavailableCapabilities.sceneUnderstanding.getter();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh57C23UnavailableCapabilitiesV0A3KitE11descriptionSSvgSSAC13i3V16jK54Vcfu_33_0e2f2957bef5a9ec78f2a038ea1e8673AKSSTf3nnnpk_nTf1cn_nTm(v12, MEMORY[0x1E697A660], MEMORY[0x1E697A658]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v13 = BidirectionalCollection<>.joined(separator:)();
    v15 = v14;

    MEMORY[0x1E12F4010](v13, v15);

    MEMORY[0x1E12F4010](93, 0xE100000000000000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      v5 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
      v5 = isUniquelyReferenced_nonNull_native;
    }

    *(v5 + 2) = v17 + 1;
    v18 = &v5[16 * v17];
    *(v18 + 4) = 0xD000000000000015;
    *(v18 + 5) = 0x80000001E12573F0;
  }

  v19 = MEMORY[0x1E12F35D0](isUniquelyReferenced_nonNull_native);
  if (v19 != 2)
  {
    v20 = v19;
    _StringGuts.grow(_:)(30);

    if (v20)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1E12F4010](v21, v22);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v24 = *(v5 + 2);
    v23 = *(v5 + 3);
    if (v24 >= v23 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v5);
    }

    *(v5 + 2) = v24 + 1;
    v25 = &v5[16 * v24];
    *(v25 + 4) = 0xD00000000000001CLL;
    *(v25 + 5) = 0x80000001E1257410;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v26 = BidirectionalCollection<>.joined(separator:)();

  return v26;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh57C23UnavailableCapabilitiesV0A3KitE11descriptionSSvgSSAC13i3V16jK54Vcfu_33_0e2f2957bef5a9ec78f2a038ea1e8673AKSSTf3nnnpk_nTf1cn_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

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

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit27ARConfigurationCreateResultVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit27ARConfigurationCreateResultVGMR, type metadata accessor for ARConfigurationCreateResult);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMR, MEMORY[0x1E697A1F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV0D3KitE9RotorTypeOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV0D3KitE9RotorTypeOGMR, type metadata accessor for AccessibilityComponent.RotorType);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}