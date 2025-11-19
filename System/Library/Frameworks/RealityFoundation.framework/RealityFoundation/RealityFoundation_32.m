uint64_t MeshDeformationBuilder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MeshDeformationBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError);
  }

  return result;
}

uint64_t *assignWithTake for MeshDeformationAssetBuilder(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  v5 = a2[6];
  v6 = a1[6];
  a1[5] = a2[5];
  a1[6] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for MeshDeformationAssetBuilder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MeshDeformationAssetBuilder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of MeshDeformationBuilder.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t outlined consume of _Proto_MeshScope_v1?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return outlined consume of _Proto_MeshScope_v1(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer);
  }

  return result;
}

uint64_t partial apply for closure #1 in Sequence.count(where:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *a1;
  result = v5(a2);
  if ((result & 1) != 0 && (v9 = __OFADD__(v7, 1), ++v7, v9))
  {
    __break(1u);
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

__n128 ProjectiveTransformCameraComponent.transform.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

void ProjectiveTransformCameraComponent.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 ProjectiveTransformCameraComponent.cullingTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  result = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = result;
  return result;
}

__n128 ProjectiveTransformCameraComponent.cullingTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = result;
  return result;
}

void __swiftcall ProjectiveTransformCameraComponent.init(projectionMatrix:)(RealityFoundation::ProjectiveTransformCameraComponent *__return_ptr retstr, simd_float4x4 *projectionMatrix)
{
  retstr->transform.columns[0] = v2;
  retstr->transform.columns[1] = v3;
  retstr->transform.columns[2] = v4;
  retstr->transform.columns[3] = v5;
  retstr->cullingTransform.value.columns[0] = 0u;
  retstr->cullingTransform.value.columns[1] = 0u;
  retstr->cullingTransform.value.columns[2] = 0u;
  retstr->cullingTransform.value.columns[3] = 0u;
  *&retstr->cullingTransform.is_nil = 257;
}

void __swiftcall ProjectiveTransformCameraComponent.init(projectionMatrix:cullingMatrix:)(RealityFoundation::ProjectiveTransformCameraComponent *__return_ptr retstr, simd_float4x4 *projectionMatrix, simd_float4x4_optional *cullingMatrix)
{
  retstr->transform.columns[0] = v3;
  retstr->transform.columns[1] = v4;
  retstr->transform.columns[2] = v5;
  retstr->transform.columns[3] = v6;
  v7 = projectionMatrix->columns[3];
  retstr->cullingTransform.value.columns[2] = projectionMatrix->columns[2];
  retstr->cullingTransform.value.columns[3] = v7;
  retstr->cullingTransform.is_nil = projectionMatrix[1].columns[0].i8[0];
  v8 = projectionMatrix->columns[1];
  retstr->cullingTransform.value.columns[0] = projectionMatrix->columns[0];
  retstr->cullingTransform.value.columns[1] = v8;
  retstr->autoFitFullscreenAspect = 1;
}

uint64_t static ProjectiveTransformCameraComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v18 = v5;
  v19 = v4;
  v16 = v7;
  v17 = v6;
  v8 = 1;
  AutoFitFullScreenAspect = RECustomMatrixCameraComponentGetAutoFitFullScreenAspect();
  result = RECustomMatrixCameraComponentGetCullingTransformMatrix();
  if (result)
  {
    v8 = 0;
    v11 = *zmmword_1C1887630;
    v12 = *&zmmword_1C1887630[16];
    v13 = *&zmmword_1C1887630[32];
    v14 = *&zmmword_1C1887630[48];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v16;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 128) = v8;
  *(a2 + 129) = AutoFitFullScreenAspect;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ProjectiveTransformCameraComponent.__toCore(_:)(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 9);
  v17 = *(v1 + 8);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 12);
  v7 = *(v1 + 13);
  v9 = *(v1 + 14);
  v8 = *(v1 + 15);
  v10 = *(v1 + 128);
  v18 = *(v1 + 129);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *v1;
  v14 = v1[1];
  RECustomMatrixCameraComponentSetRenderProjectionMatrix();
  RECustomMatrixCameraComponentSetCullingTransformMatrix();
  RECustomMatrixCameraComponentSetAutoFitFullScreenAspect();
  RECustomMatrixCameraComponentSetEyeCount();
  result = RENetworkMarkComponentDirty();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static ProjectiveTransformCameraComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = a2[8].i8[0];
  if (a1[8].i8[0])
  {
    if ((a2[8].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[8].i8[0])
    {
      return 0;
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[5], a2[5]), vceqq_f32(a1[4], a2[4])), vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[7], a2[7])))) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  return a1[8].u8[1] ^ a2[8].u8[1] ^ 1u;
}

__n128 __swift_memcpy130_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProjectiveTransformCameraComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 130))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 129);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProjectiveTransformCameraComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 129) = a2 + 1;
    }
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReaderError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  if (v5 <= 1)
  {
    if (!*(v0 + 32))
    {
      v11 = 0;
      _StringGuts.grow(_:)(108);
      MEMORY[0x1C68F3410](0xD00000000000004ALL, 0x80000001C18E7150);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0x6E69207461202C27, 0xEC00000020786564);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v8);

      v6 = "es for configuration set '";
      v7 = 0xD000000000000012;
      goto LABEL_7;
    }

    v11 = 0;
    _StringGuts.grow(_:)(119);
    MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18E70D0);
    MEMORY[0x1C68F3410](v3, v4);
    MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E7120);
    MEMORY[0x1C68F3410](v2, v1);
    v7 = 11869;
LABEL_11:
    v9 = 0xE200000000000000;
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    _StringGuts.grow(_:)(30);

    v11 = 0x6573736120656854;
    MEMORY[0x1C68F3410](v2, v1);
    v9 = 0x80000001C18E70B0;
    v7 = 0xD000000000000011;
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    v11 = 0;
    _StringGuts.grow(_:)(93);
    MEMORY[0x1C68F3410](0xD000000000000026, 0x80000001C18E7020);
    MEMORY[0x1C68F3410](v3, v4);
    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E7050);
    MEMORY[0x1C68F3410](v2, v1);
    v7 = 11815;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(42);

  v11 = 0x6573736120656854;
  MEMORY[0x1C68F3410](v2, v1);
  v6 = "n with the name '";
  v7 = 0xD00000000000001DLL;
LABEL_7:
  v9 = v6 | 0x8000000000000000;
LABEL_12:
  MEMORY[0x1C68F3410](v7, v9);
  return v11;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError);
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)()
{
  v29 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = v0[4];
  swift_defaultActor_initialize();
  v0[2] = 0;
  v3 = v0 + 2;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = RERealityFileCreateByOpeningFileAtURL();

  if (v7)
  {
    RERealityFileCopyConfigurationSetNames();
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v27 = 0;
    v8 = static Array._forceBridgeFromObjectiveC(_:result:)();
    __break(1u);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v24, v25);
  }

  else
  {
    v9 = *v3;
    if (*v3)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v10 = v9;
    }

    else
    {
      v11 = v0[4];
      type metadata accessor for URL();
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 2;
    }

    swift_willThrow();
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];
    type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader();
    swift_defaultActor_destroy();
    outlined destroy of BodyTrackingComponent?(v17, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v18, v19);
    v20 = *(*v16 + 48);
    v21 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
    v22 = v0[1];
    v23 = *MEMORY[0x1E69E9840];

    return v22();
  }
}

{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v2 + 8))(v5, v3);
  v6 = v0[1];
  v7 = v0[6];
  v8 = *MEMORY[0x1E69E9840];

  return v6(v7);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.__deallocating_deinit()
{
  v1 = *(v0 + 224);
  RERelease();
  outlined destroy of BodyTrackingComponent?(v0 + 112, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v2 = *(v0 + 232);

  v3 = OBJC_IVAR____TtCVE17RealityFoundationC10RealityKit6Entity20ConfigurationCatalog30RealityFileConfigurationReader_loadingUrl;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader()
{
  result = type metadata singleton initialization cache for Entity.ConfigurationCatalog.RealityFileConfigurationReader;
  if (!type metadata singleton initialization cache for Entity.ConfigurationCatalog.RealityFileConfigurationReader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Entity.ConfigurationCatalog.RealityFileConfigurationReader()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 280) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for URL();
  *(v4 + 216) = v5;
  v6 = *(v5 - 8);
  *(v4 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v3, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)()
{
  v1 = *(v0 + 216);
  v2 = (*(v0 + 224) + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  if (*(v0 + 280) == 1)
  {
    v5 = *(v0 + 240);
    type metadata accessor for AnchorEntity();
    (*v2)(v5, v4, v1);
    outlined init with copy of Entity.__LoadOptions(v3, v0 + 104);
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:);
    v7 = *(v0 + 240);
    v8 = v0 + 104;
  }

  else
  {
    v9 = *(v0 + 232);
    type metadata accessor for Entity();
    (*v2)(v9, v4, v1);
    outlined init with copy of Entity.__LoadOptions(v3, v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:);
    v7 = *(v0 + 232);
    v8 = v0 + 16;
  }

  return Entity.init(contentsOf:withName:options:)(v7, 0, 0, v8);
}

{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];

  v4 = v0[1];

  return v4();
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = v4[26];

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v7, 0);
  }

  else
  {
    v9 = v4[29];
    v8 = v4[30];

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = v4[26];

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v7, 0);
  }

  else
  {
    v9 = v4[29];
    v8 = v4[30];

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v5 = type metadata accessor for URL.DirectoryHint();
  v4[107] = v5;
  v6 = *(v5 - 8);
  v4[108] = v6;
  v7 = *(v6 + 64) + 15;
  v4[109] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[110] = v8;
  v9 = *(v8 - 8);
  v4[111] = v9;
  v10 = *(v9 + 64) + 15;
  v4[112] = swift_task_alloc();
  v11 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[113] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

char *Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = v0 + 58;
  v2 = v0 + 69;
  outlined init with copy of [String : String](v0[105], (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[2] == 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v0[70] = 0;
    v0[71] = 0;
    *v2 = 0;
    v0[72] = 1;
    *(v0 + 73) = 0u;
    *(v0 + 75) = 0u;
    *(v0 + 77) = 0u;
    v0[79] = 0;
  }

  else
  {
    outlined init with copy of [String : String]((v0 + 5), (v0 + 69), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 2));
    if (v0[72] != 1)
    {
      v4 = *(v0 + 75);
      *(v0 + 31) = *(v0 + 73);
      *(v0 + 32) = v4;
      *(v0 + 33) = *(v0 + 77);
      v0[68] = v0[79];
      v5 = *(v0 + 71);
      *v1 = *v2;
      *(v0 + 30) = v5;
      goto LABEL_13;
    }
  }

  v3 = v0 + 80;
  outlined init with copy of [String : String](v0[106] + 112, (v0 + 16), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[16] == 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 16), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v0[81] = 0;
    v0[82] = 0;
    *v3 = 0;
    v0[83] = 1;
    *(v0 + 42) = 0u;
    *(v0 + 43) = 0u;
    *(v0 + 44) = 0u;
    v0[90] = 0;
    goto LABEL_7;
  }

  outlined init with copy of [String : String]((v0 + 19), (v0 + 80), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 16));
  if (v0[83] == 1)
  {
LABEL_7:
    v0[95] = 0;
    *(v0 + 91) = 0u;
    *(v0 + 93) = 0u;
    *(v0 + 513) = 0;
    v0[65] = 0;
    *v1 = 0u;
    *(v0 + 30) = 0u;
    v0[62] = 0;
    *(v0 + 528) = 1;
    *(v0 + 133) = 0;
    *(v0 + 536) = 2;
    v0[68] = 0;
    outlined assign with take of __DownsamplingStrategy?((v0 + 91), (v0 + 58));
    v0[63] = 0;
    swift_beginAccess();
    *(v0 + 512) = static RKARSystemCore.generateDecimatedMeshes;
    if (v0[83] != 1)
    {
      outlined destroy of BodyTrackingComponent?((v0 + 80), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    goto LABEL_11;
  }

  v6 = *(v0 + 43);
  *(v0 + 31) = *(v0 + 42);
  *(v0 + 32) = v6;
  *(v0 + 33) = *(v0 + 44);
  v0[68] = v0[90];
  v7 = *(v0 + 41);
  *v1 = *v3;
  *(v0 + 30) = v7;
LABEL_11:
  if (v0[72] != 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 69), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

LABEL_13:
  outlined init with copy of [String : String](v0[105], (v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[30] != 1)
  {
    v9 = *(v0 + 256);
    v11 = (v0 + 30);
    goto LABEL_19;
  }

  v8 = v0[106];
  outlined destroy of BodyTrackingComponent?((v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  outlined init with copy of [String : String](v8 + 112, (v0 + 44), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[44] != 1)
  {
    v9 = *(v0 + 368);
    v11 = (v0 + 44);
LABEL_19:
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v11);
    v10 = v0[104];
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  outlined destroy of BodyTrackingComponent?((v0 + 44), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v9 = 0;
  v10 = v0[104];
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*(v10 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
    if (v13)
    {
      v101 = *(*(v10 + 56) + 8 * v12);

      goto LABEL_24;
    }
  }

LABEL_23:
  v101 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v14 = *(*(v0[106] + 232) + 24);
  if (!*(v14 + 16))
  {
LABEL_39:

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v35 = xmmword_1C18B1D60;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    *(v35 + 16) = 0;
    *(v35 + 40) = 0;
    swift_willThrow();
    goto LABEL_75;
  }

  v15 = *(*(v0[106] + 232) + 24);

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
  if ((v17 & 1) == 0)
  {

    goto LABEL_39;
  }

  v98 = v9;
  v18 = *(*(v14 + 56) + 8 * v16);
  v0[114] = v18;

  v19 = *(v18 + 32);
  if (v19 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v97)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v99 = v1;
    v100 = v0;
    if (!i)
    {
      break;
    }

    v22 = v19;
    v103 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v0 = v101;
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    v25 = v103;
    v26 = v22;
    v102 = v22 & 0xC000000000000001;
    v27 = v22;
    v28 = i;
    do
    {
      if (v102)
      {
        v29 = MEMORY[0x1C68F41F0](v24, v26);
      }

      else
      {
        v29 = *(v26 + 8 * v24 + 32);
      }

      v31 = *(v29 + 32);
      v30 = *(v29 + 40);

      v33 = *(v103 + 16);
      v32 = *(v103 + 24);
      v1 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      }

      ++v24;
      *(v103 + 16) = v1;
      v34 = v103 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      v26 = v27;
    }

    while (v28 != v24);
    v21 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v104 = v21;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v36 = 0;
    v37 = v104;
    v38 = (v25 + 40);
    while (v36 < *(v25 + 16))
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v41 = v0[2];

      if (!v41 || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39), (v43 & 1) == 0))
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v50 = v40;
        *(v50 + 8) = v39;
        *(v50 + 24) = 0;
        *(v50 + 32) = 0;
        *(v50 + 16) = 0;
        *(v50 + 40) = 4;
        swift_willThrow();

        v0 = v100;
        goto LABEL_74;
      }

      v44 = (v0[7] + 16 * v42);
      v46 = *v44;
      v45 = v44[1];

      v48 = *(v104 + 16);
      v47 = *(v104 + 24);
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
      }

      v36 = (v36 + 1);
      *(v104 + 16) = v48 + 1;
      v49 = v104 + 16 * v48;
      *(v49 + 32) = v46;
      *(v49 + 40) = v45;
      v38 += 2;
      v0 = v101;
      if (v1 == v36)
      {

        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_88:
    v96 = v19;
    v97 = __CocoaSet.count.getter();
    v19 = v96;
  }

  v1 = *(MEMORY[0x1E69E7CC0] + 16);
  v0 = v101;
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
LABEL_52:
  v0 = v100;
  v51 = v100[106];
  if (!*(v37 + 16))
  {

    v70 = OBJC_IVAR____TtCVE17RealityFoundationC10RealityKit6Entity20ConfigurationCatalog30RealityFileConfigurationReader_loadingUrl;
    v71 = swift_task_alloc();
    v100[115] = v71;
    *v71 = v100;
    v71[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
    v72 = v100[106];
    v68 = v51 + v70;
    v69 = v99;
LABEL_62:

    return Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(v68, v69, v98);
  }

  v52 = *(v51 + 224);
  isa = Array._bridgeToObjectiveC()().super.isa;
  RealityFileAssetDescriptorWithConfigurationSpecifications = RERealityFileGetRealityFileAssetDescriptorWithConfigurationSpecifications();

  if (!RealityFileAssetDescriptorWithConfigurationSpecifications)
  {
    v100[101] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v73 = BidirectionalCollection<>.joined(separator:)();
    v75 = v74;

    v100[102] = v37;
    v76 = BidirectionalCollection<>.joined(separator:)();
    v78 = v77;

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
    swift_allocError();
    *v79 = v73;
    *(v79 + 8) = v75;
    v0 = v100;
    *(v79 + 16) = v76;
    *(v79 + 24) = v78;
    v80 = 1;
    goto LABEL_73;
  }

  if (!RERealityFileAssetDescriptorAsSceneDescriptor())
  {
    v81 = v100[113];
    RERealityFileAssetDescriptorGetFilename();
    static String.Encoding.utf8.getter();
    v82 = String.init(cString:encoding:)();
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0xD000000000000010;
    }

    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0x80000001C18E72A0;
    }

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
    swift_allocError();
    *v79 = v84;
    *(v79 + 8) = v85;
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    v80 = 2;
LABEL_73:
    *(v79 + 32) = v80;
    swift_willThrow();

LABEL_74:
    v1 = v99;
    goto LABEL_75;
  }

  SceneName = RESceneDescriptorGetSceneName();
  v56 = v100[113];
  v1 = v99;
  if (SceneName)
  {
    v57 = v100[113];
    static String.Encoding.utf8.getter();
    v58 = String.init(cString:encoding:)();
    if (v59)
    {
      v60 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v60 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v60)
      {
        v61 = v100[112];
        v62 = v100[109];
        v63 = v100[108];
        v64 = v100[107];
        v65 = v100[106];
        v100[99] = v58;
        v100[100] = v59;
        (*(v63 + 104))(v62, *MEMORY[0x1E6968F70], v64);
        lazy protocol witness table accessor for type String and conformance String();
        URL.appending<A>(component:directoryHint:)();
        (*(v63 + 8))(v62, v64);

        v66 = swift_task_alloc();
        v100[119] = v66;
        *v66 = v100;
        v66[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
        v67 = v100[106];
        v68 = v100[112];
        v69 = v99;
        goto LABEL_62;
      }
    }

    v90 = v100[113];
  }

  RERealityFileAssetDescriptorGetFilename();
  static String.Encoding.utf8.getter();
  v91 = String.init(cString:encoding:)();
  if (v92)
  {
    v93 = v91;
  }

  else
  {
    v93 = 0xD000000000000010;
  }

  if (v92)
  {
    v94 = v92;
  }

  else
  {
    v94 = 0x80000001C18E72A0;
  }

  lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
  swift_allocError();
  *v95 = v93;
  *(v95 + 8) = v94;
  *(v95 + 16) = 0;
  *(v95 + 24) = 0;
  *(v95 + 32) = 3;
  swift_willThrow();

LABEL_75:
  v86 = v0[113];
  v87 = v0[112];
  v88 = v0[109];
  outlined destroy of Entity.__LoadOptions(v1);

  v89 = v0[1];

  return v89();
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  v4[116] = v1;

  v7 = v4[106];
  if (v1)
  {
    v8 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4[117] = a1;
    v8 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 952);
  v6 = *v2;
  v4[120] = v1;

  v7 = v4[106];
  if (v1)
  {
    v8 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4[121] = a1;
    v8 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  type metadata accessor for MainActor();
  *(v0 + 944) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[106];
  v4 = v0[103];

  Entity.copy(to:recursive:)(v4, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

{
  v1 = v0[117];
  v2 = v0[114];

  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v6 = v0[1];

  return v6();
}

{
  type metadata accessor for MainActor();
  *(v0 + 976) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[106];
  v4 = v0[103];

  Entity.copy(to:recursive:)(v4, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

{
  v1 = v0[121];
  v2 = v0[114];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];

  (*(v4 + 8))(v3, v5);
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[109];
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[114];

  v2 = v0[116];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];

  (*(v3 + 8))(v2, v4);
  v5 = v0[120];
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[109];
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v9 = v0[1];

  return v9();
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.RealityFileConfigurationReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2, a3);
}

uint64_t outlined assign with take of __DownsamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

RealityKit::__Downsampling::Factor __swiftcall __Downsampling.Factor.init(mipmapOffset:)(RealityKit::__Downsampling::Factor mipmapOffset)
{
  v2 = 1 << SLOBYTE(mipmapOffset.value);
  if (mipmapOffset.value >= 0x40)
  {
    v2 = 0;
  }

  if (mipmapOffset.value > 0x40)
  {
    v2 = 0;
  }

  *v1 = v2;
  return mipmapOffset;
}

uint64_t __DownsamplingStrategyClosure.resolve(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t protocol witness for __DownsamplingStrategy.resolve(_:) in conformance __DownsamplingStrategyClosure()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

void __Downsampling.Minimal.resolve(_:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_20:
      *a2 = v5;
      return;
    }

    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = a2;
    a2 = 0;
    v5 = v16;
    while (1)
    {
      v6 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1C68F41F0](a2, a1) : *(a1 + 8 * a2 + 32);
      v7 = v6;
      v8 = [v6 mipmapLevelCount];

      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        break;
      }

      v10 = v9 > 0x40;
      if (v9 >= 0x40)
      {
        v11 = 0;
      }

      else
      {
        v11 = 1 << v9;
      }

      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      a2 = (a2 + 1);
      *(v16 + 16) = v14 + 1;
      *(v16 + 8 * v14 + 32) = v12;
      if (i == a2)
      {
        a2 = v15;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
}

void __Downsampling.SkipHighResolution.resolve(_:)(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v20 = a1;
  v4 = *v2;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
LABEL_22:
      *a2 = v6;
      return;
    }

    v7 = a1;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v19 = a2;
    v8 = 0;
    v6 = v21;
    v9 = v7;
    v10 = v7 & 0xC000000000000001;
    while (1)
    {
      v11 = v10 ? MEMORY[0x1C68F41F0](v8, v9) : *(v9 + 8 * v8 + 32);
      v12 = v11;
      v13 = [v11 mipmapLevelCount];

      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        break;
      }

      if (v4 < v14)
      {
        v14 = v4;
      }

      v15 = v14 > 0x40;
      if (v14 >= 0x40)
      {
        v16 = 0;
      }

      else
      {
        v16 = 1 << v14;
      }

      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      a2 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (a2 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), a2 + 1, 1);
      }

      ++v8;
      *(v21 + 16) = a2 + 1;
      *(v21 + 8 * a2 + 32) = v17;
      v9 = v20;
      if (v5 == v8)
      {
        a2 = v19;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    v5 = __CocoaSet.count.getter();
    a1 = v20;
  }

  __break(1u);
}

unint64_t __Downsampling.Error.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(58);
  MEMORY[0x1C68F3410](0x6764756220656874, 0xEE0020666F207465);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](0xD00000000000002ALL, 0x80000001C18E7300);
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v4;
  MEMORY[0x1C68F3410](0x2E736574796220, 0xE700000000000000);

  MEMORY[0x1C68F3410](v6, v7);

  return 0xD000000000000037;
}

uint64_t __Downsampling.Budgeted.init(availableBytes:device:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t __Downsampling.Budgeted.resolve(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v123 = *v2;
  v138 = v2[1];
  if (a1 >> 62)
  {
    goto LABEL_175;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v151 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      return result;
    }

    v7 = 0;
    v127 = v3 & 0xC000000000000001;
    v129 = i;
    v8 = v151;
    v125 = v3 & 0xFFFFFFFFFFFFFF8;
    v126 = v3;
    v124 = (v3 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_168;
      }

      if (v127)
      {
        v9 = MEMORY[0x1C68F41F0]();
      }

      else
      {
        if (v7 >= *(v125 + 16))
        {
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v9 = *&v124[8 * v7];
      }

      v10 = v9;
      v11 = [v9 mipmapLevelCount];
      if (v11 < 0)
      {
        goto LABEL_169;
      }

      v12 = v11;
      v135 = v3;
      if (v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
        v13 = 0;
        v14 = v5;
        do
        {
          [v10 pixelFormat];
          [v10 width];
          [v10 height];
          [v10 depth];
          [v10 sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();
          v16 = *(v5 + 16);
          v15 = *(v5 + 24);
          if (v16 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          }

          ++v13;
          *(v5 + 16) = v16 + 1;
          v17 = v5 + 104 * v16;
          *(v17 + 48) = v145;
          *(v17 + 64) = v146;
          *(v17 + 32) = v141;
          *(v17 + 128) = v150;
          *(v17 + 96) = v148;
          *(v17 + 112) = v149;
          *(v17 + 80) = v147;
        }

        while (v12 != v13);
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v14 = v5;
      }

      v18 = [v10 textureType];
      v19 = 6;
      if (v18 != 5)
      {
        v19 = 1;
      }

      v20 = *(v14 + 16);
      if (v20)
      {
        break;
      }

      v22 = v5;
LABEL_30:
      v28 = *(v8 + 16);
      v27 = *(v8 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v5 = MEMORY[0x1E69E7CC0];
      }

      *(v8 + 16) = v29;
      *(v8 + 8 * v28 + 32) = v22;
      v7 = v135;
      if (v135 == v129)
      {
        goto LABEL_36;
      }
    }

    v131 = v19;
    v134 = v8;
    *&v141 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v131;
    v22 = v5;
    v23 = 128;
    while (1)
    {
      v24 = *(v14 + v23);
      v8 = v21 * v24;
      if ((v21 * v24) >> 64 != (v21 * v24) >> 63)
      {
        break;
      }

      if (v8 < 0)
      {
        goto LABEL_82;
      }

      *&v141 = v5;
      v26 = *(v5 + 16);
      v25 = *(v5 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v21 = v131;
      }

      *(v5 + 16) = v26 + 1;
      *(v5 + 8 * v26 + 32) = v8;
      v23 += 104;
      if (!--v20)
      {

        v8 = v134;
        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v137 = v10;
    if (!v129)
    {
      v63 = MEMORY[0x1E69E7CC0];
      v69 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v69)
      {
        goto LABEL_94;
      }

      goto LABEL_146;
    }

    v143 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129 & ~(v129 >> 63), 0);
    if (v129 < 0)
    {
      goto LABEL_178;
    }

    v62 = 0;
    v63 = v143;
    do
    {
      if ((v126 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1C68F41F0](v62, v126);
      }

      else
      {
        v64 = *(v126 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = [v64 mipmapLevelCount];

      *&v141 = v63;
      v68 = v63[1].u64[0];
      v67 = v63[1].u64[1];
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
      }

      ++v62;
      v63[1].i64[0] = v69;
      v63[2].i64[v68] = v66;
    }

    while (v129 != v62);
LABEL_94:
    if (v69 > 3)
    {
      v70 = v69 & 0xFFFFFFFFFFFFFFFCLL;
      v72 = v63 + 3;
      v73 = 0uLL;
      v74 = v69 & 0xFFFFFFFFFFFFFFFCLL;
      v75 = 0uLL;
      do
      {
        v73 = vbslq_s8(vcgtq_s64(v72[-1], v73), v72[-1], v73);
        v75 = vbslq_s8(vcgtq_s64(*v72, v75), *v72, v75);
        v72 += 2;
        v74 -= 4;
      }

      while (v74);
      v76 = vbslq_s8(vcgtq_s64(v73, v75), v73, v75);
      v77 = vextq_s8(v76, v76, 8uLL).u64[0];
      v71 = vbsl_s8(vcgtd_s64(v76.i64[0], v77), *v76.i8, v77);
      if (v69 != v70)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
LABEL_99:
      v78 = v69 - v70;
      v79 = &v63[2] + v70;
      do
      {
        v81 = *v79++;
        v80 = v81;
        if (*&v81 > *&v71)
        {
          v71 = v80;
        }

        --v78;
      }

      while (v78);
    }

    v82 = MEMORY[0x1E69E7CC0];
    if (v71)
    {
      v83 = 0;
      v84 = v10[2];
      v130 = v71;
      v133 = v137[2];
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          __break(1u);
          goto LABEL_177;
        }

        if (v84)
        {
          v140 = v83 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
          v39 = v82;
          v86 = v137 + 4;
          while (1)
          {
            v87 = *(*v86 + 16) - 1 >= v83 ? v83 : *(*v86 + 16) - 1;
            if (v87 < 0)
            {
              goto LABEL_167;
            }

            v88 = *(*v86 + 8 * v87 + 32);
            v90 = *(v82 + 16);
            v89 = *(v82 + 24);
            v47 = v90 + 1;
            if (v90 >= v89 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
            }

            *(v82 + 16) = v47;
            v91 = v82 + 16 * v90;
            *(v91 + 32) = v88;
            *(v91 + 40) = v87;
            ++v86;
            if (!--v84)
            {
              v82 = MEMORY[0x1E69E7CC0];
              goto LABEL_118;
            }
          }
        }

        v47 = *(v82 + 16);
        if (v47)
        {
          break;
        }

        if (v123)
        {
          goto LABEL_170;
        }

LABEL_127:
        v83 = v85;
        if (v85 == *&v71)
        {
          goto LABEL_146;
        }
      }

      v140 = v83 + 1;
      v39 = v82;
LABEL_118:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
      v92 = v82;
      v93 = *(v82 + 16);
      v94 = 32;
      v95 = v47;
      do
      {
        v96 = v93;
        v97 = *(v39 + v94);
        *&v141 = v92;
        v98 = *(v92 + 24);
        ++v93;
        if (v96 >= v98 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v93, 1);
          v92 = v141;
        }

        *(v92 + 16) = v93;
        *(v92 + 8 * v96 + 32) = v97;
        v94 += 16;
        --v95;
      }

      while (v95);
      v99 = 0;
      v100 = 0;
      v84 = v133;
      v8 = v134;
      while (1)
      {
        v101 = *(v92 + 8 * v99 + 32);
        v37 = __CFADD__(v100, v101);
        v100 += v101;
        if (v37)
        {
          goto LABEL_164;
        }

        if (v96 + 1 == ++v99)
        {

          if (v100 < v123)
          {
            goto LABEL_134;
          }

          v82 = MEMORY[0x1E69E7CC0];
          v71 = v130;
          v85 = v140;
          goto LABEL_127;
        }
      }
    }

LABEL_146:

    v109 = 0;
    v110 = *(v8 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    while (v110 != v109)
    {
      if (v109 >= *(v8 + 16))
      {
        goto LABEL_173;
      }

      v111 = *(v8 + 8 * v109++ + 32);
      v112 = *(v111 + 16);
      if (v112)
      {
        v113 = *(v111 + 8 * v112 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        }

        v115 = *(v3 + 16);
        v114 = *(v3 + 24);
        if (v115 >= v114 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v3);
        }

        *(v3 + 16) = v115 + 1;
        *(v3 + 8 * v115 + 32) = v113;
      }
    }

    v116 = *(v3 + 16);
    if (!v116)
    {
      v117 = 0;
LABEL_161:

      lazy protocol witness table accessor for type __Downsampling.Error and conformance __Downsampling.Error();
      swift_allocError();
      *v120 = v123;
      v120[1] = v117;
      return swift_willThrow();
    }

    v117 = 0;
    v118 = (v3 + 32);
    while (1)
    {
      v119 = *v118++;
      v37 = __CFADD__(v117, v119);
      v117 += v119;
      if (v37)
      {
        break;
      }

      if (!--v116)
      {
        goto LABEL_161;
      }
    }

LABEL_174:
    __break(1u);
LABEL_175:
    ;
  }

  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v29)
  {
    goto LABEL_79;
  }

  v129 = 0;
  v126 = v3;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_36:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
  v30 = 0;
  v31 = v5;
  do
  {
    if (v30 >= *(v8 + 16))
    {
      goto LABEL_165;
    }

    v32 = *(v8 + 32 + 8 * v30);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = 0;
      v35 = (v32 + 32);
      while (1)
      {
        v36 = *v35++;
        v37 = __CFADD__(v34, v36);
        v34 += v36;
        if (v37)
        {
          break;
        }

        if (!--v33)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_79:
      result = swift_bridgeObjectRelease_n();
      goto LABEL_80;
    }

    v34 = 0;
LABEL_44:
    v142 = v31;
    v39 = *(v31 + 16);
    v38 = *(v31 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v31 = v142;
    }

    ++v30;
    *(v31 + 16) = v39 + 1;
    *(v31 + 8 * v39 + 32) = v34;
  }

  while (v30 != v29);
  v3 = 0;
  v40 = v39 + 1;
  v41 = 32;
  v42 = MEMORY[0x1E69E7CC0];
  do
  {
    v43 = *(v31 + v41);
    v37 = __CFADD__(v3, v43);
    v3 += v43;
    if (v37)
    {
      goto LABEL_166;
    }

    v41 += 8;
    --v40;
  }

  while (v40);

  if (v123 >= v3)
  {

LABEL_80:
    *a2 = 0;
    return result;
  }

  *&v141 = v42;
  v128 = v29;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
  v44 = 0;
  v10 = v42;
  v132 = v8 + 32;
  v134 = v8;
  while (2)
  {
    if (v44 >= *(v8 + 16))
    {
      goto LABEL_172;
    }

    v139 = v44;
    v45 = *(v132 + 8 * v44);
    v46 = *(v45 + 16);
    if (!v46)
    {
      v54 = *(v132 + 8 * v44);

      v49 = MEMORY[0x1E69E7CC0];
      v39 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v39 >= 2)
      {
        goto LABEL_64;
      }

LABEL_62:

      v8 = v134;
LABEL_73:
      *&v141 = v10;
      v61 = v10[2];
      v60 = v10[3];
      v3 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      }

      v44 = v139 + 1;
      v10[2] = v3;
      v10[v61 + 4] = v49;
      if (v139 + 1 == v128)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  v136 = v10;
  v152 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
  v47 = 0;
  v48 = *(v45 + 16);
  v49 = v152;
  do
  {
    if (!v48)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:

      v144 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
      v102 = 40;
      do
      {
        v103 = *(v39 + v102);
        v104 = v103 > 0x40;
        if (v103 >= 0x40)
        {
          v105 = 0;
        }

        else
        {
          v105 = 1 << v103;
        }

        if (v104)
        {
          v106 = 0;
        }

        else
        {
          v106 = v105;
        }

        v108 = *(v144 + 16);
        v107 = *(v144 + 24);
        if (v108 >= v107 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1);
        }

        *(v144 + 16) = v108 + 1;
        *(v144 + 8 * v108 + 32) = v106;
        v102 += 16;
        --v47;
      }

      while (v47);

      *a2 = v144;
      return result;
    }

    v50 = v48 - 1;
    if ((v48 - 1) >= *(v45 + 16))
    {
      goto LABEL_132;
    }

    v51 = *(v45 + 24 + 8 * v48);
    v37 = __CFADD__(v47, v51);
    v47 += v51;
    if (v37)
    {
      goto LABEL_133;
    }

    v53 = *(v152 + 16);
    v52 = *(v152 + 24);
    v39 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
    }

    *(v152 + 16) = v39;
    *(v152 + 8 * v53 + 32) = v47;
    v48 = v50;
    --v46;
  }

  while (v46);
  v10 = v136;
  if (v39 < 2)
  {
    goto LABEL_62;
  }

LABEL_64:
  v55 = v39 >> 1;
  v56 = v39 + 3;
  v39 = 4;
  v8 = v134;
  while (2)
  {
    if (v39 == v56)
    {
LABEL_66:
      --v56;
      ++v39;
      if (!--v55)
      {

        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  v57 = *(v49 + 2);
  if (v39 - 4 < v57)
  {
    if (v56 - 4 >= v57)
    {
      goto LABEL_163;
    }

    v58 = *&v49[8 * v39];
    v59 = *&v49[8 * v56];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew()(v49);
    }

    *&v49[8 * v39] = v59;
    *&v49[8 * v56] = v58;
    goto LABEL_66;
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:

  v121 = MEMORY[0x1E69E7CC0];

  *a2 = v121;
  return result;
}

int64_t static __Downsampling.getMipmapByteSizes(_:device:)(void *a1)
{
  result = [a1 mipmapLevelCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v24 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v5 = 0;
      v6 = v24;
      do
      {
        [a1 pixelFormat];
        [a1 width];
        [a1 height];
        [a1 depth];
        [a1 sampleCount];
        MTLGetTextureLevelInfoForDeviceWithOptions();
        v8 = *(v24 + 16);
        v7 = *(v24 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        *(v24 + 16) = v8 + 1;
        v9 = v24 + 104 * v8;
        *(v9 + 48) = v18;
        *(v9 + 64) = v19;
        *(v9 + 32) = v17;
        *(v9 + 128) = v23;
        *(v9 + 96) = v21;
        *(v9 + 112) = v22;
        *(v9 + 80) = v20;
      }

      while (v3 != v5);
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    if ([a1 textureType] == 5)
    {
      v10 = 6;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v6 + 16);
    if (!v11)
    {
LABEL_19:

      return v4;
    }

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = 128;
    while (1)
    {
      v13 = *(v6 + v12);
      v14 = v10 * v13;
      if ((v10 * v13) >> 64 != (v10 * v13) >> 63)
      {
        break;
      }

      if (v14 < 0)
      {
        goto LABEL_21;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v4 + 16) = v16 + 1;
      *(v4 + 8 * v16 + 32) = v14;
      v12 += 104;
      if (!--v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __Downsampling.Error and conformance __Downsampling.Error()
{
  result = lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error;
  if (!lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error);
  }

  return result;
}

uint64_t VideoPlaybackController.audioInputMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t VideoPlaybackController.audioInputMode.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
  v3 = *(*(v1 + 16) + 16);
  return REVideoAssetSetAudioInputMode();
}

uint64_t (*VideoPlaybackController.audioInputMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return VideoPlaybackController.audioInputMode.modify;
}

uint64_t VideoPlaybackController.audioInputMode.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(*(v5 + 16) + 16);
    v7 = (0x20001u >> (8 * *(v5 + 24))) & 3;

    return REVideoAssetSetAudioInputMode();
  }

  return result;
}

uint64_t VideoPlaybackController._currentViewingMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);

  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v20 = a1;
    v6 = v4 & 0xC000000000000001;
    a1 = v4 & 0xFFFFFFFFFFFFFF8;

    v7 = 0;
    while (v6)
    {
      MEMORY[0x1C68F41F0](v7, v4);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = *(Strong + 16);
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass() && (v12 = swift_weakLoadStrong()) != 0)
        {
          v13 = *(v12 + 16);
          SceneNullable = REEntityGetSceneNullable();
          if (SceneNullable)
          {
            v15 = SceneNullable;
            if (RESceneGetSwiftObject())
            {
              swift_unknownObjectRelease();
            }

            else
            {
              type metadata accessor for Scene();
              v16 = swift_allocObject();
              *(v16 + 24) = 0u;
              *(v16 + 40) = 0u;
              *(v16 + 56) = 0;
              swift_unknownObjectWeakInit();
              *(v16 + 104) = 0;
              *(v16 + 88) = 0u;
              *(v16 + 72) = 0u;
              swift_weakInit();
              *(v16 + 232) = 0;
              *(v16 + 216) = 0u;
              *(v16 + 200) = 0u;
              *(v16 + 184) = 0u;
              *(v16 + 168) = 0u;
              *(v16 + 152) = 0u;
              *(v16 + 136) = 0u;
              *(v16 + 120) = 0u;
              RERetain();
              *(v16 + 16) = v15;
              RESceneSetSwiftObject();
              v6 = v4 & 0xC000000000000001;
            }

            a1 = v4 & 0xFFFFFFFFFFFFFF8;

            CurrentViewingMode = REVideoComponentGetCurrentViewingMode();

            if (CurrentViewingMode == 1)
            {

              v19 = 0;
              a1 = v20;
              goto LABEL_29;
            }

            goto LABEL_6;
          }
        }

        else
        {
        }
      }

LABEL_6:
      ++v7;
      if (v8 == i)
      {

        v19 = 2;
        a1 = v20;
        goto LABEL_29;
      }
    }

    if (v7 >= *(a1 + 16))
    {
      goto LABEL_26;
    }

    v9 = *(v4 + 8 * v7 + 32);

    v8 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v19 = 2;
LABEL_29:
  *a1 = v19;
  return result;
}

double VideoPlaybackController._currentImageSize.getter()
{
  v1 = *(v0 + 16);

  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {

    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v4, v2);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_13:
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + 16);
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REVideoComponentGetCurrentImageSize();
          v11 = v9;

          if (v11.f32[0] != 0.0 || v11.f32[1] != 0.0)
          {

            *&result = *&vcvtq_f64_f32(v11);
            return result;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v4;
      if (v5 == i)
      {

        return 0.0;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v6 = *(v2 + 8 * v4 + 32);

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0.0;
}

uint64_t VideoPlaybackController.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VideoPlaybackController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static VideoPlaybackController.ViewingMode.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0 && (*a2 & 1) == 0)
  {
    return 1;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t VideoPlaybackController.ViewingMode.hash(into:)()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1C68F4C10](0);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int VideoPlaybackController.ViewingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VideoPlaybackController.ViewingMode(_BYTE *a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0 && (*a2 & 1) == 0)
  {
    return 1;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VideoPlaybackController.ViewingMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VideoPlaybackController.ViewingMode()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1C68F4C10](0);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoPlaybackController.ViewingMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t (*VideoPlaybackController.preferredViewingMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return VideoPlaybackController.preferredViewingMode.modify;
}

uint64_t key path setter for VideoPlaybackController.preferredViewingMode : VideoPlaybackController(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v3 + 40) = *a1;
  v4 = *(v3 + 16);
  v6 = v2;

  __VideoResource.preferredViewingMode.setter(&v6);
}

uint64_t VideoPlaybackController.preferredViewingMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  *(v1 + 40) = *a1;
  v3 = *(v1 + 16);
  v5 = v2;

  __VideoResource.preferredViewingMode.setter(&v5);
}

uint64_t (*VideoPlaybackController.desiredViewingMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return VideoPlaybackController.desiredViewingMode.modify;
}

uint64_t VideoPlaybackController.preferredViewingMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *(v2 + 40) = v3;
  v4 = *(v2 + 16);
  if (a2)
  {
    v7 = v3;

    v5 = &v7;
  }

  else
  {
    v8 = v3;

    v5 = &v8;
  }

  __VideoResource.preferredViewingMode.setter(v5);
}

uint64_t VideoPlaybackController.reverbSendLevel.setter(double a1)
{
  *(v1 + 32) = a1;
  v2 = *(*(v1 + 16) + 16);
  return REVideoAssetSetReverbSendLevelDecibels();
}

uint64_t (*VideoPlaybackController.reverbSendLevel.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return VideoPlaybackController.reverbSendLevel.modify;
}

uint64_t VideoPlaybackController.reverbSendLevel.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 32) = *a1;
  v2 = *(*(v1 + 16) + 16);
  return REVideoAssetSetReverbSendLevelDecibels();
}

unint64_t lazy protocol witness table accessor for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode()
{
  result = lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode;
  if (!lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode);
  }

  return result;
}

uint64_t specialized VideoPlaybackController.init(videoResource:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  swift_beginAccess();
  v4 = 0x20001u >> (8 * *(v2 + 24));
  v5 = *(a1 + 16);

  REVideoAssetSetAudioInputMode();
  v6 = *(v2 + 32);
  v7 = *(*(v2 + 16) + 16);
  REVideoAssetSetReverbSendLevelDecibels();
  v8 = *(v2 + 16);
  v10 = *(v2 + 40);

  __VideoResource.preferredViewingMode.setter(&v10);

  return v2;
}

uint64_t ManipulationComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 16843009;
  *(a1 + 5) = 0;
  swift_weakInit();

  return _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
}

uint64_t ManipulationComponent.init(contentEntity:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 16843009;
  *(a1 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  swift_weakAssign();
}

uint64_t ManipulationComponent.init(_:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 16843009;
  *(a1 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  *(a1 + 2) = RETransformInteractionComponentGetAllowsTwoHandedRotation();
  *(a1 + 1) = RETransformInteractionComponentGetAllowsTwoHandedScale();
  *(a1 + 3) = RETransformInteractionComponentGetAllowsSingleHandedRotation();
  *(a1 + 4) = RETransformInteractionComponentGetAllowsTranslation();
  Inertia = RETransformInteractionComponentGetInertia();
  if (Inertia >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = Inertia;
  }

  *a1 = v3;
  *(a1 + 6) = RETransformInteractionComponentGetUsesDefaultAudio() ^ 1;
  result = RETransformInteractionComponentGetResetsOnRelease();
  *(a1 + 5) = result ^ 1;
  return result;
}

uint64_t _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5()
{
  v0 = type metadata accessor for TransformInteractionSystem();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SystemRegistry.shared;
  result = swift_beginAccess();
  v3 = *(v1 + 3);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 2;
    if (v6 == v0)
    {
      return result;
    }
  }

  v24 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26TransformInteractionSystem33_3A341D50D446846BB88CBE2E5246020ELLCmMd, &_s17RealityFoundation26TransformInteractionSystem33_3A341D50D446846BB88CBE2E5246020ELLCmMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_SystemUpdateRateProtocol_pMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pMR);
  v7 = swift_dynamicCast();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  v8 = *(v1 + 3);
  v9 = *(v8 + 2);
  if (v9 >> 31)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 3) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v8);
    *(v1 + 3) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v0;
  *(v13 + 5) = &protocol witness table for TransformInteractionSystem;
  *(v1 + 3) = v8;
  swift_endAccess();
  SystemRegistry.getOrAddId(of:)(v0, &protocol witness table for TransformInteractionSystem);
  v14 = swift_allocObject();
  *(v14 + 16) = v0 != 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v0 != 0;
  *(v15 + 17) = v7;
  v22 = partial apply for specialized closure #2 in static System.registerSystem();
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> (@unowned UnsafeMutableRawPointer);
  v21 = &block_descriptor_19;
  v16 = _Block_copy(&v18);

  v22 = partial apply for specialized closure #3 in static System.registerSystem();
  v23 = v15;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned OpaquePointer?, @unowned OpaquePointer) -> ();
  v21 = &block_descriptor_133_0;
  v17 = _Block_copy(&v18);

  RERegisterCustomSystem();
  _Block_release(v17);
  _Block_release(v16);
}

uint64_t ManipulationComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[2];
  RETransformInteractionComponentSetAllowsTwoHandedRotation();
  v4 = v1[1];
  RETransformInteractionComponentSetAllowsTwoHandedScale();
  v5 = v1[3];
  RETransformInteractionComponentSetAllowsSingleHandedRotation();
  v6 = v1[4];
  RETransformInteractionComponentSetAllowsTranslation();
  if (*v1 <= 3u)
  {
    RETransformInteractionComponentSetInertia();
  }

  v7 = v1[6];
  RETransformInteractionComponentSetUsesDefaultAudio();
  v8 = v1[5];
  RETransformInteractionComponentSetResetsOnRelease();

  return RENetworkMarkComponentDirty();
}

RealityFoundation::ManipulationComponent::Dynamics __swiftcall ManipulationComponent.Dynamics.init()()
{
  *v0 = 0;
  *(v0 + 1) = 16843009;
  return result;
}

void ManipulationComponent.dynamics.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

_BYTE *ManipulationComponent.dynamics.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *v1 = *result;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  return result;
}

uint64_t ManipulationComponent.contentEntity.setter()
{
  swift_weakAssign();
}

uint64_t (*ManipulationComponent.contentEntity.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return ManipulationComponent.contentEntity.modify;
}

uint64_t ManipulationComponent.contentEntity.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_weakAssign();
}

uint64_t ManipulationComponent.HitTarget.redirectedEntity.setter(uint64_t result)
{
  v2 = result;
  if (*v1)
  {
    if (result && *(*v1 + 16) == *(result + 16))
    {
    }
  }

  else if (!result)
  {
    return result;
  }

  *v1 = result;

  if (v2)
  {
    v3 = *(v2 + 16);
    LocalId = REEntityGetLocalId();
  }

  else
  {
    LocalId = 0;
  }

  *(v1 + 8) = LocalId;
  *(v1 + 16) = v2 == 0;
  return result;
}

uint64_t *(*ManipulationComponent.HitTarget.redirectedEntity.modify(void *a1))(uint64_t *result, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return ManipulationComponent.HitTarget.redirectedEntity.modify;
}

uint64_t *ManipulationComponent.HitTarget.redirectedEntity.modify(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    v3 = result[1];
    v4 = *result;

    ManipulationComponent.HitTarget.redirectedEntity.setter(v5);
    goto LABEL_3;
  }

  v6 = result[2];
  if (v6)
  {
    if (v2 && *(v6 + 16) == *(v2 + 16))
    {
LABEL_3:
    }
  }

  else if (!v2)
  {
    return result;
  }

  v7 = result[1];
  *v7 = v2;

  if (v2)
  {
    v8 = *(v2 + 16);
    LocalId = REEntityGetLocalId();
  }

  else
  {
    LocalId = 0;
  }

  *(v7 + 8) = LocalId;
  *(v7 + 16) = v2 == 0;
  return result;
}

uint64_t ManipulationComponent.HitTarget.init(redirectedEntity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    v4 = *(result + 16);
    result = REEntityGetLocalId();
  }

  *a2 = v2;
  *(a2 + 8) = result;
  *(a2 + 16) = v2 == 0;
  return result;
}

uint64_t static ManipulationComponent.HitTarget.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REComponentGetEntity();
  RedirectedEntity = REManipulationHitTargetComponentGetRedirectedEntity();
  RedirectedEntityID = REManipulationHitTargetComponentGetRedirectedEntityID();
  result = 0;
  if (!RedirectedEntity)
  {
    goto LABEL_8;
  }

  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    result = swift_dynamicCastClassUnconditional();
LABEL_8:
    *a2 = result;
    *(a2 + 8) = RedirectedEntityID;
    *(a2 + 16) = 0;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v7 = static Entity.entityInfoType(_:)(RedirectedEntity);
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = RedirectedEntity;
      MEMORY[0x1C68F9740](RedirectedEntity, v8);

      result = v8;
    }

    else
    {
      result = makeEntity(for:)(RedirectedEntity);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ManipulationComponent.HitTarget.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v1[2])
  {
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    v7 = *a1;
    REManipulationHitTargetComponentSetRedirectedEntity();
  }

  else
  {
    v5 = v1[1];
    if (v3)
    {
      v6 = *(v3 + 16);
    }

    v8 = *a1;
    REManipulationHitTargetComponentSetRedirectedEntityAndID();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t static ManipulationComponent.__coreComponentType.getter@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  type metadata accessor for REComponentType(0);
  v8[3] = v4;
  LODWORD(v8[0]) = a1;
  outlined init with copy of Any(v8, v7);
  swift_dynamicCast();
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

RealityFoundation::ManipulationComponent::InputDevice::Kind_optional __swiftcall ManipulationComponent.InputDevice.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 ManipulationComponent.InputDevice.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ManipulationComponent.InputDevice.init(chirality:kind:pose:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 1) = v4;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  *(a4 + 48) = v5 & 1;
  return result;
}

void ManipulationComponent.InputDevice.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = v0[48];
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  MEMORY[0x1C68F4C10](v2);
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }
}

Swift::Int ManipulationComponent.InputDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = v0[48];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  MEMORY[0x1C68F4C10](v2);
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManipulationComponent.InputDevice()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = v0[48];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  MEMORY[0x1C68F4C10](v2);
  if (v7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int ManipulationComponent.Dynamics.Inertia.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Component.__coreComponentType.getter in conformance ManipulationComponent.HitTarget@<X0>(int a1@<W2>, _DWORD *a2@<X8>)
{
  type metadata accessor for REComponentType(0);
  v8[3] = v4;
  LODWORD(v8[0]) = a1;
  outlined init with copy of Any(v8, v7);
  swift_dynamicCast();
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ManipulationComponent.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v13 - v9;
  outlined init with copy of ManipulationComponent(v1, v14);
  v13[1] = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance ManipulationComponent()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  outlined init with copy of ManipulationComponent(v0, v13);
  v12[1] = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t ManipulationComponent.HitTarget.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = *(v0 + 16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (v10)
  {
    v13 = *(v10 + 16);
    REEntityGetName();
    *&v21 = String.init(cString:)();
    *(&v21 + 1) = v14;
  }

  else
  {
    v21 = 0uLL;
    if ((v12 & 1) == 0)
    {
      v20 = MEMORY[0x1E69E6158];
      *&v18 = 0x756F6620746F6E3CLL;
      *(&v18 + 1) = 0xEB000000003E646ELL;
      __swift_destroy_boxed_opaque_existential_1(&v21);
      outlined init with take of Any(&v18, &v21);
    }
  }

  *&v18 = v10;
  *(&v18 + 1) = v11;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1887600;
  *(v15 + 32) = 0xD000000000000010;
  *(v15 + 40) = 0x80000001C18E73C0;
  outlined init with copy of Any(&v21, v15 + 48);
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);

  Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  return __swift_destroy_boxed_opaque_existential_1(&v21);
}

uint64_t static ManipulationComponent.configureEntity(_:hoverEffect:allowedInputTypes:collisionShapes:)(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = *(a3 + 4);
  v12 = *a3;
  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static ManipulationComponent.configureEntity(_:hoverEffect:allowedInputTypes:collisionShapes:));
  if (v11)
  {
    v14 = 0x300000001;
  }

  else
  {
    v14 = (v12 << 32) + 1;
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011InputTargetD0V_TtB5(v14, v13, 0, a1);

  v15 = *(a1 + 16);
  REInputTargetComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REInputTargetComponentSetAllowsDirectTouchInput();
  }

  Entity.deleteCollisionComponents()();
  if (a4)
  {
    v16 = one-time initialization token for default;

    if (v16 != -1)
    {
      swift_once();
    }

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a4, 0, static CollisionFilter.default, 0, a1);
  }

  else
  {
    Entity.generateCollisionShapes(recursive:static:)(1, 0);
  }

  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  LOBYTE(v59) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v20 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v18 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v18 + 40) = v20;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  *(v18 + 65) = 1;
  *(v18 + 68) = 3;
  v21 = *(v18 + 48);
  v62[0] = *(v18 + 32);
  v62[1] = v21;
  v63 = *(v18 + 64);
  *(v18 + 32) = GenericRGB;
  *(v18 + 40) = 1065353216;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  *(v18 + 65) = 1;
  *(v18 + 68) = 3;
  v22 = v19;
  outlined destroy of HoverEffectComponent.HoverEffect(v62);
  if ((v10 & 0xFF00) == 0x200)
  {
    v23 = *(v18 + 48);
    v35[0] = *(v18 + 32);
    v35[1] = v23;
    v36 = *(v18 + 64);
    v39 = v35[0];
    v40 = v23;
    v41 = *(v18 + 64);
    v37 = *(v18 + 66);
    v38 = *(v18 + 70);
    outlined init with copy of HoverEffectComponent.HoverEffect(v35, &v59);
    v24 = *(v18 + 48);
    v42[0] = *(v18 + 32);
    v42[1] = v24;
    v43 = *(v18 + 64);
    v25 = v40;
    *(v18 + 32) = v39;
    *(v18 + 48) = v25;
    *(v18 + 64) = v41;
    *(v18 + 65) = 0;
    *(v18 + 66) = v37;
    *(v18 + 70) = v38;
    outlined destroy of HoverEffectComponent.HoverEffect(v42);
    v26 = *(v18 + 48);
    v44[0] = *(v18 + 32);
    v44[1] = v26;
    v45 = *(v18 + 64);
    v48 = v44[0];
    v49 = v26;
    v50 = *(v18 + 64);
    v46 = *(v18 + 67);
    v47 = *(v18 + 71);
    outlined init with copy of HoverEffectComponent.HoverEffect(v44, &v59);
    v27 = *(v18 + 48);
    v51[0] = *(v18 + 32);
    v51[1] = v27;
    v52 = *(v18 + 64);
    v28 = v49;
    *(v18 + 32) = v48;
    *(v18 + 48) = v28;
    *(v18 + 64) = v50;
    *(v18 + 66) = 1;
    *(v18 + 67) = v46;
    *(v18 + 71) = v47;
    outlined destroy of HoverEffectComponent.HoverEffect(v51);
    v29 = *(v18 + 48);
    v53 = *(v18 + 32);
    v54 = v29;
    v55 = *(v18 + 64);
    v56 = v53;
    v57 = v29;
    v58 = *(v18 + 64);
    outlined init with copy of HoverEffectComponent.HoverEffect(&v53, &v59);
    v30 = *(v18 + 48);
    v59 = *(v18 + 32);
    v60 = v30;
    v61 = *(v18 + 64);
    v31 = v57;
    *(v18 + 32) = v56;
    *(v18 + 48) = v31;
    *(v18 + 64) = v58;
    *(v18 + 68) = 1;
  }

  else
  {
    LOBYTE(v51[0]) = v10 & 1;
    *&v53 = v6;
    *(&v53 + 1) = v7;
    *&v54 = v8;
    *(&v54 + 1) = v9;
    v55 = v10;
    outlined init with copy of HoverEffectComponent.HoverEffect(&v53, &v59);
    v32 = *(v18 + 48);
    v59 = *(v18 + 32);
    v60 = v32;
    v61 = *(v18 + 64);
    *(v18 + 32) = v6;
    *(v18 + 40) = v7;
    *(v18 + 48) = v8;
    *(v18 + 56) = v9;
    *(v18 + 64) = v51[0];
    *(v18 + 65) = BYTE1(v10) & 1;
    *(v18 + 66) = BYTE2(v10) & 1;
    *(v18 + 68) = HIDWORD(v10);
  }

  outlined destroy of HoverEffectComponent.HoverEffect(&v59);

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011HoverEffectD0V_TtB5(v33, 1, 0, a1);

  LOBYTE(v59) = 0;
  *(&v59 + 1) = 16843009;
  *(&v59 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  outlined init with copy of ManipulationComponent(&v59, &v53);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ManipulationD0V_TtB5(&v53, 0, a1);
  outlined destroy of BodyTrackingComponent?(&v53, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
  outlined destroy of ManipulationComponent(&v59);
}

uint64_t TransformInteractionSystem.__deallocating_deinit()
{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 96, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 176, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

double protocol witness for System.init(scene:) in conformance TransformInteractionSystem@<D0>(uint64_t *a1@<X8>)
{

  type metadata accessor for TransformInteractionSystem();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *a1 = v2;
  return result;
}

uint64_t specialized closure #2 in static System.registerSystem()(uint64_t a1, uint64_t a2, char a3)
{
  v17 = MEMORY[0x1E69E6B70];
  v16[0] = a1;
  outlined init with copy of Any(v16, v14);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v6 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v6)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v12);
  }

  type metadata accessor for TransformInteractionSystem();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  v8 = v7;
  *(v7 + 208) = 0;
  if ((a3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
  }

  v12 = v7;
  swift_retain_n();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_SystemUpdateRateProtocol_pMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v14, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v10 + 16))(v14, v9, v10);
    v12 = *&v14[0];
    v13 = BYTE8(v14[0]);
    specialized _SystemUpdateRateProtocol.setUpdateRate(coreCustomSystem:coreScene:updateRate:)(a2, a1, &v12);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation25_SystemUpdateRateProtocol_pSgMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pSgMR);
    RECustomSystemSetScheduleTypeForScene();

    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t specialized closure #3 in static System.registerSystem()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v20[0] = a1;
    type metadata accessor for TransformInteractionSystem();
    swift_unknownObjectRetain();
    swift_dynamicCast();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v8 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v21 = *(v8 + 16);
  }

  if (!a2)
  {
    result = RECustomSystemUpdateContextGetDeltaTime();
LABEL_22:
    __break(1u);
    return result;
  }

  v20[3] = MEMORY[0x1E69E6B70];
  v20[0] = a2;
  outlined init with copy of Any(v20, v19);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    v10 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v10 = Scene.init(coreScene:)(v18);
  }

  v11 = v10;
  result = RECustomSystemUpdateContextGetDeltaTime();
  if (!v11)
  {
    goto LABEL_22;
  }

  RECustomSystemUpdateContextGetSystemsArePausedInEditor();
  type metadata accessor for SceneUpdateContext.Stats();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  if (one-time initialization token for queryBasedUpdateRate != -1)
  {
    swift_once();
  }

  if (static SceneUpdateContext.queryBasedUpdateRate == 1 && (a5 & 1) == 0)
  {
    v14 = *(v11 + 16);
    if (RESceneGetECSManagerNullable())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for TransformInteractionSystem();
      if ((SystemRegistry.getId(of:)(v15) & 0x100000000) == 0)
      {
        REECSManagerGetCustomSystemAtID();
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v16 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v17 = *(v16 + 16);
    *(v16 + 16) = v21;
  }
}

uint64_t specialized static ManipulationComponent.InputDevice.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = a1[48];
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = a2[48];
  if (v4 == 2)
  {
    result = 0;
    if (v11 != 2)
    {
      return result;
    }

LABEL_6:
    if (v5 == a2[1])
    {
      if (v10)
      {
        if (a2[48])
        {
          return 1;
        }
      }

      else if ((a2[48] & 1) == 0)
      {
        v24 = v2;
        v25 = v3;
        v21.i64[0] = v6;
        v21.i64[1] = v7;
        v22 = v8;
        v23 = v9;
        v18.i64[0] = v12;
        v18.i64[1] = v13;
        v19 = v14;
        v20 = v15;
        if (SPPose3DFloatEqualToPose(&v21, &v18))
        {
          return 1;
        }
      }

      return 0;
    }

    return result;
  }

  if (v11 == 2)
  {
    return 0;
  }

  result = 0;
  if (((v11 ^ v4) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent.HitTarget(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ManipulationComponent.HitTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ManipulationComponent.InputDevice(unsigned __int8 *a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent.InputDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent.Dynamics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent.Dynamics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage);
  }

  return result;
}

uint64_t SPPose3DFloatEqualToPose(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vceqq_f32(*a1, *a2);
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if ((vminvq_u32(vceqq_f32(v4, v5)) & 0x80000000) != 0)
  {
    return 1;
  }

  else
  {
    return vminvq_u32(vceqq_f32(v4, vnegq_f32(v5))) >> 31;
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

RealityKit::__RKEntityProximityTrigger::ExitType_optional __swiftcall __RKEntityProximityTrigger.ExitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t __RKEntityProximityTrigger.distance.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t __RKEntityProximityTrigger.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 36);
  return result;
}

uint64_t __RKEntityProximityTrigger.type.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 36) = v2;
  return result;
}

uint64_t __RKEntityProximityTrigger.__allocating_init(targetEntity:distance:type:)(uint64_t a1, char *a2, float a3)
{
  v6 = swift_allocObject();
  v7 = *a2;
  *(v6 + 24) = 0;
  *(v6 + 37) = 0;
  swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 36) = v7;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  return v6;
}

uint64_t __RKEntityProximityTrigger.init(targetEntity:distance:type:)(uint64_t a1, char *a2, float a3)
{
  v6 = *a2;
  *(v3 + 24) = 0;
  *(v3 + 37) = 0;
  swift_beginAccess();
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 36) = v6;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

uint64_t __RKEntityProximityTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  *&v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44[-v18];
  type metadata accessor for __RKEntityProximityTrigger();
  v20 = swift_dynamicCastClass();
  if (!v20 || (v21 = v20, swift_beginAccess(), v22 = *(v1 + 36), swift_beginAccess(), v22 != *(v21 + 36)))
  {
LABEL_16:
    type metadata accessor for __RKEntityTriggerGroup();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      swift_beginAccess();
      v29 = *(v28 + 24);
      if (v29 >> 62)
      {
LABEL_54:
        v30 = __CocoaSet.count.getter();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v30 != i; ++i)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1C68F41F0](i, v29);
          if (__OFADD__(i, 1))
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        else
        {
          if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_54;
          }

          v32 = *(v29 + 8 * i + 32);

          if (__OFADD__(i, 1))
          {
            goto LABEL_28;
          }
        }

        v33 = __RKEntityProximityTrigger.matches(with:)(v32);

        if (v33)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  swift_beginAccess();
  if (*(v2 + 24))
  {

    Entity.__interactionIdentifier.getter(v19);
  }

  else
  {
    (*(v49 + 56))(v19, 1, 1, v4);
  }

  swift_beginAccess();
  v23 = *(v21 + 24);
  v46 = a1;
  if (v23)
  {

    Entity.__interactionIdentifier.getter(v16);

    v24 = v49;
  }

  else
  {
    v24 = v49;
    (*(v49 + 56))(v16, 1, 1, v4);
  }

  v25 = *(v7 + 48);
  outlined init with copy of UUID?(v19, v10);
  outlined init with copy of UUID?(v16, &v10[v25]);
  v26 = *(v24 + 48);
  if (v26(v10, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v10, v48);
    if (v26(&v10[v25], 1, v4) != 1)
    {
      v36 = v49;
      v37 = v47;
      (*(v49 + 32))(v47, &v10[v25], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v36 + 8);
      v38(v37, v4);
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v38(v48, v4);
      outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v45)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v49 + 8))(v48, v4);
LABEL_14:
    outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_15:

    goto LABEL_16;
  }

  outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v26(&v10[v25], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_33:
  swift_beginAccess();
  v39 = *(v2 + 32);
  if (*(v2 + 24))
  {
    v40 = *(v2 + 24);

    v41 = Entity.rcSceneEntity.getter();

    if (v41)
    {
      _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v41, v50);
      if (v51)
      {
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v42 = static Transform.identity;
      }

      else
      {
        v42 = v50[0];
      }

      v49 = v42;

      v39 = v39 * fmaxf(fmaxf(*&v49, *(&v49 + 2)), *(&v49 + 1));
    }
  }

  swift_beginAccess();
  v43 = *(v21 + 32);

  if (!*(v2 + 36))
  {
    swift_beginAccess();
    *(v2 + 38) = 0;
    if (v43 <= v39)
    {
      v34 = 1;
      swift_beginAccess();
      if ((*(v2 + 37) & 1) == 0)
      {
        *(v2 + 37) = 1;
        return v34;
      }
    }

    if (v39 < v43)
    {
      swift_beginAccess();
      if (*(v2 + 37) == 1)
      {
        v34 = 0;
        *(v2 + 37) = 0;
        return v34;
      }
    }

    return 0;
  }

  if (v43 > v39)
  {
    v34 = 1;
    swift_beginAccess();
    *(v2 + 37) = 0;
    swift_beginAccess();
    if ((*(v2 + 38) & 1) == 0)
    {
      *(v2 + 38) = 1;
      return v34;
    }

    goto LABEL_16;
  }

  v34 = 1;
  swift_beginAccess();
  *(v2 + 38) = 0;
  swift_beginAccess();
  if ((*(v2 + 37) & 1) == 0)
  {
    *(v2 + 37) = 1;
    return v34;
  }

  return 0;
}

uint64_t __RKEntityProximityTrigger.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 36);
  v6 = type metadata accessor for __RKEntityProximityTrigger();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 37) = 0;
  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 36) = v5;
  *(v7 + 16) = 0;
  *(v7 + 18) = 0;
  a1[3] = v6;
  *a1 = v7;
}

uint64_t __RKEntityProximityTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(v2 + 32);
  swift_beginAccess();
  v8 = *(v2 + 36);
  type metadata accessor for __RKEntityProximityTrigger();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 37) = 0;
  swift_beginAccess();
  *(v9 + 24) = a2;
  *(v9 + 32) = v7;
  *(v9 + 36) = v8;
  *(v9 + 16) = 0;
  *(v9 + 18) = 0;

  return v9;
}

uint64_t __RKEntityProximityTrigger.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t __RKEntityProximityTrigger.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SpatialPhotoMetadataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialPhotoMetadataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t SpatialPhotoMetadataError.description.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 14:
      result = 0xD000000000000018;
      break;
    case 3:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    default:
      return result;
  }

  return result;
}

double protocol witness for static Component.__load(from:) in conformance DirectionalLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DirectionalLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance DirectionalLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v8;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance DirectionalLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  result = *a1;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 28) = v8;
  *(v6 + 36) = v9;
  *(v6 + 40) = v10;
  return result;
}

uint64_t static Component.__load(from:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 32);
  a4[3] = a2;
  a4[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v7(a1, a2, a3);
}

id protocol witness for static Component.__load(from:) in conformance DirectionalLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DirectionalLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of DirectionalLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance DirectionalLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of DirectionalLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance DirectionalLightComponent(uint64_t a1)
{
  outlined destroy of DirectionalLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance DirectionalLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  return v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EnvironmentBlendingComponent(uint64_t a1, _BYTE *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance EnvironmentBlendingComponent(uint64_t a1, _BYTE *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

id protocol witness for static Component.__load(from:) in conformance __AmbientLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __AmbientLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of __AmbientLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance __AmbientLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of __AmbientLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __AmbientLightComponent(uint64_t a1)
{
  outlined destroy of __AmbientLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance __AmbientLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v5;
  return v4;
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioLibraryComponent(uint64_t a1)
{
  outlined destroy of AudioLibraryComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ImageBasedLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  *(a2 + 28) = v7;
  return outlined copy of ImageBasedLightComponent.Source(v3, v2);
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ImageBasedLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v10;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v11;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance ImageBasedLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ImageBasedLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v8;
  *(a2 + 28) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ImageBasedLightComponent(uint64_t a1)
{
  outlined destroy of ImageBasedLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ImageBasedLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 24);
  v12 = *(a1 + 28);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v9;
  *(v6 + 36) = v10;
  *(v6 + 40) = v11;
  *(v6 + 44) = v12;

  return outlined copy of ImageBasedLightComponent.Source(v8, v7);
}

void protocol witness for static Component.__free(to:offset:) in conformance ImageBasedLightReceiverComponent(uint64_t a1)
{
  outlined destroy of ImageBasedLightReceiverComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance __ImageBasedLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of __ImageBasedLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance __ImageBasedLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of __ImageBasedLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __ImageBasedLightComponent(uint64_t a1)
{
  outlined destroy of __ImageBasedLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance __ImageBasedLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SceneUnderstandingComponent@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SceneUnderstandingComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SceneUnderstandingComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SceneUnderstandingComponent@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance PhysicsBodyComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[7];
  v3 = a1[9];
  v25 = a1[8];
  v26[0] = v3;
  *(v26 + 12) = *(a1 + 156);
  v4 = a1[3];
  v5 = a1[5];
  v21 = a1[4];
  v6 = v21;
  v22 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v23 = a1[6];
  v9 = v23;
  v24 = v8;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = a1[3];
  v13 = *a1;
  v12 = a1[1];
  v19 = a1[2];
  v14 = v19;
  v20 = v11;
  v15 = a1[9];
  a2[8] = v25;
  a2[9] = v15;
  *(a2 + 156) = *(a1 + 156);
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v9;
  a2[7] = v2;
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v4;
  return outlined init with copy of PhysicsBodyComponent(v18, &v17);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsBodyComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of PhysicsBodyComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v21[0];
  *(a2 + 128) = v20;
  *(a2 + 144) = v6;
  *(a2 + 156) = *(v21 + 12);
  v7 = v17;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v8 = v19;
  *(a2 + 96) = v18;
  *(a2 + 112) = v8;
  v9 = v13;
  *a2 = v12;
  *(a2 + 16) = v9;
  result = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsBodyComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of PhysicsBodyComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v19[0];
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  *(a2 + 156) = *(v19 + 12);
  v5 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v5;
  v6 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v6;
  v7 = v11;
  *a2 = v10;
  *(a2 + 16) = v7;
  result = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsBodyComponent(uint64_t a1)
{
  outlined destroy of PhysicsBodyComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PhysicsBodyComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  v7 = a1[7];
  v8 = a1[9];
  v30 = a1[8];
  v31[0] = v8;
  *(v31 + 12) = *(a1 + 156);
  v9 = a1[3];
  v10 = a1[5];
  v26 = a1[4];
  v11 = v26;
  v27 = v10;
  v12 = a1[5];
  v13 = a1[7];
  v28 = a1[6];
  v14 = v28;
  v29 = v13;
  v15 = a1[1];
  v23[0] = *a1;
  v23[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v24 = a1[2];
  v19 = v24;
  v25 = v16;
  v20 = a1[9];
  v6[9] = v30;
  v6[10] = v20;
  *(v6 + 172) = *(a1 + 156);
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v14;
  v6[8] = v7;
  v6[1] = v18;
  v6[2] = v17;
  *a4 = v6;
  v6[3] = v19;
  v6[4] = v9;
  return outlined init with copy of PhysicsBodyComponent(v23, &v22);
}

void protocol witness for static Component.__free(to:offset:) in conformance PreviewSupportComponent(uint64_t a1)
{
  outlined destroy of PreviewSupportComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void static Component.__fromCore(_:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  static Component.__fromCore(_:)();
}

void static Component.__coreComponentType.getter(_DWORD *a1@<X8>)
{
  *a1 = 36;
}

{
  static Component.__coreComponentType.getter(a1);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SelectableSceneContentIdentifierComponent(uint64_t a1, _DWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SelectableSceneContentIdentifierComponent(uint64_t a1, _DWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

_DWORD *protocol witness for static Component.__load(from:offset:) in conformance SelectableSceneContentIdentifierComponent@<X0>(_DWORD *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *a4 = *result;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SynchronizationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  *(a2 + 10) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v6, v5);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of SynchronizationComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of SynchronizationComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
  *(a2 + 10) = v8;
  result = *&v9;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SynchronizationComponent(uint64_t a1)
{
  outlined destroy of SynchronizationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SynchronizationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 32) = v11;
  *(v6 + 40) = v10;
  *(v6 + 48) = v12;

  return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10);
}

uint64_t protocol witness for static Component.__load(from:) in conformance GestureComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance GestureComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of GestureComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance GestureComponent(uint64_t a1, void *a2)
{
  outlined destroy of GestureComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GestureComponent(uint64_t a1)
{
  outlined destroy of GestureComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance GestureComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v5 = *a1;
  v4 = a1[1];
  *a4 = v5;
  a4[1] = v4;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

void *protocol witness for static Component.__load(from:offset:) in conformance CustomComponentProxy@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  *a4 = *result;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance PortalComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v13 = *(a1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(a1 + 96);
  v4 = v15;
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  return outlined init with copy of PortalComponent(v10, &v9);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PortalComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of PortalComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  *(a2 + 96) = v16;
  v7 = v11;
  *a2 = v10;
  *(a2 + 16) = v7;
  result = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PortalComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of PortalComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  *(a2 + 96) = v14;
  v5 = v9;
  *a2 = v8;
  *(a2 + 16) = v5;
  result = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PortalComponent(uint64_t a1)
{
  outlined destroy of PortalComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PortalComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *(a1 + 80);
  v18 = *(a1 + 64);
  v7 = v18;
  v19 = v8;
  v20 = *(a1 + 96);
  v9 = v20;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  v11 = *(a1 + 48);
  v16 = *(a1 + 32);
  v12 = v16;
  v17 = v11;
  *(v6 + 16) = v15[0];
  *(v6 + 32) = v10;
  *(v6 + 112) = v9;
  *(v6 + 48) = v12;
  *(v6 + 64) = v11;
  *(v6 + 80) = v7;
  *(v6 + 96) = v8;
  return outlined init with copy of PortalComponent(v15, &v14);
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioGroupPlaybackComponent(uint64_t a1)
{
  outlined destroy of AudioGroupPlaybackComponent(a1);

  JUMPOUT(0x1C6902A30);
}

float protocol witness for static Component.__load(from:) in conformance SpotLightComponent.Shadow@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  *a2 = *a1;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpotLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance SpotLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  return result;
}

float protocol witness for static Component.__load(from:offset:) in conformance SpotLightComponent.Shadow@<S0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  *a4 = *a1;
  *(a4 + 4) = v5;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  *(a4 + 16) = v8;
  *(a4 + 20) = v9;
  return result;
}

id protocol witness for static Component.__load(from:) in conformance SpotLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpotLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of SpotLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance SpotLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of SpotLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SpotLightComponent(uint64_t a1)
{
  outlined destroy of SpotLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance SpotLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = *(a1 + 24);
  *(v6 + 16) = *a1;
  *(v6 + 24) = *(a1 + 8);
  *(v6 + 40) = v8;

  return v7;
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioMixGroupsComponent(uint64_t a1)
{
  outlined destroy of AudioMixGroupsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance RKARSegmentationComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance RKARSegmentationComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of RKARSegmentationComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance RKARSegmentationComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of RKARSegmentationComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance RKARSegmentationComponent(uint64_t a1)
{
  outlined destroy of RKARSegmentationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance RKARSegmentationComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v6[2] = *a1;
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

void *static Component.registerComponent()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 80))(&v7);
  if (v7 == 36)
  {
    result = (*(a2 + 104))(&v6, a1, a2);
    if (!v6)
    {

      return specialized static SceneManager.customComponentType(_:)(v2, a2);
    }
  }

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance VFXComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return outlined init with copy of VFXComponent(v8, v7);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VFXComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of VFXComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v6;
  *(a2 + 64) = v12;
  result = v9;
  *a2 = *&v8[40];
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance VFXComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of VFXComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  *(a2 + 64) = v10;
  result = v7;
  *a2 = *&v6[40];
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VFXComponent(uint64_t a1)
{
  outlined destroy of VFXComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance VFXComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = *(a1 + 64);
  v8 = v16;
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v10 = v13[0];
  v13[1] = v9;
  *(v6 + 48) = v14;
  *(v6 + 64) = v7;
  *(v6 + 80) = v8;
  *(v6 + 16) = v10;
  *(v6 + 32) = v9;
  return outlined init with copy of VFXComponent(v13, v12);
}

uint64_t protocol witness for static Component.__load(from:) in conformance HoverEffectComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance HoverEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of HoverEffectComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance HoverEffectComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of HoverEffectComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance HoverEffectComponent(uint64_t a1)
{
  outlined destroy of HoverEffectComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance HoverEffectComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SkeletalPosesComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SkeletalPosesComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of SkeletalPosesComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SkeletalPosesComponent(uint64_t a1, void *a2)
{
  outlined destroy of SkeletalPosesComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SkeletalPosesComponent(uint64_t a1)
{
  outlined destroy of SkeletalPosesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SkeletalPosesComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;
}

id protocol witness for static Component.__load(from:) in conformance PointLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PointLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of PointLightComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance PointLightComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of PointLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PointLightComponent(uint64_t a1)
{
  outlined destroy of PointLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance PointLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 16) = v5;
  return v4;
}

double protocol witness for static Component.__load(from:) in conformance PointLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PointLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 16) = v7;
  *(a2 + 20) = v8;
  *(a2 + 24) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance PointLightComponent.Shadow(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 16) = v7;
  *(a2 + 20) = v8;
  *(a2 + 24) = v9;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance PointLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 24);
  result = *a1;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 28) = v8;
  *(v6 + 32) = v9;
  *(v6 + 36) = v10;
  *(v6 + 40) = v11;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImageBasedLightReceiverComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  if (a4)
  {
    v8 = a1;
    a7(a2);
    a1 = v8;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ImageBasedLightReceiverComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  a6(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance WorldComponent(uint64_t a1)
{
  outlined destroy of WorldComponent(a1);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance DockingRegionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DockingRegionComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance DockingRegionComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance DockingRegionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance SpatialAudioComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 105) = *(a1 + 105);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpatialAudioComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v13;
  a2[4] = v12;
  a2[5] = v3;
  a2[6] = v14[0];
  *(a2 + 105) = *(v14 + 9);
  v4 = v9;
  *a2 = v8;
  a2[1] = v4;
  result = *&v10;
  v6 = v11;
  a2[2] = v10;
  a2[3] = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SpatialAudioComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v13;
  a2[4] = v12;
  a2[5] = v3;
  a2[6] = v14[0];
  *(a2 + 105) = *(v14 + 9);
  v4 = v9;
  *a2 = v8;
  a2[1] = v4;
  result = *&v10;
  v6 = v11;
  a2[2] = v10;
  a2[3] = v6;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance SpatialAudioComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 121) = *(a1 + 105);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v6 + 48) = result;
  *(v6 + 64) = v10;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance ProjectiveTransformCameraComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ProjectiveTransformCameraComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v3;
  *(a2 + 128) = v16;
  v4 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v4;
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  result = v9;
  *a2 = v8;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance ProjectiveTransformCameraComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v3;
  *(a2 + 128) = v16;
  v4 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v4;
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  result = v9;
  *a2 = v8;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance ProjectiveTransformCameraComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  result = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = result;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance ManipulationComponent.HitTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ManipulationComponent.HitTarget(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ManipulationComponent.HitTarget(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ManipulationComponent.HitTarget(uint64_t a1, uint64_t a2)
{
  outlined destroy of ManipulationComponent.HitTarget(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ManipulationComponent.HitTarget(uint64_t a1)
{
  outlined destroy of ManipulationComponent.HitTarget(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ManipulationComponent.HitTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ManipulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ManipulationComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of ManipulationComponent(v7, a2);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ManipulationComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ManipulationComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of ManipulationComponent(v5, a2);
}

void protocol witness for static Component.__free(to:offset:) in conformance ManipulationComponent(uint64_t a1)
{
  outlined destroy of ManipulationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t static Component.registerComponentProxy(componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 80))(&v9, a3, a4);
  if (v9 == 36)
  {
    return specialized static SceneManager.customComponentTypeHelper(_:typeName:)(v4, a4, a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t one-time initialization function for traitSetups()
{
  result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for traitSetups);
  traitSetups._rawValue = &outlined read-only object #0 of one-time initialization function for baseTraitSetups;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance AREnvironmentProbeComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AREnvironmentProbeComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of AREnvironmentProbeComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance AREnvironmentProbeComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of AREnvironmentProbeComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AREnvironmentProbeComponent(uint64_t a1)
{
  outlined destroy of AREnvironmentProbeComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance AREnvironmentProbeComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
}

uint64_t protocol witness for static Component.__load(from:) in conformance StateMachineComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance StateMachineComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of StateMachineComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance StateMachineComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of StateMachineComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance StateMachineComponent(uint64_t a1)
{
  outlined destroy of StateMachineComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance StateMachineComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __SkyboxComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of __SkyboxComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance __SkyboxComponent(uint64_t a1, void *a2)
{
  outlined destroy of __SkyboxComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __SkyboxComponent(uint64_t a1)
{
  outlined destroy of __SkyboxComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void protocol witness for static Component.__free(to:offset:) in conformance TextComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for TextComponent);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance SpatialMediaComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpatialMediaComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v8;
  *a2 = v7;
  a2[1] = v3;
  result = *&v9;
  v5 = v10;
  a2[2] = v9;
  a2[3] = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SpatialMediaComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v8;
  *a2 = v7;
  a2[1] = v3;
  result = *&v9;
  v5 = v10;
  a2[2] = v9;
  a2[3] = v5;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance SpatialMediaComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v6 + 48) = result;
  *(v6 + 64) = v9;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance ModelComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ModelComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance ModelComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ModelComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ModelComponent(uint64_t a1)
{
  outlined destroy of ModelComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ModelComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 4);
  v10 = a1[3];
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
}

uint64_t protocol witness for static Component.__load(from:) in conformance IKComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance IKComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of IKComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance IKComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of IKComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance IKComponent(uint64_t a1)
{
  outlined destroy of IKComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance IKComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  v5 = a1[2];
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = v5;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance GroundingShadowComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of GroundingShadowComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  result = *&v9;
  a2[2] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance GroundingShadowComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of GroundingShadowComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GroundingShadowComponent(uint64_t a1)
{
  outlined destroy of GroundingShadowComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance AcousticModelComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AcousticModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of AcousticModelComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance AcousticModelComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of AcousticModelComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AcousticModelComponent(uint64_t a1)
{
  outlined destroy of AcousticModelComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance AcousticModelComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = v10;
  v6[5] = v9;
}

uint64_t protocol witness for static Component.__load(from:) in conformance InputTargetComponent@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance InputTargetComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of InputTargetComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance InputTargetComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of InputTargetComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance InputTargetComponent(uint64_t a1)
{
  outlined destroy of InputTargetComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance InputTargetComponent@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  *a4 = v4;
  *(a4 + 4) = v5;
  *(a4 + 8) = v6;
}

uint64_t protocol witness for static Component.__load(from:) in conformance ModelSortGroupComponent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 2);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ModelSortGroupComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ModelSortGroupComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ModelSortGroupComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ModelSortGroupComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ModelSortGroupComponent(uint64_t a1)
{
  outlined destroy of ModelSortGroupComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ModelSortGroupComponent@<X0>(int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 2);
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
}

__n128 protocol witness for static Component.__load(from:) in conformance CharacterControllerStateComponent@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u8[0];
  *a2 = *a1;
  a2[1].n128_u8[0] = v3;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CharacterControllerStateComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CharacterControllerStateComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance CharacterControllerStateComponent@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = a1[1].n128_u8[0];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance PhysicsMotionComponent@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsMotionComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsMotionComponent(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance PhysicsMotionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance AnimationLibraryComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;

  outlined copy of String??(v3, v4);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AnimationLibraryComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of AnimationLibraryComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance AnimationLibraryComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of AnimationLibraryComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AnimationLibraryComponent(uint64_t a1)
{
  outlined destroy of AnimationLibraryComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance AnimationLibraryComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  return protocol witness for static Component.__load(from:offset:) in conformance AnimationLibraryComponent(a1, a2, a3, a4);
}

{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v6[2] = v8;
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v10;
  v6[6] = v11;

  outlined copy of String??(v9, v10);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of _Proto_AnimationLibraryComponent_v1(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1, uint64_t a2)
{
  outlined destroy of _Proto_AnimationLibraryComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1)
{
  outlined destroy of _Proto_AnimationLibraryComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VideoComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of VideoComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 16) = v8;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance VideoComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of VideoComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VideoComponent(uint64_t a1)
{
  outlined destroy of VideoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance VirtualEnvironmentProbeComponent@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  return outlined copy of VirtualEnvironmentProbeComponent.Source(v3, v2, v4);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of VirtualEnvironmentProbeComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of VirtualEnvironmentProbeComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1)
{
  outlined destroy of VirtualEnvironmentProbeComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance VirtualEnvironmentProbeComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v6[2] = *a1;
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v10;

  return outlined copy of VirtualEnvironmentProbeComponent.Source(v8, v7, v9);
}

void *protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance MXIComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of MXIComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, v7, 0x105uLL);
}

void *protocol witness for static Component.__store(attribute:to:offset:) in conformance MXIComponent(uint64_t a1, void *a2)
{
  outlined destroy of MXIComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, v5, 0x105uLL);
}

void protocol witness for static Component.__free(to:offset:) in conformance MXIComponent(uint64_t a1)
{
  outlined destroy of MXIComponent(a1);

  JUMPOUT(0x1C6902A30);
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EnvironmentLightingConfigurationComponent(uint64_t a1, float *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance EnvironmentLightingConfigurationComponent(uint64_t a1, float *a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v4;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1, uint64_t a2)
{
  outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1)
{
  outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  v5 = a1[2];
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = v5;
}

uint64_t protocol witness for static Component.__load(from:) in conformance ParticleEmitterComponent@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(a2, __src, 0x382uLL);
  return outlined init with copy of ParticleEmitterComponent(__dst, &v5);
}

void *protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ParticleEmitterComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ParticleEmitterComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, __src, 0x382uLL);
}

void *protocol witness for static Component.__store(attribute:to:offset:) in conformance ParticleEmitterComponent(uint64_t a1, void *a2)
{
  outlined destroy of ParticleEmitterComponent(a2);
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, __src, 0x382uLL);
}

void protocol witness for static Component.__free(to:offset:) in conformance ParticleEmitterComponent(uint64_t a1)
{
  outlined destroy of ParticleEmitterComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ParticleEmitterComponent@<X0>(const void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  memcpy(__dst, a1, 0x382uLL);
  memcpy((v6 + 16), a1, 0x382uLL);
  return outlined init with copy of ParticleEmitterComponent(__dst, &v8);
}

void protocol witness for static Component.__free(to:offset:) in conformance MeshInstancesComponent(uint64_t a1)
{
  outlined destroy of MeshInstancesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void protocol witness for static Component.__free(to:offset:) in conformance _proto_MeshInstancesComponent(uint64_t a1)
{
  outlined destroy of _proto_MeshInstancesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ForceEffectComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ForceEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ForceEffectComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ForceEffectComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ForceEffectComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ForceEffectComponent(uint64_t a1)
{
  outlined destroy of ForceEffectComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ForceEffectComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AudioLibraryComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  if (a4)
  {
    v8 = a1;
    a7(a2);
    a1 = v8;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance AudioLibraryComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  a6(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GeometricPinsComponent(uint64_t a1)
{
  outlined destroy of GeometricPinsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance ClippingPrimitiveComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 81) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ClippingPrimitiveComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 81) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ClippingPrimitiveComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 81) = v10;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance ClippingPrimitiveComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 81);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 64) = v10;
  *(v6 + 80) = v11;
  *(v6 + 96) = v12;
  *(v6 + 97) = v13;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance VideoPlayerComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v20 = *(a1 + 96);
  v21[0] = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v16 = *(a1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v18 = *(a1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(a1 + 112);
  *(a2 + 96) = v20;
  *(a2 + 112) = v12;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v9;
  *(a2 + 80) = v2;
  *(v21 + 13) = *(a1 + 125);
  *(a2 + 125) = *(a1 + 125);
  *a2 = v11;
  *(a2 + 16) = v4;
  return outlined init with copy of VideoPlayerComponent(v15, &v14);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VideoPlayerComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of VideoPlayerComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v18[0];
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *(a2 + 125) = *(v18 + 13);
  v7 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v7;
  v8 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  result = v12;
  *a2 = v11;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance VideoPlayerComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of VideoPlayerComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v16[0];
  *(a2 + 96) = v15;
  *(a2 + 112) = v4;
  *(a2 + 125) = *(v16 + 13);
  v5 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v5;
  v6 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v6;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VideoPlayerComponent(uint64_t a1)
{
  outlined destroy of VideoPlayerComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance VideoPlayerComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  v25 = *(a1 + 96);
  v26[0] = v8;
  v9 = *(a1 + 16);
  v10 = *(a1 + 48);
  v21 = *(a1 + 32);
  v11 = v21;
  v22 = v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v23 = *(a1 + 64);
  v14 = v23;
  v24 = v13;
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v16 = v20[0];
  v20[1] = v15;
  v17 = *(a1 + 112);
  *(v6 + 112) = v25;
  *(v6 + 128) = v17;
  *(v6 + 48) = v11;
  *(v6 + 64) = v12;
  *(v6 + 80) = v14;
  *(v6 + 96) = v7;
  *a4 = v6;
  *(v26 + 13) = *(a1 + 125);
  *(v6 + 141) = *(a1 + 125);
  *(v6 + 16) = v16;
  *(v6 + 32) = v9;
  return outlined init with copy of VideoPlayerComponent(v20, &v19);
}

uint64_t protocol witness for static Component.__load(from:) in conformance __AccessibilityComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return outlined init with copy of __AccessibilityComponent(v7, &v6);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __AccessibilityComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of __AccessibilityComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v11;
  *a2 = v10;
  a2[1] = v6;
  result = *&v12;
  v8 = v13;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance __AccessibilityComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of __AccessibilityComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v9;
  *a2 = v8;
  a2[1] = v4;
  result = *&v10;
  v6 = v11;
  a2[2] = v10;
  a2[3] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __AccessibilityComponent(uint64_t a1)
{
  outlined destroy of __AccessibilityComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance __AccessibilityComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  v9 = a1[3];
  v13 = a1[2];
  v8 = v13;
  v14 = v9;
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = v9;
  return outlined init with copy of __AccessibilityComponent(v12, &v11);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance TextComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (v13)
  {
    v14 = v10;
    _s10RealityKit21BodyTrackingComponentVWOhTm_0(a2, a7);
    v10 = v14;
  }

  outlined init with copy of __REAssetService(v10, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return _s10RealityKit21BodyTrackingComponentVWObTm_0(v12, a2, a7);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance TextComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(v12, v13);
  outlined init with copy of __REAssetService(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return _s10RealityKit21BodyTrackingComponentVWObTm_0(v11, a2, a6);
}

void protocol witness for static Component.__free(to:offset:) in conformance AccessibilityComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for AccessibilityComponent);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance TextComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return outlined init with copy of BodyTrackingComponent(a1, boxed_opaque_existential_1, a4);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ImagePresentationComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of ImagePresentationComponent(v8, &v7);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImagePresentationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ImagePresentationComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v6;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance ImagePresentationComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ImagePresentationComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v4 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v4;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ImagePresentationComponent(uint64_t a1)
{
  outlined destroy of ImagePresentationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ImagePresentationComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v16 = a1[4];
  v8 = v16;
  v9 = a1[1];
  v13[0] = *a1;
  v10 = v13[0];
  v13[1] = v9;
  v6[3] = v14;
  v6[4] = v7;
  v6[5] = v8;
  v6[1] = v10;
  v6[2] = v9;
  return outlined init with copy of ImagePresentationComponent(v13, &v12);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ChannelAudioComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ChannelAudioComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance ChannelAudioComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = *a1;
  *(v6 + 32) = result;
  *(v6 + 40) = v8;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance OrthographicCameraComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance OrthographicCameraComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  return result;
}

float protocol witness for static Component.__load(from:offset:) in conformance OrthographicCameraComponent@<S0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = *(a1 + 8);
  v5 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = result;
  *(a4 + 12) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __EntityInfoComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of __EntityInfoComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance __EntityInfoComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of __EntityInfoComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AttachedTransformComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of AttachedTransformComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of AttachedTransformComponent(&v7, a2);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance AttachedTransformComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of AttachedTransformComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of AttachedTransformComponent(&v5, a2);
}

void protocol witness for static Component.__free(to:offset:) in conformance AttachedTransformComponent(uint64_t a1)
{
  outlined destroy of AttachedTransformComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ReferenceComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = a1[5];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  *(a2 + 40) = v8;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ReferenceComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of ReferenceComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 33) = v11;
  *(a2 + 40) = v12;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ReferenceComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of ReferenceComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  *(a2 + 40) = v10;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ReferenceComponent(uint64_t a1)
{
  outlined destroy of ReferenceComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ReferenceComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  v12 = *(a1 + 40);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  *(v6 + 48) = v10;
  *(v6 + 49) = v11;
  *(v6 + 56) = v12;
}

id protocol witness for static Component.__load(from:) in conformance PhysicsSimulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return v3;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsSimulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of PhysicsSimulationComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsSimulationComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of PhysicsSimulationComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsSimulationComponent(uint64_t a1)
{
  outlined destroy of PhysicsSimulationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance PhysicsSimulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v9;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;

  return v8;
}

uint64_t protocol witness for static Component.__load(from:) in conformance CollisionComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 20) = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CollisionComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of CollisionComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  result = v9;
  *(a2 + 12) = v9;
  *(a2 + 20) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CollisionComponent(uint64_t a1, uint64_t a2)
{
  outlined destroy of CollisionComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  *(a2 + 8) = v6;
  result = v7;
  *(a2 + 12) = v7;
  *(a2 + 20) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance CollisionComponent(uint64_t a1)
{
  outlined destroy of CollisionComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance CollisionComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 20);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 12) = *(a1 + 12);
  *(a4 + 20) = v5;
}

void protocol witness for static Component.__free(to:offset:) in conformance AnchoringComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for AnchoringComponent);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance CharacterControllerComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CharacterControllerComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v7;
  *a2 = v6;
  *(a2 + 16) = v3;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CharacterControllerComponent(uint64_t a1, uint64_t a2)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v3 = v7;
  *a2 = v6;
  *(a2 + 16) = v3;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance CharacterControllerComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  result = *(a1 + 32);
  *(v6 + 48) = result;
  *(v6 + 64) = *(a1 + 48);
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance BodyTrackingComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for BodyTrackingComponent);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EventSubscriptionComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of EventSubscriptionComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  result = *&v9;
  a2[2] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance EventSubscriptionComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of EventSubscriptionComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance EventSubscriptionComponent(uint64_t a1)
{
  outlined destroy of EventSubscriptionComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ManipulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t)@<X7>, uint64_t *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(a1, v7 + 16);
}

uint64_t protocol witness for static Component.__load(from:) in conformance _Proto_BlendShapeWeightsComponent_v1@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1, _OWORD *a2)
{
  outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1)
{
  outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;
}

uint64_t protocol witness for static Component.__load(from:) in conformance BlendShapeWeightsComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance BlendShapeWeightsComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of BlendShapeWeightsComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance BlendShapeWeightsComponent(uint64_t a1, _OWORD *a2)
{
  outlined destroy of BlendShapeWeightsComponent(a2);
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v5;
  *a2 = v5;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance BlendShapeWeightsComponent(uint64_t a1)
{
  outlined destroy of BlendShapeWeightsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance BlendShapeWeightsComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;
}

__n128 protocol witness for static Component.__load(from:) in conformance Transform@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance Transform(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance Transform(uint64_t a1, _OWORD *a2)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance Transform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v6[1] = *a1;
  v6[2] = v8;
  v6[3] = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ClippingExceptionComponent(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ClippingExceptionComponent(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for static Component.__load(from:) in conformance PhysicsJointsComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsJointsComponent(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    outlined destroy of PhysicsJointsComponent(a2);
    a1 = v5;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsJointsComponent(uint64_t a1, void *a2)
{
  outlined destroy of PhysicsJointsComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsJointsComponent(uint64_t a1)
{
  outlined destroy of PhysicsJointsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PhysicsJointsComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v5 = *a1;
  v4 = a1[1];
  *a4 = v5;
  a4[1] = v4;
}

uint64_t specialized static Component.__store(attribute:to:offset:deinitialize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (v11)
  {
    v12 = v8;
    UnsafeMutablePointer.deinitialize(count:)();
    v8 = v12;
  }

  outlined init with copy of __REAssetService(v8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return (*(v6 + 32))(a2, v10, a4);
}

uint64_t specialized static Component.__store(attribute:to:offset:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Data.Deallocator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v9 = v16;
  if (v16)
  {
    v10 = strlen(v16);
    (*(v5 + 104))(v8, *MEMORY[0x1E6969010], v4);
    v11 = specialized Data.init(bytesNoCopy:count:deallocator:)(v9, v10, v8);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v17[0] = 0;
  CustomComponentProxy.updateJSON(with:)(v11, v13);
  outlined consume of Data?(v11, v13);
  v14 = v17[0];
  result = *a2;
  if (*a2)
  {
    result = RECIntrospectionFree();
  }

  *a2 = v14;
  return result;
}

void specialized static Component.__free(to:offset:)()
{
  UnsafeMutablePointer.deinitialize(count:)();

  JUMPOUT(0x1C68F3DA0);
}

uint64_t outlined consume of ImagePresentationComponent.DataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) <= 1)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v7 != 2)
  {

LABEL_6:
  }
}

uint64_t outlined consume of VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t outlined copy of VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[5] != 1)
  {
  }

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t outlined init with copy of BodyTrackingComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit21BodyTrackingComponentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10RealityKit21BodyTrackingComponentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_55Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  a2(v2[4]);
  a2(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t dispatch thunk of ARKitRunnable.runARKitSession(withSupportedCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ARKitRunnable.stop()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return v9(a1, a2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS10RealityKit6EntityC0E10FoundationE20ConfigurationCatalogV0I3SetV_G_AM0iK5CacheCs5NeverOTg504_s10e4Kit6g5C0A10h3E20ij63V06CachedC6ReaderC17configurationSets12combinationsAHSDySSAF0E3k36VG_SayAF0E11CombinationVGtKcfcAF0eL5L9CALXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  v29 = v1;
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v28 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v32 = v5 >> 6;
      v31 = v6;
      v9 = (*(a1 + 56) + 40 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[4];
      type metadata accessor for Entity.ConfigurationCatalog.ConfigurationSetCache();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v11;
      v15[4] = v12;
      v15[5] = v13;
      v15[6] = v14;
      v16 = *(v14 + 16);
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE20ConfigurationCatalogV0H0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE20ConfigurationCatalogV0H0VGMR);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 17;
        }

        v17[2] = v16;
        v17[3] = 2 * (v19 >> 4);
        v30 = specialized Sequence._copySequenceContents(initializing:)(&v34, v17 + 4, v16, v14);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        result = outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v30 != v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v17 = MEMORY[0x1E69E7CC0];
      }

      v15[7] = v17;
      v15[8] = v14;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(v35 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_29;
      }

      v3 = a1 + 64;
      v21 = *(a1 + 64 + 8 * v32);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      v7 = v28;
      if (v28 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v32 << 6;
        v24 = v32 + 1;
        v25 = (a1 + 72 + 8 * v32);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of [String : AudioResource].Index._Variant(v5, v28, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = outlined consume of [String : AudioResource].Index._Variant(v5, v28, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v29)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

unint64_t Entity.ConfigurationCatalog.CachedEntityError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 48);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      _StringGuts.grow(_:)(71);
      MEMORY[0x1C68F3410](0xD000000000000044, 0x80000001C18E79A0);
      MEMORY[0x1C68F3410](v2, v1);
      v12 = 46;
      v13 = 0xE100000000000000;
    }

    else
    {
      if (v3 != 4)
      {
        return 0xD000000000000026;
      }

      _StringGuts.grow(_:)(245);
      MEMORY[0x1C68F3410](0xD000000000000023, 0x80000001C18E7890);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v10);

      MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18E78C0);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v11);

      v12 = 0xD0000000000000A3;
      v13 = 0x80000001C18E78F0;
    }
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (*(v0 + 48))
    {
      if (v3 != 1)
      {
        _StringGuts.grow(_:)(78);
        MEMORY[0x1C68F3410](0xD00000000000004CLL, 0x80000001C18E7A20);
        v12 = v2;
        v13 = v1;
        goto LABEL_12;
      }

      v7 = *(v0 + 32);
      v6 = *(v0 + 40);
      _StringGuts.grow(_:)(154);
      MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E7A70);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E7A90);
      MEMORY[0x1C68F3410](v4, v5);
      MEMORY[0x1C68F3410](0xD00000000000004ELL, 0x80000001C18E7AC0);
      v8 = v7;
      v9 = v6;
    }

    else
    {
      _StringGuts.grow(_:)(188);
      MEMORY[0x1C68F3410](0xD00000000000001CLL, 0x80000001C18E7B10);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0xD00000000000009ALL, 0x80000001C18E7B30);
      v8 = v4;
      v9 = v5;
    }

    MEMORY[0x1C68F3410](v8, v9);
    v12 = 11815;
    v13 = 0xE200000000000000;
  }

LABEL_12:
  MEMORY[0x1C68F3410](v12, v13);
  return 0;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV06CachedC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.CachedEntityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.CachedEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t destructiveInjectEnumTag for Entity.ConfigurationCatalog.CachedEntityError(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = REGetMaxRealityFileConfigurationSceneCount();
  v8 = *(a2 + 16);
  v9 = v7;
  if (v8 <= v7)
  {
    v66 = *(a2 + 16);
    v67 = a2;
    v68 = v4;
    v11 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v14)
    {
LABEL_11:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v4 = v21[1];
      v23 = *(a1 + 56) + 40 * v20;
      if (*v21 != *(v23 + 16) || v4 != *(v23 + 24))
      {
        v25 = *v21;
        v26 = v21[1];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v28 = *(v17 + 2);
          v27 = *(v17 + 3);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v65 = v28 + 1;
            v31 = v17;
            v32 = *(v17 + 2);
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v31);
            v29 = v65;
            v28 = v32;
            v17 = v33;
          }

          *(v17 + 2) = v29;
          v30 = &v17[16 * v28];
          *(v30 + 4) = v22;
          *(v30 + 5) = v4;
        }
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v34 = *(v17 + 2);
        if (v34)
        {
          if (*(a1 + 16))
          {
            v35 = *(v17 + 4);
            v36 = *(v17 + 5);

            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
            v39 = v38;

            if (v39)
            {
              v40 = *(a1 + 56) + 40 * v37;
              v42 = *(v40 + 16);
              v41 = *(v40 + 24);

              lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
              swift_allocError();
              *v43 = v34;
              *(v43 + 8) = v35;
              *(v43 + 16) = v36;
              *(v43 + 24) = v42;
              *(v43 + 32) = v41;
              *(v43 + 40) = 8;
              swift_willThrow();
              v4 = v68;
              goto LABEL_27;
            }
          }

          else
          {
LABEL_53:
            __break(1u);
          }

          __break(1u);
          goto LABEL_55;
        }

        v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS10RealityKit6EntityC0E10FoundationE20ConfigurationCatalogV0I3SetV_G_AM0iK5CacheCs5NeverOTg504_s10e4Kit6g5C0A10h3E20ij63V06CachedC6ReaderC17configurationSets12combinationsAHSDySSAF0E3k36VG_SayAF0E11CombinationVGtKcfcAF0eL5L9CALXEfU0_Tf1cn_n(v44);
        v4 = v68;
        if (!v3)
        {
          v46 = v45;

          type metadata accessor for Entity.ConfigurationCatalog.ConfigurationCollectionCache();
          swift_allocObject();
          v47 = Entity.ConfigurationCatalog.ConfigurationCollectionCache.init(sourcePath:configurationSetCaches:)(47, 0xE100000000000000, v46);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_1C1898160;
          *(v48 + 32) = v47;
          type metadata accessor for Entity.ConfigurationCatalog.ConfigurationMapCache();
          swift_allocObject();

          *(v68 + 16) = Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(v48);
          if (*(a1 + 16))
          {
            v50 = 0;
            v51 = 1;
            v52 = 1 << *(a1 + 32);
            v53 = -1;
            if (v52 < 64)
            {
              v53 = ~(-1 << v52);
            }

            v54 = v53 & *(a1 + 64);
            v55 = (v52 + 63) >> 6;
            do
            {
              if (!v54)
              {
                while (1)
                {
                  v56 = v50 + 1;
                  if (__OFADD__(v50, 1))
                  {
                    break;
                  }

                  if (v56 >= v55)
                  {
                    goto LABEL_41;
                  }

                  v54 = *(v11 + 8 * v56);
                  ++v50;
                  if (v54)
                  {
                    v50 = v56;
                    goto LABEL_39;
                  }
                }

                __break(1u);
                goto LABEL_53;
              }

              v56 = v50;
LABEL_39:
              v57 = __clz(__rbit64(v54));
              v54 &= v54 - 1;
              v58 = *(*(*(a1 + 56) + 40 * (v57 | (v56 << 6)) + 32) + 16);
              v59 = (v51 * v58) >> 64;
              v51 *= v58;
            }

            while (v59 == v51 >> 63);
            __break(1u);
LABEL_41:

            if (v66 < v51)
            {

              lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
              swift_allocError();
              *v60 = v66;
              *(v60 + 8) = v51;
              *(v60 + 16) = 0u;
              *(v60 + 32) = 0u;
              *(v60 + 48) = 4;
              swift_willThrow();

              goto LABEL_51;
            }
          }

          else
          {
          }

          v61 = MEMORY[0x1E69E7CC8];
          v70 = MEMORY[0x1E69E7CC8];
          v62 = *(v67 + 16);
          if (!v62)
          {
LABEL_49:

            *(v68 + 24) = v61;
            return v4;
          }

          v63 = 0;
          while (v63 < *(v67 + 16))
          {
            v69 = *(v67 + 16 * v63 + 32);

            closure #3 in Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(&v70, &v69, v47);
            ++v63;

            if (v62 == v63)
            {
              v61 = v70;
              goto LABEL_49;
            }
          }

LABEL_55:
          __break(1u);
        }

        type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);

LABEL_51:
    v64 = *(v4 + 16);
  }

  else
  {

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 11;
    swift_willThrow();
  }

LABEL_27:
  type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
  swift_deallocPartialClassInstance();
  return v4;
}