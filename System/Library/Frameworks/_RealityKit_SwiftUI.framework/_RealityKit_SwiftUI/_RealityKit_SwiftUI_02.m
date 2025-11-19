uint64_t FreeformMeshManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FreeformMeshManager.MeshAnchor()
{
  result = type metadata singleton initialization cache for FreeformMeshManager.MeshAnchor;
  if (!type metadata singleton initialization cache for FreeformMeshManager.MeshAnchor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformMeshManager.MeshAnchor()
{
  type metadata accessor for ObjectCaptureSession.Mesh.Anchor?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for ObjectCaptureSession.Mesh.Anchor?()
{
  if (!lazy cache variable for type metadata for ObjectCaptureSession.Mesh.Anchor?)
  {
    type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCaptureSession.Mesh.Anchor?);
    }
  }
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[12] = specialized _NativeDictionary.subscript.modify(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = type metadata accessor for UUID();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_21;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a3 & 1);
    v29 = *v4;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v27 & 1) == (v31 & 1))
    {
      v23 = v30;
      goto LABEL_21;
    }

LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    outlined init with take of FreeformMeshManager.MeshAnchor(*(*v4 + 56) + *(v15 + 72) * v23, v20);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v15 + 56))(v20, v32, 1, v13);
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5, v6, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      outlined init with take of FreeformMeshManager.MeshAnchor(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        outlined init with take of FreeformMeshManager.MeshAnchor(v13, v14);
        specialized _NativeDictionary._insert(at:key:value:)(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5, v16, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      outlined init with take of FreeformMeshManager.MeshAnchor(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      outlined init with take of FreeformMeshManager.MeshAnchor(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  outlined destroy of PerspectiveCameraComponent?(v9, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    specialized _NativeDictionary._delete(at:)(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  outlined destroy of PerspectiveCameraComponent?(v22, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FreeformMeshManager.MeshAnchor(uint64_t a1)
{
  v2 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized FreeformMeshManager.computeBoundingBoxWorld(for:)()
{
  ObjectCaptureSession.Mesh.Anchor.transform.getter();
  ObjectCaptureSession.Mesh.Anchor.corner.getter();
  ObjectCaptureSession.Mesh.Anchor.transform.getter();
  ObjectCaptureSession.Mesh.Anchor.corner.getter();
  ObjectCaptureSession.Mesh.Anchor.extent.getter();

  return BoundingBox.init(min:max:)();
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined assign with copy of ObjectCaptureSession.Mesh.Anchor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DynamicScanVolumeEstimator.BoxAlgorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DynamicScanVolumeEstimator.BoxAlgorithm.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t *a1@<X8>)
{
  v2 = 0x67696C4173697861;
  if (*v1)
  {
    v2 = 0x4179746976617267;
  }

  v3 = 0xEB0000000064656ELL;
  if (*v1)
  {
    v3 = 0xEE0064656E67696CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4179746976617267;
  }

  else
  {
    v4 = 0x67696C4173697861;
  }

  if (v3)
  {
    v5 = 0xEB0000000064656ELL;
  }

  else
  {
    v5 = 0xEE0064656E67696CLL;
  }

  if (*a2)
  {
    v6 = 0x4179746976617267;
  }

  else
  {
    v6 = 0x67696C4173697861;
  }

  if (*a2)
  {
    v7 = 0xEE0064656E67696CLL;
  }

  else
  {
    v7 = 0xEB0000000064656ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t DynamicScanVolumeEstimator.init(using:)(int a1, float a2, double a3, float a4)
{
  v5 = v4;
  v21 = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 1;
  v22 = 1;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 1;
  v10 = MEMORY[0x277D84F90];
  *(v5 + 248) = MEMORY[0x277D84F90];
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10RealityKit6EntityCTt0g5Tf4g_n(v10);
  *(v5 + 288) = 1;
  *(v5 + 16) = a1 & 1;
  *(v5 + 17) = BYTE1(a1) & 1;
  *(v5 + 18) = BYTE2(a1) & 1;
  *(v5 + 20) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23B824000, v12, v13, "Creating DynamicScanVolumeEstimator with desc=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x23EEB0B70](v15, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }

  return v5;
}

void DynamicScanVolumeEstimator.addSphere(sphere:mass:time:)(float32x4_t a1, float a2, float a3, double a4)
{
  v7 = a1;
  if (*(v4 + 160))
  {
    goto LABEL_3;
  }

  v8 = *(v4 + 152);
  v36 = *(v4 + 144);
  v37 = v8;
  v10 = *(v4 + 96);
  v9 = *(v4 + 112);
  v12 = *(v4 + 64);
  v11 = *(v4 + 80);
  v13 = *(v4 + 128);
  v14 = *(v4 + 136);
  v29 = *(v4 + 48);
  v30 = v12;
  v31 = v11;
  v32 = v10;
  v33 = v9;
  v34 = v13;
  v35 = v14;
  v15.i64[0] = v36;
  v15.i64[1] = v8;
  v16 = vsubq_f32(a1, v15);
  v17 = vmulq_f32(v16, v16);
  *&v10 = v17.f32[2] + vaddv_f32(*v17.f32);
  *&v12 = vrsqrte_f32(v10);
  *&v12 = vmul_f32(*&v12, vrsqrts_f32(v10, vmul_f32(*&v12, *&v12)));
  v18 = vmulq_n_f32(v16, vmul_f32(*&v12, vrsqrts_f32(v10, vmul_f32(*&v12, *&v12))).f32[0]);
  *&v10 = vmuls_lane_f32(a2, v18, 2);
  v18.n128_u64[0] = vadd_f32(v7.n128_u64[0], vmul_n_f32(v18.n128_u64[0], a2));
  v18.n128_f32[2] = v7.n128_f32[2] + *&v10;
  v18.n128_u32[3] = 0;
  v23 = v7;
  v24 = a2;
  v19 = Ellipsoid.signedDistanceField(at:)(v18);
  v7 = v23;
  a2 = v24;
  if (v19 > 0.0)
  {
LABEL_3:
    v20 = static DynamicScanVolumeEstimator.SphereSample.staticId + 1;
    if (__OFADD__(static DynamicScanVolumeEstimator.SphereSample.staticId, 1))
    {
LABEL_15:
      __break(1u);
    }

    else
    {
      ++static DynamicScanVolumeEstimator.SphereSample.staticId;
      v25[0].n128_u64[0] = v20;
      v25[1] = v7;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      DynamicScanVolumeEstimator.addSphereSample(_:)(v25);
      if (DynamicScanVolumeEstimator.attemptToCoalesceOnePair()())
      {
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_15;
          }

          ++v21;
        }

        while ((DynamicScanVolumeEstimator.attemptToCoalesceOnePair()() & 1) != 0);
        if (v22 >= 1)
        {
          DynamicScanVolumeEstimator.recalculateBoundingVolume()();
        }
      }

      DynamicScanVolumeEstimator.cullOldSamples(at:)(a4);
    }
  }
}

void DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 160))
  {
    if (*(v1 + 17) == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "Removing ellipsoid debug entity...", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }
  }

  else
  {
    v8 = *(v1 + 64);
    v7 = *(v1 + 80);
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    v12 = *(v1 + 112);
    v11 = *(v1 + 120);
    v14 = *(v1 + 128);
    v13 = *(v1 + 136);
    v16 = *(v1 + 144);
    v15 = *(v1 + 152);
    v42 = *(v1 + 48);
    v43 = v8;
    v44 = v7;
    v45 = v9;
    v46 = v10;
    v47 = v12;
    v48 = v11;
    v49 = v14;
    v50 = v13;
    v51 = v16;
    v52 = v15;
    if ((*(a1 + 112) & 1) != 0 && *(v1 + 17) == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23B824000, v18, v19, "Adding ellipsoid debug entity...", v20, 2u);
        MEMORY[0x23EEB0B70](v20, -1, -1);
      }

      DynamicScanVolumeEstimator.debugRootEntity.getter();
      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    if (*(v2 + 17) == 1)
    {
      v21.i64[0] = v14;
      v22 = v16;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
        v22 = v16;
        v21.i64[0] = v14;
      }

      v21.i64[1] = v13;
      v40 = v21;
      v39 = v22;
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, logger);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v41 = v27;
        *v26 = 136446210;
        specialized simd_float4x4.init(translation:rotation:scale:)(v39, v40);
        type metadata accessor for simd_float4x4(0);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v41);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_23B824000, v24, v25, "Updating ellipsoid debug entity xform: %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x23EEB0B70](v27, -1, -1);
        MEMORY[0x23EEB0B70](v26, -1, -1);
      }

      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      specialized simd_float4x4.init(translation:rotation:scale:)(v39, v40);
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
    }

    if (*(v2 + 18))
    {
      Ellipsoid.gravityAlignedBox.getter();
      *&v33 = specialized simd_float4x4.init(translation:rotation:scale:)(v32, v31);
    }

    else
    {
      Ellipsoid.computeAABB()();
      *&v33 = specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v37, v38);
    }

    *(v2 + 176) = v33;
    *(v2 + 192) = v34;
    *(v2 + 208) = v35;
    *(v2 + 224) = v36;
    *(v2 + 240) = 0;
    if (*(v2 + 16) == 1)
    {
      DynamicScanVolumeEstimator.boxEntity.getter();
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
    }
  }
}

uint64_t DynamicScanVolumeEstimator.boxEntity.getter()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 256);
  }

  else
  {
    v1 = specialized static DynamicScanVolumeEstimator.makeBoxEntity()();
    v2 = *(v0 + 256);
    *(v0 + 256) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.debugRootEntity.getter()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for Entity();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = Entity.init()();
    v6 = *(v2 + 264);
    *(v2 + 264) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.debugEllipsoidEntity.getter()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v1 = specialized static DynamicScanVolumeEstimator.makeDebugEllipsoidEntity()();
    v2 = *(v0 + 272);
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.cullOldSamples(at:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 24);
    v6 = *(v1 + 248);

    v7 = (v3 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = v5 * (a1 - *v7);
      v13 = v10 - v12;
      if (v13 <= 0.0 || v13 < 0.001)
      {
        v15 = *(v7 - 5);
        v20 = *(v7 - 6);
        v16 = *(v7 - 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v9 = &v8[48 * v18];
        *(v9 + 4) = v15;
        *(v9 + 3) = v20;
        *(v9 + 16) = v16;
        *(v9 + 17) = v10;
        *(v9 + 9) = v11;
      }

      v7 += 12;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  DynamicScanVolumeEstimator.removeSamples(in:)(v8);
}

uint64_t DynamicScanVolumeEstimator.addSphereSample(_:)(__n128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 248) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 248) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[48 * v6];
  v8 = *a1;
  v9 = a1[2];
  *(v7 + 3) = a1[1];
  *(v7 + 4) = v9;
  *(v7 + 2) = v8;
  *(v1 + 248) = v3;
  result = swift_endAccess();
  if (*(v1 + 17) == 1)
  {
    LODWORD(v11) = a1[2].n128_u32[0];
    v12 = specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(a1[1], v11, a1[2].n128_f32[1], *(v1 + 20));
    v13 = a1->n128_u64[0];
    swift_beginAccess();

    v14 = *(v1 + 280);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 280);
    *(v1 + 280) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v13, v15);
    *(v1 + 280) = v16;
    swift_endAccess();
    DynamicScanVolumeEstimator.debugRootEntity.getter();
    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.removeDebugEntity(id:)(uint64_t result)
{
  if (*(v1 + 17) == 1)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 280);
    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);
        type metadata accessor for Entity();

        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }
    }

    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v2);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.attemptToCoalesceOnePair()()
{
  v5 = v0;
  swift_beginAccess();
  v8 = *(v0 + 248);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  while (!v10)
  {
LABEL_3:
    if (++v10 == v9)
    {
      return 0;
    }
  }

  v11 = 0;
  v12 = v8 + 32 + 48 * v10;
  v13.i32[0] = *(v12 + 32);
  v14 = *(v12 + 16);
  LODWORD(v15) = *(v12 + 24);
  v16 = *(v0 + 248);
  v17 = 32;
  while (1)
  {
    v18 = *(v16 + 48);
    v19 = *(v16 + 64);
    *v6.i32 = COERCE_FLOAT(*(v16 + 56));
    v20 = vsub_f32(*v14.i8, *v18.i8);
    v21 = sqrtf(((v15 - *v6.i32) * (v15 - *v6.i32)) + vaddv_f32(vmul_f32(v20, v20)));
    v22 = 0.0;
    if ((v13.f32[0] + v19) >= v21)
    {
      if (v21 <= (v13.f32[0] - v19))
      {
        v22 = v19 * (v19 * (v19 * 4.1888));
      }

      else
      {
        v23 = vsub_f32(*v18.i8, *v14.i8);
        v24 = sqrtf(((*v6.i32 - v15) * (*v6.i32 - v15)) + vaddv_f32(vmul_f32(v23, v23)));
        v22 = v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888));
        if (v24 > (v19 - v13.f32[0]))
        {
          if (fabsf(v19 - v13.f32[0]) >= 0.000001 || (v22 = v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888)), v24 >= 0.000001))
          {
            if (v21 <= -5.0)
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v25 = ((v13.f32[0] * v13.f32[0]) + ((v21 * v21) - (v19 * v19))) / (v21 + v21);
            v22 = (((v13.f32[0] * 3.0) - (v13.f32[0] - v25)) * ((v13.f32[0] - v25) * ((v13.f32[0] - v25) * 1.0472))) + (((v19 * 3.0) - (v19 - (v21 - v25))) * ((v19 - (v21 - v25)) * ((v19 - (v21 - v25)) * 1.0472)));
          }
        }
      }
    }

    v26 = v22 / (v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888)));
    v27 = v22 / (v19 * (v19 * (v19 * 4.1888)));
    if (v26 <= v27)
    {
      v26 = v27;
    }

    if (*(v0 + 32) < v26)
    {
      break;
    }

    ++v11;
    v17 += 48;
    v16 += 48;
    if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  v28 = *(v12 + 36);
  v29 = *(v16 + 68);
  *v7.i32 = v28 + v29;
  v30 = vdiv_f32(vadd_f32(vmul_n_f32(*v14.i8, v28), vmul_n_f32(*v18.i8, v29)), vdup_lane_s32(v7, 0));
  *v6.i32 = ((v15 * v28) + (*v6.i32 * v29)) / (v28 + v29);
  v31 = vsub_f32(v30, *v14.i8);
  v32 = vmul_f32(v31, v31);
  v33 = vsub_f32(v30, *v18.i8);
  v34 = vmul_f32(v33, v33);
  v35 = vsub_f32(vdup_lane_s32(v6, 0), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
  v13.i32[1] = *(v16 + 64);
  v36 = vadd_f32(v13, vsqrt_f32(vadd_f32(vmul_f32(v35, v35), vadd_f32(vzip1_s32(v32, v34), vzip2_s32(v32, v34)))));
  if (v36.f32[0] > v36.f32[1])
  {
    v3 = v36.f32[0];
  }

  else
  {
    v3 = v36.f32[1];
  }

  if (*(v12 + 40) > *(v16 + 72))
  {
    v4 = *(v12 + 40);
  }

  else
  {
    v4 = *(v16 + 72);
  }

  v1 = static DynamicScanVolumeEstimator.SphereSample.staticId + 1;
  if (__OFADD__(static DynamicScanVolumeEstimator.SphereSample.staticId, 1))
  {
    goto LABEL_36;
  }

  v46 = v6.i32[0];
  v47 = *v7.i32;
  v48 = v30;
  ++static DynamicScanVolumeEstimator.SphereSample.staticId;
  v2 = *(v0 + 17);
  if (v2 != 1)
  {
    goto LABEL_29;
  }

  result = DynamicScanVolumeEstimator.removeDebugEntity(id:)(*v12);
  v38 = *(v0 + 248);
  if (v11 >= *(v38 + 16))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  DynamicScanVolumeEstimator.removeDebugEntity(id:)(*(v38 + v17));
LABEL_29:
  swift_beginAccess();
  v0 = *(v0 + 248);
  v39 = *(v5 + 248);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 248) = v0;
  if ((result & 1) == 0)
  {
LABEL_37:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
    v0 = result;
  }

  v40.n128_u64[0] = v48;
  if (v10 >= *(v0 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v40.n128_u64[1] = v46;
  v49 = v40;
  v41 = v0 + 48 * v10;
  *(v41 + 32) = v1;
  *(v41 + 48) = v40;
  *(v41 + 64) = v3;
  *(v41 + 68) = v47;
  *(v41 + 72) = v4;
  *(v5 + 248) = v0;
  swift_endAccess();
  if (v2)
  {
    *&v42 = v3;
    v43 = specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(v49, v42, v47, *(v5 + 20));
    swift_beginAccess();

    v44 = *(v5 + 280);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v5 + 280);
    *(v5 + 280) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v1, isUniquelyReferenced_nonNull_native);
    *(v5 + 280) = v50;
    swift_endAccess();
    DynamicScanVolumeEstimator.debugRootEntity.getter();
    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  swift_beginAccess();
  specialized Array.remove(at:)(v11, v51);
  swift_endAccess();
  return 1;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    v11 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.recalculateBoundingVolume()()
{
  swift_beginAccess();
  v1 = v0[15].i64[1];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v3 = v0[15].i64[1];

  v5 = (v1 + 72);
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  do
  {
    v9 = *(v5 - 5);
    v10 = *(v5 - 6);
    v11 = *(v5 - 2);
    v12 = *(v5 - 1);
    v13 = *v5;
    if (v0[10].i8[0])
    {
      goto LABEL_7;
    }

    v14 = &v0[9].i64[1];
    v15 = *v0[9].f32;
    v16 = vld1q_dup_f64(v14);
    *v4.f32 = vsub_f32(*v10.f32, v15);
    v4.i32[2] = vsubq_f32(v10, v16).i32[2];
    v17 = vmulq_f32(v4, v4);
    *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(v18);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
    v19 = vmulq_n_f32(v4, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v20 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v0[3], v10.f32[0] + (v11 * v19.f32[0])), v0[4], v10.f32[1] + vmuls_lane_f32(v11, *v19.f32, 1)), v0[5], v10.f32[2] + vmuls_lane_f32(v11, v19, 2)), v0[6]);
    v4 = vmulq_f32(v20, v20);
    if ((sqrtf(v4.f32[2] + vaddv_f32(*v4.f32)) + -1.0) > 0.0)
    {
LABEL_7:
      if (v0[1].f32[1] >= v12)
      {
        goto LABEL_4;
      }

      v30 = *(v5 - 6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      v23 = v30;
      if (v22 >= v21 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v7);
        v23 = v30;
        v7 = v28;
      }

      *(v7 + 2) = v22 + 1;
      v24 = &v7[48 * v22];
      *(v24 + 4) = v9;
      *(v24 + 3) = v23;
      *(v24 + 16) = v11;
      *(v24 + 17) = v12;
      *(v24 + 9) = v13;
    }

    else
    {
      v30 = *(v5 - 6);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    v4 = v30;
    if (v26 >= v25 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v6);
      v4 = v30;
      v6 = v27;
    }

    *(v6 + 2) = v26 + 1;
    v8 = &v6[48 * v26];
    v8[2].i64[0] = v9;
    v8[3] = v4;
    v8[4].f32[0] = v11;
    v8[4].f32[1] = v12;
    v8[4].i64[1] = v13;
LABEL_4:
    v5 += 12;
    --v2;
  }

  while (v2);

LABEL_20:
  DynamicScanVolumeEstimator.removeSamples(in:)(v6);

  DynamicScanVolumeEstimator.recomputeBoundingEllipsoid(containing:)(v7);
}

uint64_t DynamicScanVolumeEstimator.removeSamples(in:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 248);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = v4 + 32;
    v42 = a1;
    v8 = (a1 + 32);

    v10 = 0;
    v11 = v6 + 1;
    v12 = MEMORY[0x277D84F90];
    while (v10 < *(v4 + 16))
    {
      v17 = (v7 + 48 * v10);
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = v17[4];
      v21 = v17[5];
      ++v10;
      v22 = v11;
      v23 = v8;
      while (--v22)
      {
        v24 = *v23;
        v23 += 6;
        if (v24 == v18)
        {
          goto LABEL_6;
        }
      }

      v43 = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
      }

      v13 = v43;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v43;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 48 * v15;
      *(v16 + 32) = v18;
      *(v16 + 48) = v13;
      *(v16 + 64) = v20;
      *(v16 + 72) = v21;
      v7 = v4 + 32;
LABEL_6:
      if (v10 == v5)
      {

        v25 = *(v2 + 248);
        a1 = v42;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_16:
    *(v2 + 248) = v12;

    if (*(v2 + 17))
    {
      v26 = *(a1 + 16);
      if (v26)
      {
        v27 = (a1 + 32);
        swift_beginAccess();
        do
        {
          v30 = *v27;
          v27 += 6;
          v29 = v30;
          v31 = *(v2 + 280);
          if (*(v31 + 16))
          {
            v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            if (v33)
            {
              v34 = *(*(v31 + 56) + 8 * v32);
              type metadata accessor for Entity();

              HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
            }
          }

          swift_beginAccess();
          v35 = *(v2 + 280);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if (v37)
          {
            v38 = v36;
            v39 = *(v2 + 280);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = *(v2 + 280);
            *(v2 + 280) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
            }

            v28 = *(*(v41 + 56) + 8 * v38);

            specialized _NativeDictionary._delete(at:)(v38, v41);
            *(v2 + 280) = v41;
          }

          result = swift_endAccess();
          --v26;
        }

        while (v26);
      }
    }
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.recomputeBoundingEllipsoid(containing:)(uint64_t result)
{
  if (*(result + 16))
  {
    v3 = v1;
    v4 = result;
    if (*(v1 + 160))
    {
      v5 = one-time initialization token for logger;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, logger);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = v4;
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23B824000, v7, v8, "Making a base ellipsoid from the first sphere...", v10, 2u);
        v11 = v10;
        v4 = v9;
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }

      specialized Ellipsoid.init(fromSphere:)(v103, v4[3], v4[4].n128_f32[0]);
      v12 = v103[1];
      v13 = v103[2];
      v14 = v103[3];
      v15 = v103[4];
      v16 = v103[5];
      v17 = v103[6];
      LOBYTE(v113) = 0;
      v18 = *(v3 + 128);
      v121[4] = *(v3 + 112);
      v121[5] = v18;
      v121[6] = *(v3 + 144);
      v122 = *(v3 + 160);
      v19 = *(v3 + 64);
      v121[0] = *(v3 + 48);
      v121[1] = v19;
      v20 = *(v3 + 96);
      v121[2] = *(v3 + 80);
      v121[3] = v20;
      *(v3 + 48) = v103[0];
      *(v3 + 64) = v12;
      *(v3 + 80) = v13;
      *(v3 + 96) = v14;
      *(v3 + 112) = v15;
      *(v3 + 128) = v16;
      *(v3 + 144) = v17;
      *(v3 + 160) = v113;
      DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(v121);
      v21 = v4[1].n128_i64[0];
      if (!v21)
      {
        __break(1u);
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v4;
      if (!isUniquelyReferenced_nonNull_native || v21 - 1 > v4[1].n128_u64[1] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v4);
        v102 = v4;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v4;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v120[0].i64[0] = v27;
        *v26 = 136446210;
        v95 = *(v3 + 64);
        v97 = *(v3 + 48);
        v89 = *(v3 + 96);
        v92 = *(v3 + 80);
        v86 = *(v3 + 128);
        v87 = *(v3 + 112);
        v84 = *(v3 + 144);
        v28 = *(v3 + 160);

        if (v28)
        {
LABEL_41:
          __break(1u);

          __break(1u);
          return result;
        }

        v105 = v97;
        v106 = v95;
        v107 = v92;
        v108 = v89;
        v109 = v87;
        v110 = v86;
        v111 = v84;
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v120[0].i64);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_23B824000, v23, v24, "New ellipsoid =  %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x23EEB0B70](v27, -1, -1);
        MEMORY[0x23EEB0B70](v26, -1, -1);

        v4 = v25;
        if ((*(v3 + 160) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (*(v3 + 160))
      {
      }
    }

    else
    {

      if (*(v1 + 160))
      {
      }
    }

LABEL_18:
    v33 = *(v3 + 128);
    v32 = *(v3 + 144);
    v35 = *(v3 + 96);
    v34 = *(v3 + 112);
    v37 = *(v3 + 64);
    v36 = *(v3 + 80);
    v120[0] = *(v3 + 48);
    v120[1] = v37;
    v120[2] = v36;
    v120[3] = v35;
    v120[4] = v34;
    v120[5] = v33;
    v120[6] = v32;
    *&v105 = v4;

    specialized MutableCollection<>.sort(by:)(&v105, v120);
    v2 = v105;
    v21 = *(v105 + 16);
    if (!v21)
    {
LABEL_33:
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_20;
    }

LABEL_36:
    swift_once();
    if (*(v2 + 16))
    {
LABEL_20:
      v88 = type metadata accessor for Logger();
      v38 = 0;
      v24 = (v2 + 64);
      v85 = v21 - 1;
      while (1)
      {
        v98 = *(v24 - 1);
        v39 = *v24;
        __swift_project_value_buffer(v88, logger);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v2;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v100 = v44;
          *v43 = 136446466;
          v45 = String.init<A>(describing:)();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v100);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2082;
          v90 = *(v3 + 64);
          v93 = *(v3 + 48);
          v80 = *(v3 + 96);
          v82 = *(v3 + 80);
          v77 = *(v3 + 128);
          v78 = *(v3 + 112);
          v76 = *(v3 + 144);
          v48 = *(v3 + 160);

          if (v48)
          {
            goto LABEL_39;
          }

          v49 = String.init<A>(describing:)();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v100);

          *(v43 + 14) = v51;
          _os_log_impl(&dword_23B824000, v40, v41, "Assimilating sphere: %{public}s into ellipsoid %{public}s.", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEB0B70](v44, -1, -1);
          MEMORY[0x23EEB0B70](v43, -1, -1);

          v2 = v42;
        }

        else
        {
        }

        if (*(v3 + 160))
        {
          break;
        }

        v53 = *(v3 + 128);
        v52 = *(v3 + 144);
        v55 = *(v3 + 96);
        v54 = *(v3 + 112);
        v57 = *(v3 + 64);
        v56 = *(v3 + 80);
        v113 = *(v3 + 48);
        v114 = v57;
        v115 = v56;
        v116 = v55;
        v117 = v54;
        v118 = v53;
        v119 = v52;
        Ellipsoid.computeAABB()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_23B91A6D0;
        *(v58 + 32) = v39;
        *(v58 + 36) = v39;
        *(v58 + 40) = v39;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v58);
        swift_setDeallocating();
        swift_deallocClassInstance();
        BoundingBox.init(min:max:)();
        BoundingBox.union(_:)();
        specialized Ellipsoid.init(inscribedIn:)(v104);
        v59 = v104[1];
        v60 = v104[2];
        v61 = v104[3];
        v62 = v104[4];
        v63 = v104[5];
        v64 = v104[6];
        v101 = 0;
        v65 = *(v3 + 128);
        v109 = *(v3 + 112);
        v110 = v65;
        v111 = *(v3 + 144);
        v112 = *(v3 + 160);
        v66 = *(v3 + 64);
        v105 = *(v3 + 48);
        v106 = v66;
        v67 = *(v3 + 96);
        v107 = *(v3 + 80);
        v108 = v67;
        *(v3 + 48) = v104[0];
        *(v3 + 64) = v59;
        *(v3 + 80) = v60;
        *(v3 + 96) = v61;
        *(v3 + 112) = v62;
        *(v3 + 128) = v63;
        *(v3 + 144) = v64;
        *(v3 + 160) = v101;
        DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(&v105);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v100 = v71;
          *v70 = 136446210;
          v96 = *(v3 + 64);
          v99 = *(v3 + 48);
          v91 = *(v3 + 96);
          v94 = *(v3 + 80);
          v81 = *(v3 + 128);
          v83 = *(v3 + 112);
          v79 = *(v3 + 144);
          v72 = *(v3 + 160);

          if (v72)
          {
            goto LABEL_40;
          }

          v73 = String.init<A>(describing:)();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v100);

          *(v70 + 4) = v75;
          _os_log_impl(&dword_23B824000, v68, v69, "... new ellipsoid =  %{public}s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v71);
          MEMORY[0x23EEB0B70](v71, -1, -1);
          MEMORY[0x23EEB0B70](v70, -1, -1);
        }

        else
        {
        }

        if (v85 == v38)
        {
          goto LABEL_33;
        }

        ++v38;
        v24 += 12;
        if (v38 >= *(v2 + 16))
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.__deallocating_deinit()
{
  v1 = v0[31];

  v2 = v0[32];

  v3 = v0[33];

  v4 = v0[34];

  v5 = v0[35];

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicScanVolumeEstimator.Descriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[20])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicScanVolumeEstimator.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, int32x4_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, int32x4_t *a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5[6];
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = *(v5 + 48 * a3 + 16);
    v10 = vsubq_f32(v6, v9);
    v11 = vmulq_f32(v10, v10);
    v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v13 = v8;
    v14 = v7;
    while (1)
    {
      v15 = vsubq_f32(v6, *(v14 + 16));
      v16 = vmulq_f32(v15, v15);
      if (v12 >= sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)))
      {
LABEL_4:
        ++a3;
        v7 += 48;
        --v8;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v17 = *(v14 + 48);
      v19 = *(v14 + 80);
      v18 = *(v14 + 88);
      v20 = *(v14 + 16);
      *(v14 + 48) = *v14;
      *(v14 + 64) = v20;
      *(v14 + 80) = *(v14 + 32);
      *v14 = v17;
      *(v14 + 16) = v9;
      *(v14 + 32) = v19;
      *(v14 + 40) = v18;
      v14 -= 48;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, int32x4_t *a5)
{
  v110 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v8 = *v110;
    if (!*v110)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      if (v5)
      {
      }

      v11 = *(*a3 + 48 * v8 + 16);
      v12 = *(*a3 + 48 * v10 + 16);
      v13 = a5[6];
      v14 = vsub_f32(*v13.i8, *v11.i8);
      v15 = vmul_f32(v14, v14);
      v16 = vsub_f32(*v13.i8, *v12.i8);
      v17 = vmul_f32(v16, v16);
      v18 = vdup_laneq_s32(v13, 2);
      *v12.i8 = vsub_f32(v18, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
      *v12.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v12.i8, *v12.i8), vadd_f32(vzip1_s32(v15, v17), vzip2_s32(v15, v17))));
      v19 = vcgt_f32(vdup_lane_s32(*v12.i8, 1), *v12.i8);
      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v20 = (*a3 + 48 * v10 + 112);
        while (1)
        {
          v21 = vsub_f32(*v13.i8, *v11.i8);
          v22 = vextq_s8(v11, v11, 8uLL).u64[0];
          v11 = *v20->f32;
          v23 = vsub_f32(*v13.i8, *v20);
          v24 = vmul_f32(v23, v23);
          v25 = vmul_f32(v21, v21);
          v26 = vsub_f32(v18, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v22));
          v27 = vsqrt_f32(vadd_f32(vmul_f32(v26, v26), vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25))));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v27, 1), v27), v19)).u8[0] & 1) == 0)
          {
            break;
          }

          ++v8;
          v20 += 6;
          if (v6 == v8)
          {
            v8 = v6;
            break;
          }
        }
      }

      if (v19.i8[0])
      {
        if (v8 < v10)
        {
          goto LABEL_119;
        }

        if (v10 < v8)
        {
          v28 = 48 * v8 - 16;
          v29 = 48 * v10 + 40;
          v30 = v8;
          v31 = v10;
          do
          {
            if (v31 != --v30)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v33 = (v32 + v29);
              v34 = *(v32 + v29 - 40);
              v35 = (v32 + v28);
              v36 = *(v33 - 3);
              v38 = *(v33 - 1);
              v37 = *v33;
              v40 = *(v35 - 1);
              v39 = *v35;
              *(v33 - 5) = *(v35 - 2);
              *(v33 - 3) = v40;
              *(v33 - 1) = v39;
              *(v35 - 4) = v34;
              *(v35 - 1) = v36;
              *v35 = v38;
              *(v35 + 1) = v37;
            }

            ++v31;
            v28 -= 48;
            v29 += 48;
          }

          while (v31 < v30);
          v6 = a3[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_117;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v9 = result;
LABEL_90:
          v105 = *(v9 + 2);
          if (v105 >= 2)
          {
            while (*a3)
            {
              v106 = *&v9[16 * v105];
              v107 = *&v9[16 * v105 + 24];
              specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v106), (*a3 + 48 * *&v9[16 * v105 + 16]), (*a3 + 48 * v107), v8, a5);
              if (v5)
              {
              }

              if (v107 < v106)
              {
                goto LABEL_113;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
              }

              if (v105 - 2 >= *(v9 + 2))
              {
                goto LABEL_114;
              }

              v108 = &v9[16 * v105];
              *v108 = v106;
              *(v108 + 1) = v107;
              result = specialized Array.remove(at:)(v105 - 1);
              v105 = *(v9 + 2);
              if (v105 <= 1)
              {
              }
            }

            goto LABEL_124;
          }
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v60;
    v61 = &v9[16 * v59];
    *(v61 + 4) = v10;
    *(v61 + 5) = v8;
    v62 = *v110;
    if (!*v110)
    {
      goto LABEL_125;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v9 + 4);
          v65 = *(v9 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_104;
          }

          v80 = &v9[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_107;
          }

          v86 = &v9[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_111;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = &v9[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_106;
        }

        v93 = &v9[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_109;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v102 = *&v9[16 * v101 + 32];
        v103 = *&v9[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v102), (*a3 + 48 * *&v9[16 * v63 + 32]), (*a3 + 48 * v103), v62, a5);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v101 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v104 = &v9[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        result = specialized Array.remove(at:)(v63);
        v60 = *(v9 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v9[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_102;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_103;
      }

      v75 = &v9[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_105;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_108;
      }

      if (v79 >= v71)
      {
        v97 = &v9[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_112;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v41 = *a3;
  v42 = a5[6];
  v43 = *a3 + 48 * v8 - 48;
  v44 = v10 - v8;
LABEL_30:
  v45 = *(v41 + 48 * v8 + 16);
  v46 = vsubq_f32(v42, v45);
  v47 = vmulq_f32(v46, v46);
  v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
  v49 = v44;
  v50 = v43;
  while (1)
  {
    v51 = vsubq_f32(v42, *(v50 + 16));
    v52 = vmulq_f32(v51, v51);
    if (v48 >= sqrtf(v52.f32[2] + vaddv_f32(*v52.f32)))
    {
LABEL_29:
      ++v8;
      v43 += 48;
      --v44;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v41)
    {
      break;
    }

    v53 = *(v50 + 48);
    v55 = *(v50 + 80);
    v54 = *(v50 + 88);
    v56 = *(v50 + 16);
    *(v50 + 48) = *v50;
    *(v50 + 64) = v56;
    *(v50 + 80) = *(v50 + 32);
    *v50 = v53;
    *(v50 + 16) = v45;
    *(v50 + 32) = v55;
    *(v50 + 40) = v54;
    v50 -= 48;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(int8x16_t *__dst, int8x16_t *__src, int8x16_t *a3, int8x16_t *a4, int32x4_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 48;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 48;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[3 * v13] <= a4)
    {
      memmove(a4, __src, 48 * v13);
    }

    v14 = &v6[3 * v13];
    if (v12 >= 48 && v8 > v9)
    {
LABEL_22:
      v7 -= 3;
      do
      {
        v27 = v7 + 3;
        v28 = v14[-2];
        v29 = v8[-2];
        v30 = a5[6];
        v31 = vsub_f32(*v30.i8, *v28.i8);
        v32 = vmul_f32(v31, v31);
        v33 = vsub_f32(*v30.i8, *v29.i8);
        v34 = vmul_f32(v33, v33);
        *v28.i8 = vsub_f32(vdup_laneq_s32(v30, 2), vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v29, v29, 8uLL)));
        *v28.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v28.i8, *v28.i8), vadd_f32(vzip1_s32(v32, v34), vzip2_s32(v32, v34))));
        if (vcgt_f32(vdup_lane_s32(*v28.i8, 1), *v28.i8).u32[0])
        {
          v38 = v8 - 3;
          if (v27 != v8)
          {
            v39 = *v38;
            v40 = v8[-1];
            v7[1] = v8[-2];
            v7[2] = v40;
            *v7 = v39;
          }

          if (v14 <= v6 || (v8 -= 3, v38 <= v9))
          {
            v8 = v38;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v35 = v14 - 3;
        if (v27 != v14)
        {
          v36 = *v35;
          v37 = v14[-1];
          v7[1] = v14[-2];
          v7[2] = v37;
          *v7 = v36;
        }

        v7 -= 3;
        v14 -= 3;
      }

      while (v35 > v6);
      v14 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[3 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v14 = &v6[3 * v11];
    if (v10 >= 48 && v8 < v7)
    {
      v15 = a5[6];
      v16 = vdup_laneq_s32(v15, 2);
      while (1)
      {
        v17 = v8[1];
        v18 = v6[1];
        v19 = vsub_f32(*v15.i8, *v17.i8);
        v20 = vmul_f32(v19, v19);
        v21 = vsub_f32(*v15.i8, *v18.i8);
        v22 = vmul_f32(v21, v21);
        *v17.i8 = vsub_f32(v16, vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
        *v17.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v17.i8, *v17.i8), vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22))));
        if ((vcgt_f32(vdup_lane_s32(*v17.i8, 1), *v17.i8).u8[0] & 1) == 0)
        {
          break;
        }

        v23 = v8;
        v24 = v9 == v8;
        v8 += 3;
        if (!v24)
        {
          goto LABEL_13;
        }

LABEL_14:
        v9 += 3;
        if (v6 >= v14 || v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      v23 = v6;
      v24 = v9 == v6;
      v6 += 3;
      if (v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      v25 = *v23;
      v26 = v23[2];
      v9[1] = v23[1];
      v9[2] = v26;
      *v9 = v25;
      goto LABEL_14;
    }

LABEL_16:
    v8 = v9;
  }

LABEL_33:
  v41 = ((v14 - v6) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v42 = (v41 >> 3) + (v41 >> 63);
  if (v8 != v6 || v8 >= &v6[3 * v42])
  {
    memmove(v8, v6, 48 * v42);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized static DynamicScanVolumeEstimator.makeDebugEllipsoidEntity()()
{
  v0 = type metadata accessor for UnlitMaterial();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.0 alpha:0.8];
  UnlitMaterial.init(color:)();
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23B91A6F0;
  v6 = MEMORY[0x277CDAC30];
  *(v5 + 56) = v0;
  *(v5 + 64) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  (*(v1 + 16))(boxed_opaque_existential_1, v4, v0);
  v8 = type metadata accessor for ModelEntity();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  ModelEntity.init(mesh:materials:)();
  v11 = type metadata accessor for Entity();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = Entity.init()();
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  (*(v1 + 8))(v4, v0);
  return v14;
}

uint64_t specialized static DynamicScanVolumeEstimator.makeBoxEntity()()
{
  v0 = type metadata accessor for MaterialScalarParameter();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for SimpleMaterial();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:1.0 alpha:0.75];
  MaterialScalarParameter.init(integerLiteral:)();
  SimpleMaterial.init(color:roughness:isMetallic:)();
  type metadata accessor for MeshResource();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static DynamicScanVolumeEstimator.makeBoxEntity());
  static MeshResource.generateBox(size:cornerRadius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23B91A6F0;
  v8 = MEMORY[0x277CDAC50];
  *(v7 + 56) = v2;
  *(v7 + 64) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  v10 = type metadata accessor for ModelEntity();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ModelEntity.init(mesh:materials:)();
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(__n128 a1, double a2, float a3, float a4)
{
  v24 = a1;
  v6 = type metadata accessor for UnlitMaterial();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1.0;
  if ((a3 / a4) <= 1.0)
  {
    v11 = a3 / a4;
  }

  v12 = 0.0;
  if ((a3 / a4) > 0.0)
  {
    v12 = v11;
  }

  v13 = v12;
  v14 = 1.0 - v12;
  v15 = objc_allocWithZone(MEMORY[0x277D75348]);
  [v15 initWithRed:v14 green:0.0 blue:v13 alpha:{1.0, *&v24}];
  UnlitMaterial.init(color:)();
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23B91A6F0;
  v17 = MEMORY[0x277CDAC30];
  *(v16 + 56) = v6;
  *(v16 + 64) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
  v19 = type metadata accessor for ModelEntity();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = ModelEntity.init(mesh:materials:)();
  HasTransform.setPosition(_:relativeTo:)();

  (*(v7 + 8))(v10, v6);
  return v22;
}

uint64_t getEnumTagSinglePayload for DynamicScanVolumeEstimator.BoxAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm()
{
  result = lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm;
  if (!lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm);
  }

  return result;
}

uint64_t ResolvedModel3D.resizable(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = a1;
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedModel3D(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ResolvedModel3D(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RealityView.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  static ViewBuilder.buildExpression<A>(_:)(v1, v2, v8);
  static ViewBuilder.buildExpression<A>(_:)(v7, v2, v8);
  return (*(v3 + 8))(v7, v2);
}

uint64_t RealityViewContentProtocol.subscribe<A>(to:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  (*(a8 + 48))(a1, v10, a2, a3, a4, a5, a7, a9, a6, a8);
  return outlined destroy of EventSource?(v10);
}

uint64_t outlined destroy of EventSource?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RealityViewEntityCollection.startIndex.getter(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for Entity.ChildCollection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  type metadata accessor for Entity();
  v9 = HasHierarchy.children.getter();
  v10 = a1(v9);
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t RealityViewEntityCollection.count.getter()
{
  v1 = type metadata accessor for Entity.ChildCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    type metadata accessor for Entity.ChildCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

uint64_t RealityViewEntityCollection.subscript.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v11 = a2(a1);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t RealityViewEntityCollection.insert<A>(contentsOf:beforeIndex:)()
{
  v1 = type metadata accessor for Entity.ChildCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t RealityViewEntityCollection.remove(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a2(a1);
  return (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall RealityViewEntityCollection.removeAll()()
{
  v1 = type metadata accessor for Entity.ChildCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.removeAll()();
  (*(v2 + 8))(v5, v1);
}

uint64_t RealityViewEntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for Entity.ChildCollection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a4(a1, a2, a3);
  return (*(v10 + 8))(v13, v9);
}

uint64_t protocol witness for EntityCollection.remove(_:) in conformance RealityViewEntityCollection(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Entity.ChildCollection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a4(a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for EntityCollection.removeAll() in conformance RealityViewEntityCollection()
{
  v1 = type metadata accessor for Entity.ChildCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.removeAll()();
  return (*(v2 + 8))(v5, v1);
}

uint64_t protocol witness for Collection.startIndex.getter in conformance RealityViewEntityCollection@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  type metadata accessor for Entity();
  v11 = HasHierarchy.children.getter();
  v12 = a1(v11);
  result = (*(v6 + 8))(v9, v5);
  *a2 = v12;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(v5 - 8);
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = v7;
  a1[1] = v7;
  v9 = *a2;
  v10 = *v2;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v11 = Entity.ChildCollection.subscript.getter();
  a1[2] = v11;
  (*(v6 + 8))(v8, v5);
  *a1 = v11;
  return protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection;
}

void protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);

  free(v2);
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v9 < v10)
  {
    __break(1u);
  }

  else if (v10 <= a1 && v9 >= a2)
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = a1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance RealityViewEntityCollection@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  dispatch thunk of Collection.startIndex.getter();
  return dispatch thunk of Collection.endIndex.getter();
}

BOOL protocol witness for Collection.isEmpty.getter in conformance RealityViewEntityCollection()
{
  v4 = *v0;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  return v3 == v2;
}

uint64_t protocol witness for Collection.count.getter in conformance RealityViewEntityCollection()
{
  v1 = type metadata accessor for Entity.ChildCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance RealityViewEntityCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = specialized Collection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
      do
      {
        dispatch thunk of Collection.index(after:)();
        --v2;
      }

      while (v2);
      return v3;
    }
  }

  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance RealityViewEntityCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = result;
    if (a2)
    {
      while (v5 != a3)
      {
        lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
        dispatch thunk of Collection.index(after:)();
        if (!--v3)
        {
          return v5;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2)
{
  if (a2 < result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  if (result != a2)
  {
    for (i = 0; ; ++i)
    {
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
      dispatch thunk of Collection.index(after:)();
      result = v5;
      if (v5 == a2)
      {
        return v3;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return 0;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityViewEntityCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityViewEntityCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance RealityViewEntityCollection@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *v2;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v12 = Entity.ChildCollection.index(after:)(v10);
  result = (*(v6 + 8))(v9, v5);
  *a2 = v12;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance RealityViewEntityCollection(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  return dispatch thunk of Collection.index(after:)();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RealityViewEntityCollection@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();

  dispatch thunk of Collection.startIndex.getter();
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RealityViewEntityCollection()
{
  v2 = *v0;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
  return dispatch thunk of Collection.count.getter();
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance RealityViewEntityCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t RealityViewContentProtocol.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = (*(a3 + 40))(v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a4(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v6(v10, 0);
}

unint64_t lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection()
{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

uint64_t type metadata completion function for RealityView(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewDefaultPlaceholder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RealityViewDefaultPlaceholder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RealityViewEntityCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for RealityViewEntityCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v7 = a1;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();
  v1 = dispatch thunk of Collection.count.getter();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit6EntityC_Tt1g5(v1, 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v2, v7);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void SphericalShellWavefrontAnimation.sample(at:startingAt:)(double a1, double a2)
{
  v3 = (a1 - a2) / *(v2 + 40);
  v4 = 0.0;
  v5 = 0.0;
  if (v3 > 0.0)
  {
    v5 = 1.0;
    if (v3 > 1.0)
    {
LABEL_3:
      v4 = v5;
      goto LABEL_8;
    }

    v5 = v3;
    if (v5 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v5 <= 1.0)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_8:
  v6 = *(v2 + 52);
  v7 = (*(v2 + 32) + v6) * (1.0 - ((1.0 - v4) * ((1.0 - v4) * (1.0 - v4))));
  v8 = 0.001;
  if (v6 <= 0.001)
  {
    v6 = 0.001;
  }

  if (*(v2 + 48) > 0.001)
  {
    v8 = *(v2 + 48);
  }

  if (((v7 + 0.0) - (v8 + (v5 * (v6 - v8)))) >= v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 16);
  }
}

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SphericalShellWavefrontAnimation.Descriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SphericalShellWavefrontAnimation.Descriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t Ellipsoid.computeAABB()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v2 = specialized simd_float4x4.init(translation:rotation:scale:)(*(v0 + 96), v6);
  *(inited + 32) = LODWORD(v2);
  specialized simd_float4x4.init(translation:rotation:scale:)(*&v7, v6);
  *(inited + 36) = v3;
  specialized simd_float4x4.init(translation:rotation:scale:)(*&v7, v6);
  *(inited + 40) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  return BoundingBox.init(min:max:)();
}

__n128 Ellipsoid.gravityAlignedBox.getter()
{
  v0 = Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:)(100, 100);
  v1 = v0[1].i64[0];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    *&v32[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *&v32[0];
    v3 = &v0[2];
    v4 = *(*&v32[0] + 16);
    v5 = 0uLL;
    do
    {
      v6 = *v3;
      *&v32[0] = v2;
      v7 = *(v2 + 24);
      if (v4 >= v7 >> 1)
      {
        v30 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4 + 1, 1);
        v6 = v30;
        v5 = 0uLL;
        v2 = *&v32[0];
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + 16 * v4 + 32) = vtrn2q_s32(vrev64q_s32(v6), v5);
      ++v3;
      ++v4;
      --v1;
    }

    while (v1);
  }

  specialized static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:)(v2, v32);
  v26 = v32[0];
  v28 = v32[3];
  v31 = v32[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  *(inited + 32) = vzip1_s32(*v31.i8, *v28.i8);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v10 = v9;
  swift_setDeallocating();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_23B91BFD0;
  *(v11 + 32) = vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v28, v28, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v11);
  v13 = v12;
  swift_setDeallocating();
  specialized static MathHelpers.computeEigenvectorsOfSymmetric2x2Matrix(_:)(v10, v13);
  v15 = v14;
  v31.i64[0] = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_23B91BFD0;
  *(v17 + 32) = vsqrt_f32(v15);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v17);
  v28.i64[0] = v18;
  swift_setDeallocating();
  v15.i32[0] = atan2f(*v31.i32, *&v31.i32[1]);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.gravityAlignedBox.getter);
  __sincosf_stret(v15.f32[0] * 0.5);
  specialized static MathHelpers.minAndMaxOver(points:)(v0);
  v27 = v19;
  v25 = v20;

  Transform.init()();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23B91A6D0;
  *(v21 + 32) = *v28.i32 + *v28.i32;
  *(v21 + 36) = v25 - v27;
  *(v21 + 40) = *&v28.i32[1] + *&v28.i32[1];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v21);
  v29 = v22;
  swift_setDeallocating();
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23B91A6D0;
  *(v23 + 32) = v26;
  *(v23 + 36) = (v25 + v27) * 0.5;
  *(v23 + 40) = DWORD2(v26);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v23);
  swift_setDeallocating();
  return v29;
}

float Ellipsoid.signedDistanceField(at:)(__n128 a1)
{
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6E0;
  *(inited + 32) = a1.n128_u64[0];
  *(inited + 40) = a1.n128_u32[2];
  *(inited + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v8 = v3;
  swift_setDeallocating();
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v8.f32[0]), v10, *v8.f32, 1), v11, v8, 2), v12, v8, 3);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) + -1.0;
}

uint64_t Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:));
  v7 = Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(a1, a2, v6, 1.0);
  v8 = *(v7 + 16);
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v28 = *(v3 + 64);
    v27 = *(v3 + 96);
    *v9.i64 = simd_matrix4x4(*(v3 + 80));
    v25 = v10;
    v26 = v9;
    v23 = v12;
    v24 = v11;
    v13 = v30;
    v14 = 32;
    do
    {
      v29 = *(v7 + v14);
      simd_float4x4.scale(_:)();
      SIMD4<>._xyz.getter();
      SIMD4<>._xyz.setter();
      v15 = v26;
      v16 = v25;
      v17 = v24;
      v18 = v23;
      v20 = *(v30 + 16);
      v19 = *(v30 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v15 = v26;
        v16 = v25;
        v18 = v23;
        v17 = v24;
      }

      v21 = vaddq_f32(v18, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v29.f32[0]), v16, *v29.f32, 1), v17, v29, 2));
      v21.i32[3] = 0;
      *(v30 + 16) = v20 + 1;
      *(v30 + 16 * v20 + 32) = v21;
      v14 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

__n128 specialized Ellipsoid.init(fromSphere:)@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float a3@<S1>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.init(fromSphere:));
  v5.i32[3] = 1.0;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = a3;
  *(inited + 36) = a3;
  *(inited + 40) = a3;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v9 = v7;
  swift_setDeallocating();
  static simd_quatf.identity.getter();
  *v12.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a2.n128_f64[0], v10);
  *a1 = __invert_f4(v12);
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  result = a2;
  *(a1 + 96) = a2;
  return result;
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

__n128 specialized Ellipsoid.init(inscribedIn:)@<Q0>(uint64_t a1@<X8>)
{
  BoundingBox.center.getter();
  v10 = v2;
  BoundingBox.extents.getter();
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  *&v5 = vmulq_f32(v4, v3).u64[0];
  *(&v5 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v4, 2));
  v9 = v5;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.init(inscribedIn:));
  v6.i32[3] = 1.0;
  v8 = v6;
  static simd_quatf.identity.getter();
  *v11.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v10.n128_f64[0], v8);
  *a1 = __invert_f4(v11);
  *(a1 + 64) = v9;
  *(a1 + 80) = v8;
  result = v10;
  *(a1 + 96) = v10;
  return result;
}

uint64_t RealityViewCameraController.init()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  v2 = *MEMORY[0x277CDB258];
  v3 = type metadata accessor for CameraControls.InteractionMode();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_automaticTarget) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_worldUp) = xmmword_23B91A740;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaFriction) = 1020054733;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumVerticalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumVerticalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumHorizontalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumHorizontalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_isInertiaRunning) = 0;
  v4 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaVelocityThreshold) = 1036831949;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_intertiaSimStepPerSecond) = 1114636288;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maxInfiniteInertiaVelocity) = 1101004800;
  v5 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
  *v7 = 0;
  *(v7 + 16) = xmmword_23B91A740;
  *(v7 + 32) = xmmword_23B91A740;
  v8 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0x3F8000003CCCCCCDLL;
  *(v8 + 24) = 1065353216;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_up) = xmmword_23B91A740;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumAngles) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumAngles) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_handlingInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_drivenBydefaultNavigationCameraController) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = 1065353216;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_hasInertia) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue) = 0xBFF0000000000000;
  return v0;
}

uint64_t RealityViewCameraController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  v2 = type metadata accessor for CameraControls.InteractionMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity);

  v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for RealityViewCameraController()
{
  result = type metadata accessor for CameraControls.InteractionMode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewCameraController.Inertia(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RealityViewCameraController.Inertia(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewCameraController.OrientationState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RealityViewCameraController.OrientationState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraControlsPublisher(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraControlsPublisher(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for CameraControlsUpdate()
{
  result = type metadata accessor for DragGesture.Value();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MagnifyGesture.Value();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CameraControlsModifier()
{
  type metadata accessor for Environment<CameraControls>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<CameraControlsPublisher>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<CameraControls>()
{
  if (!lazy cache variable for type metadata for Environment<CameraControls>)
  {
    type metadata accessor for CameraControls();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<CameraControls>);
    }
  }
}

void type metadata accessor for State<CameraControlsPublisher>()
{
  if (!lazy cache variable for type metadata for State<CameraControlsPublisher>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CameraControlsPublisher>);
    }
  }
}

uint64_t Entity.update(from:overrideDistance:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) & 1) != 0 || *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) == 1)
  {
    dispatch thunk of Entity.components.getter();
    lazy protocol witness table accessor for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem();

    static System.registerSystem()();
    v37[0] = partial apply for closure #1 in Entity.update(from:overrideDistance:);
    v37[1] = a1;
    lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent();
    Entity.ComponentSet.set<A>(_:)();

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v11 = dispatch thunk of Entity.components.modify();
    lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent();
    Entity.ComponentSet.subscript.setter();
    v11(v37, 0);
  }

  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  if (!*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {
LABEL_8:
    *(a1 + v12) = v3;

    if (*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v37[0] = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);
  v38 = v2;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

  v13 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    v15 = *(a1 + v12);
    goto LABEL_8;
  }

LABEL_9:
  if ((a2 & 1) == 0)
  {
    type metadata accessor for Entity();
    HasTransform.position(relativeTo:)();
    v17 = vsubq_f32(v16, *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
    v14 = vmulq_f32(v17, v17);
    v14.f32[0] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    goto LABEL_13;
  }

LABEL_11:
  v14.f32[0] = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) + *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale);
  if (v14.f32[0] <= 0.0001)
  {
    v14.f32[0] = 0.0001;
  }

LABEL_13:
  v36 = v14;
  type metadata accessor for Entity();
  HasTransform.orientation(relativeTo:)();
  v35 = v18;
  v19 = RealityViewCameraController.useOrbitInteractionMode.getter();
  v20 = v35;
  if (v19)
  {
    v21 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation);
    v22 = vnegq_f32(v21);
    v23 = vtrn2q_s32(v21, vtrn1q_s32(v21, v22));
    v24 = vrev64q_s32(v21);
    v24.i32[0] = v22.i32[1];
    v24.i32[3] = v22.i32[2];
    v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v21, v35, 3), v24, v35, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v21, v22, 8uLL), v35.n128_u64[0], 1), vextq_s8(v23, v23, 8uLL), v35.n128_f32[0]));
  }

  *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
  *&v25 = MEMORY[0x23EEAF8D0](v20);
  v34[4] = v25;
  v34[5] = v26;
  v34[6] = v27;
  v35 = v28;
  v29.n128_f32[0] = specialized simd_float4x4.init(translation:)(*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
  v34[0] = v29;
  v34[1] = v30;
  v34[2] = v31;
  v34[3] = v32;
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = v36.u32[0];
  specialized simd_float4x4.init(translation:)(v29);
  return HasTransform.setTransformMatrix(_:relativeTo:)();
}

Swift::Void __swiftcall RealityViewCameraController.updateInertia()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  *v9.i64 = CACurrentMediaTime();
  v10 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
  v11 = fmin(*v9.i64 - *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia + 8), 1.0) * 60.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  *(v10 + 8) = v9.i64[0];
  v13 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaFriction);
  v9.i64[0] = *(v10 + 32);
  if (v13 > 0.0)
  {
    do
    {
      if (v11 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      if (v11 >= 1.0)
      {
        v14 = 1.0;
      }

      v15 = v14;
      *v9.f32 = vmul_n_f32(*v9.f32, 1.0 - (v13 * v15));
      v11 = v11 + -1.0;
      --v12;
    }

    while (v12);
    *(v10 + 32) = v9.i64[0];
  }

  *v9.f32 = vadd_f32(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32), vadd_f32(vmul_f32(*v9.f32, vdup_n_s32(0x3C23D70Au)), *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16)));
  v9.f32[2] = COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 40)) + (COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 24)) + 0.0);
  v16 = vmulq_f32(v9, v9);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32) = vmulq_n_f32(v9, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v26 = v2[2];
  v26(v8, v0 + v18, v1);
  v19 = *MEMORY[0x277CDB268];
  v27 = v0;
  v20 = v2[13];
  v20(v6, v19, v1);
  v21 = static CameraControls.InteractionMode.== infix(_:_:)();
  v22 = v6;
  v23 = v2[1];
  v23(v22, v1);
  v23(v8, v1);
  if (v21 & 1) != 0 || (v26(v8, v27 + v18, v1), v20(v22, *MEMORY[0x277CDB250], v1), v24 = static CameraControls.InteractionMode.== infix(_:_:)(), v23(v22, v1), v23(v8, v1), (v24))
  {
    RealityViewCameraController.updateArcballOrientation()();
  }
}

Swift::Void __swiftcall RealityViewCameraController.updateArcballOrientation()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v10 = v2[2];
  v36 = v0;
  v35.i64[0] = v10;
  v10(v8, v0 + v9, v1);
  v11 = v2[13];
  v11(v6, *MEMORY[0x277CDB270], v1);
  v12 = static CameraControls.InteractionMode.== infix(_:_:)();
  v13 = v2[1];
  v13(v6, v1);
  v13(v8, v1);
  if ((v12 & 1) == 0)
  {
    (v35.i64[0])(v8, v36 + v9, v1);
    v11(v6, *MEMORY[0x277CDB258], v1);
    v14 = static CameraControls.InteractionMode.== infix(_:_:)();
    v13(v6, v1);
    v13(v8, v1);
    if ((v14 & 1) == 0)
    {
      v15 = v36 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
      v17 = *(v36 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16);
      v16 = *(v36 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32);
      v18 = vsubq_f32(v17, v16);
      v19 = fabsf(v18.f32[1]);
      v20 = fabsf(v18.f32[0]) < 0.0001 && v19 < 0.0001;
      v21 = fabsf(v18.f32[2]);
      if (!v20 || v21 >= 0.0001)
      {
        v23 = vmulq_f32(v17, v16);
        v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        v25 = v36;
        if (fabsf(v24) < 1.0)
        {
          v34 = *(v36 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16);
          v35 = v16;
          v26 = acosf(v24);
          v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          *&v30 = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          *v29.f32 = vrsqrte_f32(v30);
          *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
          v35 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
          v31 = __sincosf_stret((v26 * -2.0) * 0.5);
          v32 = vmulq_n_f32(v35, v31.__sinval);
          v32.i32[3] = LODWORD(v31.__cosval);
          *(v25 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = v32;
          if (*(v25 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
          {
            v33 = *(v25 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);

            Entity.update(from:overrideDistance:)(v25, 0);
          }
        }

        *(v15 + 16) = *(v15 + 32);
      }
    }
  }
}

Swift::Void __swiftcall RealityViewCameraController.updateTargetCube()()
{
  v1 = type metadata accessor for MaterialScalarParameter();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {

    v11 = dispatch thunk of Entity.scene.getter();

    if (v11)
    {
      *&v30 = v0;
      dispatch thunk of Scene.anchors.getter();
      lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v32 == v31[0])
      {
        v29 = v4;
        v28 = *(v4 + 8);
        v28(v10, v3);
      }

      else
      {
        v12 = dispatch thunk of Collection.subscript.read();
        v14 = *v13;

        v12(v31, 0);
        v15 = *(v4 + 8);
        v15(v10, v3);
        v16 = dispatch thunk of Entity.findEntity(named:)();

        if (v16)
        {
LABEL_10:
          v30 = *(v30 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target);
          type metadata accessor for Entity();
          HasTransform.setPosition(_:relativeTo:)();

          return;
        }

        v28 = v15;
        v29 = v4;
      }

      type metadata accessor for MeshResource();
      static MeshResource.generateBox(size:cornerRadius:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_23B91A6F0;
      v18 = [objc_opt_self() blueColor];
      MaterialScalarParameter.init(floatLiteral:)();
      v19 = type metadata accessor for SimpleMaterial();
      v20 = MEMORY[0x277CDAC50];
      *(v17 + 56) = v19;
      *(v17 + 64) = v20;
      __swift_allocate_boxed_opaque_existential_1((v17 + 32));
      SimpleMaterial.init(color:roughness:isMetallic:)();
      v21 = type metadata accessor for ModelEntity();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      ModelEntity.init(mesh:materials:)();
      dispatch thunk of Entity.name.setter();
      dispatch thunk of Scene.anchors.getter();
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v32 == v31[0])
      {
        v28(v8, v3);
      }

      else
      {
        v24 = dispatch thunk of Collection.subscript.read();
        v26 = *v25;

        v24(v31, 0);
        v28(v8, v3);
        v27 = *v26;
        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }

      goto LABEL_10;
    }
  }
}

double RealityViewCameraController.mapToSphere(_:viewport:)(float32x2_t a1, __n128 a2)
{
  v26 = a2;
  v4 = type metadata accessor for CameraControls.InteractionMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12.n128_u32[0] = v26.n128_u32[1];
  if (v26.n128_f32[0] > v26.n128_f32[1])
  {
    v12.n128_f32[0] = v26.n128_f32[0];
  }

  v26 = v12;
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  (*(v5 + 16))(v11, v2 + v13, v4);
  (*(v5 + 104))(v9, *MEMORY[0x277CDB268], v4);
  LOBYTE(v13) = static CameraControls.InteractionMode.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  if (v13)
  {
    a1 = vadd_f32(*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball), a1);
  }

  *v15.i32 = v26.n128_f32[0] * 0.5;
  v17 = vsub_f32(a1, vdup_lane_s32(v15, 0));
  v18 = -*&v17.i32[1];
  v19 = vdup_lane_s32(v17, 0);
  v19.f32[0] = v18;
  v20 = vdiv_f32(v19, vdup_lane_s32(v26.n128_u64[0], 0));
  v21 = vaddv_f32(vmul_f32(v20, v20));
  if (v21 >= 0.125)
  {
    v22 = 0.125 / sqrtf(v21);
  }

  else
  {
    v22 = sqrtf(0.25 - v21);
  }

  *v16.f32 = vrev64_s32(v20);
  v16.f32[2] = v22;
  v23 = vmulq_f32(v16, v16);
  *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  *&result = vmulq_n_f32(v16, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]).u64[0];
  return result;
}

Swift::Void __swiftcall RealityViewCameraController.updateRotation()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v54 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v11 = v2[2];
    v60 = v0;
    v58.i64[0] = v11;
    v11(v8, v0 + v10, v1);
    v12 = v2[13];
    v12(v6, *MEMORY[0x277CDB270], v1);
    v59 = v9;

    v13 = static CameraControls.InteractionMode.== infix(_:_:)();
    v14 = v2[1];
    v14(v6, v1);
    v14(v8, v1);
    if (v13)
    {
      goto LABEL_5;
    }

    (v58.i64[0])(v8, v60 + v10, v1);
    v12(v6, *MEMORY[0x277CDB258], v1);
    v15 = static CameraControls.InteractionMode.== infix(_:_:)();
    v14(v6, v1);
    v14(v8, v1);
    if (v15 & 1) != 0 || ((v58.i64[0])(v8, v60 + v10, v1), v12(v6, *MEMORY[0x277CDB260], v1), v16 = static CameraControls.InteractionMode.== infix(_:_:)(), v14(v6, v1), v14(v8, v1), (v16))
    {
LABEL_5:
      v17 = v60;
      if ((RealityViewCameraController.useOrbitInteractionMode.getter() & 1) == 0)
      {
        type metadata accessor for Entity();
        HasTransform.orientation(relativeTo:)();
        v58 = v22;
        v23 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 80);
        HasTransform.setOrientation(_:relativeTo:)();
        RealityViewCameraController.orientationForMode()(v24);
        v57 = v25;
        v26 = HasTransform.orientation.modify();
        v28 = vnegq_f32(v57);
        v29 = vtrn2q_s32(v57, vtrn1q_s32(v57, v28));
        v30 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v57, v28, 8uLL), *v27, 1), vextq_s8(v29, v29, 8uLL), COERCE_FLOAT(*v27->f32));
        v31 = vrev64q_s32(v57);
        v31.i32[0] = v28.i32[1];
        v31.i32[3] = v28.i32[2];
        *v27->f32 = vaddq_f32(v30, vmlaq_laneq_f32(vmulq_laneq_f32(v57, *v27->f32, 3), v31, *v27->f32, 2));
        v26(v61, 0);
        HasTransform.orientation(relativeTo:)();
        v32 = vmulq_f32(v58, v58);
        *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        v32.i32[0] = vadd_f32(*v32.i8, vdup_lane_s32(*v32.i8, 1)).u32[0];
        v33 = vrecpe_f32(v32.u32[0]);
        v34 = vmul_f32(v33, vrecps_f32(v32.u32[0], v33));
        v35 = vmulq_n_f32(vmulq_f32(v58, xmmword_23B91C020), vmul_f32(v34, vrecps_f32(v32.u32[0], v34)).f32[0]);
        v36 = vnegq_f32(v35);
        v37 = vtrn2q_s32(v35, vtrn1q_s32(v35, v36));
        v38 = vrev64q_s32(v35);
        v38.i32[0] = v36.i32[1];
        v38.i32[3] = v36.i32[2];
        v55 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v35, v39, 3), v38, v39, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v35, v36, 8uLL), *v39.f32, 1), vextq_s8(v37, v37, 8uLL), v39.f32[0]));
        HasTransform.transform.getter();
        *&v41 = specialized simd_float4x4.init(translation:)(v40);
        v54[0] = v41;
        v54[1] = v42;
        v54[2] = v43;
        v54[4] = v44;
        HasTransform.transform.getter();
        v45.n128_u32[3] = 0;
        v45.n128_u64[0] = vsubq_f32(0, v46).u64[0];
        v45.n128_f32[2] = 0.0 - v46.f32[2];
        *&v47 = specialized simd_float4x4.init(translation:)(v45);
        v54[3] = v47;
        v56 = v48;
        v57 = v49;
        v58 = v50;
        MEMORY[0x23EEAF8D0](v55);
        v51 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target;
        v52 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target);
        simd_float4x4.transform(position:)();
        v58 = v53;

        *(v17 + v51) = v58;
        return;
      }

      v18 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 16);
      v57 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 32);
      v58 = v18;
      v19 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 48);
      v55 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 64);
      v56 = v19;
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
      RealityViewCameraController.orientationForMode()(v20);
      Entity.rotateBy(_:aroundTarget:)(v21, *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
    }
  }
}

uint64_t RealityViewCameraController.useOrbitInteractionMode.getter()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v19 = v2[2];
  v19(v8, v0 + v9, v1);
  v10 = *MEMORY[0x277CDB250];
  v18 = v2[13];
  v18(v6, v10, v1);
  v11 = static CameraControls.InteractionMode.== infix(_:_:)();
  v12 = v2[1];
  v12(v6, v1);
  v12(v8, v1);
  if (v11)
  {
    goto LABEL_4;
  }

  v19(v8, v0 + v9, v1);
  v18(v6, *MEMORY[0x277CDB268], v1);
  v13 = static CameraControls.InteractionMode.== infix(_:_:)();
  v12(v6, v1);
  v12(v8, v1);
  if (v13 & 1) != 0 || (v19(v8, v0 + v9, v1), v18(v6, *MEMORY[0x277CDB258], v1), v14 = static CameraControls.InteractionMode.== infix(_:_:)(), v12(v6, v1), v12(v8, v1), (v14))
  {
LABEL_4:
    v15 = 1;
  }

  else
  {
    v19(v8, v0 + v9, v1);
    v18(v6, *MEMORY[0x277CDB260], v1);
    v15 = static CameraControls.InteractionMode.== infix(_:_:)();
    v12(v6, v1);
    v12(v8, v1);
  }

  return v15 & 1;
}

Swift::Void __swiftcall RealityViewCameraController.resetOrientationState()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  v2 = 0uLL;
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {
    type metadata accessor for Entity();

    HasTransform.transformMatrix(relativeTo:)();
    v15 = v8;
    v16 = v7;
    v13 = v10;
    v14 = v9;

    v6 = v13;
    v5 = v14;
    v4 = v15;
    v3 = v16;
    v2 = 0uLL;
  }

  v11 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
  *(v11 + 16) = v3;
  *(v11 + 32) = v4;
  *(v11 + 48) = v5;
  *(v11 + 64) = v6;
  if (*(v0 + v1))
  {
    type metadata accessor for Entity();

    HasTransform.orientation(relativeTo:)();
    v17 = v12;

    v2 = v17;
  }

  *(v11 + 80) = v2;
  *v11 = 0;
  *(v11 + 8) = 0;
}

void __swiftcall RealityViewCameraController.orientationForMode()(simd_quatf *__return_ptr retstr)
{
  v2 = v1;
  v3 = type metadata accessor for CameraControls.InteractionMode();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v84 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v13 = v4[2];
    v89.i64[0] = v12;
    *&v91 = v13;
    v13(v10, v2 + v12, v3);
    v14 = *MEMORY[0x277CDB270];
    v90.i64[0] = v4[13];
    (v90.i64[0])(v8, v14, v3);

    v15 = static CameraControls.InteractionMode.== infix(_:_:)();
    v16 = v4[1];
    v16(v8, v3);
    v16(v10, v3);
    if (v15)
    {
      v18 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
      *&v17 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
      v91 = v17;
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v93 = __invert_f4(v92);
      *v19.i64 = simd_quaternion(v93);
      v20 = vmulq_f32(v19, xmmword_23B91C020);
      v21 = vnegq_f32(v20);
      v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
      v23 = vmlaq_f32(vextq_s8(v20, v21, 8uLL), 0, vextq_s8(v22, v22, 8uLL));
      v24 = vrev64q_s32(v20);
      v24.i32[0] = v21.i32[1];
      v24.i32[3] = v21.i32[2];
      v25 = vmlaq_f32(v23, 0, v24);
      v26 = vnegq_f32(v25);
      v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
      v28 = vrev64q_s32(v25);
      v28.i32[0] = v26.i32[1];
      v28.i32[3] = v26.i32[2];
      v90 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, v19, 3), v28, v19, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v26, 8uLL), *v19.f32, 1), vextq_s8(v27, v27, 8uLL), v19.f32[0]));
      v30 = __sincosf_stret(0.5 * *&v91);
      *&v29 = v30.__cosval;
      v91 = v29;
      v90 = vmulq_n_f32(v90, v30.__sinval);
      v31 = *(v18 + 4);

      __sincosf_stret(v31 * 0.5);
    }

    else
    {
      v88.i64[0] = v11;
      v32 = v89.i64[0];
      (v91)(v10, v2 + v89.i64[0], v3);
      (v90.i64[0])(v8, *MEMORY[0x277CDB258], v3);
      v33 = static CameraControls.InteractionMode.== infix(_:_:)();
      v16(v8, v3);
      v16(v10, v3);
      if (v33)
      {
        v34.i64[0] = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
        v35 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_worldUp);
        v89 = v34;
        v90 = v35;
        v37 = __sincosf_stret(0.5 * v34.f32[0]);
        *&v36 = v37.__cosval;
        v91 = v36;
        v90 = vmulq_n_f32(v90, v37.__sinval);
        type metadata accessor for Entity();
        HasTransform.transformMatrix(relativeTo:)();
        v86 = v39;
        v87 = v38;
        v84 = v41;
        v85 = v40;

        v94.columns[1] = v86;
        v94.columns[0] = v87;
        v94.columns[3] = v84;
        v94.columns[2] = v85;
        *v42.i64 = simd_quaternion(v94);
        v43 = vmulq_f32(v42, xmmword_23B91C020);
        v44 = vnegq_f32(v43);
        v45 = vtrn2q_s32(v43, vtrn1q_s32(v43, v44));
        v46 = vmulq_f32(vextq_s8(v43, v44, 8uLL), 0);
        v47 = vrev64q_s32(v43);
        v47.i32[0] = v44.i32[1];
        v47.i32[3] = v44.i32[2];
        v48 = vmlaq_f32(vaddq_f32(vextq_s8(v45, v45, 8uLL), v46), 0, v47);
        v49 = vnegq_f32(v48);
        v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
        v51 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v42.f32, 1), vextq_s8(v50, v50, 8uLL), v42.f32[0]);
        v52 = vrev64q_s32(v48);
        v52.i32[0] = v49.i32[1];
        v52.i32[3] = v49.i32[2];
        v88 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v48, v42, 3), v52, v42, 2), v51);
        __sincosf_stret(vmuls_lane_f32(0.5, *v89.f32, 1));
      }

      else
      {
        (v91)(v10, v2 + v32, v3);
        (v90.i64[0])(v8, *MEMORY[0x277CDB260], v3);
        v53 = static CameraControls.InteractionMode.== infix(_:_:)();
        v16(v8, v3);
        v16(v10, v3);
        if (v53)
        {
          v55 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
          *&v54 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
          v91 = v54;
          type metadata accessor for Entity();
          HasTransform.transformMatrix(relativeTo:)();
          *v56.i64 = simd_quaternion(v95);
          v89 = xmmword_23B91C020;
          v57 = vmulq_f32(v56, xmmword_23B91C020);
          v58 = vnegq_f32(v57);
          v59 = vtrn2q_s32(v57, vtrn1q_s32(v57, v58));
          v60 = vmlaq_f32(vextq_s8(v57, v58, 8uLL), 0, vextq_s8(v59, v59, 8uLL));
          v61 = vrev64q_s32(v57);
          v61.i32[0] = v58.i32[1];
          v61.i32[3] = v58.i32[2];
          v62 = vmlaq_f32(v60, 0, v61);
          v63 = vnegq_f32(v62);
          v64 = vtrn2q_s32(v62, vtrn1q_s32(v62, v63));
          v65 = vrev64q_s32(v62);
          v65.i32[0] = v63.i32[1];
          v65.i32[3] = v63.i32[2];
          v90 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v56, 3), v65, v56, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v62, v63, 8uLL), *v56.f32, 1), vextq_s8(v64, v64, 8uLL), v56.f32[0]));
          v67 = __sincosf_stret(0.5 * *&v91);
          *&v66 = v67.__cosval;
          v91 = v66;
          v90 = vmulq_n_f32(v90, v67.__sinval);
          v68 = *(v55 + 4);
          HasTransform.transformMatrix(relativeTo:)();
          v86 = v70;
          v87 = v69;
          v84 = v72;
          v85 = v71;

          v96.columns[1] = v86;
          v96.columns[0] = v87;
          v96.columns[3] = v84;
          v96.columns[2] = v85;
          *v73.i64 = simd_quaternion(v96);
          v74 = vmulq_f32(v73, v89);
          v75 = vnegq_f32(v74);
          v76 = vtrn2q_s32(v74, vtrn1q_s32(v74, v75));
          v77 = vmulq_f32(vextq_s8(v74, v75, 8uLL), 0);
          v78 = vrev64q_s32(v74);
          v78.i32[0] = v75.i32[1];
          v78.i32[3] = v75.i32[2];
          v79 = vmlaq_f32(vaddq_f32(vextq_s8(v76, v76, 8uLL), v77), 0, v78);
          v80 = vnegq_f32(v79);
          v81 = vtrn2q_s32(v79, vtrn1q_s32(v79, v80));
          v82 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v79, v80, 8uLL), *v73.f32, 1), vextq_s8(v81, v81, 8uLL), v73.f32[0]);
          v83 = vrev64q_s32(v79);
          v83.i32[0] = v80.i32[1];
          v83.i32[3] = v80.i32[2];
          v89 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v79, v73, 3), v83, v73, 2), v82);
          __sincosf_stret(v68 * 0.5);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t Entity.rotateBy(_:aroundTarget:)(double a1, float32x4_t a2)
{
  MEMORY[0x23EEAF8D0]();
  v2.n128_u32[3] = 0;
  v2.n128_u64[0] = vsubq_f32(0, a2).u64[0];
  v2.n128_f32[2] = 0.0 - a2.f32[2];
  specialized simd_float4x4.init(translation:)(v2);
  specialized simd_float4x4.init(translation:)(a2);
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();

  return HasTransform.setTransformMatrix(_:relativeTo:)();
}

uint64_t RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(uint64_t result, float32x4_t a2)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {
    v4 = result;
    type metadata accessor for Entity();

    HasTransform.orientation(relativeTo:)();
    v21 = v5;

    v6 = vmulq_f32(v21, xmmword_23B91C020);
    v7 = vnegq_f32(v6);
    v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
    v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a2.f32, 1), vextq_s8(v8, v8, 8uLL), a2.f32[0]);
    v10 = vrev64q_s32(v6);
    v10.i32[0] = v7.i32[1];
    v10.i32[3] = v7.i32[2];
    v11 = vmlaq_laneq_f32(v9, v10, a2, 2);
    v12 = vnegq_f32(v11);
    v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
    v14 = vrev64q_s32(v11);
    v14.i32[0] = v12.i32[1];
    v14.i32[3] = v12.i32[2];
    v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v21, 3), v14, v21, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v21.f32, 1), vextq_s8(v13, v13, 8uLL), v21.f32[0]));
    if (*(v2 + v3))
    {
      v16 = *(v2 + v3);
      v23 = v15;

      v17 = HasTransform.transform.modify();
      v19 = vaddq_f32(v23, v18[2]);
      v19.i32[3] = 0;
      v18[2] = v19;
      v17(v24, 0);

      v15 = v23;
    }

    if (v4)
    {
      v20 = vaddq_f32(v15, *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
      v20.i32[3] = 0;
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v20;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealityViewCameraController.updateGesture(_:geometry:)(uint64_t a1, uint64_t a2)
{
  *&v26 = a2;
  v4 = type metadata accessor for MagnifyGesture.Value();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DragGesture.Value();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CameraControlsUpdate(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CameraControlsUpdate(a1, v17, type metadata accessor for CameraControlsUpdate);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v5 + 32))(v8, v17, v4);
      v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue;
      v21 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue);
      *&v22 = 0;
      if (v21 > 0.0)
      {
        v23 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale);
        MagnifyGesture.Value.magnification.getter();
        *&v22 = v21 - *&v22;
        *&v22 = *&v22;
        *&v22 = v23 * *&v22;
      }

      v26 = v22;
      MagnifyGesture.Value.magnification.getter();
      *(v2 + v20) = v24;
      v25.i64[0] = 0;
      v25.i64[1] = v26;
      RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(0, v25);
      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue) = 0xBFF0000000000000;
    }
  }

  else
  {
    if (result)
    {
      (*(v10 + 32))(v13, v17, v9);
      v19.n128_u64[0] = RealityViewCameraController.onDragGestureEnded(_:geometry:)();
    }

    else
    {
      (*(v10 + 32))(v13, v17, v9);
      RealityViewCameraController.onDragGestureChanged(_:geometry:)();
    }

    return (*(v10 + 8))(v13, v9, v19);
  }

  return result;
}

void RealityViewCameraController.onDragGestureChanged(_:geometry:)()
{
  v113 = type metadata accessor for CameraControls.InteractionMode();
  v115 = *(v113 - 8);
  v1 = *(v115 + 64);
  v2 = MEMORY[0x28223BE20](v113);
  v112 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v114 = &v107 - v4;
  v5 = type metadata accessor for GlobalCoordinateSpace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoordinateSpace();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DragGesture.Value.location.getter();
  v16 = v15;
  v18 = v17;
  (*(v11 + 104))(v14, *MEMORY[0x277CDF968], v10);
  GeometryProxy.frame(in:)();
  v20 = v19;
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  v111 = xmmword_23B91BFD0;
  *(inited + 16) = xmmword_23B91BFD0;
  v25 = v16 + v20;
  v26 = v18 + v22;
  *(inited + 32) = v25;
  *(inited + 36) = v26;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v28 = v27;
  swift_setDeallocating();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v30 = v29;
  v32 = v31;
  (*(v6 + 8))(v9, v5);
  v33 = swift_initStackObject();
  v33[1] = v111;
  v34 = v30;
  v35 = v32;
  v33[2].n128_f32[0] = v34;
  v33[2].n128_f32[1] = v35;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v33);
  v111 = v36;
  swift_setDeallocating();
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture))
  {
    v37 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
    *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation + 8) = v28;
    v38 = v111.n128_f32[1];
    if (v111.n128_f32[0] > v111.n128_f32[1])
    {
      v38 = v111.n128_f32[0];
    }

    v39 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
    *(v39 + 20) = (360.0 / v38) * 0.01;
    v40 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) * 0.01;
    v107 = v39;
    *(v39 + 24) = v40;
    v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v42 = v115;
    v43 = *(v115 + 16);
    v110 = v41;
    v45 = v113;
    v44 = v114;
    v109 = v43;
    (v43)(v114, v23 + v41, v113);
    v46 = *MEMORY[0x277CDB270];
    v47 = v112;
    v108 = *(v42 + 104);
    v108(v112, v46, v45);
    LOBYTE(v41) = static CameraControls.InteractionMode.== infix(_:_:)();
    v48 = *(v42 + 8);
    v48(v47, v45);
    v48(v44, v45);
    if (v41)
    {
      goto LABEL_7;
    }

    v50 = v113;
    v49 = v114;
    (v109)(v114, v23 + v110, v113);
    v51 = v112;
    v108(v112, *MEMORY[0x277CDB258], v50);
    v52 = static CameraControls.InteractionMode.== infix(_:_:)();
    v48(v51, v50);
    v48(v49, v50);
    if (v52)
    {
      goto LABEL_7;
    }

    v54 = v113;
    v53 = v114;
    (v109)(v114, v23 + v110, v113);
    v55 = v112;
    v108(v112, *MEMORY[0x277CDB260], v54);
    v56 = static CameraControls.InteractionMode.== infix(_:_:)();
    v48(v55, v54);
    v48(v53, v54);
    if (v56)
    {
LABEL_7:
      v57 = v37[1];
      v58 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
      v59 = vadd_f32(vmul_n_f32(vsub_f32(*v37, v57), *(v107 + 20)), v58);
      v57.i32[0] = 1086918619;
      v58.i32[0] = -1060565029;
      v60.i32[1] = v59.i32[1];
      *v60.i32 = v59.f32[0] + -6.2832;
      v61 = vbsl_s8(vdup_lane_s32(vcgt_f32(v59, v57), 0), v60, v59);
      v60.i32[1] = v61.i32[1];
      *v60.i32 = v61.f32[0] + 6.2832;
      v62 = vbsl_s8(vdup_lane_s32(vcgt_f32(v58, v61), 0), v60, v61);
      v60.i32[0] = v62.i32[0];
      *&v60.i32[1] = *&v62.i32[1] + -6.2832;
      v63 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v62, 1), v57), 0), v60, v62);
      v64.i32[0] = v63.i32[0];
      *&v64.i32[1] = *&v63.i32[1] + 6.2832;
      *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState) = vbsl_s8(vdup_lane_s32(vcgt_f32(v58, vdup_lane_s32(v63, 1)), 0), v64, v63);
      RealityViewCameraController.updateRotation()();
      *v37 = v37[1];
    }

    else
    {
      v84 = v113;
      v83 = v114;
      (v109)(v114, v23 + v110, v113);
      v85 = v112;
      v108(v112, *MEMORY[0x277CDB268], v84);
      v86 = static CameraControls.InteractionMode.== infix(_:_:)();
      v48(v85, v84);
      v48(v83, v84);
      if ((v86 & 1) == 0)
      {
        v88 = v113;
        v87 = v114;
        (v109)(v114, v23 + v110, v113);
        v89 = v112;
        v108(v112, *MEMORY[0x277CDB250], v88);
        v90 = static CameraControls.InteractionMode.== infix(_:_:)();
        v48(v89, v88);
        v48(v87, v88);
        if ((v90 & 1) == 0)
        {
          v93 = v113;
          v92 = v114;
          (v109)(v114, v23 + v110, v113);
          v94 = v112;
          v108(v112, *MEMORY[0x277CDB278], v93);
          v95 = static CameraControls.InteractionMode.== infix(_:_:)();
          v48(v94, v93);
          v48(v92, v93);
          if (v95)
          {
            v96 = vsub_f32(v37[1], v37[2]);
            v97 = *(v107 + 24);
            v98 = vmuls_lane_f32(v97, v96, 1);
            v99 = v96;
            v99.f32[0] = -(v96.f32[0] * v97);
            v99.f32[1] = v98;
          }

          else
          {
            v101 = v113;
            v100 = v114;
            (v109)(v114, v23 + v110, v113);
            v102 = v112;
            v108(v112, *MEMORY[0x277CDB280], v101);
            v103 = static CameraControls.InteractionMode.== infix(_:_:)();
            v48(v102, v101);
            v48(v100, v101);
            if ((v103 & 1) == 0)
            {
              goto LABEL_8;
            }

            v104 = vsub_f32(v37[1], v37[2]);
            v105 = *(v107 + 24);
            *&v106 = -(v104.f32[1] * v105);
            v99.i32[1] = 0;
            v99.f32[0] = v105 * v104.f32[0];
            v99.i64[1] = v106;
          }

          RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(1, v99);
          goto LABEL_8;
        }
      }

      *&v91 = RealityViewCameraController.mapToSphere(_:viewport:)(v37[1], v111);
      *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32) = v91;
      RealityViewCameraController.updateArcballOrientation()();
    }

LABEL_8:
    v37[2] = v37[1];
    return;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 1;
  v65 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
  *v65 = v28;
  v109 = v65;
  v65[2] = v28;
  RealityViewCameraController.resetOrientationState()();
  v66 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v67 = v115;
  v68 = *(v115 + 16);
  v110 = v0;
  v70 = v113;
  v69 = v114;
  v108 = v68;
  v68(v114, v0 + v66, v113);
  v71 = *(v67 + 104);
  v72 = v112;
  v71(v112, *MEMORY[0x277CDB268], v70);
  v73 = static CameraControls.InteractionMode.== infix(_:_:)();
  v74 = *(v67 + 8);
  v74(v72, v70);
  v115 = v67 + 8;
  v74(v69, v70);
  if (v73)
  {
    goto LABEL_11;
  }

  v76 = v113;
  v75 = v114;
  v108(v114, v110 + v66, v113);
  v77 = v112;
  v71(v112, *MEMORY[0x277CDB250], v76);
  v78 = static CameraControls.InteractionMode.== infix(_:_:)();
  v74(v77, v76);
  v74(v75, v76);
  if (v78)
  {
LABEL_11:
    v79 = *v109;
    v80 = v111;
    v81 = v110 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
    *(v110 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball) = vsub_f32(vmul_f32(v111.n128_u64[0], 0x3F0000003F000000), *v109);
    *&v82 = RealityViewCameraController.mapToSphere(_:viewport:)(v79, v80);
    *(v81 + 16) = v82;
    *(v81 + 32) = v82;
  }
}

float32x2_t RealityViewCameraController.onDragGestureEnded(_:geometry:)()
{
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 0;
  GeometryProxy.size.getter();
  v2 = v1;
  GeometryProxy.size.getter();
  if (v2 > v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  *&v4 = v4;
  v16 = *&v4;
  DragGesture.Value.predictedEndLocation.getter();
  v6 = v5;
  DragGesture.Value.location.getter();
  v8 = (v6 - v7) * 4.0;
  DragGesture.Value.location.getter();
  v9 = v8;
  v15 = v9;
  DragGesture.Value.predictedEndLocation.getter();
  v11 = v10;
  DragGesture.Value.location.getter();
  DragGesture.Value.location.getter();
  v13 = (v11 - *&v12) * 4.0;
  v12.f32[0] = v15;
  v12.f32[1] = -v13;
  result = vdiv_f32(v12, vdup_lane_s32(v16, 0));
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia + 32) = result;
  return result;
}

void closure #1 in Entity.update(from:overrideDistance:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) == 1)
  {
    RealityViewCameraController.updateInertia()();
  }

  if (*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) == 1)
  {
    RealityViewCameraController.updateTargetCube()();
  }
}

uint64_t one-time initialization function for empty()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
  __swift_allocate_value_buffer(v0, static CameraControlsPublisher.empty);
  __swift_project_value_buffer(v0, static CameraControlsPublisher.empty);
  type metadata accessor for CameraControlsUpdate(0);
  return Empty.init(completeImmediately:)();
}

uint64_t CameraControlsPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  if (v8)
  {
    (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);

    PassthroughSubject.receive<A>(subscriber:)();
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
    __swift_project_value_buffer(v10, static CameraControlsPublisher.empty);
    return Empty.receive<A>(subscriber:)();
  }
}

uint64_t EnvironmentValues.cameraControlsPublisher.getter()
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t CameraControlsModifier.cameraControls.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  outlined init with copy of Environment<CameraControls>.Content(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for CameraControls();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t CameraControlsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = type metadata accessor for CameraControls();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v63 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v50 - v9;
  v10 = type metadata accessor for CameraControlsModifier(0);
  v11 = v10 - 8;
  v54 = *(v10 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagnifyGesture();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMR);
  v20 = *(v19 - 8);
  v58 = v19;
  v59 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  v24 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  KeyPath = swift_getKeyPath();
  v31 = *(v11 + 28);
  v32 = v2;
  v51 = v2;
  v68 = *(v2 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v33 = v67;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMR);
  (*(*(v34 - 8) + 16))(v29, a1, v34);
  v60 = v29;
  v61 = v26;
  v35 = &v29[*(v26 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  MagnifyGesture.init(minimumScaleDelta:)();
  outlined init with copy of CameraControlsUpdate(v32, v13, type metadata accessor for CameraControlsModifier);
  v36 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v37 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v13, v37 + v36);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type MagnifyGesture and conformance MagnifyGesture, MEMORY[0x277CDD928]);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type MagnifyGesture.Value and conformance MagnifyGesture.Value, MEMORY[0x277CDD910]);
  v38 = v56;
  Gesture<>.onChanged(_:)();

  (*(v57 + 8))(v18, v38);
  outlined init with copy of CameraControlsUpdate(v51, v13, type metadata accessor for CameraControlsModifier);
  v39 = v52;
  v40 = swift_allocObject() + v36;
  v41 = v13;
  v42 = v55;
  outlined init with take of CameraControlsModifier(v41, v40);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ChangedGesture<MagnifyGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMR);
  v43 = v58;
  Gesture.onEnded(_:)();

  (*(v59 + 8))(v23, v43);
  CameraControlsModifier.dragGesture.getter(v39 + *(v42 + 52));
  v44 = v62;
  CameraControlsModifier.cameraControls.getter(v62);
  v45 = v63;
  static CameraControls.none.getter();
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288]);
  v46 = v64;
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v65 + 8);
  v47(v45, v46);
  v47(v44, v46);
  if (v18)
  {
    static GestureMask.subviews.getter();
  }

  else
  {
    static GestureMask.all.getter();
  }

  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SimultaneousGesture<_EndedGesture<_ChangedGesture<MagnifyGesture>>, _EndedGesture<_ChangedGesture<DragGesture>>> and conformance SimultaneousGesture<A, B>, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  v48 = v60;
  View.gesture<A>(_:including:)();
  outlined destroy of PerspectiveCameraComponent?(v39, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  return outlined destroy of PerspectiveCameraComponent?(v48, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
}

uint64_t key path getter for EnvironmentValues.cameraControlsPublisher : EnvironmentValues@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for EnvironmentValues.cameraControlsPublisher : EnvironmentValues(uint64_t *a1)
{
  v2 = *a1;
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key();

  return EnvironmentValues.subscript.setter();
}

uint64_t CameraControlsModifier.dragGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for CameraControlsModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24[1] = v5;
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlobalCoordinateSpace();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for DragGesture();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR);
  v15 = *(v14 - 8);
  v25 = v14;
  v26 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  outlined init with copy of CameraControlsUpdate(v2, v6, type metadata accessor for CameraControlsModifier);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v6, v20 + v19);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730]);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708]);
  Gesture<>.onChanged(_:)();

  (*(v10 + 8))(v13, v9);
  outlined init with copy of CameraControlsUpdate(v24[2], v6, type metadata accessor for CameraControlsModifier);
  v21 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v6, v21 + v19);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR);
  v22 = v25;
  Gesture.onEnded(_:)();

  return (*(v26 + 8))(v18, v22);
}

uint64_t closure #2 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CameraControlsUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + *(type metadata accessor for CameraControlsModifier(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v7 = v9[1];
  swift_storeEnumTagMultiPayload();
  if (v7)
  {
    PassthroughSubject.send(_:)();
  }

  return outlined destroy of CameraControlsUpdate(v6);
}

uint64_t closure #1 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CameraControlsUpdate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(type metadata accessor for CameraControlsModifier(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v10 = v13[1];
  v11 = a3(0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  swift_storeEnumTagMultiPayload();
  if (v10)
  {
    PassthroughSubject.send(_:)();
  }

  return outlined destroy of CameraControlsUpdate(v9);
}

float specialized simd_float4x4.init(translation:)(__n128 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  v1 = swift_allocObject();
  v2 = xmmword_23B91A720;
  HIDWORD(v2) = a1.n128_u32[0];
  v3 = xmmword_23B91A740;
  HIDWORD(v3) = a1.n128_u32[1];
  v1[2] = v2;
  v1[3] = v3;
  v4 = xmmword_23B91A760;
  HIDWORD(v4) = a1.n128_u32[2];
  v1[4] = v4;
  v1[5] = xmmword_23B91BFE0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return 1.0;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t outlined init with copy of CameraControlsUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CameraControlsModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraControlsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for CameraControlsModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CameraControls();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  v9 = *v8;

  v10 = v8[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraControlsModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in CameraControlsModifier.magnifyGesture.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CameraControlsModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CameraControlsPublisher> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB023CameraControlsPublisherVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Environment<CameraControls>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CameraControlsUpdate(uint64_t a1)
{
  v2 = type metadata accessor for CameraControlsUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key()
{
  result = lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key;
  if (!lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent()
{
  result = lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent;
  if (!lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem()
{
  result = lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem;
  if (!lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for _RealityViewCameraControllerComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for _RealityViewCameraControllerComponent(uint64_t result, int a2, int a3)
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

uint64_t specialized _RealityViewCameraControllerSystem.update(context:)(uint64_t a1)
{
  v16 = type metadata accessor for Entity.ComponentSet();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.sceneService.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  v6 = v17;
  v15[2] = lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent();
  v7 = SceneManager.componentTypeToComponentClass(_:)();
  v15[1] = a1;
  SceneUpdateContext.scene.getter();
  Scene.coreScene.getter();

  if (!v7)
  {
    goto LABEL_11;
  }

  result = RESceneGetComponentsOfClass();
  if (v9 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = v9;
  v15[0] = v6;
  if (v9)
  {
    v11 = result;
    type metadata accessor for Entity();
    do
    {
      v12 = *v11;
      REComponentGetEntity();
      static Entity.fromCore(_:ignoringEntityInfo:)();
      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.subscript.getter();
      (*(v2 + 8))(v5, v16);
      v13 = v18;
      if (v18)
      {

        updated = SceneUpdateContext.deltaTime.getter();
        v13(updated);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v13);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v13);
      }

      else
      {
      }

      ++v11;
      --v10;
    }

    while (v10);
  }
}

uint64_t FreeformMiniView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v27 = *(v1 + 32);
  v4 = *(&v27 + 1);
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  v7 = *(v1 + 64);
  *(v5 + 80) = v7;
  v8 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v1 + 64);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMR);
  v13 = *(v12 + 52);
  outlined init with copy of FreeformMiniView(v1, v26);
  outlined init with copy of FreeformMiniView(v1, v26);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v27, v26, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021FreeformCloudRendererCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021FreeformCloudRendererCGMR);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  *a1 = v4;
  a1[1] = partial apply for closure #1 in FreeformMiniView.body.getter;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v7;
  a1[6] = partial apply for closure #2 in FreeformMiniView.body.getter;
  a1[7] = v9;
  v17 = (a1 + *(v12 + 56));
  *v17 = partial apply for closure #3 in FreeformMiniView.body.getter;
  v17[1] = v14;
  v18 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of FreeformMiniView(v2, v26);
  static Published.subscript.getter();

  v19 = v26[0];
  static UnitPoint.center.getter();
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
  v25 = (a1 + *(result + 36));
  *v25 = v19;
  v25[1] = v21;
  v25[2] = v23;
  return result;
}

uint64_t closure #1 in FreeformMiniView.body.getter(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16 = v8;
    *v7 = 136446210;
    type metadata accessor for UIDeviceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation starting from: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v16 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  v12 = *(a1 + 24);
  v16 = *(a1 + 48);
  State.wrappedValue.getter();
  v13 = FreeformMiniView.interfaceOrientation.getter();
  v14 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v3, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v14;

  return static Published.subscript.setter();
}

uint64_t closure #2 in FreeformMiniView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined init with copy of FreeformMiniView(a2, v19);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of FreeformMiniView(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    v19[0] = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
    State.wrappedValue.getter();
    type metadata accessor for UIDeviceOrientation(0);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *&v19[0] = v4;
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_23B824000, v6, v7, "Device orientation changed from: %{public}s to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v16);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #2 in FreeformMiniView.body.getter(uint64_t a1, unint64_t a2)
{
  v7 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  v3 = *(a1 + 24);
  v8 = *(a1 + 48);
  State.wrappedValue.getter();
  v4 = FreeformMiniView.interfaceOrientation.getter();
  specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(a2, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in FreeformMiniView.body.getter(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v3;
    *&v17 = v8;
    *v7 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation: UIInterfaceOrientation published, recomputing with %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v12 = *(a2 + 24);
  v17 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.getter();
  v13 = FreeformMiniView.interfaceOrientation.getter();
  v14 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v16, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = v14;

  return static Published.subscript.setter();
}

uint64_t FreeformMiniView.interfaceOrientation.getter()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation MTKView is nil!  Using .portrait...";
LABEL_13:
    _os_log_impl(&dword_23B824000, v3, v8, v10, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
LABEL_19:
    v6 = 1;
    goto LABEL_20;
  }

  v2 = [v1 window];
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation window is nil!  Using .portrait...";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 windowScene];
  if (!v4)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Device orientation windowScene is nil!  Using .portrait...", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v4 interfaceOrientation];

  v3 = v5;
LABEL_20:

  return v6;
}

uint64_t protocol witness for View.body.getter in conformance FreeformMiniView@<X0>(void *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return FreeformMiniView.body.getter(a1);
}

uint64_t protocol witness for Identifiable.id.getter in conformance FreeformMiniView@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance FreeformMiniViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FreeformMiniViewWrapper()
{
  lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t FreeformCloudRenderer.interfaceOrientation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FreeformCloudRenderer.Error()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FreeformCloudRenderer.Error()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](0);
  return Hasher._finalize()();
}

void FreeformCloudRenderer.colorScheme.didset()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = v0;
  v17 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v7[v11], v1);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B824000, v17, v8, "colorScheme = %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  else
  {
    v15 = v17;
  }
}

uint64_t FreeformCloudRenderer.platterRenderer.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in FreeformCloudRenderer.platterRenderer.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of PlatterRenderer??(v4);
  }

  outlined copy of PlatterRenderer??(v2);
  return v3;
}

void *closure #1 in FreeformCloudRenderer.platterRenderer.getter(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);
    v4 = [result colorPixelFormat];
    type metadata accessor for PlatterRenderer();
    v5 = swift_allocObject();
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    swift_unknownObjectRetain();
    PlatterRenderer.initRenderPipeline()();
    if (!*(v5 + 64))
    {
      PlatterRenderer.makePlatterVertices()();
    }

    v6 = [v3 newBufferWithLength:352 options:0];
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformCloudRenderer.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer__interfaceOrientation;
  v80 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v12], v11, v7);
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
  v14 = *MEMORY[0x277CDF3D0];
  v15 = type metadata accessor for ColorScheme();
  (*(*(v15 - 8) + 104))(&v1[v13], v14, v15);
  v16 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_id];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view] = 0;
  v21 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld];
  v22 = *MEMORY[0x277D860B8];
  v77 = *(MEMORY[0x277D860B8] + 16);
  v23 = v77;
  v78 = v22;
  v24 = *(MEMORY[0x277D860B8] + 32);
  v75 = *(MEMORY[0x277D860B8] + 48);
  v25 = v75;
  v76 = v24;
  *v21 = v22;
  v21[1] = v23;
  v21[2] = v24;
  v21[3] = v25;
  v26 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld];
  v81 = 1;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[64] = 1;
  v27 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld];
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[64] = 1;
  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors;
  v29 = MEMORY[0x277D84F90];
  *&v1[v28] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime] = 0xFFF0000000000000;
  v30 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection];
  v31 = v77;
  *v30 = v78;
  v30[1] = v31;
  v32 = v75;
  v30[2] = v76;
  v30[3] = v32;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_sphericalShellAnimator] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime] = 0;
  v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA21FreeformCloudRendererC13ResourceEntry33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA21FreeformCloudRendererC13ResourceEntry33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMR);
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v34[2] = v35;
  v34[3] = 0;
  v34[4] = v29;
  *&v1[v33] = v34;
  v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightLock;
  v37 = swift_allocObject();
  *&v1[v36] = v37;
  v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer] = 0;
  *(v37 + 16) = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_pulseAnimationDuration] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness] = 1065353216;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_captureDialOpacityFloor] = 1036831949;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations] = 0;
  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera;
  type metadata accessor for CameraFrustumRendererForLiveCamera();
  swift_allocObject();
  *&v1[v39] = CameraFrustumRendererForLiveCamera.init()();
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer] = 0;
  v40 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_insideOutsideManager;
  type metadata accessor for FreeformScanModeManager();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *&v1[v40] = v41;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  v42 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_backgroundColor];
  *v42 = 0u;
  v42[1] = 0u;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_shouldTrackDevice] = 1;
  v43 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  v43[48] = 1;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_shouldRenderPointsWithAlphaBlend] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_startBoundingEllipsoidFadeRadius] = 1064514355;
  *(v41 + 20) = 0x3DCCCCCD3CF5C28FLL;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_endBoundingEllipsoidFadeRadius] = 1065772646;
  v44 = MTLCreateSystemDefaultDevice();
  if (!v44)
  {
    goto LABEL_17;
  }

  v45 = v44;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device] = v44;
  v46 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v47 = [v46 initWithFrame:v45 device:{0.0, 0.0, 0.0, 0.0}];
  v48 = *&v1[v20];
  *&v1[v20] = v47;

  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v49 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v49, 100, 100);
  v51 = v50;
  swift_unknownObjectRelease();
  v52 = *&v1[v38];
  *&v1[v38] = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18ObjectCapturePointaGMd, &_ss23_ContiguousArrayStorageCySo18ObjectCapturePointaGMR);
  v53 = swift_allocObject();
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0;
  *(v53 + 32) = 0u;
  v54 = [*(v51 + 16) newBufferWithBytes:v53 + 32 length:48 options:0];

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!v54)
  {
    __break(1u);
    goto LABEL_11;
  }

  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_emptyPointCloudBuffer] = v54;
  v55 = type metadata accessor for FreeformCloudRenderer();
  v79.receiver = v1;
  v79.super_class = v55;
  v56 = objc_msgSendSuper2(&v79, sel_init);
  FreeformCloudRenderer.initRenderPipeline()();
  v57 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v58 = *&v56[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
  if (!v58)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v58 setDelegate_];
  v59 = *&v56[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer];
  if (!v59)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v60 = objc_allocWithZone(MEMORY[0x277CD6D60]);

  v61 = [v60 init];
  [v61 setDepthCompareFunction_];
  [v61 setDepthWriteEnabled_];
  v62 = [v45 newDepthStencilStateWithDescriptor_];

  v63 = *(v59 + 24);
  *(v59 + 24) = v62;

  swift_unknownObjectRelease();
  FreeformCloudRenderer.setupFeatherMask()();
  v64 = *&v56[v57];
  if (!v64)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v65 = [v64 layer];
  [v65 setOpaque_];

  v66 = *&v56[v57];
  if (!v66)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v67 = [v66 layer];
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  [v67 setBackgroundColor_];

  v69 = objc_allocWithZone(type metadata accessor for InteractiveCameraTransformManager());
  v70 = InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(1.0, 1.0, 1.0);
  v71 = *&v56[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider];
  *&v56[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider] = v70;
  v72 = v70;

  v73 = *&v56[v57];
  if (v73)
  {
    if (*&v72[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture])
    {
      [v73 addGestureRecognizer_];

      FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera()();
      swift_unknownObjectRelease();
      return v56;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall FreeformCloudRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v4)
  {
    goto LABEL_8;
  }

  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for MTKView, 0x277CD71F8);
  v8 = _.super.super.super.isa;
  v9 = v4;
  LOBYTE(_.super.super.super.isa) = static NSObject.== infix(_:_:)();

  if (_.super.super.super.isa)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      type metadata accessor for CGSize(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "mtkView: size changed!  newSize=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v18 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
    *v18 = width;
    v18[1] = height;
    FreeformCloudRenderer.setupFeatherMask()();
  }

  else
  {
LABEL_8:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, oslog, v20, "mtkView delegate got unexpected view... ignoring!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }
}

void FreeformCloudRenderer.setupFeatherMask()()
{
  v1 = v0;
  v2 = specialized static MetalHelpers.loadFeatherMaskLayer(named:)(0xD000000000000019, 0x800000023B925520);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v17, v15, "Can't load miniview feather mask: miniview_feather_mask.png", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    goto LABEL_15;
  }

  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Setting miniview feather mask layer...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v9 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = [v9 layer];
  [v10 setMask_];

  v11 = *(v1 + v8);
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = [v11 layer];
  v17 = [v12 mask];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v1 + v8);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v13 bounds];
  [v17 setFrame:?];

LABEL_15:
}

uint64_t FreeformCloudRenderer.setCameraFrustumRendererForShots(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots);
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots) = a1;

  if (!a1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);

    result = CameraFrustumRendererForShots.setup(device:pixelFormat:)(v7, [v6 colorPixelFormat]);
    v8 = *(a1 + 24);
LABEL_5:
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations) = v8;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall FreeformCloudRenderer.teardown()()
{
  FreeformCloudRenderer.clearView()();
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider);
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v3 removeGestureRecognizer_];
  v4 = *(v0 + v2);
  *(v0 + v2) = 0;
}

void *FreeformCloudRenderer.updateInterfaceOrientationIfNeeded()()
{
  result = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
  if (result)
  {
    v2 = v0;
    v3 = [result window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];
    }

    else
    {
      v6 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 != v16)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = v11;
        *v10 = 136315138;
        type metadata accessor for UIInterfaceOrientation(0);
        v12 = String.init<A>(describing:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_23B824000, v8, v9, "Device orientatation: publishing the renderer interfaceOrientation=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x23EEB0B70](v11, -1, -1);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v16 = v6;
      v15 = v2;
      return static Published.subscript.setter();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void FreeformCloudRenderer.clearView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v1)
  {
    return;
  }

  v13 = v1;
  v2 = [v13 currentRenderPassDescriptor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 colorAttachments];
    v5 = [v4 objectAtIndexedSubscript_];

    if (v5)
    {
      [v5 setLoadAction_];

      v6 = [v3 colorAttachments];
      v7 = [v6 objectAtIndexedSubscript_];

      if (v7)
      {
        [v7 setClearColor_];

        if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue))
        {
          v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue);
          v9 = [swift_unknownObjectRetain() commandBuffer];
          if (v9)
          {
            v10 = v9;
            swift_unknownObjectRelease();
            v11 = [v10 renderCommandEncoderWithDescriptor_];
            if (v11)
            {
              [v11 endEncoding];
              v12 = [v13 currentDrawable];
              if (v12)
              {
                [v10 presentDrawable_];
                swift_unknownObjectRelease();
                [v10 commit];

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

LABEL_21:
              __break(1u);
              return;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

Swift::Void __swiftcall FreeformCloudRenderer.draw(in:)(MTKView in)
{
  if (*(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors) + 16) && (v3 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors), v4 = , v5 = specialized _NativeDictionary.filter(_:)(v4), , v6 = *(v5 + 16), , v6) && (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld + 64) & 1) == 0)
  {

    FreeformCloudRenderer.drawPoints(in:)(in.super.super.super.isa);
  }

  else
  {

    FreeformCloudRenderer.clearView()();
  }
}

char *FreeformCloudRenderer.collectCurrentMeshAnchorMetalBuffers()()
{
  v1 = v0;
  v135 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v118 = *(v135 - 8);
  v2 = *(v118 + 64);
  v3 = MEMORY[0x28223BE20](v135);
  v146 = v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v117 = v115 - v5;
  v138 = type metadata accessor for UUID();
  v119 = *(v138 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v138);
  v116 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v115 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v120 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors);
  if (*(v120 + 16))
  {
    if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_sphericalShellAnimator))
    {
      __break(1u);
      return result;
    }

    SphericalShellWavefrontAnimation.sample(at:startingAt:)(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime), *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime));
    v132 = v22;
    v24 = v23;
    v26 = v25;
    v27 = *(v120 + 64);
    v133 = v120 + 64;
    v28 = 1 << *(v120 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v115[0] = (v28 + 63) >> 6;
    v115[2] = v119 + 16;
    v115[1] = v119 + 32;
    v131 = (v119 + 8);

    v31 = 0;
    v147 = MEMORY[0x277D84F90];
    v136 = v14;
    v137 = v12;
    while (v30)
    {
      v32 = v31;
LABEL_19:
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v120;
      v38 = v119;
      (*(v119 + 16))(v116, *(v120 + 48) + *(v119 + 72) * v36, v138);
      v39 = v117;
      outlined init with copy of FreeformMeshManager.MeshAnchor(*(v37 + 56) + *(v118 + 72) * v36, v117);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v41 = *(v40 + 48);
      v12 = v137;
      (*(v38 + 32))();
      outlined init with take of FreeformMeshManager.MeshAnchor(v39, &v12[v41]);
      (*(*(v40 - 8) + 56))(v12, 0, 1, v40);
      v14 = v136;
LABEL_20:
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v12, v14, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      if ((*(*(v42 - 8) + 48))(v14, 1, v42) == 1)
      {

        return v147;
      }

      v43 = &v14[*(v42 + 48)];
      v44 = v146;
      outlined init with take of FreeformMeshManager.MeshAnchor(v43, v146);
      v45 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
      *&v139 = v115;
      v46 = *(v45 - 8);
      v47 = v46[8];
      MEMORY[0x28223BE20](v45);
      v144 = v48;
      v134 = v115 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      *&v140 = v115;
      v50 = *(*(v49 - 8) + 64);
      v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v49 - 8);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v44, v115 - v51, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v52 = v46[6];
      v53 = v52(v115 - v51, 1, v45);
      v145 = v46;
      v143 = v50;
      *&v142 = v46 + 6;
      *&v141 = v52;
      if (v53 == 1)
      {
        v54 = outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v115 - v51);
        v55 = v146;
      }

      else
      {
        v56 = v46[4];
        v57 = v134;
        v58 = v56(v134, v115 - v51, v45);
        v130 = v115;
        v59 = v135;
        v60 = *(v135 + 20);
        MEMORY[0x28223BE20](v58);
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v146 + v61, v115 - v51, v62, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        *&v140 = v45;
        v129 = v52(v115 - v51, 1, v45) != 1;
        outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v115 - v51);
        v55 = v146;
        v128 = *(v146 + *(v59 + 28));
        v63 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v130 = [v63 count];

        v64 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v127 = [v64 buffer];

        v65 = ObjectCaptureSession.Mesh.Anchor.normals.getter();
        v126 = [v65 buffer];

        v66 = ObjectCaptureSession.Mesh.Anchor.colors.getter();
        v125 = [v66 buffer];

        ObjectCaptureSession.Mesh.Anchor.transform.getter();
        v124 = v67;
        v123 = v68;
        v122 = v69;
        v121 = v70;
        v71 = v147;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
        }

        v73 = *(v71 + 2);
        v72 = *(v71 + 3);
        v74 = v145;
        if (v73 >= v72 >> 1)
        {
          v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v71);
          v74 = v145;
          v147 = v109;
        }

        else
        {
          v147 = v71;
        }

        v75 = (v128 | v129) & 1;
        v45 = v140;
        v54 = (v74[1])(v57, v140);
        v76 = v147;
        *(v147 + 2) = v73 + 1;
        v77 = &v76[128 * v73];
        v78 = v127;
        *(v77 + 4) = v130;
        *(v77 + 5) = v78;
        v79 = v125;
        *(v77 + 6) = v126;
        *(v77 + 7) = v79;
        v80 = v123;
        *(v77 + 4) = v124;
        *(v77 + 5) = v80;
        v81 = v121;
        *(v77 + 6) = v122;
        *(v77 + 7) = v81;
        *(v77 + 8) = v132;
        *(v77 + 36) = v24;
        *(v77 + 37) = v26;
        *(v77 + 38) = v75;
      }

      v82 = MEMORY[0x28223BE20](v54);
      v84 = v115 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v85 = *(v135 + 20);
      MEMORY[0x28223BE20](v82);
      v87 = v115 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v55 + v88, v87, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v89 = (v141)(v87, 1, v45);
      v12 = v137;
      if (v89 == 1)
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v55);
        outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v87);
      }

      else
      {
        v144 = v115;
        (v145[4])(v84, v87, v45);
        v90 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v143 = [v90 count];

        v91 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v92 = [v91 buffer];

        v93 = ObjectCaptureSession.Mesh.Anchor.normals.getter();
        v94 = [v93 buffer];

        v95 = ObjectCaptureSession.Mesh.Anchor.colors.getter();
        v96 = [v95 buffer];

        ObjectCaptureSession.Mesh.Anchor.transform.getter();
        v141 = v98;
        v142 = v97;
        v139 = v100;
        v140 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
        }

        v102 = *(v147 + 2);
        v101 = *(v147 + 3);
        v103 = v145;
        if (v102 >= v101 >> 1)
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v147);
          v103 = v145;
          v147 = v110;
        }

        (v103[1])(v84, v45);
        outlined destroy of FreeformMeshManager.MeshAnchor(v146);
        v104 = v147;
        *(v147 + 2) = v102 + 1;
        v105 = &v104[128 * v102];
        *(v105 + 4) = v143;
        *(v105 + 5) = v92;
        *(v105 + 6) = v94;
        *(v105 + 7) = v96;
        v106 = v141;
        *(v105 + 4) = v142;
        *(v105 + 5) = v106;
        v107 = v139;
        *(v105 + 6) = v140;
        *(v105 + 7) = v107;
        *(v105 + 8) = v132;
        *(v105 + 36) = v24;
        *(v105 + 37) = v26;
        *(v105 + 38) = -1;
      }

      v14 = v136;
      (*v131)(v136, v138);
    }

    if (v115[0] <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v115[0];
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v115[0])
      {
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
        (*(*(v108 - 8) + 56))(v12, 1, 1, v108);
        v30 = 0;
        v31 = v34;
        goto LABEL_20;
      }

      v30 = *(v133 + 8 * v32);
      ++v31;
      if (v30)
      {
        v31 = v32;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_43:
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, logger);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_23B824000, v112, v113, "Empty meshAnchors!  Nothing to render!", v114, 2u);
    MEMORY[0x23EEB0B70](v114, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void FreeformCloudRenderer.drawPoints(in:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v70 - v9;
  v10 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightLock];
  os_unfair_lock_lock(v10 + 4);
  v11 = FreeformCloudRenderer.createUniforms()();
  v12 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_emptyPointCloudBuffer];
  swift_unknownObjectRetain();
  v13 = FreeformCloudRenderer.collectCurrentMeshAnchorMetalBuffers()();
  v14 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightQueue];
  v15 = specialized InFlightQueue.retain(_:)(v11, v12, v13);
  v16 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue];
  if (!v16)
  {
    __break(1u);
    goto LABEL_49;
  }

  v17 = [v16 commandBuffer];
  if (!v17)
  {
LABEL_29:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_40:
    os_unfair_lock_unlock(v10 + 4);
    return;
  }

  v18 = v17;
  v80 = v13;
  v73 = v5;
  v19 = [a1 currentRenderPassDescriptor];
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v20 = v19;
  v79 = v11;
  v72 = v4;
  v74 = v15;
  v75 = v10;
  v76 = a1;
  v21 = &unk_278B8A000;
  v22 = [v19 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v23 setLoadAction_];

  v24 = [v20 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v25 setClearColor_];

  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize];
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v28 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize + 8];
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = v27;
  v30 = v28;
  v31 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer];

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v29, v30);

  v32 = [v20 depthAttachment];
  if (!v32)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v33 = *&v2[v26];
  if (!v33)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!*(v33 + 32))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = v32;
  [v32 setTexture_];

  v35 = [v20 depthAttachment];
  if (!v35)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v36 = v35;
  [v35 &off_278B8A3A8];

  v37 = [v20 depthAttachment];
  if (!v37)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v38 = v37;
  [v37 setStoreAction_];

  specialized FreeformCloudRenderer.renderFreeformCloud(buffer:renderPassDescriptor:resources:)(v18, v20, v79, v80);
  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled;
  if ((v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] & 1) == 0)
  {
    FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:)(v18, v20);
  }

  v40 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera];

  CameraFrustumRendererForLiveCamera.render(into:desc:)(v18, v20);

  if (v2[v39] == 1)
  {
    v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots;
    if (*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots])
    {
      v42 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots];

      CameraFrustumRendererForShots.render(into:desc:)(v18, v20);
    }

    v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer;
    v43 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer];
    if (v43)
    {
      v44 = *&v2[v41];
      if (v44)
      {
        v45 = *(v44 + 24);
        v21 = (v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        v46 = *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = v45;
        if (v45 == v46)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v21 = (v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        v47 = *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
        if ((v47 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v48 = one-time initialization token for logger;

      if (v48 == -1)
      {
LABEL_32:
        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, logger);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 67109120;
          *(v52 + 4) = *v21;

          _os_log_impl(&dword_23B824000, v50, v51, "CameraPathRenderer.enabled = %{BOOL}d", v52, 8u);
          MEMORY[0x23EEB0B70](v52, -1, -1);
        }

        else
        {
        }

LABEL_35:
        v53 = *&v2[v26];
        if (v53)
        {
          v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
          swift_beginAccess();
          v55 = v73;
          v71 = v26;
          v56 = *(v73 + 16);
          v57 = v72;
          v56(v77, &v2[v54], v72);
          v58 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
          swift_beginAccess();
          v56(v78, (v53 + v58), v57);
          swift_beginAccess();
          v59 = *(v55 + 24);

          v60 = v53 + v58;
          v61 = v77;
          v59(v60, v77, v57);
          swift_endAccess();
          v62 = v78;
          CameraPathRenderer.colorScheme.didset();

          v63 = *(v55 + 8);
          v63(v62, v57);
          v63(v61, v57);
          if (*&v2[v71])
          {
            v64 = *&v2[v71];

            specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(v18, v20);
          }
        }

        goto LABEL_38;
      }

LABEL_47:
      swift_once();
      goto LABEL_32;
    }
  }

LABEL_38:
  v65 = [v76 currentDrawable];
  if (v65)
  {
    [v18 presentDrawable_];
    swift_unknownObjectRelease();
    v66 = swift_allocObject();
    v67 = v74;
    *(v66 + 16) = v2;
    *(v66 + 24) = v67;
    aBlock[4] = partial apply for closure #1 in FreeformCloudRenderer.drawPoints(in:);
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
    aBlock[3] = &block_descriptor_0;
    v68 = _Block_copy(aBlock);
    v69 = v2;

    [v18 addCompletedHandler_];
    _Block_release(v68);
    [v18 commit];

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = v75;
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
}

void closure #1 in FreeformCloudRenderer.drawPoints(in:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v6 + 16) + 16));
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = v7[2];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v68 = a1;
  a1 = 0;
  v9 = 0;
  while (*&a1[v7 + 32] != a3)
  {
    ++v9;
    a1 += 32;
    if (v8 == v9)
    {
      v10 = v7[2];
      a1 = v68;
      goto LABEL_11;
    }
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v10 != v8)
  {
    buf = v6;
    while (v10 < v8)
    {
      v54 = *&a1[v7 + 64];
      if (v54 != a3)
      {
        if (v10 != v9)
        {
          if (v9 >= v8)
          {
            goto LABEL_49;
          }

          v55 = &v7[4 * v9 + 4];
          v74 = v55[1];
          v76 = *v55;
          v57 = v55[2];
          v56 = v55[3];
          v4 = *&a1[v7 + 72];
          v58 = *&a1[v7 + 80];
          v3 = *&a1[v7 + 88];
          swift_unknownObjectRetain();
          v72 = v57;
          swift_unknownObjectRetain();
          v70 = v56;

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(buf + 4) = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            *(buf + 4) = v7;
          }

          v60 = &v7[4 * v9];
          v61 = v60[5];
          v62 = v60[6];
          v63 = v60[7];
          v60[4] = v54;
          v60[5] = v4;
          v60[6] = v58;
          v60[7] = v3;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(buf + 4) = v7;
          if (v10 >= v7[2])
          {
            goto LABEL_50;
          }

          v64 = &a1[v7];
          v65 = *&a1[v7 + 72];
          v66 = *&a1[v7 + 80];
          v67 = *&a1[v7 + 88];
          *(v64 + 8) = v76;
          *(v64 + 9) = v74;
          *(v64 + 10) = v72;
          *(v64 + 11) = v70;

          swift_unknownObjectRelease();
          v6 = buf;
          swift_unknownObjectRelease();
          *(buf + 4) = v7;
        }

        ++v9;
      }

      ++v10;
      v8 = v7[2];
      a1 += 32;
      if (v10 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v7[2];
LABEL_10:
  v8 = v9;
  a1 = v68;
  if (v10 < v9)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_13;
  }

LABEL_11:
  specialized Array.replaceSubrange<A>(_:with:)(v8, v10);
  swift_endAccess();
  os_unfair_lock_unlock((*(v6 + 16) + 16));
  v4 = &unk_278B8A000;
  v11 = [a1 error];
  if (!v11)
  {
    goto LABEL_16;
  }

  v3 = v11;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_52;
  }

LABEL_13:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = swift_slowAlloc();
    v83 = v18;
    *v16 = 136446210;
    v19 = v13;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v83);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_23B824000, v14, v15, "Got error rendering PIP CommandBuffer: error=%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v25 = v18;
    a1 = v17;
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  else
  {
  }

LABEL_16:
  v26 = [a1 v4[222]];
  if (!v26)
  {
    return;
  }

  v73 = v26;
  v27 = [v26 userInfo];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = *MEMORY[0x277CD6940];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {

    goto LABEL_34;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  outlined init with copy of Any(*(v28 + 56) + 32 * v32, &v83);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27MTLCommandBufferEncoderInfo_pGMd, &_sSaySo27MTLCommandBufferEncoderInfo_pGMR);
  if (swift_dynamicCast())
  {
    v6 = v82;
    if (!(v82 >> 62))
    {
      v35 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_22:
        if (v35 < 1)
        {
          __break(1u);
          return;
        }

        v36 = 0;
        v37 = v6 & 0xC000000000000001;
        v38 = 0x27E189000uLL;
        v69 = v6 & 0xC000000000000001;
        v71 = v6;
        do
        {
          if (v37)
          {
            v50 = MEMORY[0x23EEAFC40](v36, v6);
          }

          else
          {
            v50 = *(v6 + 8 * v36 + 32);
            swift_unknownObjectRetain();
          }

          if (*(v38 + 1736) != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          __swift_project_value_buffer(v51, logger);
          swift_unknownObjectRetain();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v52, v53))
          {
            bufa = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v82 = v81;
            *bufa = 136446210;
            v77 = v53;
            v39 = [v50 label];
            v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v42 = [v50 debugSignposts];
            v43 = v38;
            v44 = v35;
            v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v83 = v45;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
            v46 = BidirectionalCollection<>.joined(separator:)();
            v48 = v47;
            v35 = v44;
            v38 = v43;

            v83 = v75;
            v84 = v41;

            MEMORY[0x23EEAF590](v46, v48);
            v37 = v69;

            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v82);
            v6 = v71;

            *(bufa + 4) = v49;
            _os_log_impl(&dword_23B824000, v52, v77, "%{public}s", bufa, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v81);
            MEMORY[0x23EEB0B70](v81, -1, -1);
            MEMORY[0x23EEB0B70](bufa, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v36;
        }

        while (v35 != v36);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

LABEL_54:
    v35 = __CocoaSet.count.getter();
    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_35:
}

void FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:)(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider);
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v55 = v3[4];
  v52 = v3[3];
  v54 = v3[5];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:));
  v48 = v6;
  *&v7 = specialized simd_float4x4.init(translation:rotation:scale:)(*v54.i64, v55);
  v51 = v8;
  v53 = v7;
  v49 = v10;
  v50 = v9;
  *&v11 = specialized simd_float4x4.init(translation:rotation:scale:)(*v54.i64, v55);
  v15 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld);
  v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 16);
  v17 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 32);
  v18 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 48);
  v19 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime);
  v20 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness);
  v21 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime);
  v22 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection;
  v23 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection);
  v24 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 16);
  if (v20 <= 0.1)
  {
    v20 = 0.1;
  }

  v25 = *(v22 + 32);
  v26 = *(v22 + 48);
  v61[0] = v53;
  v61[1] = v51;
  v61[2] = v50;
  v61[3] = v49;
  v61[4] = v11;
  v61[5] = v12;
  v61[6] = v13;
  v61[7] = v14;
  v61[8] = v15;
  v61[9] = v16;
  v61[10] = v17;
  v61[11] = v18;
  v61[12] = v23;
  v61[13] = v24;
  v61[14] = v25;
  v61[15] = v26;
  v62 = 1060320051;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v27 = [a2 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
    goto LABEL_19;
  }

  [v28 setLoadAction_];

  v29 = [a2 depthAttachment];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  v31 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer);
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v31 + 32))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v29;
  [v29 setTexture_];

  v33 = [a2 depthAttachment];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  [v33 setLoadAction_];

  v35 = [a2 depthAttachment];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  [v35 setStoreAction_];

  v37 = FreeformCloudRenderer.platterRenderer.getter();
  if (!v37)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = *(v2 + v30);
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v37;
  v56 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
  v40 = *(v38 + 24);
  swift_unknownObjectRetain();
  specialized static PlatterRenderer.createPlatterUniforms(from:)(v61, __src);
  v41 = v39[5];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v39[5];
  v43 = [swift_unknownObjectRetain() contents];
  v44 = v41;
  memcpy(v43, __src, 0x160uLL);
  v45 = [a1 renderCommandEncoderWithDescriptor_];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  v57[0] = 0;
  v57[1] = 0;
  v58 = v56;
  v59 = xmmword_23B91C510;
  [v45 setViewport_];
  v47 = v40;
  if (!v40)
  {
    v47 = v39[6];
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  [v46 setDepthStencilState_];
  if (v39[4])
  {
    [v46 setRenderPipelineState_];
    [v46 setVertexBuffer:v39[5] offset:0 atIndex:0];
    [v46 setVertexBuffer:v39[8] offset:0 atIndex:1];
    [v46 setFragmentBuffer:v39[5] offset:0 atIndex:0];
    [v46 drawPrimitives:3 vertexStart:0 vertexCount:v39[7]];
    [v46 endEncoding];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

void FreeformCloudRenderer.initRenderPipeline()()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v39[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v39];
  if (!v2)
  {
    v34 = v39[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_20;
  }

  v3 = v2;
  v4 = v39[0];
  v5 = MEMORY[0x23EEAF480](0xD000000000000037, 0x800000023B925490);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setAlphaToCoverageEnabled_];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v11 setPixelFormat_];

  v13 = [v9 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v14 setBlendingEnabled_];

  v15 = [v9 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v16 setRgbBlendOperation_];

  v17 = [v9 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v18 setAlphaBlendOperation_];

  v19 = [v9 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v20 setSourceRGBBlendFactor_];

  v21 = [v9 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v22 setSourceAlphaBlendFactor_];

  v23 = [v9 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v24 setDestinationRGBBlendFactor_];

  v25 = [v9 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (v26)
  {
    [v26 setDestinationAlphaBlendFactor_];

    [v9 setDepthAttachmentPixelFormat_];
    v39[0] = 0;
    v27 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v39];
    v28 = v39[0];
    if (v27)
    {
      v29 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState);
      *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState) = v27;
      v30 = v28;
      swift_unknownObjectRelease();
      v31 = [v1 newCommandQueue];
      if (v31)
      {
        v32 = v31;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v33 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue);
        *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue) = v32;
        swift_unknownObjectRelease();
LABEL_20:
        v38 = *MEMORY[0x277D85DE8];
        return;
      }

      lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v36 = v39[0];
      v37 = _convertNSErrorToError(_:)();

      swift_willThrow();
      lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error();
      swift_allocError();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
}

id FreeformCloudRenderer.createUniforms()()
{
  result = [*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device) newBufferWithLength:880 options:0];
  if (result)
  {
    v2 = result;
    v3 = [swift_unknownObjectRetain() contents];
    v4 = v2;
    *(v3 + 135) = 0;
    v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
    *(v3 + 137) = v5 * 0.01;
    v6 = *MEMORY[0x277D860B8];
    v7 = *(MEMORY[0x277D860B8] + 16);
    v8 = *(MEMORY[0x277D860B8] + 32);
    v9 = *(MEMORY[0x277D860B8] + 48);
    *v3 = *MEMORY[0x277D860B8];
    *(v3 + 1) = v7;
    *(v3 + 2) = v8;
    *(v3 + 3) = v9;
    v10 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld;
    v84 = v6;
    v85 = v7;
    v86 = v8;
    v87 = v9;
    if ((*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld + 64) & 1) == 0)
    {
      v11 = *(v10 + 32);
      v12 = *(v10 + 48);
      v13 = *v10;
      v14 = *(v10 + 16);
    }

    Transform.init(matrix:)();
    v78 = v16;
    v81 = v15;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createUniforms());
    *&v17 = specialized simd_float4x4.init(translation:rotation:scale:)(v78, v81);
    *(v3 + 8) = v17;
    *(v3 + 9) = v18;
    *(v3 + 10) = v19;
    *(v3 + 11) = v20;
    v21 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld);
    *(v3 + 3) = __invert_f4(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld));
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    *(v3 + 16) = *v21;
    *(v3 + 17) = v22;
    *(v3 + 18) = v23;
    *(v3 + 19) = v24;
    v25 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 16);
    v26 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 32);
    v27 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 48);
    *(v3 + 20) = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection);
    *(v3 + 21) = v25;
    *(v3 + 22) = v26;
    *(v3 + 23) = v27;
    *(v3 + 24) = v84;
    *(v3 + 25) = v85;
    *(v3 + 26) = v86;
    *(v3 + 27) = v87;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FreeformCloudRenderer.createUniforms());
    *(v3 + 56) = v28;
    *(v3 + 114) = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness);
    v3[552] = 0;
    v29 = *(v10 + 48);
    v91[2] = *(v10 + 32);
    v91[3] = v29;
    v92 = *(v10 + 64);
    v30 = *(v10 + 16);
    v91[0] = *v10;
    v91[1] = v30;
    v31 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v91);
    v31.n128_u32[2] = v32;
    *(v3 + 35) = v31;
    *(v3 + 144) = v33;
    v34 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld);
    if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld + 64))
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v82 = 0u;
    }

    else
    {
      v77 = v34[2];
      v79 = v34[3];
      v74 = *v34;
      v75 = v34[1];
      Transform.init(matrix:)();
      v72 = v39;
      v73 = v38;
      v38.f32[0] = vmuls_lane_f32(0.5, v40, 2);
      v41.i64[0] = 0x3F0000003F000000;
      v41.i64[1] = 0x3F0000003F000000;
      v40.i64[0] = vmulq_f32(v40, v41).u64[0];
      v40.i64[1] = v38.u32[0];
      v42 = vrecpeq_f32(v40);
      v43 = vmulq_f32(v42, vrecpsq_f32(v40, v42));
      v83 = vmulq_f32(v43, vrecpsq_f32(v40, v43));
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FreeformCloudRenderer.createUniforms());
      specialized simd_float4x4.init(translation:rotation:scale:)(v72, v73);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of FreeformCloudRenderer.createUniforms());
      v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, *&v44), v75, *&v44, 1), v77, v44, 2), v79, v44, 3).i32[1];
      v45 = *v34;
      v46 = v34[1];
      v47 = v34[2];
      v48 = v34[3];
      v49 = v83;
      v49.i32[1] = vmuls_lane_f32(0.5, *v83.f32, 1);
      v36 = 0x3F8666663F733333;
      v82 = v49;
      v35 = 1;
      v34[4].i8[0];
    }

    Transform.init(matrix:)();
    v80 = v50;
    v76 = v51;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #4 of FreeformCloudRenderer.createUniforms());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_23B91A6D0;
    *(v52 + 32) = v76;
    *(v52 + 36) = v37;
    *(v52 + 40) = DWORD2(v76);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v52);
    *&v76 = v53;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *v93.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v76, v80);
    *(v3 + 592) = __invert_f4(v93);
    *(v3 + 41) = v82;
    *(v3 + 84) = v36;
    v3[680] = v35;
    *(v3 + 681) = 0;
    v3[683] = 0;
    *(v3 + 171) = v37;
    *(v3 + 344) = 257;
    if ((v34[4].i8[0] & 1) == 0)
    {
      v54 = v34[2];
      v55 = v34[3];
      v56 = *v34;
      v57 = v34[1];
    }

    Transform.init(matrix:)();
    v59 = vmulq_f32(v58, v58);
    v60 = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32)) * 0.004;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createPerlinNoiseParameters(for:));
    v61 = vdupq_lane_s32(0, 0);
    v62 = v61;
    v62.i32[0] = v63;
    v64 = v61;
    v64.i32[1] = v65;
    v66 = v61;
    v66.i32[2] = v67;
    v61.i32[3] = v68;
    *(v3 + 176) = v60;
    *(v3 + 708) = v88;
    *(v3 + 179) = v89;
    *(v3 + 45) = v62;
    *(v3 + 46) = v64;
    *(v3 + 47) = v66;
    *(v3 + 48) = v61;
    FreeformCloudRenderer.createSpotlight()(v90);
    v69 = v90[3];
    *(v3 + 51) = v90[2];
    *(v3 + 52) = v69;
    v70 = v90[5];
    *(v3 + 53) = v90[4];
    *(v3 + 54) = v70;
    v71 = v90[1];
    *(v3 + 49) = v90[0];
    *(v3 + 50) = v71;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera()()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.Descriptor.init());
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera());
  v6 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera);
    v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);

    v7 = v6;
    v8 = 1014350479;
    v9 = xmmword_23B91C520;
    v10 = 0x3DB851EC3F800000;
    v11 = 1031127695;
    v12 = 96;
    v13 = xmmword_23B91C530;
    v14 = 994352038;
    v15 = 96;
    v16 = 1065353216;
    CameraFrustumRendererForLiveCamera.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(v5, [v3 colorPixelFormat], &v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformCloudRenderer.createSpotlight()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld;
  v3 = 0;
  v4 = 0;
  v5 = 0uLL;
  if ((*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld + 48) & 1) != 0 || (v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera, *(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera) + 24) <= 0.0))
  {
    v27 = 0;
    v26 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v7 = *(v2 + 32);
    v29 = *(v2 + 16);
    HIDWORD(v7) = 1.0;
    v31 = v7;
    v8 = a1;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createSpotlight());
    v9 = vmulq_f32(v29, xmmword_23B91C020);
    v10 = vnegq_f32(v9);
    v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
    v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v12.f32, 1), vextq_s8(v11, v11, 8uLL), v12.f32[0]);
    v14 = vrev64q_s32(v9);
    v14.i32[0] = v10.i32[1];
    v14.i32[3] = v10.i32[2];
    v15 = vmlaq_laneq_f32(v13, v14, v12, 2);
    v16 = vnegq_f32(v15);
    v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
    v18 = vrev64q_s32(v15);
    v18.i32[0] = v16.i32[1];
    v18.i32[3] = v16.i32[2];
    _Q0 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v29, 3), v18, v29, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v29.f32, 1), vextq_s8(v17, v17, 8uLL), v29.f32[0]));
    _Q0.i32[3] = 0;
    v30 = _Q0;
    __asm { FMOV            V0.2S, #13.0 }

    _Q0.i32[0] = *(*(v1 + v6) + 20);
    v28 = _Q0.i64[0];
    result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FreeformCloudRenderer.createSpotlight());
    v3 = v28;
    v26 = v30;
    v5 = v31;
    a1 = v8;
    v4 = *(*(v1 + v6) + 24);
    v27 = 1;
  }

  *a1 = v27;
  *(a1 + 16) = v5;
  *(a1 + 32) = v26;
  *(a1 + 48) = v3;
  *(a1 + 64) = v25;
  *(a1 + 80) = v4;
  return result;
}

id FreeformCloudRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FreeformCloudRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FreeformCloudRenderer()
{
  result = type metadata singleton initialization cache for FreeformCloudRenderer;
  if (!type metadata singleton initialization cache for FreeformCloudRenderer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformCloudRenderer()
{
  type metadata accessor for Published<UIInterfaceOrientation>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ColorScheme();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<UIInterfaceOrientation>()
{
  if (!lazy cache variable for type metadata for Published<UIInterfaceOrientation>)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UIInterfaceOrientation>);
    }
  }
}

uint64_t getEnumTagSinglePayload for FreeformCloudRenderer.ResourceEntry(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for FreeformCloudRenderer.ResourceEntry(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FreeformCloudRenderer@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FreeformCloudRenderer();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for FreeformCloudRenderer.interfaceOrientation : FreeformCloudRenderer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for FreeformCloudRenderer.interfaceOrientation : FreeformCloudRenderer(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0P6AnchorVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab29VKXEfU_10Foundation4UUIDV_19_kl1_m4UI19opq4C0O6R4VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n05_s19_kl1_m4UI21o78CloudRendererC9hasPoints33_3779DB7E999291C1C0BBA21A79DFAE44LLSbvgSbyKXEfu_Sb10z16UUIDV3key_AA0E11pq4C0T6R15V5valuet_tXEfU_Tf1nnc_n(v9, v4, v2);
  result = MEMORY[0x23EEB0B70](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v46 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v45 - v7;
  v8 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v11 = *(*(v52 - 8) + 64);
  result = MEMORY[0x28223BE20](v52);
  v61 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v58 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v47 = 0;
  v48 = (v19 + 63) >> 6;
  v62 = v13;
  v50 = v13 + 1;
  v51 = v13 + 2;
  while (v21)
  {
    v22 = __clz(__rbit64(v21));
    v60 = (v21 - 1) & v21;
LABEL_11:
    v25 = v22 | (v15 << 6);
    v26 = v58;
    v27 = v62[2];
    v28 = v61;
    v29 = v52;
    v27(v61, v58[6] + v62[9] * v25, v52);
    v30 = v26[7];
    v31 = v53;
    v32 = *(v54 + 72);
    v49 = v25;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v30 + v32 * v25, v53);
    v33 = v55;
    v27(v55, v28, v29);
    v34 = v57;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v31, &v33[*(v57 + 48)]);
    v35 = v33;
    v36 = v56;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v35, v56, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
    v37 = *(v34 + 48);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    v59 = &v45;
    v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v38 - 8);
    v41 = &v45 - v40;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v36 + v37, &v45 - v40, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    outlined destroy of FreeformMeshManager.MeshAnchor(v36 + v37);
    v42 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    LODWORD(v37) = (*(*(v42 - 8) + 48))(v41, 1, v42);
    outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v41);
    v43 = v62[1];
    v43(v36, v29);
    outlined destroy of FreeformMeshManager.MeshAnchor(v31);
    result = (v43)(v61, v29);
    v21 = v60;
    if (v37 != 1)
    {
      *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v46, v45, v47, v58);
      }
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v48)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v46, v45, v47, v58);
    }

    v24 = v17[v15];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v60 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0P6AnchorVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab29VKXEfU_10Foundation4UUIDV_19_kl1_m4UI19opq4C0O6R4VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n05_s19_kl1_m4UI21o78CloudRendererC9hasPoints33_3779DB7E999291C1C0BBA21A79DFAE44LLSbvgSbyKXEfu_Sb10z16UUIDV3key_AA0E11pq4C0T6R15V5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = v46 - v12;
  v57 = type metadata accessor for UUID();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v33, v50);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    outlined init with take of FreeformMeshManager.MeshAnchor(v34, v58);
    v36 = *(v19 + 40);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = outlined init with take of FreeformMeshManager.MeshAnchor(v58, *(v19 + 56) + v40 * v53);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
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

uint64_t specialized FreeformMiniView.init(model:renderer:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v32 = a1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 orientation];

  v33 = v14;
  type metadata accessor for UIDeviceOrientation(0);
  State.init(wrappedValue:)();
  v30 = v35;
  v31 = v34;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *MEMORY[0x277D76878];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
  Publisher<>.makeConnectable()();
  (*(v4 + 8))(v7, v3);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.MakeConnectable<NSNotificationCenter.Publisher> and conformance Publishers.MakeConnectable<A>, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v17 = ConnectablePublisher.autoconnect()();
  (*(v9 + 8))(v12, v8);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  type metadata accessor for FreeformCloudRenderer();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type FreeformCloudRenderer and conformance FreeformCloudRenderer, type metadata accessor for FreeformCloudRenderer);
  v21 = v32;
  v22 = ObservedObject.init(wrappedValue:)();
  v24 = v23;
  v25 = &v21[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_id];
  v27 = *&v21[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_id];
  v26 = *(v25 + 1);

  *a2 = v27;
  a2[1] = result;
  a2[2] = v18;
  a2[3] = v20;
  a2[4] = v22;
  a2[5] = v24;
  v29 = v30;
  a2[6] = v31;
  a2[7] = v29;
  a2[8] = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error()
{
  result = lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error;
  if (!lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error;
  if (!lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error);
  }

  return result;
}

uint64_t specialized FreeformCloudRenderer.renderFreeformCloud(buffer:renderPassDescriptor:resources:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = result;
  v49 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = 0;
    v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
    v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize;
    v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState;
    v8 = 0x1FA971000uLL;
    v9 = 0x1FB5E3000uLL;
    while (1)
    {
      v10 = v9;
      v43 = v5;
      v11 = v8;
      v41 = *(a4 + v7 + 32);
      v12 = *(a4 + v7 + 48);
      v13 = *(a4 + v7 + 56);
      v37 = *(a4 + v7 + 80);
      v38 = *(a4 + v7 + 64);
      v35 = *(a4 + v7 + 112);
      v36 = *(a4 + v7 + 96);
      v40 = *(a4 + v7 + 128);
      v14 = *(a4 + v7 + 144);
      v39 = *(a4 + v7 + 152);
      v15 = *(a4 + v7 + 40);
      swift_unknownObjectRetain();
      v42 = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = a2;
      v17 = [a2 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript_];

      if (!v18)
      {
        break;
      }

      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      [v18 (v11 + 936)];

      v20 = [v16 (v10 + 1298)];
      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = v20;
      [v20 (v11 + 936)];

      v22 = [v16 (v10 + 1298)];
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = v22;
      v9 = v10;
      [v22 setStoreAction_];

      a2 = v16;
      v24 = [v33 renderCommandEncoderWithDescriptor_];
      if (!v24)
      {
        goto LABEL_17;
      }

      v25 = v24;
      v45.columns[0] = 0uLL;
      v45.columns[1] = *(v4 + v31);
      v45.columns[2] = xmmword_23B91C510;
      [v24 setViewport_];
      v26 = *(v4 + v30);
      if (!v26)
      {
        goto LABEL_18;
      }

      v8 = v11;
      [v25 setDepthStencilState_];
      if (!*(v4 + v29))
      {
        goto LABEL_19;
      }

      [v25 setRenderPipelineState_];
      [v25 setVertexBuffer:a3 offset:0 atIndex:0];
      [v25 setVertexBuffer:v15 offset:0 atIndex:1];
      [v25 setVertexBuffer:v42 offset:0 atIndex:2];
      [v25 setVertexBuffer:v13 offset:0 atIndex:3];
      v45.columns[0] = v38;
      v45.columns[1] = v37;
      v45.columns[2] = v36;
      v45.columns[3] = v35;
      [v25 setVertexBytes:&v45 length:64 atIndex:4];
      v50 = __invert_f4(v45);
      v27 = vzip1q_s32(v50.columns[0], v50.columns[2]);
      v50.columns[0] = vzip2q_s32(v50.columns[0], v50.columns[2]);
      v50.columns[2] = vzip1q_s32(v50.columns[1], v50.columns[3]);
      v50.columns[1] = vzip2q_s32(v50.columns[1], v50.columns[3]);
      v44[0] = vzip1q_s32(v27, v50.columns[2]);
      v44[1] = vzip2q_s32(v27, v50.columns[2]);
      v44[2] = vzip1q_s32(v50.columns[0], v50.columns[1]);
      v44[3] = vzip2q_s32(v50.columns[0], v50.columns[1]);
      [v25 setVertexBytes:v44 length:64 atIndex:5];
      v46 = v40;
      v47 = v14;
      v48 = v39;
      [v25 setVertexBytes:&v46 length:32 atIndex:6];
      [v25 drawPrimitives:0 vertexStart:0 vertexCount:v41];
      [v25 endEncoding];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v7 += 128;
      v5 = v43 - 1;
      if (v43 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}