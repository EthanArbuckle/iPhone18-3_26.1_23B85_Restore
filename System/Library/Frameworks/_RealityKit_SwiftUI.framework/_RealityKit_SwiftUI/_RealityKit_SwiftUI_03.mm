uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of ObjectCaptureSession.Mesh.Anchor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of DispatchTime?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for FreeformCloudRenderer.AnchorMetalResource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for FreeformCloudRenderer.AnchorMetalResource(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for FreeformMiniView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for FreeformMiniView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroy_141Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<FreeformMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper()
{
  result = lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper);
  }

  return result;
}

Swift::Float __swiftcall RampAnimation.update(time:)(Swift::Double time)
{
  *(v1 + 64) = time;
  v3 = *(v1 + 48);
  v2.n128_u64[0] = 0;
  v4 = 0.0;
  if (v3 <= time)
  {
    v5 = *(v1 + 56);
    v4 = 1.0;
    if (v5 >= time)
    {
      v4 = (time - v3) / (v5 - v3);
    }
  }

  v6 = *(v1 + 72);
  v7 = (1.0 - v4) * v6;
  v8 = v6 + (v4 * (1.0 - v6));
  if (*(v1 + 24))
  {
    v8 = v7;
  }

  if (v8 <= 0.0)
  {
    v8 = 0.0;
  }

  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    v11 = *(v1 + 40);
    v10(v9, v2);
  }

  return v9;
}

uint64_t RampAnimation.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type RampAnimation.AnimType and conformance RampAnimation.AnimType()
{
  result = lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType;
  if (!lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RampAnimation.AnimType and conformance RampAnimation.AnimType);
  }

  return result;
}

double AnimatedTargetTransformProvider.updateAnimation()()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  result = *(v0 + 24);
  if (v2 <= result && result < v1)
  {
    v5 = 1.0;
    if (result > v1 || (v5 = (result - v2) / (v1 - v2), v6 = 0.0, v5 > 0.0) && (v6 = 1.0, v5 <= 1.0))
    {
      v6 = v5;
    }

    v7 = (v6 * v6) / ((((v6 * v6) - v5) + ((v6 * v6) - v5)) + 1.0);
    v17 = vmlaq_n_f32(*(v0 + 128), vsubq_f32(*(v0 + 176), *(v0 + 128)), v7);
    v18 = vmlaq_n_f32(*(v0 + 96), vsubq_f32(*(v0 + 144), *(v0 + 96)), v7);
    simd_slerp(*(v0 + 112), *(v0 + 160), v7);
    v16 = v8;
    static simd_quatf.identity.getter();
    *(v0 + 48) = v18;
    *(v0 + 64) = v16;
    *(v0 + 80) = v17;
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    result = *(v0 + 24);
  }

  v9 = v2 <= result && result < v1;
  if (!v9 && (*(v0 + 264) & 1) == 0)
  {
    v10 = *(v0 + 256);
    v12 = *(v0 + 224);
    v11 = *(v0 + 240);
    v13 = *(v0 + 208);
    v14 = *(v0 + 64);
    v15 = *(v0 + 80);
    *(v0 + 96) = *(v0 + 48);
    *(v0 + 112) = v14;
    *(v0 + 128) = v15;
    *(v0 + 144) = v13;
    *(v0 + 160) = v12;
    *(v0 + 176) = v11;
    if (v10 <= result + 0.2)
    {
      v10 = result + 0.2;
    }

    *(v0 + 32) = result;
    *(v0 + 40) = v10;
    result = 0.0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0;
    *(v0 + 264) = 1;
  }

  return result;
}

__n128 __swift_memcpy56_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AnimatedTargetTransformProvider.Target(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimatedTargetTransformProvider.Target(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

__n128 protocol witness for TransformProvider.transform.getter in conformance AnimatedTargetTransformProvider()
{
  result = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  return result;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t AppleDepthHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FrameCache.CacheEntry.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FrameCache.push(arFrame:textureYCbCr:textureDepth:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in FrameCache.push(arFrame:textureYCbCr:textureDepth:);
  *(v10 + 24) = v9;
  v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);
  swift_unknownObjectRetain();

  v12 = a1;
  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in FrameCache.push(arFrame:textureYCbCr:textureDepth:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FrameCache.CacheEntry();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  swift_beginAccess();
  swift_unknownObjectRetain();

  v9 = a1;
  v10 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v10);
  if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t closure #1 in FrameCache.pop(arFrame:textureYCbCr:textureDepth:)@<X0>(void **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v18 = 0;
LABEL_30:
    *a4 = v18;
    return result;
  }

  v9 = result;
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v19 = *(v9 + 16);
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_17:

    v18 = 0;
    goto LABEL_30;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x23EEAFC40](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11[2];
  v13 = *a1;
  *a1 = v12;
  v14 = v12;

  v15 = *a2;
  *a2 = v11[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v16 = *a3;
  *a3 = v11[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = swift_beginAccess();
  a3 = *(v9 + 16);
  a1 = (a3 >> 62);
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    MEMORY[0x23EEAFC40](0, a3);
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (a3 < 0)
  {
    v20 = *(v9 + 16);
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_33;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_9:
  if ((a3 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(a3 + 32);

    if (!a1)
    {
LABEL_12:
      result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_28;
    }

LABEL_27:
    result = __CocoaSet.count.getter();
LABEL_28:
    if (result)
    {
      v18 = 1;
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      swift_endAccess();

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t FrameCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FrameCache.init()()
{
  v11[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v11[1] = v9;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

id ARFrame.depthMap.getter()
{
  v1 = [v0 sceneDepth];
  if (v1)
  {

    result = [v0 sceneDepth];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [result depthMap];

    return v4;
  }

  result = [v0 smoothedSceneDepth];
  if (result)
  {

    result = [v0 smoothedSceneDepth];
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

id ARFrameProcessor.computeTexture(from:planeIndex:format:)(__CVBuffer *a1, size_t a2, MTLPixelFormat a3)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  textureOut[0] = 0;
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v8, a1, 0, a3, WidthOfPlane, HeightOfPlane, a2, textureOut);
  v12 = textureOut[0];
  if (TextureFromImage)
  {
    textureOut[0] = 0;

    v12 = textureOut[0];
  }

  if (!v12)
  {

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v14 = CVMetalTextureGetTexture(v13);

  result = v14;
LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

id ARFrameProcessor.computeYCbCrTexture(from:)(__CVBuffer *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v4 = *(v1 + 120);
    v5 = IOSurface;
    if (v4 == 1)
    {
      IOSurfaceGetYCbCrMatrix();
      v6 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        swift_beginAccess();
        *(v10 + 4) = 0;
        _os_log_impl(&dword_23B824000, v8, v9, "Unsupported color matrix: %u", v10, 8u);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      *(v6 + 120) = 0;
    }

    v11 = ARFrameProcessor.computeTexture(from:planeIndex:format:)(a1, 0, 0x208uLL);
  }

  else
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
      _os_log_impl(&dword_23B824000, v13, v14, "Cannot get ioSurface from Color Buffer!", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ARFrameProcessor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  v3 = *(v0 + 72);
  swift_unknownObjectRelease();
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 88);
  swift_unknownObjectRelease();
  v6 = *(v0 + 96);
  swift_unknownObjectRelease();
  v7 = *(v0 + 104);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ARFrameProcessor.__deallocating_deinit()
{
  ARFrameProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ARFrameProcessor.init(device:)(void *a1)
{
  type metadata accessor for FrameCache();
  swift_allocObject();
  *(v1 + 16) = FrameCache.init()();
  *(v1 + 24) = 998445679;
  *(v1 + 32) = 5;
  *(v1 + 56) = 0;
  *(v1 + 112) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0x400E000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(0, 0, a1, 0, (v1 + 112));
  swift_endAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277CD7528]) initWithDevice:a1 kernelDiameter:5];
  *(v1 + 40) = v3;
  LODWORD(v4) = 998445679;
  [v3 setEpsilon_];
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x277CD74E0]) initWithDevice_];
  return v1;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for Model3DLocation()
{
  result = type metadata singleton initialization cache for Model3DLocation;
  if (!type metadata singleton initialization cache for Model3DLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Model3DLocation()
{
  type metadata accessor for (named: String, bundle: NSBundle?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AssetDescriptorRef();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (Entity.ConfigurationCatalog, configurations: [String : String]?)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Entity();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (named: String, bundle: NSBundle?)()
{
  if (!lazy cache variable for type metadata for (named: String, bundle: NSBundle?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSBundleCSgMd, &_sSo8NSBundleCSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (named: String, bundle: NSBundle?));
    }
  }
}

void Model3DLocation.hash(into:)(__int128 *a1)
{
  v74 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMd, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMR);
  v2 = *(*(v81 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v81);
  v80 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v79 = &v69 - v5;
  v6 = type metadata accessor for Entity.ConfigurationCatalog();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetDescriptorRef();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Model3DLocation();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Model3DLocation(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v15 + 32))(v18, v22, v14);
        MEMORY[0x23EEAFE40](2);
        lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v15 + 8))(v18, v14);
      }

      else
      {
        (*(v10 + 32))(v13, v22, v9);
        MEMORY[0x23EEAFE40](3);
        MEMORY[0x23EEADA50](&v86, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
        MEMORY[0x23EEAFE40](v86);
        (*(v10 + 8))(v13, v9);
      }
    }

    else
    {
      v29 = *v22;
      v30 = v22[1];
      v31 = v22[2];
      MEMORY[0x23EEAFE40](1);
      String.hash(into:)();

      if (v31)
      {
        Hasher._combine(_:)(1u);
        v32 = v31;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v27 = *v22;
      MEMORY[0x23EEAFE40](6);
      dispatch thunk of Entity.name.getter();
      String.hash(into:)();

      v28 = Entity.id.getter();
      MEMORY[0x23EEAFE60](v28);
    }

    else
    {
      MEMORY[0x23EEAFE40](0);
    }
  }

  else
  {
    v24 = v74;
    if (EnumCaseMultiPayload == 3)
    {
      v25 = v22[1];
      v26 = v22[2];
      MEMORY[0x23EEAFE40](4);
      if (v26)
      {
        v86 = v26;
        Hasher._combine(_:)(1u);
        type metadata accessor for Entity();
        lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

        dispatch thunk of Hashable.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      v69 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48));
      (*(v72 + 32))(v71, v22, v73);
      MEMORY[0x23EEAFE40](5);
      v33 = Entity.ConfigurationCatalog.configurationSets.getter();
      v34 = *(v33 + 16);
      if (v34)
      {
        v86 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
        v35 = v86;
        v36 = v33 + 64;
        v37 = -1 << *(v33 + 32);
        v38 = _HashTable.startBucket.getter();
        v39 = 0;
        v40 = *(v33 + 36);
        v70 = v33 + 72;
        v75 = v34;
        v76 = v40;
        v77 = v33 + 64;
        v78 = v33;
        while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v33 + 32))
        {
          if ((*(v36 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
          {
            goto LABEL_47;
          }

          if (v40 != *(v33 + 36))
          {
            goto LABEL_48;
          }

          v83 = v38 >> 6;
          v84 = 1 << v38;
          v82 = v39;
          v42 = v81;
          v43 = *(v81 + 48);
          v44 = *(v33 + 56);
          v45 = (*(v33 + 48) + 16 * v38);
          v47 = *v45;
          v46 = v45[1];
          v48 = type metadata accessor for Entity.ConfigurationCatalog.ConfigurationSet();
          v49 = *(v48 - 8);
          v50 = v35;
          v51 = v79;
          (*(v49 + 16))(&v79[v43], v44 + *(v49 + 72) * v38, v48);
          v52 = v80;
          v85 = v47;
          *v80 = v47;
          *(v52 + 8) = v46;
          v53 = &v51[v43];
          v35 = v50;
          (*(v49 + 32))(v52 + *(v42 + 48), v53, v48);
          swift_bridgeObjectRetain_n();
          outlined destroy of PerspectiveCameraComponent?(v52, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMd, &_sSS3key_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetV5valuetMR);
          v86 = v50;
          v55 = *(v50 + 16);
          v54 = *(v50 + 24);
          if (v55 >= v54 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
            v35 = v86;
          }

          *(v35 + 16) = v55 + 1;
          v56 = v35 + 16 * v55;
          *(v56 + 32) = v85;
          *(v56 + 40) = v46;
          v33 = v78;
          v41 = 1 << *(v78 + 32);
          if (v38 >= v41)
          {
            goto LABEL_49;
          }

          v36 = v77;
          v57 = *(v77 + 8 * v83);
          if ((v57 & v84) == 0)
          {
            goto LABEL_50;
          }

          LODWORD(v40) = v76;
          if (v76 != *(v78 + 36))
          {
            goto LABEL_51;
          }

          v58 = v57 & (-2 << (v38 & 0x3F));
          if (v58)
          {
            v41 = __clz(__rbit64(v58)) | v38 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v59 = v83 << 6;
            v60 = v83 + 1;
            v61 = (v70 + 8 * v83);
            while (v60 < (v41 + 63) >> 6)
            {
              v63 = *v61++;
              v62 = v63;
              v59 += 64;
              ++v60;
              if (v63)
              {
                outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v38, v76, 0);
                v41 = __clz(__rbit64(v62)) + v59;
                goto LABEL_17;
              }
            }

            outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v38, v76, 0);
          }

LABEL_17:
          v39 = v82 + 1;
          v38 = v41;
          if (v82 + 1 == v75)
          {

            v24 = v74;
            goto LABEL_39;
          }
        }

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
      }

      else
      {

        v35 = MEMORY[0x277D84F90];
LABEL_39:
        MEMORY[0x23EEAFE40](*(v35 + 16));
        v64 = *(v35 + 16);
        if (v64)
        {
          v65 = (v35 + 40);
          do
          {
            v66 = *(v65 - 1);
            v67 = *v65;

            String.hash(into:)();

            v65 += 2;
            --v64;
          }

          while (v64);
        }

        v68 = v69;
        if (v69)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v24, v68);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        (*(v72 + 8))(v71, v73);
      }
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Model3DLocation()
{
  Hasher.init(_seed:)();
  Model3DLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Model3DLocation()
{
  Hasher.init(_seed:)();
  Model3DLocation.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    String.hash(into:)();

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x23EEAFE40](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static Model3DLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = type metadata accessor for Entity.ConfigurationCatalog();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v89 - v7;
  v8 = type metadata accessor for AssetDescriptorRef();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v89 - v12;
  v13 = type metadata accessor for URL();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v89 - v18;
  v20 = type metadata accessor for Model3DLocation();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v95 = &v89 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = (&v89 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMd, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v89 - v38;
  v40 = &v89 + *(v37 + 56) - v38;
  outlined init with copy of Model3DLocation(v100, &v89 - v38);
  v41 = a2;
  v42 = v40;
  outlined init with copy of Model3DLocation(v41, v40);
  v43 = v39;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v95 = v19;
    v100 = v17;
    v58 = v96;
    v57 = v97;
    v60 = v98;
    v59 = v99;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of Model3DLocation(v43, v32);
        v61 = v42;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v62 = v58;
          v63 = *(v58 + 32);
          v64 = v95;
          v65 = v57;
          v63(v95, v32, v57);
          v66 = v100;
          v63(v100, v61, v65);
          v55 = static URL.== infix(_:_:)();
          v67 = *(v62 + 8);
          v67(v66, v65);
          v67(v64, v65);
          goto LABEL_43;
        }

        (*(v58 + 8))(v32, v57);
      }

      else
      {
        outlined init with copy of Model3DLocation(v43, v29);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v75 = *(v60 + 32);
          v76 = v89;
          v75(v89, v29, v59);
          v77 = v90;
          v75(v90, v42, v59);
          v78 = MEMORY[0x277D841D8];
          MEMORY[0x23EEADA50](&v102, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
          v79 = v102;
          MEMORY[0x23EEADA50](&v101, v78, v78);
          v80 = *(v60 + 8);
          v80(v77, v59);
          v80(v76, v59);
          v55 = v79 == v101;
          goto LABEL_43;
        }

        (*(v60 + 8))(v29, v59);
      }

      goto LABEL_26;
    }

    outlined init with copy of Model3DLocation(v43, v34);
    v73 = *v34;
    v72 = v34[1];
    v74 = v34[2];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_26;
    }

    v81 = *(v42 + 2);
    if (v73 == *v42 && v72 == *(v42 + 1))
    {
      v86 = *(v42 + 1);
    }

    else
    {
      v83 = *(v42 + 1);
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {

LABEL_39:
        v55 = 0;
        goto LABEL_42;
      }
    }

    if (v74)
    {
      if (!v81)
      {
        goto LABEL_39;
      }

      type metadata accessor for NSBundle();
      v74 = v74;
      v55 = static NSObject.== infix(_:_:)();
    }

    else
    {
      if (!v81)
      {
        goto LABEL_47;
      }

      v55 = 0;
      v74 = v81;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v45 = v95;
      outlined init with copy of Model3DLocation(v39, v95);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
      v47 = *(v45 + v46);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v48 = *&v42[v46];
        v50 = v92;
        v49 = v93;
        v51 = *(v93 + 32);
        v52 = v45;
        v53 = v94;
        v51(v92, v52, v94);
        v54 = v91;
        v51(v91, v42, v53);
        if ((static Entity.ConfigurationCatalog.== infix(_:_:)() & 1) == 0)
        {

          goto LABEL_34;
        }

        if (v47)
        {
          if (v48)
          {

            v55 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v47, v48);

            swift_bridgeObjectRelease_n();
            v56 = *(v49 + 8);
            v56(v54, v53);
            v56(v50, v53);
LABEL_43:
            outlined destroy of Model3DLocation(v43);
            return v55 & 1;
          }

LABEL_34:

          v85 = *(v49 + 8);
          v85(v54, v53);
          v85(v50, v53);
          v55 = 0;
          goto LABEL_43;
        }

        v88 = *(v49 + 8);
        v88(v54, v53);
        v88(v50, v53);
        if (v48)
        {

          v55 = 0;
          goto LABEL_43;
        }

LABEL_47:
        v55 = 1;
        goto LABEL_43;
      }

      (*(v93 + 8))(v45, v94);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 5)
  {
    outlined init with copy of Model3DLocation(v39, v24);
    v68 = *v24;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v69 = *v42;
      v70 = Entity.id.getter();
      v71 = Entity.id.getter();

      v55 = v70 == v71;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
LABEL_26:
    outlined destroy of PerspectiveCameraComponent?(v43, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMd, &_s19_RealityKit_SwiftUI15Model3DLocationO_ACtMR);
    v55 = 0;
    return v55 & 1;
  }

  outlined destroy of Model3DLocation(v39);
  v55 = 1;
  return v55 & 1;
}

uint64_t outlined init with copy of Model3DLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Model3DLocation(uint64_t a1)
{
  v2 = type metadata accessor for Model3DLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Model3DLocation and conformance Model3DLocation(unint64_t *a1, void (*a2)(uint64_t))
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

double specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(unint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    type metadata accessor for UIDeviceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    type metadata accessor for UIInterfaceOrientation(0);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_23B824000, v5, v6, "getMiniViewRotation: Device orientation: %s  interfaceOrientation: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  result = 0.0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 >= 7)
      {
        return result;
      }

      v16 = &unk_23B91CF18;
      goto LABEL_18;
    }

    if (a2 == 4 && a1 < 7)
    {
      v16 = &unk_23B91CEE0;
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (a1 - 2 >= 3)
      {
        return result;
      }

      v17 = &unk_23B91CE90 + 8 * a1 - 16;
      return *v17;
    }

    if (a2 == 2 && a1 < 7)
    {
      v16 = &unk_23B91CEA8;
LABEL_18:
      v17 = &v16[8 * a1];
      return *v17;
    }
  }

  return result;
}

double specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(float32x4_t a1, float32x4_t a2, float32x2_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v15 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = v15.u32[0];
  *(inited + 40) = v15.i32[2];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v13 = v7;
  swift_setDeallocating();
  specialized static MathHelpers.angleBetween(_:_:)(v15, v13);
  v9 = v8 / 1.3963;
  v10 = 0.0;
  if (v9 > 0.0)
  {
    v10 = 1.0;
    if (v9 <= 1.0)
    {
      v10 = v9;
    }
  }

  v16 = vmuls_lane_f32(0.25, a3, 1) * (1.0 - v10);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:));
  *&result = vsubq_f32(a2, vmulq_n_f32(v11, v16)).u64[0];
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ARKitCoachingView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel();

  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel and conformance DataModel()
{
  result = lazy protocol witness table cache variable for type DataModel and conformance DataModel;
  if (!lazy protocol witness table cache variable for type DataModel and conformance DataModel)
  {
    type metadata accessor for DataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel and conformance DataModel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARKitCoachingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ARKitCoachingView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper()
{
  result = lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper;
  if (!lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper;
  if (!lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ARCoachingOverlayViewWrapper()
{
  result = *(*(v0 + 8) + 24);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ARCoachingOverlayViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ARCoachingOverlayViewWrapper()
{
  lazy protocol witness table accessor for type ARCoachingOverlayViewWrapper and conformance ARCoachingOverlayViewWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void one-time initialization function for pipWindowWidthPercent()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.95;
  if (v1 == 1)
  {
    v2 = 0.7;
  }

  pipWindowWidthPercent = *&v2;
}

uint64_t closure #1 in ARObjectCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in ARObjectCapturingView.body.getter(a2, a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v49, __src, sizeof(v49));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, v47, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMR);
  outlined destroy of PerspectiveCameraComponent?(v49, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEy012_RealityKit_aB0015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAF05ShakeR0VGAA013_TraitWritingR0VyAA010TransitionT3KeyVGGSg_AEyAEyAF013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAVGAA06_FrameN0VGSgAEyAF013StackableMiniD0VyAEyAF022CoveragePointCloudMiniD0VAA08_OverlayR0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGAVGSgAEyAEyAF013ARKitCoachingD0VAJGA2_GSgtGMR);
  memcpy(__src, __dst, sizeof(__src));
  v9 = static Edge.Set.all.getter();
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAPyAPyAPyAPyAI015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAI05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_APyAPyAI013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA8_GAA06_FrameV0VGSgAPyAI013StackableMiniD0VyAPyAI022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA8_GSgAPyAPyAI013ARKitCoachingD0VAXGA16_GSgtGGAXGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAPyAPyAPyAPyAI015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAI05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_APyAPyAI013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA8_GAA06_FrameV0VGSgAPyAI013StackableMiniD0VyAPyAI022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA8_GSgAPyAPyAI013ARKitCoachingD0VAXGA16_GSgtGGAXGGMR);
  v12 = *(v11 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v13 = swift_allocObject();
  v14 = *(a2 + 80);
  *(v13 + 5) = *(a2 + 64);
  *(v13 + 6) = v14;
  *(v13 + 7) = *(a2 + 96);
  v15 = *(a2 + 16);
  *(v13 + 1) = *a2;
  *(v13 + 2) = v15;
  v16 = *(a2 + 48);
  *(v13 + 3) = *(a2 + 32);
  *(v13 + 4) = v16;
  *a3 = v6;
  *(a3 + 8) = v8;
  memcpy((a3 + 16), __src, 0x1D8uLL);
  *(a3 + 488) = v9;
  v17 = (a3 + *(v11 + 56));
  *v17 = partial apply for closure #2 in closure #1 in ARObjectCapturingView.body.getter;
  v17[1] = v13;
  swift_beginAccess();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGMR);
  v19 = *(v18 + 52);
  outlined init with copy of ARObjectCapturingView(a2, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v20 = swift_allocObject();
  v21 = *(a2 + 80);
  *(v20 + 5) = *(a2 + 64);
  *(v20 + 6) = v21;
  *(v20 + 7) = *(a2 + 96);
  v22 = *(a2 + 16);
  *(v20 + 1) = *a2;
  *(v20 + 2) = v22;
  v23 = *(a2 + 48);
  *(v20 + 3) = *(a2 + 32);
  *(v20 + 4) = v23;
  v24 = (a3 + *(v18 + 56));
  *v24 = partial apply for closure #3 in closure #1 in ARObjectCapturingView.body.getter;
  v24[1] = v20;
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGMR);
  v26 = *(v25 + 52);
  outlined init with copy of ARObjectCapturingView(a2, v47);
  Published.projectedValue.getter();
  swift_endAccess();
  v27 = swift_allocObject();
  v28 = *(a2 + 80);
  v27[5] = *(a2 + 64);
  v27[6] = v28;
  v27[7] = *(a2 + 96);
  v29 = *(a2 + 16);
  v27[1] = *a2;
  v27[2] = v29;
  v30 = *(a2 + 48);
  v27[3] = *(a2 + 32);
  v27[4] = v30;
  v31 = (a3 + *(v25 + 56));
  *v31 = partial apply for closure #4 in closure #1 in ARObjectCapturingView.body.getter;
  v31[1] = v27;
  swift_beginAccess();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGMR);
  v33 = *(v32 + 52);
  outlined init with copy of ARObjectCapturingView(a2, v47);
  Published.projectedValue.getter();
  swift_endAccess();
  v34 = swift_allocObject();
  v35 = *(a2 + 80);
  *(v34 + 5) = *(a2 + 64);
  *(v34 + 6) = v35;
  *(v34 + 7) = *(a2 + 96);
  v36 = *(a2 + 16);
  *(v34 + 1) = *a2;
  *(v34 + 2) = v36;
  v37 = *(a2 + 48);
  *(v34 + 3) = *(a2 + 32);
  *(v34 + 4) = v37;
  v38 = (a3 + *(v32 + 56));
  *v38 = partial apply for closure #5 in closure #1 in ARObjectCapturingView.body.getter;
  v38[1] = v34;
  swift_beginAccess();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAHy012_RealityKit_aB09DataModelC5StateO_GAA15ModifiedContentVyAA6ZStackVyAA05TupleD0VyAQyAQyAQyAQyAJ015ObjectSelectionD0VAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAJ05ShakeZ0VGAA013_TraitWritingZ0VyAA18TransitionTraitKeyVGGSg_AQyAQyAJ013ReticleCenterD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA9_GAA06_FrameV0VGSgAQyAJ013StackableMiniD0VyAQyAJ022CoveragePointCloudMiniD0VAA08_OverlayZ0VyAA017StrokeBorderShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGSgGGGA9_GSgAQyAQyAJ013ARKitCoachingD0VAYGA17_GSgtGGAYGGGGGGMR);
  v40 = *(v39 + 52);
  outlined init with copy of ARObjectCapturingView(a2, v47);
  Published.projectedValue.getter();
  swift_endAccess();
  v41 = swift_allocObject();
  v42 = *(a2 + 80);
  v41[5] = *(a2 + 64);
  v41[6] = v42;
  v41[7] = *(a2 + 96);
  v43 = *(a2 + 16);
  v41[1] = *a2;
  v41[2] = v43;
  v44 = *(a2 + 48);
  v41[3] = *(a2 + 32);
  v41[4] = v44;
  v45 = (a3 + *(v39 + 56));
  *v45 = partial apply for closure #6 in closure #1 in ARObjectCapturingView.body.getter;
  v45[1] = v41;
  return outlined init with copy of ARObjectCapturingView(a2, v47);
}

uint64_t closure #1 in closure #1 in ARObjectCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v141 = *(a1 + 16);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v55 = v5;
  v56 = v10;
  if (v126 == 1)
  {
    GeometryProxy.size.getter();
    v14 = v13;
    GeometryProxy.size.getter();
    v16 = v15;
    v141 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    State.wrappedValue.getter();
    v77 = v126;
    v78 = static Edge.Set.all.getter();
    v141 = *(a1 + 48);
    State.wrappedValue.getter();
    v76 = v126;
    GeometryProxy.size.getter();
    v18 = v17 * *(a1 + 96);
    v75 = *(a1 + 104);
    OpacityTransition.init()();
    (*(v6 + 16))(v10, v12, v5);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v74 = AnyTransition.init<A>(_:)();
    v19 = v12;
    (*(v6 + 8))(v12, v5);
    v72 = 0x4039000000000000;
    v73 = v78;
  }

  else
  {
    v19 = v12;
    v72 = 0;
    v73 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0.0;
  }

  v166[0] = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v166, &v141, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  swift_retain_n();
  static Published.subscript.getter();

  v60 = a1;
  v54 = v6;
  if (v141 == 1)
  {
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
    v20 = ObservedObject.init(wrappedValue:)();
    v70 = v21;
    v71 = v20;
    v22 = v19;
    OpacityTransition.init()();
    v23 = v55;
    (*(v6 + 16))(v56, v19, v55);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v69 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v19, v23);
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v67 = v155;
    v68 = v154;
    v24 = 1065353216;
    v65 = v157;
    v66 = v156;
    *&v64[4] = 0x404000003E99999ALL;
    *v64 = 1045220557;
    v78 = 0x404E000000000000;
    v62 = v158;
    v63 = 0x3FD0000000000000;
    v61 = v159;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v166, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v70 = 0;
    v71 = 0;
    v78 = 0;
    v62 = 0;
    v63 = 0;
    memset(v64, 0, sizeof(v64));
    v65 = 0;
    v24 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v61 = 0;
    v22 = v19;
  }

  GeometryProxy.size.getter();
  v26 = v25;
  GeometryProxy.size.getter();
  if (v27 < v26)
  {
    v26 = v27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v24;
  if (v141 == 1)
  {
    if (one-time initialization token for pipWindowWidthPercent != -1)
    {
      swift_once();
    }

    v53 = a2;
    v28 = *&pipWindowWidthPercent;
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

    v29 = ObservedObject.init(wrappedValue:)();
    v51 = v30;
    v52 = v29;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v32 = v141;
    if (!v141)
    {
      __break(1u);
      return result;
    }

    specialized CoveragePointCloudMiniView.init(model:renderer:)(v141, v79);

    outlined destroy of PerspectiveCameraComponent?(v166, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v33 = static Alignment.center.getter();
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v82 = 0u;
    v83 = 0u;
    *&v87 = v33;
    *(&v87 + 1) = v34;
    *&v80[88] = v87;
    memset(&v80[8], 0, 80);
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    *&v112 = v33;
    *(&v112 + 1) = v34;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v82, &v141, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMR);
    outlined destroy of PerspectiveCameraComponent?(&v107, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGSgGMR);
    outlined destroy of PerspectiveCameraComponent?(v166, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    OpacityTransition.init()();
    v35 = v54;
    v36 = v55;
    (*(v54 + 16))(v56, v22, v55);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v37 = AnyTransition.init<A>(_:)();
    (*(v35 + 8))(v22, v36);
    *v127 = v26 * v28;
    *(&v127[7] + 8) = *&v80[48];
    *(&v127[8] + 8) = *&v80[64];
    *(&v127[9] + 8) = *&v80[80];
    *(&v127[3] + 8) = v79[3];
    *(&v127[4] + 8) = *v80;
    *(&v127[5] + 8) = *&v80[16];
    *(&v127[6] + 8) = *&v80[32];
    *(v127 + 8) = v79[0];
    *(&v127[1] + 8) = v79[1];
    *&v126 = v52;
    *(&v126 + 1) = v51;
    *(&v127[2] + 8) = v79[2];
    *(&v127[10] + 1) = *&v80[96];
    *&v128 = 0x4034000000000000;
    *(&v128 + 1) = v37;
    closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(&v126);
    v151 = v127[9];
    v152 = v127[10];
    v153 = v128;
    v147 = v127[5];
    v148 = v127[6];
    v149 = v127[7];
    v150 = v127[8];
    v143 = v127[1];
    v144 = v127[2];
    v145 = v127[3];
    v146 = v127[4];
    v141 = v126;
    v142 = v127[0];
    v24 = v58;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v166, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    _s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgWOi0_(&v141);
  }

  v126 = *(v60 + 64);
  State.wrappedValue.getter();
  if (v107 == 1)
  {
    type metadata accessor for DataModel(0);
    lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
    v38 = ObservedObject.init(wrappedValue:)();
    v59 = v39;
    v60 = v38;
    v40 = static Edge.Set.all.getter();
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = v160;
    v41 = v161;
    v43 = v162;
    v44 = v163;
    v45 = v40;
    v47 = v164;
    v46 = v165;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v166, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v59 = 0;
    v60 = 0;
    v42 = 0;
    v41 = 0;
    v43 = 0;
    v44 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0;
  }

  v95[0] = v72;
  v95[1] = 0;
  *&v96 = v14;
  *(&v96 + 1) = v16;
  *&v97 = v77;
  *(&v97 + 1) = v73;
  *&v98 = v76;
  *(&v98 + 1) = v18;
  *&v99 = v75;
  *(&v99 + 1) = v74;
  v81[1] = v96;
  v81[2] = v97;
  v81[3] = v98;
  *&v100 = v71;
  *(&v100 + 1) = v70;
  v81[4] = v99;
  v81[0] = v72;
  v92 = v151;
  v93 = v152;
  v94 = v153;
  v88 = v147;
  v89 = v148;
  v90 = v149;
  v91 = v150;
  v84 = v143;
  v85 = v144;
  v86 = v145;
  v87 = v146;
  v82 = v141;
  v83 = v142;
  *&v101 = v78;
  *(&v101 + 1) = v78;
  *&v102 = v63;
  *(&v102 + 1) = *v64;
  *&v103 = __PAIR64__(v24, *&v64[8]);
  *(&v103 + 1) = v69;
  *&v104 = v68;
  *(&v104 + 1) = v67;
  *&v105 = v66;
  *(&v105 + 1) = v65;
  *&v106 = v62;
  *(&v106 + 1) = v61;
  v81[5] = v100;
  v81[6] = v101;
  v81[9] = v104;
  v81[10] = v105;
  v81[7] = v102;
  v81[8] = v103;
  v109 = v143;
  v110 = v144;
  v107 = v141;
  v108 = v142;
  v113 = v147;
  v114 = v148;
  v111 = v145;
  v112 = v146;
  v119 = v153;
  v118 = v152;
  v117 = v151;
  v115 = v149;
  v116 = v150;
  v81[21] = v150;
  v81[22] = v151;
  v81[23] = v152;
  v81[24] = v153;
  v81[17] = v146;
  v81[18] = v147;
  v81[19] = v148;
  v81[20] = v149;
  v81[13] = v142;
  v81[14] = v143;
  v81[15] = v144;
  v81[16] = v145;
  v81[11] = v106;
  v81[12] = v141;
  *&v120 = v60;
  *(&v120 + 1) = v59;
  *&v121 = v45;
  *(&v121 + 1) = v42;
  *&v122 = v41;
  *(&v122 + 1) = v43;
  *&v123 = v44;
  *(&v123 + 1) = v47;
  v124 = v46;
  *&v81[29] = v46;
  v81[27] = v122;
  v81[28] = v123;
  v81[25] = v120;
  v81[26] = v121;
  v48 = v43;
  v49 = v44;
  v50 = v46;
  memcpy(v57, v81, 0x1D8uLL);
  v125[0] = v60;
  v125[1] = v59;
  v125[2] = v45;
  v125[3] = v42;
  v125[4] = v41;
  v125[5] = v48;
  v125[6] = v49;
  v125[7] = v47;
  v125[8] = v50;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v95, &v126, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v100, &v126, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v107, &v126, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v120, &v126, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v125, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  v127[9] = v92;
  v127[10] = v93;
  v128 = v94;
  v127[5] = v88;
  v127[6] = v89;
  v127[7] = v90;
  v127[8] = v91;
  v127[1] = v84;
  v127[2] = v85;
  v127[3] = v86;
  v127[4] = v87;
  v126 = v82;
  v127[0] = v83;
  outlined destroy of PerspectiveCameraComponent?(&v126, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgMR);
  v129[0] = v71;
  v129[1] = v70;
  v129[2] = v78;
  v129[3] = v78;
  v129[4] = v63;
  v130 = *v64;
  v131 = *&v64[4];
  v132 = v58;
  v133 = v69;
  v134 = v68;
  v135 = v67;
  v136 = v66;
  v137 = v65;
  v138 = v62;
  v139 = v61;
  outlined destroy of PerspectiveCameraComponent?(v129, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ReticleCenterView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGAA12_FrameLayoutVGSgMR);
  v140[0] = v72;
  v140[1] = 0;
  v140[2] = v14;
  v140[3] = v16;
  v140[4] = v77;
  v140[5] = v73;
  v140[6] = v76;
  *&v140[7] = v18;
  v140[8] = v75;
  v140[9] = v74;
  return outlined destroy of PerspectiveCameraComponent?(v140, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB019ObjectSelectionViewVAA23_SafeAreaIgnoringLayoutVGAA25_AllowsHitTestingModifierVGAD05ShakeQ0VGAA013_TraitWritingQ0VyAA010TransitionS3KeyVGGSgMR);
}

uint64_t closure #2 in closure #1 in ARObjectCapturingView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v36 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v36 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  outlined init with copy of DataModel.State(a1, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36[0] = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    *&v37 = v22;
    *v21 = 136446210;
    outlined init with copy of DataModel.State(v16, v14);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    outlined destroy of DataModel.State(v16);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v37);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_23B824000, v18, v19, "onReceive() state = %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x23EEB0B70](v22, -1, -1);
    v27 = v21;
    a2 = v36[0];
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.State(v16);
  }

  outlined init with copy of DataModel.State(a1, v11);
  v28 = type metadata accessor for DataModel.Error(0);
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(v11, 8, v28);
  v31 = outlined destroy of DataModel.State(v11);
  if (v30 == 4)
  {
    MEMORY[0x28223BE20](v31);
    v36[-2] = a2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    v37 = *(a2 + 32);
    v36[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    return State.wrappedValue.setter();
  }

  else
  {
    outlined init with copy of DataModel.State(a1, v8);
    v33 = v29(v8, 8, v28);
    v34 = outlined destroy of DataModel.State(v8);
    if (v33 == 5)
    {
      v35 = static Animation.easeOut(duration:)();
      MEMORY[0x28223BE20](v35);
      v36[-2] = a2;
    }

    else
    {
      MEMORY[0x28223BE20](v34);
      v36[-2] = a2;
      static Animation.default.getter();
    }

    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #2 in closure #1 in ARObjectCapturingView.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in ARObjectCapturingView.body.getter(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = type metadata accessor for DataModel.Error(0);
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v7, 8, v10);
  result = outlined destroy of DataModel.State(v7);
  if (v9 == 4)
  {
    MEMORY[0x28223BE20](result);
    *&v12[-16] = a2;
    v12[-8] = v8;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in ARObjectCapturingView.body.getter(_BYTE *a1, uint64_t a2)
{
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  if (*a1 == 1)
  {
    v39[0] = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
    result = State.wrappedValue.getter();
    if (aBlock[0] < 0.001)
    {
      v21 = *(a2 + 88);
      v22 = static Animation.linear(duration:)();
      v36 = v8;
      MEMORY[0x28223BE20](v22);
      *(&v31 - 2) = a2;
      v35 = v4;
      withAnimation<A>(_:_:)();

      type metadata accessor for OS_dispatch_queue();
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v23 = *(v13 + 8);
      v33 = v13 + 8;
      v34 = v23;
      v23(v17, v12);
      v24 = swift_allocObject();
      v25 = *(a2 + 80);
      v24[5] = *(a2 + 64);
      v24[6] = v25;
      v24[7] = *(a2 + 96);
      v26 = *(a2 + 16);
      v24[1] = *a2;
      v24[2] = v26;
      v27 = *(a2 + 48);
      v24[3] = *(a2 + 32);
      v24[4] = v27;
      *&aBlock[4] = partial apply for closure #2 in closure #4 in closure #1 in ARObjectCapturingView.body.getter;
      *&aBlock[5] = v24;
      *&aBlock[0] = MEMORY[0x277D85DD0];
      *&aBlock[1] = 1107296256;
      *&aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock[3] = &block_descriptor_2;
      v28 = _Block_copy(aBlock);
      outlined init with copy of ARObjectCapturingView(a2, v39);

      static DispatchQoS.unspecified.getter();
      *&v39[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v29 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v32;
      MEMORY[0x23EEAF910](v20, v11, v7, v28);
      _Block_release(v28);

      (*(v35 + 8))(v7, v29);
      (*(v38 + 8))(v11, v36);
      return v34(v20, v12);
    }
  }

  return result;
}

uint64_t closure #5 in closure #1 in ARObjectCapturingView.body.getter(char *a1)
{
  v2 = *a1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

_BYTE *closure #6 in closure #1 in ARObjectCapturingView.body.getter(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *(a2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ARObjectCapturingView@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v12[6] = v1[6];
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v7;
  *(v6 + 7) = v1[6];
  v8 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v8;
  v9 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v9;
  *a1 = partial apply for closure #1 in ARObjectCapturingView.body.getter;
  a1[1] = v6;
  return outlined init with copy of ARObjectCapturingView(v12, &v11);
}

double ReticleCenterView.theta.getter()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) > 0.01)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = vmul_f32(v7, v7);
    v3.i32[0] = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
    v4 = vrsqrte_f32(v3.u32[0]);
    v5 = vmul_f32(v4, vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)));
    v6 = vmul_n_f32(v7, vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5))).f32[0]);
    return atan2f(v6.f32[1], v6.f32[0]);
  }

  return result;
}

uint64_t ReticleCenterView.alpha.getter()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (sqrtf(vaddv_f32(vmul_f32(v3, v3))) >= *(v0 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 44) >= sqrtf(vaddv_f32(vmul_f32(v3, v3))))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  return result;
}

uint64_t ReticleCenterView.arrowFade.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 52);
  v3 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (sqrtf(vaddv_f32(vmul_f32(v5, v5))) >= (v2 - v1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2 >= sqrtf(vaddv_f32(vmul_f32(v5, v5))))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  return result;
}

uint64_t closure #1 in ReticleCenterView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v28 = static HorizontalAlignment.center.getter();
  v57 = 1;
  closure #1 in closure #1 in ReticleCenterView.body.getter(a1, &v50);
  v64 = *&v51[80];
  v65 = *&v51[96];
  v60 = *&v51[16];
  v61 = *&v51[32];
  v63 = *&v51[64];
  v62 = *&v51[48];
  v59 = *v51;
  v58 = v50;
  v67[6] = *&v51[80];
  v67[7] = *&v51[96];
  v67[2] = *&v51[16];
  v67[3] = *&v51[32];
  v67[4] = *&v51[48];
  v67[5] = *&v51[64];
  v66 = v51[112];
  v68 = v51[112];
  v67[0] = v50;
  v67[1] = *v51;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v58, &v35, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMR);
  outlined destroy of PerspectiveCameraComponent?(v67, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAGyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationQ0VGAEtGMR);
  *&v56[87] = v63;
  *&v56[103] = v64;
  *&v56[119] = v65;
  *&v56[23] = v59;
  *&v56[39] = v60;
  *&v56[55] = v61;
  *&v56[71] = v62;
  v56[135] = v66;
  *&v56[7] = v58;
  v26 = v57;
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = 0;
  if (v50 == 1)
  {
    ReticleCenterView.arrowFade.getter();
    v12 = v13;
  }

  OpacityTransition.init()();
  v14 = v4[2];
  v14(v8, v10, v3);
  lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
  v23 = AnyTransition.init<A>(_:)();
  v15 = v4[1];
  v15(v10, v3);
  v25 = static HorizontalAlignment.center.getter();
  LOBYTE(v50) = 1;
  closure #2 in closure #1 in ReticleCenterView.body.getter(a1, v33);
  *&v30[23] = v33[1];
  *&v30[39] = v33[2];
  *&v30[55] = v33[3];
  v30[71] = v34;
  *&v30[7] = v33[0];
  v24 = v50;
  OpacityTransition.init()();
  v14(v8, v10, v3);
  v16 = AnyTransition.init<A>(_:)();
  v15(v10, v3);
  v17 = v28;
  v35 = v28;
  v18 = v26;
  LOBYTE(v36[0]) = v26;
  *(&v36[2] + 1) = *&v56[32];
  *(&v36[1] + 1) = *&v56[16];
  *(&v36[5] + 1) = *&v56[80];
  *(&v36[6] + 1) = *&v56[96];
  *(&v36[7] + 1) = *&v56[112];
  *(&v36[8] + 1) = *&v56[128];
  *(&v36[3] + 1) = *&v56[48];
  *(&v36[4] + 1) = *&v56[64];
  *(v36 + 1) = *v56;
  *(&v36[8] + 9) = *v32;
  HIDWORD(v36[8]) = *&v32[3];
  *&v37 = v12;
  v19 = v23;
  *(&v37 + 1) = v23;
  v29[4] = v36[3];
  v29[5] = v36[4];
  v29[6] = v36[5];
  v29[7] = v36[6];
  v29[0] = v28;
  v29[1] = v36[0];
  v29[2] = v36[1];
  v29[3] = v36[2];
  v29[8] = v36[7];
  v29[9] = v36[8];
  v20 = v25;
  v38[0] = v25;
  v38[1] = 0;
  v21 = v24;
  LOBYTE(v39[0]) = v24;
  *(&v39[4] + 1) = *&v30[64];
  *(&v39[3] + 1) = *&v30[48];
  *(&v39[2] + 1) = *&v30[32];
  *(&v39[1] + 1) = *&v30[16];
  *(v39 + 1) = *v30;
  *(&v39[4] + 9) = *v31;
  HIDWORD(v39[4]) = *&v31[3];
  v29[10] = v37;
  v29[11] = v25;
  v29[14] = v39[2];
  v29[15] = v39[3];
  v29[16] = v39[4];
  v40 = v16;
  *&v29[17] = v16;
  v29[12] = v39[0];
  v29[13] = v39[1];
  memcpy(v27, v29, 0x118uLL);
  v44 = *&v30[16];
  v45 = *&v30[32];
  v46 = *&v30[48];
  v41[0] = v20;
  v41[1] = 0;
  v42 = v21;
  v47 = *&v30[64];
  v43 = *v30;
  *v48 = *v31;
  *&v48[3] = *&v31[3];
  v49 = v16;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v35, &v50, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v38, &v50, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMR);
  outlined destroy of PerspectiveCameraComponent?(v41, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACy012_RealityKit_aB0013RotatingArrowG033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA14_OpacityEffectVGAItGGAA21_TraitWritingModifierVyAA010TransitionW3KeyVGGMR);
  *&v51[81] = *&v56[80];
  *&v51[97] = *&v56[96];
  *&v51[113] = *&v56[112];
  *&v51[17] = *&v56[16];
  *&v51[33] = *&v56[32];
  *&v51[49] = *&v56[48];
  *&v51[65] = *&v56[64];
  v50 = v17;
  v51[0] = v18;
  v52 = *&v56[128];
  *&v51[1] = *v56;
  *v53 = *v32;
  *&v53[3] = *&v32[3];
  v54 = v12;
  v55 = v19;
  return outlined destroy of PerspectiveCameraComponent?(&v50, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGGMR);
}

uint64_t closure #1 in closure #1 in ReticleCenterView.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  ReticleCenterView.alpha.getter();
  v7 = v6;
  ReticleCenterView.arrowFade.getter();
  v8 = 0.0;
  if (v9 >= 1.0)
  {
    v10 = 0.75;
    if (v7 <= 0.75)
    {
      v10 = v7;
    }

    v11 = a1[2];
    if (a1[3] < v11)
    {
      v11 = a1[3];
    }

    v12 = a1[4] * v11;
    v8 = sin((v10 + v10) * 3.14159265) * v12;
  }

  v13 = ReticleCenterView.theta.getter();
  static UnitPoint.center.getter();
  *&v25[0] = KeyPath;
  *(&v25[0] + 1) = v4;
  v25[1] = v39;
  v14 = v39;
  v15 = v40;
  v25[2] = v40;
  v25[3] = v41;
  v26 = v8;
  v27 = 0;
  *&v28 = v13;
  *(&v28 + 1) = v16;
  v29 = v17;
  *&v23[39] = v40;
  *&v23[23] = v39;
  *&v23[7] = v25[0];
  *&v23[103] = v17;
  *&v23[87] = v28;
  *&v23[71] = *&v8;
  *&v23[55] = v41;
  v18 = *&v23[48];
  *(a2 + 41) = *&v23[32];
  v19 = *v23;
  *(a2 + 25) = *&v23[16];
  *(a2 + 9) = v19;
  *(a2 + 104) = *&v23[95];
  v20 = *&v23[64];
  *(a2 + 89) = *&v23[80];
  v24 = 1;
  v22[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 73) = v20;
  *(a2 + 57) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v30[0] = KeyPath;
  v30[1] = v4;
  v33 = v41;
  v32 = v15;
  v31 = v14;
  v34 = v8;
  v35 = 0;
  v36 = v13;
  v37 = v16;
  v38 = v17;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v25, v22, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMR);
  return outlined destroy of PerspectiveCameraComponent?(v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationN0VGMR);
}

uint64_t closure #2 in closure #1 in ReticleCenterView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = a1[2];
  v12 = a1[3];
  v13 = ReticleCenterView.theta.getter();
  ReticleCenterView.alpha.getter();
  v15 = v14;
  v16 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = type metadata accessor for DataModel.Error(0);
  (*(*(v17 - 8) + 56))(v8, 6, 8, v17);
  LOBYTE(v16) = specialized static DataModel.State.== infix(_:_:)(v10, v8);
  outlined destroy of DataModel.State(v8);
  result = outlined destroy of DataModel.State(v10);
  v19 = 0;
  if (v16)
  {
    result = ReticleCenterView.arrowFade.getter();
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v19;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

void *protocol witness for View.body.getter in conformance ReticleCenterView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v10[2] = *(v1 + 32);
  v11 = *(v1 + 48);
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in ReticleCenterView.body.getter(v10, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, &v8, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMR);
  outlined destroy of PerspectiveCameraComponent?(v13, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAEyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA13_OffsetEffectVGAA09_RotationR0VGAItGGAA08_OpacityR0VGAA06_TraitlM0VyAA010TransitionuK0VGG_AEyAGyACyAI_AEy012_RealityKit_aB0013RotatingArrowD033_EA5701D4B6F676E94D8ABFCFB3B0751BLLVA3_GAItGGA9_GtGMR);
  *a1 = v4;
  a1[1] = v6;
  return memcpy(a1 + 2, __dst, 0x118uLL);
}

uint64_t protocol witness for View.body.getter in conformance RotatingArrowView@<X0>(uint64_t a1@<X8>)
{
  static UnitPoint.center.getter();
  v4 = v3;
  v6 = v5;
  result = static UnitPoint.center.getter();
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  if (v11 <= 0.5)
  {
    v11 = 0.5;
  }

  *a1 = *v1;
  *(a1 + 16) = vextq_s8(v10, v10, 8uLL);
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v11;
  *(a1 + 56) = v11;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10.i64[1];
  return result;
}

uint64_t ArrowView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  v11 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v10, v6);
  v19 = v11;
  LOWORD(v20) = 257;
  static Font.Weight.bold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v12 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMR) + 36));
  v16 = v20;
  *v15 = v19;
  v15[1] = v16;
  v15[2] = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMR);
  v18 = a1 + *(result + 36);
  *v18 = a2 * 0.5 * (1.0 - a3 + 1.0 - a3 + -1.0);
  *(v18 + 8) = 0;
  return result;
}

double specialized ARObjectCapturingView.init(model:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
  v2 = ObservedObject.init(wrappedValue:)();
  v4 = v3;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  result = 0.2;
  *(a1 + 88) = xmmword_23B91D0F0;
  *(a1 + 104) = 0x3FF8000000000000;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ARObjectCapturingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for ARObjectCapturingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #5 in closure #1 in ARObjectCapturingView.body.getter()
{
  v3 = *(*(v0 + 16) + 64);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t partial apply for closure #1 in closure #4 in closure #1 in ARObjectCapturingView.body.getter()
{
  v2 = *(*(v0 + 16) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  return State.wrappedValue.setter();
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t partial apply for closure #2 in closure #4 in closure #1 in ARObjectCapturingView.body.getter()
{
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  return State.wrappedValue.setter();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of DataModel.State(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in ARObjectCapturingView.body.getter()
{
  v3 = *(*(v0 + 16) + 16);
  v2 = (*(v0 + 24) & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t outlined init with copy of DataModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in closure #2 in closure #1 in ARObjectCapturingView.body.getter()
{
  v2 = *(*(v0 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in ARObjectCapturingView.body.getter()
{
  v2 = *(*(v0 + 16) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  return State.wrappedValue.setter();
}

double _s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyACyAD018CoveragePointCloudhI0VAA16_OverlayModifierVyAA017StrokeBorderShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGSgGGGAA013_TraitWritingN0VyAA010TransitionU3KeyVGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t lazy protocol witness table accessor for type DataModel and conformance DataModel(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ReticleCenterView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ReticleCenterView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGAA08_OpacityR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGAA08_OpacityR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGAA06_ScaleR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArrowView, _RotationEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB09ArrowView33_EA5701D4B6F676E94D8ABFCFB3B0751BLLVAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type ArrowView and conformance ArrowView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArrowView, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArrowView and conformance ArrowView()
{
  result = lazy protocol witness table cache variable for type ArrowView and conformance ArrowView;
  if (!lazy protocol witness table cache variable for type ArrowView and conformance ArrowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrowView and conformance ArrowView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA18_AspectRatioLayoutVG_Qo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

Swift::Int TubeGenerator.Error.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TubeGenerator<A>.Error()
{
  Hasher.init(_seed:)();
  TubeGenerator.Error.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t TubeGenerator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata instantiation function for TubeGenerator.CurvePoint()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for HapticManager();
  swift_allocObject();
  result = HapticManager.init()();
  static HapticManager.instance = result;
  return result;
}

void HapticManager.enabled.didset(char a1)
{
  if (*(v1 + 16) != (a1 & 1))
  {
    if (*(v1 + 16))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_23B824000, v3, v4, "HapticManager was switched to enabled=true.  Turning on haptics...", v5, 2u);
        MEMORY[0x23EEB0B70](v5, -1, -1);
      }

      HapticManager.start()();
    }

    else
    {
      v6 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23B824000, v8, v9, "HapticManager was switched to enabled=false.  Turning off haptics...", v10, 2u);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      if (*(v6 + 17) == 1)
      {

        HapticManager.stopHapticEngine()();
      }
    }
  }
}

uint64_t HapticManager.init()()
{
  v1 = v0;
  *(v0 + 16) = 1;
  *(v0 + 18) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  *(v0 + 17) = v2;
  if (v2)
  {
    v3 = specialized HapticManager.createShotHapticPattern()();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;

    HapticManager.createAndStartHapticEngine()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Haptics not supported!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    return 0;
  }

  return v1;
}

Swift::Void __swiftcall HapticManager.start()()
{
  if (*(v0 + 17) == 1)
  {
    HapticManager.startHapticEngineIfNecessary()();
  }
}

Swift::Void __swiftcall HapticManager.playShotHaptic()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 17) != 1)
  {
    goto LABEL_26;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Playing shot haptic...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 32))
    {
      HapticManager.start()();
      v6 = *(v1 + 24);
      if (v6)
      {
        v7 = *(v1 + 32);
        if (v7)
        {
          v26[0] = 0;
          v8 = [v6 createPlayerWithPattern:v7 error:v26];
          v9 = v26[0];
          if (v8)
          {
            v10 = v8;
            v26[0] = 0;
            v11 = v9;
            if ([v10 startAtTime:v26 error:0.0])
            {
              v12 = v26[0];
              v13 = Logger.logObject.getter();
              v14 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                *v15 = 0;
                _os_log_impl(&dword_23B824000, v13, v14, "... done playing shot haptic.", v15, 2u);
                MEMORY[0x23EEB0B70](v15, -1, -1);
              }

              swift_unknownObjectRelease();
LABEL_25:

LABEL_26:
              v24 = *MEMORY[0x277D85DE8];
              return;
            }

            v21 = v26[0];
            v20 = _convertNSErrorToError(_:)();

            swift_willThrow();
            swift_unknownObjectRelease();
          }

          else
          {
            v19 = v26[0];
            v20 = _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v13 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v13, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&dword_23B824000, v13, v22, "Failed to play the shot haptic pattern!", v23, 2u);
            MEMORY[0x23EEB0B70](v23, -1, -1);
          }

          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B824000, oslog, v16, "... not play haptic.  Haptics was disabled.", v17, 2u);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void HapticManager.createAndStartHapticEngine()()
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(v0 + 17) != 1)
  {
LABEL_16:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  aBlock = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBF6B0]) initWithAudioSession:v1 error:&aBlock];
  v3 = aBlock;
  if (v2)
  {

    v4 = *(v0 + 24);
    *(v0 + 24) = v2;
    v1 = v2;

    v33 = partial apply for closure #1 in HapticManager.createAndStartHapticEngine();
    v34 = v0;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ();
    v32 = &block_descriptor_22;
    v5 = _Block_copy(&aBlock);

    [v1 setStoppedHandler_];
    _Block_release(v5);

    v6 = *(v0 + 24);
    if (v6)
    {
      v33 = partial apply for closure #2 in HapticManager.createAndStartHapticEngine();
      v34 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed () -> ();
      v32 = &block_descriptor_25;
      v1 = _Block_copy(&aBlock);

      v7 = v6;

      [v7 setResetHandler_];
      _Block_release(v1);

      v3 = *(v0 + 24);
      if (v3)
      {
        aBlock = 0;
        v8 = [v3 startAndReturnError_];
        v9 = aBlock;
        if (v8)
        {
          *(v0 + 18) = 0;
          v10 = one-time initialization token for logger;
          v11 = v9;
          if (v10 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          __swift_project_value_buffer(v12, logger);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&dword_23B824000, v13, v14, "Successfully started the haptic engine!", v15, 2u);
            MEMORY[0x23EEB0B70](v15, -1, -1);
          }
        }

        else
        {
          v16 = aBlock;
          v17 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          __swift_project_value_buffer(v18, logger);
          v19 = v17;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 138412290;
            v24 = v17;
            v25 = _swift_stdlib_bridgeErrorToNSError();
            *(v22 + 4) = v25;
            *v23 = v25;
            _os_log_impl(&dword_23B824000, v20, v21, "The engine failed to start with error: %@", v22, 0xCu);
            outlined destroy of PerspectiveCameraComponent?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x23EEB0B70](v23, -1, -1);
            MEMORY[0x23EEB0B70](v22, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v27 = v3;
  v28 = _convertNSErrorToError(_:)();

  swift_willThrow();
  aBlock = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  MEMORY[0x23EEAF590](0xD00000000000001ELL, 0x800000023B925AF0);
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in HapticManager.createAndStartHapticEngine()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_23B824000, v5, v6, "Stop Handler: The engine stopped for reason: %ld", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        if (v10)
        {
          v11 = "Idle timeout.";
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        v11 = "Finished.";
LABEL_29:
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_23B824000, v8, v9, v11, v12, 2u);
        MEMORY[0x23EEB0B70](v12, -1, -1);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (a1 == 5)
    {
      if (v10)
      {
        v11 = "Engine destroyed.";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (a1 == 6)
    {
      if (v10)
      {
        v11 = "Controller disconnected.";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

LABEL_21:
    if (v10)
    {
      v11 = "Unknown error";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 == -1)
  {
    if (v10)
    {
      v11 = "System error.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 == 1)
  {
    if (v10)
    {
      v11 = "Audio session interrupt.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a1 != 2)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    v11 = "Application suspended.";
    goto LABEL_29;
  }

LABEL_30:

  *(a2 + 18) = 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void closure #2 in HapticManager.createAndStartHapticEngine()(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "The engine reset --> Restarting now!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  *(a1 + 18) = 1;
}

void HapticManager.startHapticEngineIfNecessary()()
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 18) != 1)
  {
LABEL_12:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Starting the haptic engine...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    v14[0] = 0;
    v6 = [v5 startAndReturnError_];
    v7 = v14[0];
    if (v6)
    {
      *(v0 + 18) = 0;
      v8 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23B824000, v9, v10, "... successfully started the haptic engine!", v11, 2u);
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }
    }

    else
    {
      v12 = v14[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_12;
  }

  __break(1u);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void HapticManager.stopHapticEngine()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Stopping the haptic engine...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    v9[4] = partial apply for closure #1 in HapticManager.stopHapticEngine();
    v9[5] = v1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v9[3] = &block_descriptor_3;
    v7 = _Block_copy(v9);
    v8 = v6;

    [v8 stopWithCompletionHandler_];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in HapticManager.stopHapticEngine()(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_23B824000, oslog, v6, "Haptic Engine Shutdown Error: %@", v7, 0xCu);
      outlined destroy of PerspectiveCameraComponent?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x23EEB0B70](v8, -1, -1);
      MEMORY[0x23EEB0B70](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a1;
    }
  }

  else
  {
    *(a2 + 18) = 1;
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMd, &_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo18CHHapticPatternKeyaSDyABypGGGMd, &_sSaySDySo18CHHapticPatternKeyaSDyABypGGGMR);
    swift_dynamicCast();
    outlined init with take of Any((v26 + 8), v24);
    outlined init with take of Any(v24, v26);
    v14 = *(v1 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = outlined init with take of Any(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t HapticManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id @nonobjc CHHapticPattern.init(dictionary:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type CHHapticPatternKey and conformance CHHapticPatternKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7[0] = 0;
  v2 = [v0 initWithDictionary:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id specialized HapticManager.createShotHapticPattern()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SaySDyADSDyADypGGGtGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SaySDyADSDyADypGGGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6F0;
  v29 = *MEMORY[0x277CBF688];
  *(inited + 32) = *MEMORY[0x277CBF688];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo18CHHapticPatternKeyaSDyADypGGGMd, &_ss23_ContiguousArrayStorageCySDySo18CHHapticPatternKeyaSDyADypGGGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23B91A6F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_SDyADypGtGMR);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_23B91A6F0;
  v2 = *MEMORY[0x277CBF658];
  *(v1 + 32) = *MEMORY[0x277CBF658];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18CHHapticPatternKeya_yptGMR);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_23B91A6D0;
  v4 = *MEMORY[0x277CBF670];
  *(v3 + 32) = *MEMORY[0x277CBF670];
  v5 = *MEMORY[0x277CBF650];
  type metadata accessor for CHHapticEventType(0);
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x277CBF690];
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;
  v8 = MEMORY[0x277D839F8];
  *(v3 + 80) = 0;
  v9 = *MEMORY[0x277CBF660];
  *(v3 + 104) = v8;
  *(v3 + 112) = v9;
  *(v3 + 144) = v8;
  *(v3 + 120) = 0x3FE0000000000000;
  v10 = v29;
  v11 = v2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v9;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_ypTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHHapticPatternKeya_yptMd, &_sSo18CHHapticPatternKeya_yptMR);
  swift_arrayDestroy();
  *(v1 + 40) = v16;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SDyADypGTt0g5Tf4g_n(v1);
  swift_setDeallocating();
  outlined destroy of PerspectiveCameraComponent?(v1 + 32, &_sSo18CHHapticPatternKeya_SDyABypGtMd, &_sSo18CHHapticPatternKeya_SDyABypGtMR);
  *(v30 + 32) = v17;
  *(inited + 40) = v30;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SaySDyADSDyADypGGGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of PerspectiveCameraComponent?(inited + 32, &_sSo18CHHapticPatternKeya_SaySDyABSDyABypGGGtMd, &_sSo18CHHapticPatternKeya_SaySDyABSDyABypGGGtMR);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

  v19 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
  v20 = @nonobjc CHHapticPattern.init(dictionary:)();
  v25 = v20;
  if (v20)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v22 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v27))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23B824000, v22, v27, "Created the shot haptic pattern!", v24, 2u);
      goto LABEL_12;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23B824000, v22, v23, "Can't create the shot haptic pattern!", v24, 2u);
      v25 = 0;
LABEL_12:
      MEMORY[0x23EEB0B70](v24, -1, -1);
      goto LABEL_13;
    }

    v25 = 0;
  }

LABEL_13:

  return v25;
}

unint64_t lazy protocol witness table accessor for type CHHapticPatternKey and conformance CHHapticPatternKey()
{
  result = lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey;
  if (!lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey)
  {
    type metadata accessor for CHHapticPatternKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static RangefinderManager.raycastOntoScene(clipSpacePoint:scene:maxDistance:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for CollisionGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v10 = *(Type - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](Type);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of Scene.internalActiveCamera.getter())
  {
    specialized static Ray3D.worldRay(through:using:)(v26, a2);
    if ((v27 & 1) == 0)
    {
      v25[0] = v26[0];
      v25[1] = v26[1];
      (*(v10 + 104))(v13, *MEMORY[0x277CDAE48], Type);
      static CollisionGroup.all.getter();
      v21 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v13, Type);
      if (*(v21 + 16))
      {
        v22 = type metadata accessor for CollisionCastHit();
        v23 = *(v22 - 8);
        (*(v23 + 16))(a1, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

        return (*(v23 + 56))(a1, 0, 1, v22);
      }

      else
      {

        v24 = type metadata accessor for CollisionCastHit();
        return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      }
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B824000, v15, v16, "Can't get a camera to raycast!", v17, 2u);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }

  v18 = type metadata accessor for CollisionCastHit();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, 1, 1, v18);
}

uint64_t RangefinderManager.init(from:using:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  *(v3 + 44) = 0;
  *(v3 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 80) = 0;
  *(v3 + 16) = *a1;
  *(v3 + 28) = *(a1 + 12);
  swift_unknownObjectWeakAssign();
  v6 = type metadata accessor for RaycastMeshTrackingEntity();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = RaycastMeshTrackingEntity.init(descriptor:using:manager:)(a1, a2, v3);
  v10 = *(v3 + 80);
  *(v3 + 80) = v9;

  return v3;
}

Swift::Void __swiftcall RangefinderManager.detach()()
{
  if (*(v0 + 44) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Rangefinder is not attached... cannot detach!";
    goto LABEL_17;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Detaching Rangefinder entity...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  *(v1 + 44) = 0;
  if (!*(v1 + 80))
  {
    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for RaycastMeshTrackingEntity();

  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  v6 = *(v1 + 80);
  if (!v6)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v7 = *(v6 + direct field offset for RaycastMeshTrackingEntity.scaleFilter);
  *(v6 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;

  v8 = *(v6 + direct field offset for RaycastMeshTrackingEntity.rotationFilter);
  *(v6 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;

  v9 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v9 && swift_unknownObjectWeakLoadStrong())
  {
    specialized RangefinderObserver.zoneDidChange(_:)();
    swift_unknownObjectRelease();
  }

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v10))
  {
    goto LABEL_18;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "... detached Rangefinder entity.";
LABEL_17:
  _os_log_impl(&dword_23B824000, oslog, v10, v12, v11, 2u);
  MEMORY[0x23EEB0B70](v11, -1, -1);
LABEL_18:
}

uint64_t RangefinderManager.__deallocating_deinit()
{
  outlined destroy of weak RangefinderDelegate?(v0 + 48);
  MEMORY[0x23EEB0C40](v0 + 72);
  v1 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RaycastMeshTrackingEntity()
{
  result = type metadata singleton initialization cache for RaycastMeshTrackingEntity;
  if (!type metadata singleton initialization cache for RaycastMeshTrackingEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t one-time initialization function for query()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for EntityQuery();
  __swift_allocate_value_buffer(v2, static RaycastMeshTrackingComponent.query);
  __swift_project_value_buffer(v2, static RaycastMeshTrackingComponent.query);
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent();
  static QueryPredicate.has<A>(_:)();
  return EntityQuery.init(where:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for EntityQuery();
  __swift_allocate_value_buffer(v2, static ImplicitAnimationSystem.query);
  __swift_project_value_buffer(v2, static ImplicitAnimationSystem.query);
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent();
  static QueryPredicate.has<A>(_:)();
  return EntityQuery.init(where:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Float __swiftcall RaycastMeshTrackingComponent.computeAlpha(distance:)(Swift::Float distance)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = 0.0;
  if (v3 > distance || v2 < distance)
  {
    return v4;
  }

  v6 = v1[6];
  if (v3 > (v3 + v6))
  {
    __break(1u);
  }

  else
  {
    if ((v3 + v6) > distance)
    {
      v7 = distance - v3;
      return v7 / v6;
    }

    if ((v2 - v6) <= v2)
    {
      v4 = 1.0;
      if (v2 <= distance || (v2 - v6) > distance)
      {
        return v4;
      }

      v7 = v2 - distance;
      return v7 / v6;
    }
  }

  __break(1u);
  return distance;
}

uint64_t RaycastMeshTrackingComponent.ReticleDescriptor.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v6;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>);
  v14 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v16 = *(v6 + 2);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v6 + 3);
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v6[2];
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
    lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v6 + 6);
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x696361704F78616DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x697469736E617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaycastMeshTrackingComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaycastMeshTrackingComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance RaycastMeshTrackingComponent.ReticleDescriptor@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  if (!v2)
  {
    *a2 = v5[0];
    result = *(v5 + 12);
    *(a2 + 12) = *(v5 + 12);
  }

  return result;
}

uint64_t RaycastMeshTrackingEntity.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return RaycastMeshTrackingEntity.init()();
}

uint64_t RaycastMeshTrackingEntity.init()()
{
  *(v0 + direct field offset for RaycastMeshTrackingEntity.manager) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for RaycastMeshTrackingEntity.lastGoodScale) = 1065353216;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.fadeFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.ringEntity) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = 0;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.useScaleFilter) = 1;
  *(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  return Entity.init()();
}

uint64_t RaycastMeshTrackingEntity.init(descriptor:using:manager:)(_OWORD *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v50 - v9;
  v10 = type metadata accessor for UnlitMaterial();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Entity.ComponentSet();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + direct field offset for RaycastMeshTrackingEntity.manager) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + direct field offset for RaycastMeshTrackingEntity.lastGoodScale) = 1065353216;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.rotationFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.scaleFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.fadeFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.ringEntity) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = 0;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.useScaleFilter) = 1;
  *(v3 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;
  v17 = Entity.init()();
  swift_unknownObjectWeakAssign();
  v18 = *(v17 + direct field offset for RaycastMeshTrackingEntity.manager);
  *(v17 + direct field offset for RaycastMeshTrackingEntity.manager) = a3;

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v56 = __swift_project_value_buffer(v19, logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v55 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v59 = v51;
    *v23 = 136315138;
    *v60 = *a1;
    *&v60[12] = *(a1 + 12);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v59);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_23B824000, v20, v21, "Creating a rangefinder reticle entity: %s", v23, 0xCu);
    v27 = v51;
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x23EEB0B70](v27, -1, -1);
    MEMORY[0x23EEB0B70](v23, -1, -1);
  }

  v28 = v58;
  if (static RaycastMeshTrackingEntity.isFirstInstance == 1)
  {
    type metadata accessor for RaycastMeshTrackingSystem();
    lazy protocol witness table accessor for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem();
    static System.registerSystem()();
    static RaycastMeshTrackingEntity.isFirstInstance = 0;
  }

  v29 = v52;
  dispatch thunk of Entity.components.getter();

  v30 = *(v55 + 6);
  *v60 = *v55;
  *&v60[8] = *(v55 + 8);
  *&v60[24] = v30;
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent();
  Entity.ComponentSet.set<A>(_:)();
  (*(v53 + 8))(v29, v54);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  UnlitMaterial.init(color:)();
  v31 = type metadata accessor for TaskPriority();
  v32 = v57;
  (*(*(v31 - 8) + 56))(v57, 1, 1, v31);
  type metadata accessor for MainActor();

  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v17;
  v36 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity(), v34);
  v37 = *(v17 + direct field offset for RaycastMeshTrackingEntity.loadTask);
  *(v17 + direct field offset for RaycastMeshTrackingEntity.loadTask) = v36;

  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23B91A6F0;
  v39 = MEMORY[0x277CDAC30];
  *(v38 + 56) = v10;
  *(v38 + 64) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
  (*(v11 + 16))(boxed_opaque_existential_1, v28, v10);
  v41 = type metadata accessor for ModelEntity();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = ModelEntity.init(mesh:materials:)();
  v45 = *(v17 + direct field offset for RaycastMeshTrackingEntity.sphereEntity);
  *(v17 + direct field offset for RaycastMeshTrackingEntity.sphereEntity) = v44;

  type metadata accessor for RaycastMeshTrackingEntity();
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_23B824000, v46, v47, "... done loading reticle geometry!", v48, 2u);
    MEMORY[0x23EEB0B70](v48, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v28, v10);
  return v17;
}

uint64_t RaycastMeshTrackingEntity.targetScale(_:dt:)(__n128 a1, double a2)
{
  v4 = direct field offset for RaycastMeshTrackingEntity.scaleFilter;
  v5 = *(v2 + direct field offset for RaycastMeshTrackingEntity.scaleFilter);
  v13 = a1;
  if (v5)
  {
    v14 = *(v5 + 48);
  }

  else
  {
    type metadata accessor for Vec3Filter();
    v6 = swift_allocObject();
    a1 = v13;
    v5 = v6;
    *(v6 + 16) = 0x4000000000000000;
    *(v6 + 32) = v13;
    *(v6 + 48) = v13;
    *(v2 + v4) = v6;
    v14 = v13;
  }

  *(v5 + 32) = a1;
  v7 = a2 + a2;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = v8;
  *(inited + 36) = v8;
  *(inited + 40) = v8;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v12 = v10;
  swift_setDeallocating();
  *(v5 + 48) = vmlaq_f32(v14, vsubq_f32(v13, v14), v12);
  type metadata accessor for RaycastMeshTrackingEntity();
  return HasTransform.setScale(_:relativeTo:)();
}

Swift::Void __swiftcall RaycastMeshTrackingEntity.targetFade(_:dt:)(Swift::Float _, Swift::Double dt)
{
  v5 = type metadata accessor for __EntityRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = direct field offset for RaycastMeshTrackingEntity.fadeFilter;
  v11 = *(v2 + direct field offset for RaycastMeshTrackingEntity.fadeFilter);
  if (v11)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 28);
  }

  else
  {
    type metadata accessor for FloatFilter();
    v11 = swift_allocObject();
    *(v11 + 16) = 0x400C000000000000;
    *(v11 + 24) = _;
    *(v11 + 28) = _;
    *(v2 + v10) = v11;
    v12 = 3.5;
    v13 = _;
  }

  v14 = v12 * dt;
  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = v14;
  }

  v16 = v14 > 0.0;
  v17 = 0.0;
  if (v16)
  {
    v17 = v15;
  }

  *(v11 + 24) = _;
  *(v11 + 28) = v13 + ((_ - v13) * v17);
  dispatch thunk of Entity.__coreEntity.getter();
  MEMORY[0x23EEAC640](&v20, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
  (*(v6 + 8))(v9, v5);
  REHierarchicalFadeComponentGetComponentType();
  v18 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  MEMORY[0x23EEB00C0](v18);
}

uint64_t RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(__n128 a1, simd_float4 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, double a6)
{
  v27.columns[0] = a2;
  v27.columns[1] = a3;
  v27.columns[2] = a4;
  v27.columns[3] = a5;
  v24 = __invert_f4(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6E0;
  *(inited + 32) = a1.n128_u64[0];
  *(inited + 40) = a1.n128_u32[2];
  *(inited + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v23 = v9;
  swift_setDeallocating();
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], v23.f32[0]), v24.columns[1], *v23.f32, 1), v24.columns[2], v23, 2), v24.columns[3], v23, 3);
  v10 = direct field offset for RaycastMeshTrackingEntity.cameraZFilter;
  v11 = *(v6 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter);
  if (!v11)
  {
    type metadata accessor for FloatFilter();
    v11 = swift_allocObject();
    *(v11 + 16) = 0x4014000000000000;
    *(v11 + 24) = v25.i32[2];
    *(v11 + 28) = v25.i32[2];
    *(v6 + v10) = v11;
  }

  *(v11 + 24) = v25.i32[2];
  v12 = v11;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_23B91A6D0;
  *(v13 + 32) = v25.i64[0];
  v14 = *(v12 + 16) * a6;
  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = *(v12 + 16) * a6;
  }

  v16 = v14 > 0.0;
  v17 = 0.0;
  if (v16)
  {
    v17 = v15;
  }

  v18 = *(v12 + 28) + ((v25.f32[2] - *(v12 + 28)) * v17);
  *(v12 + 28) = v18;
  *(v13 + 40) = v18;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v13);
  v26 = v19;
  swift_setDeallocating();
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23B91A6E0;
  *(v20 + 32) = v26;
  *(v20 + 40) = DWORD2(v26);
  *(v20 + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v20);
  swift_setDeallocating();
  type metadata accessor for RaycastMeshTrackingEntity();

  HasTransform.setPosition(_:relativeTo:)();
}

uint64_t RaycastMeshTrackingEntity.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for RaycastMeshTrackingEntity.manager);

  MEMORY[0x23EEB0C40](v0 + direct field offset for RaycastMeshTrackingEntity.arView);
  v2 = *(v0 + direct field offset for RaycastMeshTrackingEntity.rotationFilter);

  v3 = *(v0 + direct field offset for RaycastMeshTrackingEntity.scaleFilter);

  v4 = *(v0 + direct field offset for RaycastMeshTrackingEntity.fadeFilter);

  v5 = *(v0 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter);

  v6 = *(v0 + direct field offset for RaycastMeshTrackingEntity.ringEntity);

  v7 = *(v0 + direct field offset for RaycastMeshTrackingEntity.sphereEntity);

  v8 = *(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask);
}

uint64_t RaycastMeshTrackingEntity.deinit()
{
  v1 = direct field offset for RaycastMeshTrackingEntity.loadTask;
  if (*(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask))
  {
    v2 = *(v0 + direct field offset for RaycastMeshTrackingEntity.loadTask);

    MEMORY[0x23EEAF7A0](v3, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

    v4 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  v5 = Entity.deinit();
  v6 = *(v5 + direct field offset for RaycastMeshTrackingEntity.manager);

  MEMORY[0x23EEB0C40](v5 + direct field offset for RaycastMeshTrackingEntity.arView);
  v7 = *(v5 + direct field offset for RaycastMeshTrackingEntity.rotationFilter);

  v8 = *(v5 + direct field offset for RaycastMeshTrackingEntity.scaleFilter);

  v9 = *(v5 + direct field offset for RaycastMeshTrackingEntity.fadeFilter);

  v10 = *(v5 + direct field offset for RaycastMeshTrackingEntity.cameraZFilter);

  v11 = *(v5 + direct field offset for RaycastMeshTrackingEntity.ringEntity);

  v12 = *(v5 + direct field offset for RaycastMeshTrackingEntity.sphereEntity);

  v13 = *(v5 + direct field offset for RaycastMeshTrackingEntity.loadTask);

  return v5;
}

uint64_t RaycastMeshTrackingEntity.__deallocating_deinit()
{
  RaycastMeshTrackingEntity.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for UnlitMaterial();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v9;
  v4[12] = v8;

  return MEMORY[0x2822009F8](closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity(), v9, v8);
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Async loading the reticle model...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  v0[14] = type metadata accessor for ModelEntity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v5 = static BoundingBoxHelpers.bundle;
  v6 = *(MEMORY[0x277CDB138] + 4);
  v7 = static BoundingBoxHelpers.bundle;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();

  return MEMORY[0x282129BD0](0xD000000000000012, 0x800000023B925C70, v5);
}

{
  v1 = v0[13];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Failed to load the reticle model!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[6];
  v8 = *(v7 + direct field offset for RaycastMeshTrackingEntity.loadTask);
  *(v7 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  UnlitMaterial.init(color:)();
  v5 = HasModel.model.modify();
  v7 = v6;
  v8 = type metadata accessor for ModelComponent();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_23B91A6F0;
    v13 = MEMORY[0x277CDAC30];
    *(v12 + 56) = v11;
    *(v12 + 64) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
    (*(v10 + 16))(boxed_opaque_existential_1, v9, v11);
    ModelComponent.materials.setter();
  }

  v5(v0 + 2, 0);
  v15 = v0[16];
  v16 = v0[14];
  v17 = v0[6];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity());
  HasTransform.scale.setter();
  v18 = direct field offset for RaycastMeshTrackingEntity.ringEntity;
  v19 = v0[16];
  if (*(v17 + direct field offset for RaycastMeshTrackingEntity.ringEntity))
  {
    v20 = v0[14];
    v21 = v0[16];

    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

    v22 = *(v17 + v18);
    v23 = v0[16];
  }

  else
  {
    v24 = v0[16];
  }

  v25 = v0[13];
  v26 = v0[6];
  *(v17 + v18) = v15;
  swift_retain_n();

  type metadata accessor for RaycastMeshTrackingEntity();
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[16];
  v32 = v0[8];
  v31 = v0[9];
  v33 = v0[7];
  if (v29)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_23B824000, v27, v28, "... Done async loading the reticle model.", v34, 2u);
    MEMORY[0x23EEB0B70](v34, -1, -1);
  }

  else
  {
    v35 = v0[16];
  }

  (*(v32 + 8))(v31, v33);
  v36 = v0[9];
  v37 = v0[6];
  v38 = *(v37 + direct field offset for RaycastMeshTrackingEntity.loadTask);
  *(v37 + direct field offset for RaycastMeshTrackingEntity.loadTask) = 0;

  v39 = v0[1];

  return v39();
}

uint64_t closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {

    v6 = *(v3 + 88);
    v7 = *(v3 + 96);
    v8 = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();
  }

  else
  {
    v6 = *(v3 + 88);
    v7 = *(v3 + 96);
    v8 = closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity();
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

double one-time initialization function for minimumReticleSizeMeters()
{
  result = 7.70312334e-27;
  minimumReticleSizeMeters = xmmword_23B91D830;
  return result;
}

uint64_t RaycastMeshTrackingSystem.init(scene:)()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initing RaycastMeshTrackingSystem...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  return v1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent()
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RangefinderManager.Zone and conformance RangefinderManager.Zone()
{
  result = lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone;
  if (!lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangefinderManager.Zone and conformance RangefinderManager.Zone);
  }

  return result;
}

uint64_t protocol witness for System.init(scene:) in conformance RaycastMeshTrackingSystem@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RaycastMeshTrackingSystem();
  v2 = swift_allocObject();
  result = RaycastMeshTrackingSystem.init(scene:)();
  *a1 = v2;
  return result;
}

void specialized RangefinderManager.attach(attacher:)(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_14;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Rangefinder is already attached... not attaching again!";
    goto LABEL_13;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Attaching Rangefinder entity...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  if (!*(a1 + 80))
  {
    __break(1u);
    return;
  }

  v10 = *(a1 + 80);

  DataModel.addToScene(entity:)();

  *(a1 + 44) = 1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "... attached Rangefinder entity.";
LABEL_13:
    _os_log_impl(&dword_23B824000, oslog, v2, v4, v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

LABEL_14:
}

void specialized static RangefinderManager.worldRayThrough(clipSpacePoint:scene:)(float32x4_t *a1@<X8>, double a2@<D0>)
{
  if (dispatch thunk of Scene.internalActiveCamera.getter() && (specialized static Ray3D.worldRay(through:using:)(v13, a2), v11 = v13[1], v12 = v13[0], v4 = v14, , (v14 & 1) == 0))
  {
    v10 = v11;
    v9 = v12;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Can't get a camera to raycast!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v9 = 0uLL;
    v4 = 1;
    v10 = 0uLL;
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2].i8[0] = v4;
}

uint64_t specialized RaycastMeshTrackingComponent.ReticleDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2P22C8457E7BFC2D745D2CAA14LLOGMd, &_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2P22C8457E7BFC2D745D2CAA14LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingComponent.ReticleDescriptor.init(from:));
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  HIBYTE(v20) = 0;
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v21;
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v21) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
  HIBYTE(v20) = 3;
  lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v21;
  LOBYTE(v21) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 12) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  return result;
}

uint64_t specialized RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023B925C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696361704F78616DLL && a2 == 0xEA00000000007974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B925CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEF68746469576E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized RaycastMeshTrackingComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV10CodingKeys09_91E6A1C2N22C8457E7BFC2D745D2CAA14LLOGMd, &_ss22KeyedDecodingContainerVy19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV10CodingKeys09_91E6A1C2N22C8457E7BFC2D745D2CAA14LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  HIBYTE(v20) = 0;
  lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v21;
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v21) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySfGMd, &_sSnySfGMR);
  HIBYTE(v20) = 3;
  lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Float> and conformance <> Range<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v21;
  LOBYTE(v21) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 12) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  return result;
}

uint64_t specialized RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:)(uint64_t a1, uint64_t a2)
{
  SceneUpdateContext.scene.getter();
  v4 = dispatch thunk of Scene.defaultCamera.getter();

  if (!v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  v29 = v7;
  *dt = v6;
  v27 = v9;
  v28 = v8;

  CollisionCastHit.position.getter();
  v26 = v10;
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(v26, *dt, v29, v28, v27, v11);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:));
  *dta = v12;
  CollisionCastHit.normal.getter();
  dta[0] = simd_quaternion(*dta, v13);
  updated = SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetOrientation(_:dt:)(updated, dta[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  v16 = *(a2 + 8);
  *(inited + 32) = v16;
  *(inited + 36) = v16;
  *(inited + 40) = v16;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  dtb = v17;
  swift_setDeallocating();
  CollisionCastHit.distance.getter();
  v19 = (RaycastMeshTrackingComponent.computeAlpha(distance:)(v18) * *(a2 + 12)) + 0.0;
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetScale(_:dt:)(dtb, v20);
  SceneUpdateContext.deltaTime.getter();
  RaycastMeshTrackingEntity.targetFade(_:dt:)(v19, v21);
  result = CollisionCastHit.distance.getter();
  if (v22 >= *(a2 + 16))
  {
    if (*(a2 + 20) >= v22)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }
  }

  else
  {
    v23 = 1;
  }

  v24 = *(a1 + direct field offset for RaycastMeshTrackingEntity.manager);
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = *(v24 + 64);
  *(v24 + 64) = v23;
  if (v25 != v23)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      specialized RangefinderObserver.zoneDidChange(_:)();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized RaycastMeshTrackingSystem.update(context:)(uint64_t a1)
{
  v83 = type metadata accessor for CollisionGroup();
  v92 = *(v83 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v4 = *(Type - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](Type);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v67 - v9;
  v90 = type metadata accessor for CollisionCastHit();
  v93 = *(v90 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Entity.ComponentSet();
  v12 = *(v95 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMd, &_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMR);
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  updated = type metadata accessor for SystemUpdateCondition();
  v20 = *(updated - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](updated);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMd, &_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMR);
  v96 = *(v98 - 8);
  v24 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v26 = &v67 - v25;
  if (one-time initialization token for query != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for EntityQuery();
  __swift_project_value_buffer(v27, static RaycastMeshTrackingComponent.query);
  static SystemUpdateCondition.rendering.getter();
  SceneUpdateContext.entities(matching:updatingSystemWhen:)();
  (*(v20 + 8))(v23, updated);
  SceneUpdateContext.scene.getter();
  v28 = dispatch thunk of Scene.defaultCamera.getter();

  if (v28)
  {
    v30 = a1;
    v89 = type metadata accessor for Entity();
    HasTransform.transformMatrix(relativeTo:)();
    v87 = v31;
    v86 = v32;
    v85 = v33;
    v84 = v34;

    v35 = v98;
    QueryResult.makeIterator()();
    result = QueryResult.Iterator.next()();
    if (v99 != 0.0)
    {
      v36 = 0;
      v37 = (v12 + 8);
      v73 = (v4 + 104);
      v72 = *MEMORY[0x277CDAE48];
      v71 = (v92 + 8);
      v70 = (v4 + 8);
      v69 = v93 + 16;
      v38 = (v93 + 56);
      v79 = (v93 + 48);
      v77 = (v93 + 32);
      v76 = (v93 + 8);
      do
      {
        if (v36)
        {
          __break(1u);
          goto LABEL_36;
        }

        v39 = v94;
        dispatch thunk of Entity.components.getter();
        lazy protocol witness table accessor for type RaycastMeshTrackingComponent and conformance RaycastMeshTrackingComponent();
        Entity.ComponentSet.subscript.getter();
        (*v37)(v39, v95);
        if (v103)
        {
          goto LABEL_32;
        }

        v75 = v38;
        v40 = v37;
        v41 = v99;
        *v109 = v99;
        v109[1] = v100;
        v109[2] = v101;
        v110 = v102;
        type metadata accessor for RaycastMeshTrackingEntity();
        result = swift_dynamicCastClass();
        v92 = result;
        if (!result)
        {
          goto LABEL_37;
        }

        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of RaycastMeshTrackingSystem.update(context:));
        v78 = v42;

        HasTransform.setScale(_:relativeTo:)();

        v74 = v30;
        *&v78 = SceneUpdateContext.scene.getter();
        if (dispatch thunk of Scene.internalActiveCamera.getter())
        {
          specialized static Ray3D.worldRay(through:using:)(v104, v41);
          if ((v105 & 1) == 0)
          {
            v68 = v104[1];
            v67 = v104[0];
            v48 = v80;
            v49 = Type;
            (*v73)(v80, v72, Type);
            v50 = v82;
            static CollisionGroup.all.getter();
            v51 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
            (*v71)(v50, v83);
            (*v70)(v48, v49);
            if (*(v51 + 16))
            {
              (*(v93 + 16))(v91, v51 + ((*(v93 + 80) + 32) & ~*(v93 + 80)), v90);

              v47 = 0;
            }

            else
            {

              v47 = 1;
            }

            v35 = v98;
            goto LABEL_21;
          }
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, logger);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_23B824000, v44, v45, "Can't get a camera to raycast!", v46, 2u);
          MEMORY[0x23EEB0B70](v46, -1, -1);
        }

        v47 = 1;
LABEL_21:
        v37 = v40;
        v38 = v75;
        v52 = v91;
        v53 = v90;
        (*v75)(v91, v47, 1, v90);

        v54 = (*v79)(v52, 1, v53);
        v30 = v74;
        if (v54 == 1)
        {
          outlined destroy of CollisionCastHit?(v52);
          SceneUpdateContext.scene.getter();
          active = dispatch thunk of Scene.internalActiveCamera.getter();

          if (!active)
          {
            goto LABEL_38;
          }

          specialized static Ray3D.worldRay(through:using:)(&v106, v41);

          v56 = v108;
          v68 = v107;
          if (v108)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of RaycastMeshTrackingSystem.update(context:));
          }

          else
          {
            v57.n128_f64[0] = Ray3D.point(t:)(0.5, v106, v107);
          }

          v78 = v57;
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetPosition(_:viewToWorld:dt:)(v78, v87, v86, v85, v84, v60);
          if ((v56 & 1) == 0)
          {
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of RaycastMeshTrackingSystem.update(context:));
            v61.i32[3] = 0;
            v61.i64[0] = vsubq_f32(0, v68).u64[0];
            v61.f32[2] = 0.0 - v68.f32[2];
            v63.n128_f64[0] = simd_quaternion(v62, v61);
            v78 = v63;
            v64 = SceneUpdateContext.deltaTime.getter();
            RaycastMeshTrackingEntity.targetOrientation(_:dt:)(v64, *&v78);
          }

          if (one-time initialization token for minimumReticleSizeMeters != -1)
          {
            swift_once();
          }

          v78 = minimumReticleSizeMeters;
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetScale(_:dt:)(v78, v65);
          SceneUpdateContext.deltaTime.getter();
          RaycastMeshTrackingEntity.targetFade(_:dt:)(0.0, v66);
LABEL_32:

          goto LABEL_33;
        }

        v58 = v88;
        (*v77)(v88, v52, v53);
        specialized RaycastMeshTrackingSystem.updateCollisionHit(raycastEntity:raycastComponent:collisionHit:context:)(v92, v109);

        v59 = v58;
        v35 = v98;
        (*v76)(v59, v53);
LABEL_33:
        result = QueryResult.Iterator.next()();
        v36 = 1;
      }

      while (v99 != 0.0);
    }

    (*(v97 + 8))(v18, v15);
    return (*(v96 + 8))(v26, v35);
  }

  else
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of CollisionCastHit?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.CodingKeys and conformance RaycastMeshTrackingComponent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Float> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySfGMd, &_sSnySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys and conformance RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #1 in RaycastMeshTrackingEntity.startLoadingRingEntity()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem()
{
  result = lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem;
  if (!lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem)
  {
    type metadata accessor for RaycastMeshTrackingSystem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaycastMeshTrackingSystem and conformance RaycastMeshTrackingSystem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static BoundingBoxHelpers.makeBoxMaterial()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhysicallyBasedMaterial.EmissiveColor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PhysicallyBasedMaterial.BaseColor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for PhysicallyBasedMaterial();
  v11 = MEMORY[0x277CDB510];
  a1[3] = v10;
  a1[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(a1);
  PhysicallyBasedMaterial.init()();
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = type metadata accessor for MaterialParameters.Texture();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  PhysicallyBasedMaterial.BaseColor.init(tint:texture:)();
  PhysicallyBasedMaterial.baseColor.setter();
  v16 = [v12 whiteColor];
  v15(v7, 1, 1, v14);
  PhysicallyBasedMaterial.EmissiveColor.init(color:texture:)();
  PhysicallyBasedMaterial.emissiveColor.setter();
  return PhysicallyBasedMaterial.emissiveIntensity.setter();
}

id one-time initialization function for bundle()
{
  type metadata accessor for BoundingBoxHelpers();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static BoundingBoxHelpers.bundle = result;
  return result;
}

{
  type metadata accessor for BaseRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static BaseRenderer.bundle = result;
  return result;
}

{
  type metadata accessor for FullscreenCoveragePointsRenderer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static FullscreenCoveragePointsRenderer.bundle = result;
  return result;
}

{
  type metadata accessor for PostProcessRenderManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static PostProcessRenderManager.bundle = result;
  return result;
}

{
  type metadata accessor for SoundManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static SoundManager.bundle = result;
  return result;
}

{
  type metadata accessor for VoxelRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static VoxelRenderer.bundle = result;
  return result;
}

{
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v1 = static BaseRenderer.bundle;
  static CaptureCircleRenderer.bundle = static BaseRenderer.bundle;

  return v1;
}

float closure #1 in variable initialization expression of static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v22 - v2;
  v4 = specialized static BoundingBoxHelpers.getCoreOCVersion()();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v23[0] = 0x312E362E38;
  v23[1] = 0xE500000000000000;
  v7 = v4;
  v22[0] = v4;
  v22[1] = v5;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of Locale?(v3);
  if (v9 != -1)
  {

LABEL_4:
    v10 = specialized static ExperimentSettings.loadAutomaticBoundingBoxPadding(default:)(1.25);
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
      *v14 = 134349056;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_23B824000, v12, v13, "Assuming box padding is: %{public}f", v14, 0xCu);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    return v10;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136446210;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v23);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_23B824000, v16, v17, "Got internal OCS version %{public}s so assuming box padding is 1.1", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23EEB0B70](v19, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  else
  {
  }

  return 1.1;
}

float32x4_t specialized static BoundingBoxHelpers.ensuringPositiveDeterminant(matrix:)(float32x4_t result, int8x16_t a2, int8x16_t a3, int8x16_t a4)
{
  v4 = vextq_s8(a3, a3, 8uLL);
  v5 = vextq_s8(a4, a4, 0xCuLL);
  v6 = vextq_s8(a3, a3, 0xCuLL);
  v7 = vextq_s8(a4, a4, 8uLL);
  v8 = vextq_s8(a4, a4, 4uLL);
  v9 = vextq_s8(a3, a3, 4uLL);
  v10 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(a2, a2, 8uLL), vmlaq_f32(vmulq_f32(v5, vnegq_f32(v9)), v8, v6)), vmlaq_f32(vmulq_f32(v7, vnegq_f32(v6)), v5, v4), vextq_s8(a2, a2, 4uLL)), vmlaq_f32(vmulq_f32(v8, vnegq_f32(v4)), v7, v9), vextq_s8(a2, a2, 0xCuLL)), result);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  if (vaddv_f32(vsub_f32(vzip1_s32(*v10.i8, v11), vzip2_s32(*v10.i8, v11))) <= 0.0)
  {
    v19 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6E0;
    *(inited + 32) = v19;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
    v20 = v13;
    swift_setDeallocating();
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_23B91A6E0;
    *(v14 + 32) = a2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v14);
    swift_setDeallocating();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_23B91A6E0;
    *(v15 + 32) = vneg_f32(*a3.i8);
    *(v15 + 40) = -*&a3.i32[2];
    *(v15 + 44) = a3.i32[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v15);
    swift_setDeallocating();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_23B91A6E0;
    *(v16 + 32) = a4;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v16);
    swift_setDeallocating();
    return v20;
  }

  return result;
}

__n128 specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(float32x4_t *a1)
{
  if (a1[4].i8[0])
  {
    result.n128_u64[0] = 0;
  }

  else
  {
    v7 = a1[3];
    v5 = a1[1];
    v6 = a1[2];
    v4 = *a1;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
    v3 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v2.f32[0]), v5, *v2.f32, 1), v6, v2, 2), v7, v2, 3);
    v3.i32[3] = 0;
    v8 = v3;
    Transform.init(matrix:)();
    return v8;
  }

  return result;
}

uint64_t specialized static BoundingBoxHelpers.getCoreOCVersion()()
{
  type metadata accessor for PhotogrammetrySession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000023B925D00), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 0;
}

__n64 specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)()
{
  Transform.init(matrix:)();
  v3 = v1;
  v4 = v0;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    swift_once();
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:));
  specialized simd_float4x4.init(translation:rotation:scale:)(v3, v4);
  Transform.init(matrix:)();
  result.n64_u32[1] = 1.0;
  return result;
}

double specialized static BoundingBoxHelpers.asSRTMatrix(box:)(float32x4_t a1, float32x4_t a2)
{
  Transform.init()();
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  *&v4 = vmulq_f32(vaddq_f32(a1, a2), v3).u64[0];

  return specialized simd_float4x4.init(translation:rotation:scale:)(v4, v2);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:)(void *a1, float *a2, float32x4_t a3, double a4)
{
  if (a1)
  {
    v6 = a1;
    dispatch thunk of ARView.cameraTransform.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(v8, v7);
    v46 = v9;
    v10 = COERCE_DOUBLE(ARView.project(_:)());
    if (v12)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23B824000, v14, v15, "Can't project the bounding sphere center to the screen coordinates, not resizing.", v16, 2u);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      goto LABEL_10;
    }

    v17 = v10;
    v18 = v11;
    v19 = a4 * 0.5 + v10;
    Transform.init()();
    specialized SIMD.subscript.getter(xmmword_23B91DE30, COERCE_DOUBLE(2), v46);
    v21 = vsubq_f32(v20, a3);
    v21.i32[3] = 0;
    v47 = v21;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:));
    *v23.i64 = simd_quaternion(v22, v47);
    specialized simd_float4x4.init(translation:rotation:scale:)(*a3.i64, v23);
    v24 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v26)
    {
LABEL_10:

      v27 = *a2;
      return;
    }

    v28.i64[0] = v24;
    v28.i64[1] = v25;
    v29 = vsubq_f32(v28, a3);
    v30 = vmulq_f32(v29, v29);
    v31 = sqrtf(v30.f32[2] + (((*&v24 - a3.f32[0]) * (*&v24 - a3.f32[0])) + v30.f32[1]));
    v32 = v6;
    [v32 bounds];
    v49.x = v19;
    v49.y = v18;
    if (CGRectContainsPoint(v51, v49) && (v33 = v32, [v33 bounds], v50.x = v17, v50.y = v18, v34 = CGRectContainsPoint(v52, v50), v33, v34))
    {

      *a2 = v31;
    }

    else
    {
      v35 = v32;
      [v35 bounds];
      v36 = CGRectGetWidth(v53) * 0.5;
      [v35 bounds];
      v37 = CGRectGetHeight(v54) * 0.5;
      [v35 center];
      *&v36 = (v17 - v38) / v36;
      [v35 center];
      v40 = v39;

      v41 = (v18 - v40) / v37;
      v42 = sqrtf((*&v36 * *&v36) + (v41 * v41)) + -1.0;
      v43 = 0.0;
      if (v42 > 0.0)
      {
        v44 = v42 / 0.2;
        if (v44 > 0.0)
        {
          v43 = 1.0;
          if (v44 <= 1.0)
          {
            v43 = v44;
          }
        }
      }

      v45 = (v43 * *a2) + (v31 * (1.0 - v43));
    }
  }
}

double specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(double a1, double a2, double a3, double a4, float32x4_t a5, float a6)
{
  Transform.init(matrix:)();
  v7 = vabsq_f32(a5);
  v8 = vmuls_lane_f32(a6, v7, 2);
  *v7.f32 = vadd_f32(vmul_n_f32(*v7.f32, a6), *v9.f32);
  v7.f32[2] = v8 + v9.f32[2];
  v7.i32[3] = 0;
  v10 = vmaxnmq_f32(v7, xmmword_23B91DE50);
  v10.i32[3] = 0;
  v11 = vsubq_f32(vminnmq_f32(v10, xmmword_23B91DE60), v9);
  v12 = vmulq_f32(v6, xmmword_23B91C020);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v16 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vextq_s8(v12, v13, 8uLL), vmuls_lane_f32(vmuls_lane_f32(0.5, *v11.f32, 1), *a5.f32, 1)), vextq_s8(v14, v14, 8uLL), (0.5 * v11.f32[0]) * a5.f32[0]), v15, vmuls_lane_f32(vmuls_lane_f32(0.5, v11, 2), a5, 2));
  v17 = vnegq_f32(v16);
  v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
  v19 = vrev64q_s32(v16);
  v19.i32[0] = v17.i32[1];
  v19.i32[3] = v17.i32[2];
  *&v21 = vaddq_f32(v20, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v6, 3), v19, v6, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v6.f32, 1), vextq_s8(v18, v18, 8uLL), v6.f32[0]))).u64[0];

  return specialized simd_float4x4.init(translation:rotation:scale:)(v21, v6);
}

double specialized static BoundingBoxHelpers.unpaddedBoundingBox(boxWorld:)()
{
  Transform.init(matrix:)();
  v2 = v1;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v5 = v0;
    v4 = v1;
    swift_once();
    v2 = v4;
    v0 = v5;
  }

  return specialized simd_float4x4.init(translation:rotation:scale:)(v2, v0);
}

__n128 specialized static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:)(char a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  Transform.init(matrix:)();
  v18 = v7;
  v19 = v8;
  v21 = v9;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:));
  v27 = v10;
  if ((a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = vmul_f32(__PAIR64__(((a6 + -1.0) * 0.5) + 1.0, LODWORD(a6)), *v18.f32);
    *(inited + 40) = vmuls_lane_f32(a6, v18, 2);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
  }

  *v12.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v19, v21);
  v26 = v12;
  v28 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v27.f32[0]), v13, *v27.f32, 1), v14, v27, 2), v15, v27, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v27.f32[0]), a3, *v27.f32, 1), a4, v27, 2), a5, v27, 3));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_23B91A6D0;
  *(v16 + 32) = 0;
  *(v16 + 36) = v28.i32[1];
  *(v16 + 40) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v16);
  swift_setDeallocating();
  return v26;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BoundingBoxScaleManipulator.Face.Which@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BoundingBoxScaleManipulator.Face.Which.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for normals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B91AE90;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for normals);
  *(v0 + 32) = v1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for normals);
  *(v0 + 48) = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for normals);
  *(v0 + 64) = v3;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of one-time initialization function for normals);
  *(v0 + 80) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #4 of one-time initialization function for normals);
  *(v0 + 96) = v5;
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #5 of one-time initialization function for normals);
  *(v0 + 112) = v7;
  static BoundingBoxScaleManipulator.Face.normals = v0;
  return result;
}

void BoundingBoxScaleManipulator.FaceHandle.enabled.willset(char a1)
{
  if (*(v1 + 32) != (a1 & 1))
  {
    if (*(v1 + 32))
    {
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        __swift_project_value_buffer(v2, logger);

        v3 = v1;
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v26 = v7;
          *v6 = 136446210;
          v24 = *(v3 + 16);
          v8 = String.init<A>(describing:)();
          v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

          *(v6 + 4) = v10;
          _os_log_impl(&dword_23B824000, v4, v5, "Disabling handle: %{public}s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v7);
          MEMORY[0x23EEB0B70](v7, -1, -1);
          MEMORY[0x23EEB0B70](v6, -1, -1);
        }

        v11 = *(v3 + 40);
        type metadata accessor for Entity();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }
    }

    else if (a1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);

      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = v17;
        *v16 = 136446210;
        v25 = *(v13 + 16);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_23B824000, v14, v15, "Enabling handle: %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x23EEB0B70](v17, -1, -1);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = *(Strong + 16);

        v23 = *(v13 + 40);
        type metadata accessor for Entity();
        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }
    }
  }
}

void BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for CollisionFilter();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CollisionComponent.Mode();
  isa = v9[-1].isa;
  v11 = *(isa + 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CollisionComponent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {
    v32 = v9;
    v19 = *(v0 + 40);
    type metadata accessor for Entity();
    v31 = v13;

    HasHierarchy.addChild(_:preservingWorldTransform:)();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset);
    v29 = v20;
    type metadata accessor for ModelEntity();
    v30 = v8;
    HasTransform.setScale(_:relativeTo:)();
    BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal()();
    HasTransform.setOrientation(_:relativeTo:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23B91A700;
    v22 = *(v0 + 16);
    type metadata accessor for ShapeResource();
    v23.n128_u32[0] = 1.0;
    if (v22 < 2)
    {
      v23.n128_f32[0] = 0.5;
    }

    *(v21 + 32) = MEMORY[0x23EEAC950](v23);
    (*(isa + 13))(v31, *MEMORY[0x277CDADC0], v32);
    static CollisionFilter.default.getter();
    CollisionComponent.init(shapes:mode:filter:)();
    (*(v15 + 16))(v4, v18, v14);
    (*(v15 + 56))(v4, 0, 1, v14);
    v24 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v24(v33, 0);

    (*(v15 + 8))(v18, v14);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, logger);
    v32 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23B824000, v32, v26, "Failed to load modelEntity for the FaceHandle!", v27, 2u);
      MEMORY[0x23EEB0B70](v27, -1, -1);
    }

    v28 = v32;
  }
}

void BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal()()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    if (one-time initialization token for normals == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
  if (one-time initialization token for normals != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_9:
    if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
    {
      __break(1u);
    }

    else
    {
      v7 = *(static BoundingBoxScaleManipulator.Face.normals + v1 + 2);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
      v5 = vmulq_f32(v7, v4);
      v6 = acosf(v5.f32[2] + vaddv_f32(*v5.f32));
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of BoundingBoxScaleManipulator.FaceHandle.rotationFromNormal());
      __sincosf_stret(v6 * 0.5);
    }

    return;
  }

  v3 = *(static BoundingBoxScaleManipulator.Face.normals + v1 + 2);

  simd_quaternion(v2, v3);
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.loadModel()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = 0xED0000656C646E61;
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446466;
    v8 = *(v1 + 16);
    if (v8 >= 2)
    {
      v9 = 0x48656C7573706143;
    }

    else
    {
      v9 = 0x646E614865636146;
    }

    if (v8 < 2)
    {
      v2 = 0xEA0000000000656CLL;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v2, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_23B824000, v4, v5, "Loading model: %{public}s for face: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v7, -1, -1);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v14 = *(v1 + 16);
  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  if (v14 >= 2)
  {
    v15 = 0xED0000656C646E61;
  }

  else
  {
    v15 = 0xEA0000000000656CLL;
  }

  if (v14 >= 2)
  {
    v16 = 0x48656C7573706143;
  }

  else
  {
    v16 = 0x646E614865636146;
  }

  v17 = MEMORY[0x23EEAD3D0](v16, v15, static BoundingBoxHelpers.bundle);

  v18 = *(v1 + 80);
  *(v1 + 80) = v17;

  v22 = v17;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  v20 = *(v1 + 88);
  *(v1 + 88) = v19;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.FaceHandle.loadModel()(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_23B824000, v7, v8, "Can't load the FaceHandle model!  error = %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }
  }

  v15 = *(a2 + 88);
  *(a2 + 88) = 0;

  v16 = *(a2 + 80);
  *(a2 + 80) = 0;
}

uint64_t closure #2 in BoundingBoxScaleManipulator.FaceHandle.loadModel()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_23B824000, v5, v6, "Face handle id=%{public}ld loaded!", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(a2 + 64);
  *(a2 + 64) = v3;
  swift_retain_n();

  BoundingBoxScaleManipulator.FaceHandle.modelEntity.didset();

  if (*(a2 + 64))
  {
    v10 = *(a2 + 64);

    type metadata accessor for ModelEntity();
    v11 = HasModel.model.modify();
    v13 = v12;
    v14 = type metadata accessor for ModelComponent();
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_23B91A6F0;
      v16 = *(a2 + 16);
      v17 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v16 == 1)
      {
        v18 = 0.5;
      }

      else
      {
        v18 = 1.0;
      }

      [v17 initWithRed:1.0 green:0.0 blue:0.0 alpha:v18];
      v19 = type metadata accessor for UnlitMaterial();
      v20 = MEMORY[0x277CDAC30];
      *(v15 + 56) = v19;
      *(v15 + 64) = v20;
      __swift_allocate_boxed_opaque_existential_1((v15 + 32));
      UnlitMaterial.init(color:)();
      ModelComponent.materials.setter();
    }

    v11(&v21, 0);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)()
{
  v1 = *(v0 + 16);
  if (one-time initialization token for normals != -1)
  {
    result = swift_once();
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(static BoundingBoxScaleManipulator.Face.normals + v1 + 2);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)()
{
  v1 = v0;
  BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
  v3 = *(v0 + 16);
  if (v3 < 2)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
LABEL_13:
    v14 = *(v1 + 40);
    type metadata accessor for Entity();
    HasHierarchy.parent.getter();
    HasTransform.setPosition(_:relativeTo:)();
  }

  if (one-time initialization token for normals != -1)
  {
    v16 = v2;
    swift_once();
    v2 = v16;
  }

  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v3)
  {
    __break(1u);
LABEL_15:

    v8 = MEMORY[0x23EEAFC40](0, v3);

    goto LABEL_9;
  }

  v4 = vmulq_f32(v2, *(static BoundingBoxScaleManipulator.Face.normals + v3 + 2));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:));
    v15 = v11;
    goto LABEL_12;
  }

  v6 = Strong;
  result = swift_beginAccess();
  v3 = *(v6 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v3 + 32);

LABEL_9:
    v9 = *(v8 + 40);
    type metadata accessor for Entity();

    HasTransform.position.getter();
    v15 = v10;

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    HIDWORD(v13) = v15;
    LODWORD(v13) = 0;
    *(inited + 32) = v13;
    *(inited + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

float BoundingBoxScaleManipulator.FaceHandle.computeScaleFromScreenSize(pixels:arView:)(void *a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  swift_beginAccess();
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  BoundingBox.center.getter();
  v10 = v7;
  BoundingBox.extents.getter();
  specialized static BoundingBoxHelpers.computeScaleFromScreenSize(sphereWorld:pixels:arView:lastGoodScale:)(a1, (v3 + 72), v10, a2);
  LODWORD(a2) = v8;
  swift_endAccess();
  return *&a2;
}

uint64_t BoundingBoxScaleManipulator.FaceHandle.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:)(void *a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(*(v2 + 48) + 16);
  if (v6)
  {
    swift_beginAccess();
    v7 = 4;
    while (1)
    {
      v8 = v7 - 4;
      v9 = *(v3 + 48);
      if ((v7 - 4) >= *(v9 + 16))
      {
        break;
      }

      v10 = *(v9 + 8 * v7);
      if (v10)
      {
        v11 = *(v10 + 48);
        if (v11 <= *(v10 + 64))
        {
          v12 = *(v10 + 56);
        }

        else
        {
          v12 = *(v10 + 16) + a2;
          *(v10 + 48) = a2;
          *(v10 + 56) = v12;
          v11 = a2;
        }

        *(v10 + 64) = a2;
        v13 = 0.0;
        if (v11 <= a2)
        {
          v13 = 1.0;
          if (v12 >= a2)
          {
            v13 = (a2 - v11) / (v12 - v11);
          }
        }

        v14 = *(v10 + 72);
        v15 = (1.0 - v13) * v14;
        v16 = v14 + (v13 * (1.0 - v14));
        if (*(v10 + 24))
        {
          v16 = v15;
        }

        if (v16 <= 0.0)
        {
          v16 = 0.0;
        }

        if (v16 <= 1.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 1.0;
        }

        v18 = *(v10 + 32);
        if (v18)
        {
          v19 = *(v10 + 40);

          v18(v20, v17);
        }

        else
        {
        }

        if (v17 > 0.0)
        {
          v21 = v17;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = *(v3 + 40);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = *(v3 + 40);

          v23 = MEMORY[0x23EEAFC40](v7 - 4, v22);
        }

        else
        {
          if (v8 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v23 = *(v22 + 8 * v7);
        }

        *(v23 + 52) = ((v21 * v21) / ((((v21 * v21) - v17) + ((v21 * v21) - v17)) + 1.0)) + 1.0;

        if (*(v10 + 56) < *(v10 + 64))
        {
          swift_beginAccess();
          v24 = *(v3 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 48) = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            *(v3 + 48) = v24;
          }

          if (v8 >= *(v24 + 16))
          {
            goto LABEL_64;
          }

          v26 = *(v24 + 8 * v7);
          *(v24 + 8 * v7) = 0;
          *(v3 + 48) = v24;
          swift_endAccess();
        }
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_35:
  if (a1)
  {
    dispatch thunk of ARView.cameraTransform.getter();
    if ((*(v3 + 112) & 1) == 0)
    {
      v31 = *(v3 + 64);
      v33 = *(v3 + 80);
      v34 = *(v3 + 96);
      v36 = *(v3 + 32);
      if (!v36)
      {
        goto LABEL_42;
      }

      v35 = *(v3 + 104);
      v52 = *(v3 + 96);
      v53 = *(v3 + 80);
      v32 = *(v3 + 72);
      v54 = *(v3 + 64);
      v55 = v30;
      v56 = v29;
      v57 = v28;
      v37 = *(v36 + 16);
      result = swift_beginAccess();
      v39 = *(v3 + 40);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v49 = *(v3 + 40);

        v50 = MEMORY[0x23EEAFC40](1, v39);

        v51 = *(v50 + 16);
        swift_unknownObjectRelease();
        v40 = v37 == v51;
      }

      else
      {
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return result;
        }

        v40 = v37 == *(*(v39 + 40) + 16);
      }

      v29 = v56;
      v28 = v57;
      v31 = v54;
      v30 = v55;
      v34 = v52;
      v33 = v53;
      if (!v40)
      {
LABEL_42:
        specialized BoundingBoxScaleManipulator.FaceHandleContainer.updateBottomHandleState(time:cameraWorld:boxWorld:)(v28, v29, v30, v31, v33, v34);
      }
    }
  }

  if (*(v3 + 112))
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:));
  }

  else
  {
    v41 = *(v3 + 64);
  }

  result = BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(a1, v41);
  if ((*(v3 + 112) & 1) == 0 && (*(v3 + 120) & 1) == 0)
  {
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    v44 = *(v3 + 116);
    swift_beginAccess();
    v3 = *(v3 + 40);
    if (!(v3 >> 62))
    {
      v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:

      if (!v45)
      {
      }

      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EEAFC40](i, v3);
          v48 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v47 = *(v3 + 8 * i + 32);

          v48 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_59:
            __break(1u);
          }
        }

        BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)();

        if (v48 == v45)
        {
        }
      }
    }

LABEL_66:
    v45 = __CocoaSet.count.getter();
    goto LABEL_50;
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.load()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Loading face handles...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v21 = *(v1 + 40);
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_15;
  }

LABEL_7:
  type metadata accessor for BoundingBoxScaleManipulator.FaceHandle();
  v8 = 0;
  __asm { FMOV            V8.2S, #1.0 }

  do
  {
    v14 = outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.load()[v8 + 32];
    v15 = swift_allocObject();
    swift_weakInit();
    *(v15 + 32) = 0;
    v16 = type metadata accessor for Entity();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();

    *(v15 + 40) = Entity.init()();
    *(v15 + 48) = 0;
    *(v15 + 52) = _D8;
    *(v15 + 60) = 1065353216;
    *(v15 + 64) = 0;
    *(v15 + 72) = 1065353216;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 16) = v14;
    swift_weakAssign();
    BoundingBoxScaleManipulator.FaceHandle.loadModel()();

    swift_beginAccess();

    MEMORY[0x23EEAF620](v19);
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v8;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    BoundingBoxScaleManipulator.FaceHandle.enabled.willset(1);
    *(v15 + 32) = 1;
  }

  while (v8 != 6);
  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 32);
  if (v4)
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
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v9 = 136446210;
      v34 = *(v4 + 16);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23B824000, v7, v8, "Ramping out current grabbedHandle=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    *(v4 + 48) = 0;
    v14 = *(v4 + 16);
    type metadata accessor for RampAnimation();
    v15 = swift_allocObject();
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0xFFF0000000000000;
    *(v15 + 24) = 1;
    *(v15 + 16) = 0x3FA999999999999ALL;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 72) = 1065353216;
    swift_beginAccess();
    v16 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v2 + 48) = v16;
    }

    if (*(v16 + 16) <= v14)
    {
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_12;
    }

    v18 = v16 + 8 * v14;
    v19 = *(v18 + 32);
    *(v18 + 32) = v15;
    *(v2 + 48) = v16;
    swift_endAccess();
  }

  if (!v3)
  {
    return result;
  }

  v20 = one-time initialization token for logger;

  if (v20 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36[0] = v25;
    *v24 = 136446210;
    v35 = *(v3 + 16);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v36);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_23B824000, v22, v23, "Ramping in a new grabbedHandle=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  *(v3 + 48) = 1;
  v29 = *(v3 + 16);
  type metadata accessor for RampAnimation();
  v30 = swift_allocObject();
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = 0xFFF0000000000000;
  *(v30 + 24) = 0;
  *(v30 + 16) = 0x3FA999999999999ALL;
  *(v30 + 72) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_beginAccess();
  v31 = *(v2 + 48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v31;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    v31 = result;
    *(v2 + 48) = result;
  }

  if (*(v31 + 16) <= v29)
  {
    __break(1u);
  }

  else
  {
    v32 = v31 + 8 * v29;
    v33 = *(v32 + 32);
    *(v32 + 32) = v30;
    *(v2 + 48) = v31;
    swift_endAccess();
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(void *a1, float32x4_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v6 = *(v5 + 32);

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (one-time initialization token for logger == -1)
    {
LABEL_11:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134349056;
        *(v16 + 4) = 0x4072C00000000000;
        _os_log_impl(&dword_23B824000, v14, v15, "Can't get arView!  Using default screen size for handle constraint %{public}f", v16, 0xCu);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      v12 = 300.0;
      goto LABEL_15;
    }

LABEL_36:
    swift_once();
    goto LABEL_11;
  }

  MEMORY[0x23EEAFC40](0, v5);

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = a1;
  [v7 bounds];
  Width = CGRectGetWidth(v29);
  [v7 bounds];
  Height = CGRectGetHeight(v30);

  if (Height >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  v11 = v10 * 0.4;
  v12 = 200.0;
  if (v11 > 200.0)
  {
    v12 = v11;
  }

LABEL_15:
  v17 = BoundingBoxScaleManipulator.FaceHandle.computeScaleFromScreenSize(pixels:arView:)(a1, v12);

  v18 = vabsq_f32(a2);
  *(v3 + 24) = v17;
  *(v3 + 28) = fmaxf(fmaxf(v18.f32[0], v18.f32[2]), v18.f32[1]) * 0.1;
  v19 = *(v3 + 40);
  if (v19 >> 62)
  {
    goto LABEL_34;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  if (v20)
  {
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23EEAFC40](v21, v19);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_34:
          v20 = __CocoaSet.count.getter();
          goto LABEL_17;
        }

        v22 = *(v19 + 8 * v21 + 32);

        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_31;
        }
      }

      v24 = *(v3 + 28);
      *(v22 + 60) = v24;
      if (*(v22 + 64))
      {
        v25 = *(v3 + 24);
        if (*(v22 + 16) >= 2u)
        {
          v25 = v25 * 0.5;
        }

        if (v25 > v24)
        {
          v24 = v25;
        }

        v26 = (v24 * *(v22 + 52)) * *(v22 + 56);
        type metadata accessor for ModelEntity();

        HasHierarchy.parent.getter();
        HasTransform.setScale(_:relativeTo:)();
      }

      ++v21;
    }

    while (v23 != v20);
  }

  *(v3 + 116) = *(v3 + 24);
  *(v3 + 120) = 0;
  return result;
}

uint64_t BoundingBoxScaleManipulator.FaceHandleContainer.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t BoundingBoxScaleManipulator.init()()
{
  v1 = v0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x3FC999999999999ALL;
  v2 = type metadata accessor for Entity();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 40) = Entity.init()();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  type metadata accessor for BoundingBoxScaleManipulator.FaceHandleContainer();
  swift_allocObject();

  v6 = specialized BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:)(v5);

  *(v1 + 48) = v6;
  return v1;
}

void BoundingBoxScaleManipulator.attach(model:target:enabled:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Scene.AnchorCollection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "Attaching bounding box scale manipulator...", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  swift_weakAssign();
  v17 = *(v4 + 24);
  *(v4 + 24) = a2;

  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = v18;
    BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(0.0);
    dispatch thunk of ARView.scene.getter();
    dispatch thunk of Scene.anchors.getter();

    _s10RealityKit6EntityCACSQAAWlTm_0(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v27[4] == v27[0])
    {
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v20 = dispatch thunk of Collection.subscript.read();
      v22 = *v21;

      v20(v27, 0);
      (*(v9 + 8))(v12, v8);
      v23 = *v22;
      v24 = *(v4 + 40);
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    BoundingBoxScaleManipulator.attachGestures()();
    BoundingBoxScaleManipulator.subscribeToUpdateEvents()();
    v25 = *(v4 + 96);
    *(v4 + 96) = a3 & 1;
    if (v25 != (a3 & 1))
    {
      if (a3)
      {
        BoundingBoxScaleManipulator.attachGestures()();
      }

      else
      {
        BoundingBoxScaleManipulator.detachGestures()();
      }
    }

    BoundingBoxScaleManipulator.startFadeInAnimation()();
  }
}

Swift::Void __swiftcall BoundingBoxScaleManipulator.detach()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Detaching bounding box scale manipulator...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  BoundingBoxScaleManipulator.unsubscribeFromUpdateEvents()();
  BoundingBoxScaleManipulator.detachGestures()();
  v6 = *(v1 + 40);
  type metadata accessor for Entity();
  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(0.0);

  swift_weakAssign();
}

uint64_t BoundingBoxScaleManipulator.update(deltaTime:)(double a1)
{
  v2 = v1;
  v3 = *(v1 + 104) + a1;
  *(v1 + 104) = v3;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(v1 + 48);
    v6 = *(result + 16);
    v7 = v6;
    BoundingBoxScaleManipulator.FaceHandleContainer.update(time:in:)(v6, v3);

    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + 112, &v14, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    if (v15)
    {
      outlined init with take of Animation(&v14, v16);
      v8 = *__swift_project_boxed_opaque_existential_1(v16, v17);
      RampAnimation.update(time:)(*(v2 + 104));
      v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
      if (*(*v9 + 56) < *(*v9 + 64))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, logger);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_23B824000, v11, v12, "Fade in complete!  Culling animation.", v13, 2u);
          MEMORY[0x23EEB0B70](v13, -1, -1);
        }

        BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(1.0);
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {

      return outlined destroy of PerspectiveCameraComponent?(&v14, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.startFadeInAnimation()()
{
  v1 = *(v0 + 48);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = type metadata accessor for RampAnimation();
    v10 = swift_allocObject();
    *(v10 + 64) = 0xFFF0000000000000;
    *(v10 + 24) = 0;
    *(v10 + 16) = 0x3FC999999999999ALL;
    *(v10 + 32) = partial apply for closure #1 in BoundingBoxScaleManipulator.startFadeInAnimation();
    *(v10 + 40) = v8;
    *(v10 + 72) = 0;
    v11 = *(v0 + 104);
    *(v10 + 48) = v11;
    *(v10 + 56) = v11 + 0.2;
    v12[3] = v9;
    v12[4] = &protocol witness table for RampAnimation;
    v12[0] = v10;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v12, v0 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
    return swift_endAccess();
  }

  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEAFC40](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      *(v6 + 56) = 0;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.startFadeInAnimation()(float a1)
{
  v1 = a1;
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (v1 > 0.0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0.0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    result = swift_beginAccess();
    v5 = *(v4 + 40);
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
LABEL_9:
        if (v6 < 1)
        {
          __break(1u);
        }

        else
        {
          v7 = (v2 * v2) / ((((v2 * v2) - v1) + ((v2 * v2) - v1)) + 1.0);

          for (i = 0; i != v6; ++i)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x23EEAFC40](i, v5);
            }

            else
            {
              v10 = *(v5 + 8 * i + 32);
            }

            *(v9 + 56) = v7;
          }
        }

        return result;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.cancelFadeInAnimation(opacity:)(float a1)
{
  v2 = v1;
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
    _os_log_impl(&dword_23B824000, v5, v6, "Cancelling box handle fade in...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  swift_beginAccess();
  outlined assign with take of Cancellable?(v15, v2 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  swift_endAccess();
  v8 = *(v2 + 48);
  result = swift_beginAccess();
  v10 = *(v8 + 40);
  if (v10 >> 62)
  {
    result = __CocoaSet.count.getter();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23EEAFC40](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      *(v13 + 56) = a1;
    }
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.beginDragGesture(handle:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 48);
  if (*(v10 + 32))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v2 + 208) != 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(v11);
  v12 = *(v10 + 32);
  *(v10 + 32) = a1;

  if (!*(v2 + 24))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  type metadata accessor for Entity();

  HasTransform.transform.getter();
  v23 = v14;
  v24 = v13;
  v22 = v15;

  v16 = v23;
  *(v2 + 160) = v24;
  *(v2 + 176) = v16;
  *(v2 + 192) = v22;
  *(v2 + 208) = 0;
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v2)
    {
      if (*(v2 + 24) == 2)
      {
        if (one-time initialization token for logger == -1)
        {
LABEL_8:
          v17 = type metadata accessor for Logger();
          __swift_project_value_buffer(v17, logger);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_23B824000, v18, v19, "Scale widget: Box handle grabbed... switching to manual update mode.", v20, 2u);
            MEMORY[0x23EEB0B70](v20, -1, -1);
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          *v9 = static OS_dispatch_queue.main.getter();
          (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4);
          v21 = _dispatchPreconditionTest(_:)();
          result = (*(v5 + 8))(v9, v4);
          if (v21)
          {
            DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v2 + 24), 3u);
            *(v2 + 24) = 3;
          }

          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        swift_once();
        goto LABEL_8;
      }
    }
  }

  return result;
}

void BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:)()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = *(v2 + 40);
  type metadata accessor for Entity();

  HasTransform.position(relativeTo:)();
  *oslog = v7;

  v8 = *(v2 + 40);
  v9 = *(v2 + 16);
  v10 = one-time initialization token for normals;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static BoundingBoxScaleManipulator.Face.normals;
  if (*(static BoundingBoxScaleManipulator.Face.normals + 2) <= v9)
  {
    __break(1u);
    swift_once();
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Scale widget: Constrained drag had no solution!   Ignoring this point.";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  v12 = *(static BoundingBoxScaleManipulator.Face.normals + v9 + 2);
  HasTransform.convert(direction:to:)();
  v47 = v13;

  v14 = *(v5 + 16);
  if (!v14)
  {
    __break(1u);
    goto LABEL_48;
  }

  v15 = v14;
  ARView.ray(through:)();
  if (v52)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v46 = v50;
  ARView.ray(through:)();
  if (v55)
  {
    goto LABEL_49;
  }

  v45 = v54.i64[0];
  specialized static Ray3D.closestPointParameter(to:along:)(*&v50, v51, *oslog, v47);
  v17 = v16;
  specialized static Ray3D.closestPointParameter(to:along:)(v53, v54, *oslog, v47);
  v23 = v22;

  if (*(v3 + 208))
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  v25 = *(v3 + 160);
  v26 = *(v3 + 168);
  v27 = *(v3 + 200);
  v28 = specialized simd_float4x4.init(translation:rotation:scale:)(*(v3 + 192), *(v3 + 176));
  v32 = *(v2 + 16);
  if (v11[1].i64[0] <= v32)
  {
    __break(1u);
LABEL_46:
    v40 = __CocoaSet.count.getter();
    goto LABEL_26;
  }

  specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(v28, v29, v30, v31, v11[v32 + 2], v23 - v17);
  if (*(v3 + 24))
  {

    HasTransform.setTransformMatrix(_:relativeTo:)();
  }

  v33 = swift_weakLoadStrong();
  if (!v33)
  {

    return;
  }

  v34 = v33;
  v35 = *(v3 + 40);
  HasTransform.setTransformMatrix(_:relativeTo:)();
  HasTransform.scale(relativeTo:)();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:));
  HasTransform.setScale(_:relativeTo:)();
  v36 = *(v34 + 16);
  v45 = v36;
  Transform.init(matrix:)();
  v46 = v38;
  v47 = v37;
  *oslog = v39;
  BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v36, v39);
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
    goto LABEL_46;
  }

  v40 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (v40)
  {
    v41 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEAFC40](v41, v3);
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v41 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_44:
          swift_once();
LABEL_18:
          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, logger);
          osloga = Logger.logObject.getter();
          v19 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(osloga, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "Can't get the starting xform for the box manipulator!  Ignoring...";
LABEL_12:
            _os_log_impl(&dword_23B824000, osloga, v19, v21, v20, 2u);
            MEMORY[0x23EEB0B70](v20, -1, -1);
          }

          goto LABEL_13;
        }

        v42 = *(v3 + 8 * v41 + 32);

        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v1 + 120))
      {
        goto LABEL_50;
      }

      v44 = *(v1 + 116);
      BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)();

      ++v41;
    }

    while (v43 != v40);
  }

  *(v1 + 64) = *oslog;
  *(v1 + 80) = v47;
  *(v1 + 96) = v46;
  *(v1 + 112) = 0;
}

id BoundingBoxScaleManipulator.panGesture.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 216);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DragFromPointGestureRecognizer());

    v5 = v3;
    v6 = v0;
    v7 = DragFromPointGestureRecognizer.init(manipulator:onPan:)(v4, partial apply for closure #1 in BoundingBoxScaleManipulator.panGesture.getter, v5);
    v8 = *(v0 + 216);
    *(v6 + 216) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.panGesture.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BoundingBoxScaleManipulator.duringDragGesture(startPoint:currentPoint:)();
  }

  return result;
}

void BoundingBoxScaleManipulator.attachGestures()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Adding pan gesture...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
      v8 = BoundingBoxScaleManipulator.panGesture.getter();
      [v7 addGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

void BoundingBoxScaleManipulator.detachGestures()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Removing pan gesture...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v6 = v5;

    if (v5)
    {
      v7 = BoundingBoxScaleManipulator.panGesture.getter();
      [v6 removeGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BoundingBoxScaleManipulator.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    goto LABEL_9;
  }

  v7 = *(Strong + 16);
  v8 = v7;

  if (v7)
  {
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v10, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
LABEL_9:
    swift_beginAccess();
    outlined assign with take of Cancellable?(v12, v1 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in BoundingBoxScaleManipulator.subscribeToUpdateEvents()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    BoundingBoxScaleManipulator.update(deltaTime:)(v1);
  }

  return result;
}

uint64_t BoundingBoxScaleManipulator.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + 56, &v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v9 + 1))
  {
    outlined init with copy of Cancellable(&v8, v7);
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v8, v1 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  result = swift_endAccess();
  *(v1 + 104) = 0;
  return result;
}

uint64_t BoundingBoxScaleManipulator.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  outlined destroy of PerspectiveCameraComponent?(v0 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of PerspectiveCameraComponent?(v0 + 112, &_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t DragFromPointGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v12, sel_touchesMoved_withEvent_, isa, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result < 2)
    {
      return result;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Drag got an extra touch!  failing!", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  return [v3 setState_];
}

void DragFromPointGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void), const char *a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v23, *a3, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = a4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, a5, v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    v17 = *(v12 + 48);
    BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(0);
    v18 = *(v17 + 32);
    *(v17 + 32) = 0;

    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 208) = 1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B824000, v20, v21, "Manipulator has been destroyed, exiting gesture callbacks...", v22, 2u);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t (*a6)(void), const char *a7)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = a1;
  DragFromPointGestureRecognizer.touchesEnded(_:with:)(v12, v13, a5, a6, a7);
}

BOOL DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    v2 = [a1 view];
    [a1 locationInView_];

    DragFromPointGestureRecognizer.findFaceHandle(at:)();
    v4 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMd, &_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMR);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_23B824000, v6, v7, "Found FaceHandle=%{public}s at hit point.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x23EEB0B70](v9, -1, -1);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    return v4 != 0;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "delegate got a gestureRecognizer that wasn't self!", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    return 0;
  }
}

void DragFromPointGestureRecognizer.findFaceHandle(at:)()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "Manipulator has been destroyed, exiting gesture callbacks...", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    return;
  }

  v1 = Strong;
  v2 = swift_weakLoadStrong();
  if (!v2)
  {
LABEL_39:

    return;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_41;
  }

  v4 = v3;
  v5 = ARView.entities(at:)();

  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_6:
  v7 = 0;
  v20 = v1;
  v21 = v5 & 0xC000000000000001;
  v17 = v5 + 32;
  v18 = v5 & 0xFFFFFFFFFFFFFF8;
  v19 = v5;
  while (v21)
  {
    MEMORY[0x23EEAFC40](v7, v5);
    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_36;
    }

LABEL_14:
    v1 = *(v1 + 48);
    swift_beginAccess();
    v9 = *(v1 + 40);
    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EEAFC40](v11, v9);
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v5 = *(v9 + 8 * v11 + 32);

          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v6 = __CocoaSet.count.getter();
            if (!v6)
            {
              goto LABEL_38;
            }

            goto LABEL_6;
          }
        }

        if (*(v5 + 64))
        {
          v23 = *(v5 + 64);
          type metadata accessor for Entity();
          _s10RealityKit6EntityCACSQAAWlTm_0(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

          v1 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v1)
          {

            return;
          }
        }

        ++v11;
      }

      while (v12 != v10);
    }

    v5 = v19;
    v1 = v20;
    if (v7 == v6)
    {
      goto LABEL_38;
    }
  }

  if (v7 < *(v18 + 16))
  {
    v22 = *(v17 + 8 * v7);

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_36;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t specialized BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:)(uint64_t a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 24) = _D0;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 40) = v8;
  *(v1 + 48) = &outlined read-only object #0 of BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 1;
  *(v1 + 116) = 0;
  *(v1 + 120) = 1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxScaleManipulator.FaceHandleContainer.init(entity:));
  *(v1 + 128) = v9;
  *(v1 + 144) = 1017370378;
  *(v1 + 152) = 0x3FA999999999999ALL;
  *(v1 + 16) = a1;

  BoundingBoxScaleManipulator.FaceHandleContainer.load()();
  return v1;
}

unint64_t specialized BoundingBoxScaleManipulator.Face.Which.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}