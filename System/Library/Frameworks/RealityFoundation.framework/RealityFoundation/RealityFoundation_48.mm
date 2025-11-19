uint64_t closure #1 in __RKWaitAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v1 + 136, &v6);
    if (*(&v7 + 1))
    {
      outlined init with copy of __REAssetService(&v6, v5);
      outlined destroy of BodyTrackingComponent?(&v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v6, v1 + 136);
    swift_endAccess();
    v3 = *(v1 + 112);
    v2 = *(v1 + 120);

    v3(v4);
  }

  return result;
}

uint64_t closure #2 in __RKWaitAction.perform(with:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 176);
    v5 = v1 + *(result + 184);
    *(result + 184) = v5;
    if (v4 + -0.008 <= v5)
    {
      swift_beginAccess();
      v6 = *(v3 + 96);
      v7 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v8 = v6;
      v9 = v7;

      __RKEntityAction.state.didset(&v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t __RKWaitAction.reversed()()
{
  v1 = *(v0 + 108);
  type metadata accessor for __RKWaitAction();
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0;
  *(v2 + 108) = v1;
  *(v2 + 112) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 108);
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = type metadata accessor for __RKWaitAction();
  v7 = swift_allocObject();
  *(v7 + 120) = v4;
  *(v7 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0;
  *(v7 + 108) = v3;
  *(v7 + 112) = v5;

  result = __RKEntityAction.init(targetEntity:)(0);
  a1[3] = v6;
  *a1 = result;
  return result;
}

uint64_t __RKWaitAction.description.getter()
{
  v1 = __RKEntityAction.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](539831584, 0xE400000000000000);
  v2 = *v0;
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
  v4 = *(v0 + 27);
  Float.write<A>(to:)();
  return 0;
}

uint64_t __RKWaitAction.__ivar_destroyer()
{
  v1 = *(v0 + 120);

  return outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKWaitAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 120);

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKWaitAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 120);

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for instanceRegistry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA21__ARReferenceProviderCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA21__ARReferenceProviderCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation21__ARReferenceProviderCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __ARReferenceProvider.instanceRegistry = v0;
  return result;
}

uint64_t static __ARReferenceProvider.shared.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v3);
  if (one-time initialization token for instanceRegistry != -1)
  {
    swift_once();
  }

  v1 = specialized AssetServiceScopedRegistry.instance(for:)(v3);

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t static __ARReferenceProvider.instance(for:)(void *a1)
{
  if (one-time initialization token for instanceRegistry != -1)
  {
    swift_once();
  }

  v2 = specialized AssetServiceScopedRegistry.instance(for:)(a1);

  return v2;
}

void __ARReferenceProvider.fetchPlugin(forGroup:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      outlined init with copy of __REAssetService(v6, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v9._countAndFlagsBits = (*(v8 + 16))(v7, v8);
      LOBYTE(v7) = String.hasPrefix(_:)(v9);

      if (v7)
      {
        outlined init with copy of __REAssetService(v10, a1);
        __swift_destroy_boxed_opaque_existential_1(v10);
        return;
      }

      ++v5;
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

Swift::Bool __swiftcall __ARReferenceProvider.supportsGroup(named:)(Swift::String named)
{
  __ARReferenceProvider.fetchPlugin(forGroup:)(v3);
  v1 = v4 != 0;
  outlined destroy of ARReferenceProvidingPlugin?(v3);
  return v1;
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __ARReferenceProvider.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5 = group._object;
  v6 = group._countAndFlagsBits;
  v7 = v2;
  __ARReferenceProvider.fetchPlugin(forGroup:)(&v12);
  if (v13)
  {
    outlined init with take of ForceEffectBase(&v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(*(v9 + 8) + 8))(v6, v5, countAndFlagsBits, object, v8);
    v10 = __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v10 = outlined destroy of ARReferenceProvidingPlugin?(&v12);
    *v7 = 0;
  }

  result.value.object.super.isa = v10;
  result.is_nil = v11;
  return result;
}

uint64_t __ARReferenceProvider.fetchReferenceImage(group:name:physicalWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  __ARReferenceProvider.fetchPlugin(forGroup:)(&v15);
  if (v16)
  {
    outlined init with take of ForceEffectBase(&v15, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v13 + 8) + 16))(a1, a2, a3, a4, v12, a6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    result = outlined destroy of ARReferenceProvidingPlugin?(&v15);
    *a5 = 0;
  }

  return result;
}

uint64_t __ARReferenceProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __ARReferenceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of ARReferenceProvidingPlugin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ARReferenceProvidingPlugin_pSgMd, &_s17RealityFoundation26ARReferenceProvidingPlugin_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  return specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(a1, a2, a3, a4, a5);
}

{
  return specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(a1, a2, a3, a4, a5);
}

uint64_t key path setter for _Proto_MeshDeformation_v1.CustomDeformerRuntime.id : _Proto_MeshDeformation_v1.CustomDeformerRuntime(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.deinit()
{
  v1 = *(v0 + 32);
  RERelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerRuntime.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  RERelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int _Proto_MeshDeformation_v1.CustomDeformerBuilderError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @guaranteed MTLComputeCommandEncoder, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 <= 3u && ((*(v2 + 17) << (8 * (a1 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferInputBuffer();
    v4 = RECustomDeformerVertexBufferInputFormat();
    v5 = RECustomDeformerVertexBufferInputStride();
    v6 = RECustomDeformerGPUBufferSize();
    v7 = RECustomDeformerGPUBufferCPUData();
    if (v5)
    {
      *a2 = v7;
      *(a2 + 8) = v6;
      *(a2 + 16) = v4;
      *(a2 + 24) = 0;
      *(a2 + 32) = v5;
      *(a2 + 40) = v6 / v5;
      *(a2 + 48) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
  }
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:)(unsigned __int8 a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 3u && ((*(v2 + 17) << (8 * (a1 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferInputBuffer();
    v4 = RECustomDeformerVertexBufferInputFormat();
    v5 = RECustomDeformerVertexBufferInputStride();
    v6 = RECustomDeformerGPUBufferSize();
    v7 = RECustomDeformerGPUBufferGPUOffset();
    v8 = RECustomDeformerGPUBufferGPUData();
    if (v5)
    {
      if (v6 != 0x8000000000000000 || v5 != -1)
      {
        *a2 = v8;
        a2[1] = v4;
        a2[2] = v7;
        a2[3] = v5;
        a2[4] = v6 / v5;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexOutputBuffer(_:_:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 <= 3u && ((*(v2 + 18) << (8 * (a1 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferOutputBuffer();
    v4 = RECustomDeformerVertexBufferOutputFormat();
    v5 = RECustomDeformerVertexBufferOutputStride();
    v6 = RECustomDeformerGPUBufferSize();
    v7 = RECustomDeformerGPUBufferCPUData();
    if (v5)
    {
      *a2 = v7;
      *(a2 + 8) = v6;
      *(a2 + 16) = v4;
      *(a2 + 24) = 0;
      *(a2 + 32) = v5;
      *(a2 + 40) = v6 / v5;
      *(a2 + 48) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
  }
}

void specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexOutputBuffer(_:_:)(unsigned __int8 a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 3u && ((*(v2 + 18) << (8 * (a1 & 0x1F))) & 0x8040201) != 0)
  {
    RECustomDeformerVertexBufferOutputBuffer();
    v4 = RECustomDeformerVertexBufferOutputFormat();
    v5 = RECustomDeformerVertexBufferOutputStride();
    v6 = RECustomDeformerGPUBufferSize();
    v7 = RECustomDeformerGPUBufferGPUOffset();
    v8 = RECustomDeformerGPUBufferGPUData();
    if (v5)
    {
      if (v6 != 0x8000000000000000 || v5 != -1)
      {
        *a2 = v8;
        a2[1] = v4;
        a2[2] = v7;
        a2[3] = v5;
        a2[4] = v6 / v5;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

void *specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(int8x16_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a2(v40, a1, 0);
  a2(v36, a1, 1);
  a2(v32, a1, 2);
  result = (a2)(v28, a1, 3);
  v7 = v43;
  if (v43 == 1)
  {
    if (v39)
    {
      if (v35)
      {
        v8 = 0uLL;
        v9 = 0;
        if (v31)
        {
          v10 = 0;
          v11 = 0;
          v12 = 1;
        }

        else
        {
          v11 = 0;
          v12 = 1;
          v10 = v30;
        }
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v8 = 0uLL;
        v12 = 1;
        v10 = v34;
      }

      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_13;
    }

    v9 = 0;
    v8 = 0uLL;
    v10 = v38;
    v13 = 0uLL;
LABEL_9:
    v12 = 0;
    v11 = v37;
    v14 = v36[0];
    v15 = v36[1];
    goto LABEL_14;
  }

  v9 = v41;
  v10 = v42;
  v8 = v40[0];
  v13 = v40[1];
  if ((v39 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = 0;
  v14 = 0uLL;
  v12 = 1;
LABEL_13:
  v15 = 0uLL;
LABEL_14:
  v16 = v35;
  v17 = v33;
  if (v35)
  {
    v17 = 0;
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  v20 = vbicq_s8(v32[0], v19);
  v21 = vbicq_s8(v32[1], v19);
  v22 = v31;
  v23 = v29;
  if (v31)
  {
    v23 = 0;
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vdupq_n_s64(v24);
  v26 = vbicq_s8(v28[0], v25);
  v27 = vbicq_s8(v28[1], v25);
  *a3 = v8;
  *(a3 + 16) = v13;
  *(a3 + 32) = v9;
  *(a3 + 40) = v7;
  *(a3 + 48) = v14;
  *(a3 + 64) = v15;
  *(a3 + 80) = v11;
  *(a3 + 88) = v12;
  *(a3 + 96) = v20;
  *(a3 + 112) = v21;
  *(a3 + 128) = v17;
  *(a3 + 136) = v16;
  *(a3 + 144) = v26;
  *(a3 + 160) = v27;
  *(a3 + 176) = v23;
  *(a3 + 184) = v22;
  *(a3 + 192) = v10;
  return result;
}

uint64_t specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a2(&v33, a1, 0);
  a2(&v29, a1, 1);
  a2(&v25, a1, 2);
  a2(&v21, a1, 3);
  v6 = v33;
  if (v33)
  {
    v8 = v35;
    v7 = v36;
    v19 = v34;
    swift_unknownObjectRetain();
    v9 = v29;
  }

  else
  {
    v9 = v29;
    if (v29)
    {
      v8 = 0;
      v19 = 0u;
      v7 = v32;
    }

    else if (v25)
    {
      v8 = 0;
      v19 = 0u;
      v7 = v28;
    }

    else
    {
      v19 = 0u;
      if (v21)
      {
        v8 = 0;
        v7 = v24;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }
    }
  }

  v20 = 0u;
  if (v9)
  {
    v10 = v31;
    v18 = v30;
    swift_unknownObjectRetain();
    v11 = v25;
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    v13 = v21;
    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v10 = 0;
  v18 = 0uLL;
  v11 = v25;
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_12:
  v12 = v27;
  v20 = v26;
  swift_unknownObjectRetain();
  v13 = v21;
  if (v21)
  {
LABEL_13:
    v14 = v23;
    v17 = v22;
    v13 = swift_unknownObjectRetain();
    v15 = v17;
    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
  v15 = 0uLL;
LABEL_17:
  *a3 = v6;
  *(a3 + 8) = v19;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v18;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  *(a3 + 72) = v20;
  *(a3 + 88) = v12;
  *(a3 + 96) = v13;
  *(a3 + 104) = v15;
  *(a3 + 120) = v14;
  *(a3 + 128) = v7;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createAllocatorFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = RECustomDeformerParametersDeformationCount();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      v73 = v6;
      do
      {
        RECustomDeformerParametersVertexBufferData();
        v9 = a5[3];
        v10 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v9);
        (*(v10 + 80))(v75, v9, v10);
        if ((v75[0] & 0x10000) != 0)
        {
          v11 = RECustomDeformerVertexBufferInputBuffer();
          v12 = a5[3];
          v13 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v12);
          if ((*(v13 + 128))(v11, v12, v13))
          {
            RECustomDeformerVertexBufferAllocateOutputBuffer();
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v14 = type metadata accessor for Logger();
            __swift_project_value_buffer(v14, logger);
            outlined init with copy of __REAssetService(a5, v75);
            v15 = Logger.logObject.getter();
            v16 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v74 = v18;
              *v17 = 136315394;
              *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E6F697469736F70, 0xE900000000000073, &v74);
              *(v17 + 12) = 2080;
              v20 = v76;
              v19 = v77;
              __swift_project_boxed_opaque_existential_1(v75, v76);
              v21 = (*(v19 + 72))(v20, v19);
              v23 = v22;
              __swift_destroy_boxed_opaque_existential_1(v75);
              v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v74);

              *(v17 + 14) = v24;
              _os_log_impl(&dword_1C1358000, v15, v16, "Buffer size zero for vertex type %s, deformer id:%s", v17, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6902A30](v18, -1, -1);
              MEMORY[0x1C6902A30](v17, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v75);
            }

            v7 = v73;
          }
        }

        v25 = a5[3];
        v26 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v25);
        (*(v26 + 80))(v75, v25, v26);
        if ((v75[0] & 0x20000) != 0)
        {
          v27 = RECustomDeformerVertexBufferInputBuffer();
          v28 = a5[3];
          v29 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v28);
          if ((*(v29 + 128))(v27, v28, v29))
          {
            RECustomDeformerVertexBufferAllocateOutputBuffer();
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v30 = type metadata accessor for Logger();
            __swift_project_value_buffer(v30, logger);
            outlined init with copy of __REAssetService(a5, v75);
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v74 = v34;
              *v33 = 136315394;
              *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x736C616D726F6ELL, 0xE700000000000000, &v74);
              *(v33 + 12) = 2080;
              v35 = v76;
              v36 = v77;
              __swift_project_boxed_opaque_existential_1(v75, v76);
              v37 = (*(v36 + 72))(v35, v36);
              v39 = v38;
              __swift_destroy_boxed_opaque_existential_1(v75);
              v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v74);

              *(v33 + 14) = v40;
              _os_log_impl(&dword_1C1358000, v31, v32, "Buffer size zero for vertex type %s, deformer id:%s", v33, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6902A30](v34, -1, -1);
              MEMORY[0x1C6902A30](v33, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v75);
            }

            v7 = v73;
          }
        }

        v41 = a5[3];
        v42 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v41);
        (*(v42 + 80))(v75, v41, v42);
        if ((v75[0] & 0x40000) != 0)
        {
          v43 = RECustomDeformerVertexBufferInputBuffer();
          v44 = a5[3];
          v45 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v44);
          if ((*(v45 + 128))(v43, v44, v45))
          {
            RECustomDeformerVertexBufferAllocateOutputBuffer();
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            __swift_project_value_buffer(v46, logger);
            outlined init with copy of __REAssetService(a5, v75);
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v74 = v50;
              *v49 = 136315394;
              *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73746E65676E6174, 0xE800000000000000, &v74);
              *(v49 + 12) = 2080;
              v51 = v76;
              v52 = v77;
              __swift_project_boxed_opaque_existential_1(v75, v76);
              v53 = (*(v52 + 72))(v51, v52);
              v55 = v54;
              __swift_destroy_boxed_opaque_existential_1(v75);
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v74);

              *(v49 + 14) = v56;
              _os_log_impl(&dword_1C1358000, v47, v48, "Buffer size zero for vertex type %s, deformer id:%s", v49, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6902A30](v50, -1, -1);
              MEMORY[0x1C6902A30](v49, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v75);
            }

            v7 = v73;
          }
        }

        v57 = a5[3];
        v58 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v57);
        (*(v58 + 80))(v75, v57, v58);
        if ((v75[0] & 0x80000) != 0)
        {
          v59 = RECustomDeformerVertexBufferInputBuffer();
          v60 = a5[3];
          v61 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v60);
          if ((*(v61 + 128))(v59, v60, v61))
          {
            RECustomDeformerVertexBufferAllocateOutputBuffer();
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            __swift_project_value_buffer(v62, logger);
            outlined init with copy of __REAssetService(a5, v75);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v74 = v66;
              *v65 = 136315394;
              *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65676E61746962, 0xEA00000000007374, &v74);
              *(v65 + 12) = 2080;
              v67 = v76;
              v68 = v77;
              __swift_project_boxed_opaque_existential_1(v75, v76);
              v69 = (*(v68 + 72))(v67, v68);
              v71 = v70;
              __swift_destroy_boxed_opaque_existential_1(v75);
              v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v74);

              *(v65 + 14) = v72;
              _os_log_impl(&dword_1C1358000, v63, v64, "Buffer size zero for vertex type %s, deformer id:%s", v65, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6902A30](v66, -1, -1);
              MEMORY[0x1C6902A30](v65, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v75);
            }

            v7 = v73;
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }
}

uint64_t specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.enableBuffers(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v2)
  {
    result = RECustomDeformerBuilderSetInputBufferEnabled();
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a2 + 2) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = RECustomDeformerBuilderSetOutputBufferEnabled();
  if ((v2 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = RECustomDeformerBuilderSetInputBufferEnabled();
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = RECustomDeformerBuilderSetOutputBufferEnabled();
  if ((v2 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = RECustomDeformerBuilderSetInputBufferEnabled();
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v2 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = RECustomDeformerBuilderSetInputBufferEnabled();
    if ((v3 & 8) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = RECustomDeformerBuilderSetOutputBufferEnabled();
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v3 & 8) == 0)
  {
    return result;
  }

LABEL_17:

  return RECustomDeformerBuilderSetOutputBufferEnabled();
}

void *specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.makeRuntime(id:spec:deform:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v24 = a3[1];
  v25 = *a3;
  v23 = a3[2];
  *&v33 = a1;
  *(&v33 + 1) = a2;
  LOBYTE(v34) = v25;
  BYTE1(v34) = v24;
  BYTE2(v34) = v23;
  *(&v34 + 1) = a4;
  v35 = a5;
  v29 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputGPU;
  v30 = &protocol witness table for _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputGPU;
  v7 = swift_allocObject();
  aBlock = v7;
  v8 = v34;
  *(v7 + 16) = v33;
  *(v7 + 32) = v8;
  *(v7 + 48) = v35;
  outlined init with copy of __REAssetService(&aBlock, v32);
  v9 = swift_allocObject();
  outlined init with take of ForceEffectBase(v32, v9 + 16);

  outlined init with copy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputGPU(&v33, v32);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v11 = *(&v34 + 1);
  v10 = v35;
  v12 = swift_allocObject();
  v13 = v34;
  *(v12 + 16) = v33;
  *(v12 + 32) = v13;
  *(v12 + 48) = v35;
  *(v12 + 56) = v11;
  *(v12 + 64) = v10;
  v30 = closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createAllocatorFunction(_:)partial apply;
  v31 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ();
  v29 = &block_descriptor_36_0;
  v14 = _Block_copy(&aBlock);
  outlined init with copy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputGPU(&v33, v32);

  v30 = partial apply for closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createDeformFunctionGPU(_:);
  v31 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @guaranteed MTLComputeCommandEncoder, @unowned UnsafeMutableRawPointer?) -> ();
  v29 = &block_descriptor_39_0;
  v15 = _Block_copy(&aBlock);

  String.utf8CString.getter();
  GPUDeformer = RECustomDeformerBuilderCreateGPUDeformer();

  _Block_release(v15);
  _Block_release(v14);
  LOBYTE(aBlock) = v25;
  BYTE1(aBlock) = v24;
  BYTE2(aBlock) = v23;
  specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.enableBuffers(_:_:)(GPUDeformer, &aBlock);
  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  Deformer = RECustomDeformerBuilderCreateDeformer();
  if (Deformer)
  {
    v21 = Deformer;
    type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerRuntime();
    v19 = swift_allocObject();
    v19[3] = a2;
    v19[4] = v21;
    v19[2] = a1;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError();
    swift_allocError();
    swift_willThrow();
  }

  RERelease();

  outlined destroy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputGPU(&v33);
  return v19;
}

{
  v24 = a3[1];
  v25 = *a3;
  v23 = a3[2];
  *&v33 = a1;
  *(&v33 + 1) = a2;
  LOBYTE(v34) = v25;
  BYTE1(v34) = v24;
  BYTE2(v34) = v23;
  *(&v34 + 1) = a4;
  v35 = a5;
  v29 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputCPU;
  v30 = &protocol witness table for _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputCPU;
  v7 = swift_allocObject();
  aBlock = v7;
  v8 = v34;
  *(v7 + 16) = v33;
  *(v7 + 32) = v8;
  *(v7 + 48) = v35;
  outlined init with copy of __REAssetService(&aBlock, v32);
  v9 = swift_allocObject();
  outlined init with take of ForceEffectBase(v32, v9 + 16);

  outlined init with copy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputCPU(&v33, v32);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v11 = *(&v34 + 1);
  v10 = v35;
  v12 = swift_allocObject();
  v13 = v34;
  *(v12 + 16) = v33;
  *(v12 + 32) = v13;
  *(v12 + 48) = v35;
  *(v12 + 56) = v11;
  *(v12 + 64) = v10;
  v30 = partial apply for closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createAllocatorFunction(_:);
  v31 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ();
  v29 = &block_descriptor_38;
  v14 = _Block_copy(&aBlock);
  outlined init with copy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputCPU(&v33, v32);

  v30 = partial apply for closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createDeformFunctionCPU(_:);
  v31 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer, @unowned UnsafeMutableRawPointer?) -> ();
  v29 = &block_descriptor_23_0;
  v15 = _Block_copy(&aBlock);

  String.utf8CString.getter();
  CPUDeformer = RECustomDeformerBuilderCreateCPUDeformer();

  _Block_release(v15);
  _Block_release(v14);
  LOBYTE(aBlock) = v25;
  BYTE1(aBlock) = v24;
  BYTE2(aBlock) = v23;
  specialized static _Proto_MeshDeformation_v1.CustomDeformerBuilder.enableBuffers(_:_:)(CPUDeformer, &aBlock);
  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  Deformer = RECustomDeformerBuilderCreateDeformer();
  if (Deformer)
  {
    v21 = Deformer;
    type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerRuntime();
    v19 = swift_allocObject();
    v19[3] = a2;
    v19[4] = v21;
    v19[2] = a1;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError();
    swift_allocError();
    swift_willThrow();
  }

  RERelease();

  outlined destroy of _Proto_MeshDeformation_v1.CustomDeformerBuilder.InputCPU(&v33);
  return v19;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformerBuilderError and conformance _Proto_MeshDeformation_v1.CustomDeformerBuilderError);
  }

  return result;
}

uint64_t partial apply for closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createDeformFunctionCPU(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeParameters(_:_:)(a2);
  v4();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeParameters(_:_:)(uint64_t a1)
{
  v1 = RECustomDeformerParametersDeformationCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (v1)
    {
      v4 = 0;
      v5 = &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMd;
      v13 = v1;
      do
      {
        v6 = RECustomDeformerParametersConstVertexBufferData();
        specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)(v6, specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:), &v44);
        specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)(v6, specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexOutputBuffer(_:_:), &v35);
        ObjectType = MEMORY[0x1C68F8650](a1, v4);
        v8 = ObjectType;
        v53[6] = v50;
        v53[7] = v51;
        v54 = v52;
        v53[2] = v46;
        v53[3] = v47;
        v53[5] = v49;
        v53[4] = v48;
        v53[1] = v45;
        v53[0] = v44;
        v55[6] = v41;
        v55[7] = v42;
        v56 = v43;
        v55[2] = v37;
        v55[3] = v38;
        v55[4] = v39;
        v55[5] = v40;
        v55[0] = v35;
        v55[1] = v36;
        if (ObjectType)
        {
          ObjectType = swift_getObjectType();
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v20[6] = v50;
        v20[7] = v51;
        v20[2] = v46;
        v20[3] = v47;
        v20[4] = v48;
        v20[5] = v49;
        v20[0] = v44;
        v20[1] = v45;
        v27 = v40;
        v28 = v41;
        v29 = v42;
        v23 = v36;
        v24 = v37;
        v25 = v38;
        v26 = v39;
        v30 = v43;
        v22 = v35;
        v21 = v52;
        v31 = v9;
        v32 = 0;
        v33 = 0;
        v34 = ObjectType;
        v10 = v5;
        outlined init with copy of [String : String](v20, __src, v5, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMR);
        outlined init with copy of [String : String](v53, v17, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMR);
        outlined init with copy of [String : String](v55, v17, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMR);
        v11 = v3[2];
        v12 = v3[3];
        swift_unknownObjectRetain();
        if (v11 >= v12 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1, v3);
        }

        ++v4;
        swift_unknownObjectRelease();
        v5 = v10;
        outlined destroy of BodyTrackingComponent?(v20, v10, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMR);
        v15[6] = v41;
        v15[7] = v42;
        v16 = v43;
        v15[2] = v37;
        v15[3] = v38;
        v15[4] = v39;
        v15[5] = v40;
        v15[0] = v35;
        v15[1] = v36;
        outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMR);
        v17[6] = v50;
        v17[7] = v51;
        v18 = v52;
        v17[2] = v46;
        v17[3] = v47;
        v17[4] = v48;
        v17[5] = v49;
        v17[0] = v44;
        v17[1] = v45;
        outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterV13VertexBuffersVy_So9MTLBuffer_pSoAH_p_SoAH_pGMR);
        v3[2] = v11 + 1;
        memcpy(&v3[38 * v11 + 4], __src, 0x130uLL);
      }

      while (v13 != v4);
    }

    return v3;
  }

  return result;
}

{
  v2 = RECustomDeformerParametersDeformationCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (v2)
    {
      v5 = 0;
      v12 = v2;
      do
      {
        v6 = RECustomDeformerParametersConstVertexBufferData();
        specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)(v6, specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffer(_:_:), v33);
        specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexInputBuffers(_:)(v6, specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeVertexOutputBuffer(_:_:), v35);
        ObjectType = MEMORY[0x1C68F8650](a1, v5);
        v8 = ObjectType;
        if (ObjectType)
        {
          ObjectType = swift_getObjectType();
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v14[10] = v33[10];
        v14[11] = v33[11];
        v28 = v36;
        v14[6] = v33[6];
        v14[7] = v33[7];
        v14[8] = v33[8];
        v14[9] = v33[9];
        v14[2] = v33[2];
        v14[3] = v33[3];
        v14[4] = v33[4];
        v14[5] = v33[5];
        v14[0] = v33[0];
        v14[1] = v33[1];
        v26 = v35[10];
        v27 = v35[11];
        v22 = v35[6];
        v23 = v35[7];
        v24 = v35[8];
        v25 = v35[9];
        v18 = v35[2];
        v19 = v35[3];
        v20 = v35[4];
        v21 = v35[5];
        v16 = v35[0];
        v17 = v35[1];
        v15 = v34;
        v29 = v9;
        v30 = 0;
        v31 = 0;
        v32 = ObjectType;
        outlined init with copy of [String : String](v14, __src, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMR);
        v11 = v4[2];
        v10 = v4[3];
        swift_unknownObjectRetain();
        if (v11 >= v10 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
        }

        ++v5;
        swift_unknownObjectRelease();
        outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMR);
        v4[2] = v11 + 1;
        memcpy(&v4[54 * v11 + 4], __src, 0x1B0uLL);
      }

      while (v12 != v5);
    }

    return v4;
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in static _Proto_MeshDeformation_v1.CustomDeformerBuilder.createDeformFunctionGPU(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = specialized _Proto_MeshDeformation_v1.CustomDeformerBuilder.BuilderInput.makeParameters(_:_:)(a2);
  v6(v7, a3);
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance DynamicLightShadowComponent@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = REDynamicLightShadowComponentGetCastsShadow();
  *a2 = result;
  return result;
}

uint64_t static DynamicLightShadowComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = REDynamicLightShadowComponentGetCastsShadow();
  *a2 = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance DynamicLightShadowComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REDynamicLightShadowComponentSetCastsShadow();

  return RENetworkMarkComponentDirty();
}

uint64_t DynamicLightShadowComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REDynamicLightShadowComponentSetCastsShadow();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized static __RKVisibilityShowPopAnimation.createVisibilityShowPopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 75, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowPopAnimation.createVisibilityShowPopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 88, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #2 of static __RKVisibilityShowPopAnimation.createVisibilityShowPopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 63, 0, MEMORY[0x1E69E7CC0]);
    v7 = &outlined read-only object #0 of static __RKVisibilityShowPopAnimation.createVisibilityShowPopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v7, &v56);
  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_9:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_40;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 MeshResource.GenerateTextOptions.containerFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 MeshResource.GenerateTextOptions.containerFrame.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2 & 1;
  return result;
}

double MeshResource.GenerateTextOptions.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

Swift::Int MeshResource.ShapeExtrusionOptions.ChamferMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

int32x4_t MeshResource.ShapeExtrusionOptions.MaterialAssignment.init(assignAll:)@<Q0>(unsigned int a1@<W0>, int32x4_t *a2@<X8>)
{
  result = vdupq_n_s32(a1);
  *a2 = result;
  a2[1].i32[0] = a1;
  return result;
}

uint64_t MeshResource.ShapeExtrusionOptions.MaterialAssignment.init(front:back:extrusion:frontChamfer:backChamfer:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double MeshResource.ShapeExtrusionOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  v2 = (a1 + 16);
  *a1 = 1048576000;
  *(a1 + 8) = 0;
  outlined destroy of CGPathProviding?(a1 + 16);
  *v2 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  *&result = 6;
  *(a1 + 64) = xmmword_1C18C5C60;
  *(a1 + 80) = 2;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  return result;
}

uint64_t outlined destroy of CGPathProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MeshResource.ShapeExtrusionOptions.extrusionMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(v2, v3);
}

uint64_t outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t MeshResource.ShapeExtrusionOptions.extrusionMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of CGPathProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CGPathProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 MeshResource.ShapeExtrusionOptions.materialAssignment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 100);
  result = *(v1 + 84);
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

__n128 MeshResource.ShapeExtrusionOptions.materialAssignment.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  result = *a1;
  *(v1 + 84) = *a1;
  *(v1 + 100) = v2;
  return result;
}

uint64_t MeshResource.init(extruding:textOptions:extrusionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v9;
  v17 = v8;
  v10 = extrude(text:textOptions:shapeOptions:)(a1, v16, a3);
  if (v4 || (v13 = specialized static ExtrudedGlyphDescriptor.compile(glyphs:)(v10), , v5 = (*(v3 + 128))(v13), *&v16[0] = v5, RequestLoadable.enforceResourceSharingBeforeECSCommits()(), !v14))
  {
    outlined destroy of MeshResource.ShapeExtrusionOptions(a3);
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  else
  {
    outlined destroy of MeshResource.ShapeExtrusionOptions(a3);
    v15 = type metadata accessor for AttributedString();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v5;
}

{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  v5 = *(a2 + 16);
  *(v4 + 48) = *a2;
  *(v4 + 64) = v5;
  *(v4 + 144) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](MeshResource.init(extruding:textOptions:extrusionOptions:), 0, 0);
}

uint64_t MeshResource.init(extruding:textOptions:extrusionOptions:)()
{
  v10 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v4;
  v9 = v1;
  *(v0 + 80) = extrude(text:textOptions:shapeOptions:)(v2, v8, v3);
  *(v0 + 88) = 0;
  type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MeshResource.init(extruding:textOptions:extrusionOptions:), v6, v5);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v0[13] = specialized static ExtrudedGlyphDescriptor.compile(glyphs:)(v3);
  v0[14] = v2;
  v4 = v0[10];

  if (v2)
  {
    v5 = MeshResource.init(extruding:textOptions:extrusionOptions:);
  }

  else
  {
    v5 = MeshResource.init(extruding:textOptions:extrusionOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v1 = (*(v0[5] + 128))(v0[13]);
  v0[15] = v1;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = MeshResource.init(extruding:textOptions:extrusionOptions:);
  v3 = v0[5];

  return RequestLoadable.awaitForResourceSharing()(v3, &protocol witness table for MeshResource);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = MeshResource.init(extruding:textOptions:extrusionOptions:);
  }

  else
  {
    v3 = MeshResource.init(extruding:textOptions:extrusionOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[3];
  outlined destroy of MeshResource.ShapeExtrusionOptions(v0[4]);
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[3];
  outlined destroy of MeshResource.ShapeExtrusionOptions(v0[4]);
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

{
  v1 = v0[15];
  v2 = v0[3];
  outlined destroy of MeshResource.ShapeExtrusionOptions(v0[4]);
  v3 = type metadata accessor for AttributedString();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

unint64_t MeshResource.init(extruding:extrusionOptions:)(const CGPath *a1, int64_t a2)
{
  result = extrude(path:options:)(a1, a2);
  if (v3)
  {
    outlined destroy of MeshResource.ShapeExtrusionOptions(a2);

    return v2;
  }

  v7 = result;
  v21 = a2;
  v23 = a1;
  v8 = *(result + 16);
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v2 = MeshResource.init(from:)(v11);
    outlined destroy of MeshResource.ShapeExtrusionOptions(v21);

    return v2;
  }

  v9 = 0;
  v10 = (result + 32);
  v11 = MEMORY[0x1E69E7CC0];
  while (v9 < *(v7 + 16))
  {
    memcpy(__dst, v10, sizeof(__dst));
    result = ExtrudedShapeDescriptor.allDescriptors.getter();
    v12 = *(result + 16);
    v13 = *(v11 + 16);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_25;
    }

    v15 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v16 = *(v11 + 24) >> 1, v16 >= v14))
    {
      if (*(v15 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v17 = v13 + v12;
      }

      else
      {
        v17 = v13;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v17, 1, v11);
      v11 = result;
      v16 = *(result + 24) >> 1;
      if (*(v15 + 16))
      {
LABEL_16:
        if (v16 - *(v11 + 16) < v12)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = *(v11 + 16);
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_28;
          }

          *(v11 + 16) = v20;
        }

        goto LABEL_5;
      }
    }

    if (v12)
    {
      goto LABEL_26;
    }

LABEL_5:
    ++v9;
    v10 += 520;
    if (v8 == v9)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](MeshResource.init(extruding:extrusionOptions:), 0, 0);
}

uint64_t MeshResource.init(extruding:extrusionOptions:)()
{
  v19 = v0;
  result = extrude(path:options:)(*(v0 + 16), *(v0 + 24));
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v16 = swift_task_alloc();
    *(v0 + 40) = v16;
    *v16 = v0;
    v16[1] = MeshResource.init(extruding:extrusionOptions:);
    v17 = *(v0 + 32);

    return MeshResource.init(from:)(v6);
  }

  v4 = 0;
  v5 = (result + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    memcpy(v18, v5, sizeof(v18));
    result = ExtrudedShapeDescriptor.allDescriptors.getter();
    v7 = *(result + 16);
    v8 = *(v6 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_24;
    }

    v10 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v11 = *(v6 + 24) >> 1, v11 >= v9))
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = v8;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v6);
      v6 = result;
      v11 = *(result + 24) >> 1;
      if (*(v10 + 16))
      {
LABEL_15:
        if (v11 - *(v6 + 16) < v7)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = *(v6 + 16);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_27;
          }

          *(v6 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v4;
    v5 += 520;
    if (v3 == v4)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = *(v0 + 24);

  outlined destroy of MeshResource.ShapeExtrusionOptions(v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2(v3);
}

{
  v1 = *(v0 + 24);

  outlined destroy of MeshResource.ShapeExtrusionOptions(v1);
  v2 = *(v0 + 48);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = MeshResource.init(extruding:extrusionOptions:);
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = MeshResource.init(extruding:extrusionOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t lazy protocol witness table accessor for type MeshResource.ShapeExtrusionOptions.ChamferMode and conformance MeshResource.ShapeExtrusionOptions.ChamferMode()
{
  result = lazy protocol witness table cache variable for type MeshResource.ShapeExtrusionOptions.ChamferMode and conformance MeshResource.ShapeExtrusionOptions.ChamferMode;
  if (!lazy protocol witness table cache variable for type MeshResource.ShapeExtrusionOptions.ChamferMode and conformance MeshResource.ShapeExtrusionOptions.ChamferMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshResource.ShapeExtrusionOptions.ChamferMode and conformance MeshResource.ShapeExtrusionOptions.ChamferMode);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MeshResource.GenerateTextOptions(uint64_t result, int a2, int a3)
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

  *(result + 33) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation15CGPathProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MeshResource.ShapeExtrusionOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for MeshResource.ShapeExtrusionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t TextureResource.OptionError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(56);
    v5 = 0xD000000000000035;
    v6 = 0x80000001C18EBBF0;
  }

  else
  {
    _StringGuts.grow(_:)(54);
    v6 = 0x80000001C18EBC30;
    v5 = 0xD000000000000033;
  }

  MEMORY[0x1C68F3410](v5, v6);
  MEMORY[0x1C68F3410](a1, a2);
  MEMORY[0x1C68F3410](34, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance TextureResource.ExportError()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    type metadata accessor for CFErrorRef(0);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    return Error.localizedDescription.getter();
  }
}

uint64_t static TextureResource.exportKTX(contentsOf:to:options:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v33 = v4;

  specialized static TextureResource.importTextureData(contentsOf:options:)();
  if (v3)
  {

LABEL_23:
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, &v36);
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_1(&v36, v38);
  (*(v8 + 32))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  v10 = specialized _NativeDictionary.filter(_:)(v33, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  v11 = specialized _NativeDictionary.filter(_:)(v33, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

  if (*(v10 + 16))
  {
    v27 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(TextureAssetFromData, v10);

    if (v27)
    {

      v27(v28);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27);
    }
  }

  else
  {
  }

  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v12 + 40, &v34);
  if (v35)
  {
    outlined init with take of ForceEffectBase(&v34, &v36);
    v13 = v38;
    v14 = v39;
    __swift_project_boxed_opaque_existential_1(&v36, v38);
    (*(v14 + 24))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v36);
    *&v34 = 0;
    URL.path.getter();
    String.utf8CString.getter();

    v15 = _RERenderManagerExportTextureAssetToKTXWithErrorHandling();

    if (v15)
    {
      if (*(v11 + 16))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, logger);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          buf = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v36 = v32;
          *buf = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySSyp_GMd, &_sSD4KeysVySSyp_GMR);
          lazy protocol witness table accessor for type [String : Any].Keys and conformance [A : B].Keys();
          lazy protocol witness table accessor for type String and conformance String();
          v19 = Sequence<>.joined(separator:)();
          v21 = v20;

          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v36);

          *(buf + 4) = v22;
          _os_log_impl(&dword_1C1358000, v17, v18, "Unexpected options %s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1C6902A30](v32, -1, -1);
          MEMORY[0x1C6902A30](buf, -1, -1);
        }
      }
    }

    else
    {
      v23 = v34;
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18EBB70);
      type metadata accessor for URL();
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v24);

      MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18EBB90);
      v25 = v37;
      if (v23)
      {

        v25 = 0;
        v26 = v23;
      }

      else
      {
        v26 = v36;
      }

      lazy protocol witness table accessor for type TextureResource.ExportError and conformance TextureResource.ExportError();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v25;
      *(v29 + 16) = v23 == 0;
      swift_willThrow();
    }

    RERelease();
    RERelease();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.exportCubeMapKTX(contentsOf:to:options:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v38 = v4;

  specialized static TextureResource.importTextureData(contentsOf:options:)();
  if (v3)
  {
    goto LABEL_5;
  }

  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v6 + 40, &v39);
  if (v40)
  {
    outlined init with take of ForceEffectBase(&v39, &v41);
    v7 = v43;
    v8 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    (*(v8 + 24))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v41);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = RECreateCubeTextureDataFromLatLong();

    if (v10)
    {
      v11 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v11 + 120, &v41);
      v13 = v43;
      v12 = v44;
      __swift_project_boxed_opaque_existential_1(&v41, v43);
      (*(v12 + 32))(v13, v12);
      __swift_destroy_boxed_opaque_existential_1(&v41);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      v15 = specialized _NativeDictionary.filter(_:)(v38, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
      v16 = specialized _NativeDictionary.filter(_:)(v38, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

      if (*(v15 + 16))
      {
        v31 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(TextureAssetFromData, v15);

        if (v31)
        {

          v31(v32);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v31);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v31);
        }
      }

      else
      {
      }

      URL.path.getter();
      String.utf8CString.getter();

      v19 = _RERenderManagerExportTextureAssetToKTXWithErrorHandling();

      if (v19)
      {
        if (*(v16 + 16))
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, logger);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v41 = v24;
            *v23 = 136315138;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySSyp_GMd, &_sSD4KeysVySSyp_GMR);
            lazy protocol witness table accessor for type [String : Any].Keys and conformance [A : B].Keys();
            lazy protocol witness table accessor for type String and conformance String();
            v25 = Sequence<>.joined(separator:)();
            v27 = v26;

            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v41);

            *(v23 + 4) = v28;
            _os_log_impl(&dword_1C1358000, v21, v22, "Unexpected options %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v24);
            MEMORY[0x1C6902A30](v24, -1, -1);
            MEMORY[0x1C6902A30](v23, -1, -1);
          }
        }

        RERelease();
        RERelease();
      }

      else
      {
        v41 = 0;
        v42 = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18EBB70);
        type metadata accessor for URL();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v29);

        MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18EBB90);
        v30 = v42;
        v35 = v41;
        lazy protocol witness table accessor for type TextureResource.ExportError and conformance TextureResource.ExportError();
        swift_allocError();
        *v36 = v35;
        *(v36 + 8) = v30;
        *(v36 + 16) = 1;
        swift_willThrow();
        RERelease();
        RERelease();
      }

      RERelease();

      goto LABEL_24;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    type metadata accessor for URL();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v18 = v42;
    v33 = v41;
    lazy protocol witness table accessor for type TextureResource.ExportError and conformance TextureResource.ExportError();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = v18;
    *(v34 + 16) = 1;
    swift_willThrow();
    RERelease();
LABEL_5:

LABEL_24:
    v37 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n179_s10RealityKit15TextureResourceC0A10FoundationE13maybeCompress33_1038D445C766E7BDEA2B57AFBE26E923LL12textureAsset7optionsys13OpaquePointerV_SDySSypGztKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    outlined init with copy of Any(v17 + 32 * v16, v34);
    outlined init with take of Any(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = outlined init with take of Any(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMR);
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
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

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
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
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

uint64_t specialized static TextureResource.importTextureData(contentsOf:options:)()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v1 = *(v0 + 16);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  RETextureImportOperationCreateWithURL();

  v5 = *MEMORY[0x1E6998F20];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary._Variant.removeValue(forKey:)(v6, v7, &v26);

  if (v27)
  {
    outlined init with take of Any(&v26, v28);
    outlined init with copy of Any(v28, &v26);
    if (!swift_dynamicCast())
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      lazy protocol witness table accessor for type TextureResource.OptionError and conformance TextureResource.OptionError();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
      goto LABEL_15;
    }

    RETextureImportOperationSetSemantic();
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v26, &_sypSgMd, &_sypSgMR);
  }

  v8 = *MEMORY[0x1E6998F18];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary._Variant.removeValue(forKey:)(v9, v10, &v26);

  if (v27)
  {
    outlined init with take of Any(&v26, v28);
    outlined init with copy of Any(v28, &v26);
    if (swift_dynamicCast())
    {
      v11 = MEMORY[0x1C68F3280]();

      RETextureImportOperationSetColorSpaceName();

      __swift_destroy_boxed_opaque_existential_1(v28);
      goto LABEL_10;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    lazy protocol witness table accessor for type TextureResource.OptionError and conformance TextureResource.OptionError();
    swift_allocError();
    *v20 = v12;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
LABEL_15:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_20;
  }

  outlined destroy of BodyTrackingComponent?(&v26, &_sypSgMd, &_sypSgMR);
LABEL_10:
  *&v26 = 0;
  AssetData = RETextureImportOperationCreateAssetData();
  v17 = v26;
  if (AssetData)
  {
    v12 = AssetData;
    if (v26)
    {
    }
  }

  else
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18EBBC0);
    type metadata accessor for URL();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v21);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v12 = *(&v28[0] + 1);
    if (v17)
    {

      v12 = 0;
      v22 = v17;
    }

    else
    {
      v22 = *&v28[0];
    }

    lazy protocol witness table accessor for type TextureResource.ExportError and conformance TextureResource.ExportError();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = v12;
    *(v23 + 16) = v17 == 0;
    swift_willThrow();
  }

LABEL_20:
  RERelease();
  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t lazy protocol witness table accessor for type TextureResource.ExportError and conformance TextureResource.ExportError()
{
  result = lazy protocol witness table cache variable for type TextureResource.ExportError and conformance TextureResource.ExportError;
  if (!lazy protocol witness table cache variable for type TextureResource.ExportError and conformance TextureResource.ExportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.ExportError and conformance TextureResource.ExportError);
  }

  return result;
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TextureResource.OptionError and conformance TextureResource.OptionError()
{
  result = lazy protocol witness table cache variable for type TextureResource.OptionError and conformance TextureResource.OptionError;
  if (!lazy protocol witness table cache variable for type TextureResource.OptionError and conformance TextureResource.OptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.OptionError and conformance TextureResource.OptionError);
  }

  return result;
}

uint64_t StateMachineState.init(name:dwellTime:commands:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  result = a3();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = result;
  return result;
}

uint64_t StateMachineState.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StateMachineState.commands.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t StateMachineState.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MaterialParameters.Texture.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 25);
  v14 = *(v1 + 26);
  v15 = *(v1 + 27);
  v28 = v10;
  v29 = v9;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C189FFC0;
  *(v16 + 32) = 0x72656C706D6173;
  *(v16 + 40) = 0xE700000000000000;
  *(v16 + 72) = &type metadata for MaterialParameters.Texture.Sampler;
  if (v10)
  {
    v10 = v10;

    v17 = v10;
  }

  else
  {

    v17 = REMaterialCreateDefaultSamplerDescriptor();
  }

  *(v16 + 48) = v17;
  *(v16 + 80) = 0x656372756F736572;
  *(v16 + 88) = 0xE800000000000000;
  v18 = type metadata accessor for TextureResource();
  *(v16 + 96) = v9;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0x7865646E497675;
  v19 = MEMORY[0x1E69E6530];
  *(v16 + 136) = 0xE700000000000000;
  *(v16 + 144) = v11;
  *(v16 + 168) = v19;
  *(v16 + 176) = 0x656C7A7A697773;
  *(v16 + 184) = 0xE700000000000000;
  type metadata accessor for MTLTextureSwizzleChannels(0);
  *(v16 + 216) = v20;
  *(v16 + 192) = v12;
  *(v16 + 193) = v13;
  *(v16 + 194) = v14;
  *(v16 + 195) = v15;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v2 + 104))(v25, *MEMORY[0x1E69E75D8], v26);
  v22 = v10;

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void closure #1 in variable initialization expression of NamedFileAssetResolver.callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_8;
  }

  String.init(utf8String:)();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = String.init(utf8String:)();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = specialized NamedFileAssetResolver.resolve(_:_:)(v4, v5);

  if (v6)
  {
    [v6 fileSystemRepresentation];

    v7 = v6;
  }

  else
  {
  }
}

uint64_t NamedFileAssetResolver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized NamedFileAssetResolver.resolve(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v27 - v11;
  v13 = *(v2 + 24);
  [v13 lock];
  v14 = *(v2 + 16);
  if (*(v14 + 16))
  {

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v16)
    {
      v17 = v15;
      v18 = *(v14 + 56);
      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v12, v18 + *(v20 + 72) * v17, v19);

      (*(v20 + 56))(v12, 0, 1, v19);
      goto LABEL_6;
    }
  }

  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
LABEL_6:
  outlined init with copy of URL?(v12, v8);
  type metadata accessor for URL();
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v8, 1, v19) == 1)
  {
    outlined destroy of URL?(v12);
    outlined destroy of URL?(v8);
    v22 = 0;
  }

  else
  {
    v23 = URL.path.getter();
    v25 = v24;
    (*(v21 + 8))(v8, v19);
    v22 = MEMORY[0x1C68F3280](v23, v25);

    outlined destroy of URL?(v12);
  }

  [v13 unlock];
  return v22;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HasPerspectiveCamera.camera.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v12);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA017PerspectiveCameraD0V_Tt0B5(v12, v9);

  v4 = v10 | (v11 << 32);
  if ((v4 & 0xFF00000000) == 0x200000000)
  {
    v5 = 2139095040;
    v6 = 1008981770;
    LOBYTE(v7) = 1;
    v8 = 1114636288;
  }

  else
  {
    v6 = v9[0];
    v5 = v9[1];
    v8 = v10;
    v7 = HIDWORD(v4) & 1;
  }

  *a1 = v6;
  *(a1 + 4) = v5;
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  return result;
}

uint64_t HasPerspectiveCamera.camera.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 12))
  {
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(v2, v4 | v3, *v6);
  return v5(v8, 0);
}

void (*HasPerspectiveCamera.camera.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  HasPerspectiveCamera.camera.getter((v7 + 3));
  return HasPerspectiveCamera.camera.modify;
}

void HasPerspectiveCamera.camera.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 28);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 36);
  v5 = *(*a1 + 16);
  v6[0] = *(*a1 + 24);
  v6[1] = v3;
  v6[2] = v2;
  v7 = v4;
  HasPerspectiveCamera.camera.setter(v6);

  free(v1);
}

uint64_t specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(float32x2_t a1, float a2, float32x2_t a3, float a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  v12 = *(*a6 + 16);
  if (v12)
  {
    v6 = a6;
    v7 = a4;
    v9 = a3;
    v8 = a2;
    v10 = a1;
    v19 = *(v11 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
LABEL_3:
  if (v12 > *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v14 = vsub_f32(v9, v10);
    v15 = ((v7 - v8) + (v14.f32[1] + (v14.f32[0] + 0.0))) / 3.0;
    v16 = 64;
    do
    {
      v17 = vsubq_f32(*(v11 + v16), v19);
      *&v18 = vmulq_n_f32(v17, v15).u64[0];
      *(&v18 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v15, v17, 2));
      *(v11 + v16) = v18;
      v16 += 48;
      --v12;
    }

    while (v12);
    *v6 = v11;
  }

  return result;
}

void CustomMaterial.lightingModel.getter(char *a1@<X8>)
{
  v2 = *(v1 + 178);
  v3 = (v2 >> 2) & 2;
  if ((v2 & 4) != 0)
  {
    LOBYTE(v3) = 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  *a1 = v4;
}

uint64_t CustomMaterial.baseColor.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

uint64_t CustomMaterial.roughness.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

uint64_t CustomMaterial.custom.getter@<X0>(int8x16_t *a1@<X8>)
{
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  return CustomMaterial.Custom.init(material:alternateTintKey:)(v4, a1);
}

void CustomMaterial.blending.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 178))
  {
    v11 = &type metadata for CustomMaterial;
    v12 = &protocol witness table for CustomMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of CustomMaterial(v1, v10[0] + 16);
    CustomMaterial.Opacity.init(material:alternateTintKey:)(v10, v13);
    v11 = &type metadata for CustomMaterial;
    v12 = &protocol witness table for CustomMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of CustomMaterial(v1, v10[0] + 16);
    CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v9, v10, 0, 0);
    v6 = v9;

    Alpha = CGColorGetAlpha(v6);

    CustomMaterial.getCurrentResourceBlendMode()(v10);
    *&Alpha = Alpha;
    v3 = LODWORD(Alpha);
    v5 = v14;
    v8 = 0x100000000;
    if (!LOBYTE(v10[0]))
    {
      v8 = 0;
    }

    v4 = v8 | v15;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 20) = BYTE4(v4);
}

unint64_t CustomMaterial.opacityThreshold.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];

  v5 = v4;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18DD850, v5, v12);
  if (v13 == 255)
  {
    v6 = *v0;
    __MaterialResource.subscript.getter(&v14);
  }

  else
  {
    v14 = v12[0];
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    v18 = v13;
  }

  v10[2] = v16;
  v10[3] = v17;
  v11 = v18;
  v10[0] = v14;
  v10[1] = v15;
  if (v18 == 255)
  {
    goto LABEL_8;
  }

  if (v18 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_8:
    v7 = 0;
    v8 = 1;
    return v7 | (v8 << 32);
  }

  v7 = LODWORD(v10[0]);
  outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  v8 = 0;
  return v7 | (v8 << 32);
}

void CustomMaterial.faceCulling.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 48))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 40);
    if (v2 >= 3)
    {
      LOBYTE(v2) = 2;
    }

    *a1 = v2;
  }
}

void CustomMaterial.process(blending:doShaderUpdate:)(uint64_t a1, char a2)
{
  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    if (a2)
    {
      v6 = *(v2 + 256);
      v7 = *(v2 + 272);
      v60 = *(v2 + 240);
      v61 = v6;
      v8 = *(v2 + 176);
      v9 = *(v2 + 192);
      v62 = v7;
      v56 = v8;
      v57 = v9;
      v10 = *(v2 + 224);
      v58 = *(v2 + 208);
      v59 = v10;
      *&v64[68] = *(v2 + 244);
      v11 = *(v2 + 276);
      *&v64[84] = *(v2 + 260);
      v63 = *(v2 + 288);
      *&v64[100] = v11;
      *&v64[116] = *(v2 + 292);
      *&v64[4] = *(v2 + 180);
      *&v64[20] = *(v2 + 196);
      *&v64[36] = *(v2 + 212);
      *&v64[52] = *(v2 + 228);
      *v64 = v8 & 0xFFFEFFFF;
      outlined init with copy of CustomMaterial.CustomShaderParameters(&v56, v54);
      specialized MaterialWithShaderCache.shaderParameters.setter(v64);
    }
  }

  else
  {
    v12 = *(a1 + 16) | (*(a1 + 20) << 32);
    v13 = *a1;
    specialized Material.setParameter<A>(_:alternateTintKey:)(v5, v12 & 0x1FFFFFFFFLL, *a1);
    if ((RELinkedOnOrAfterFall2024OSVersions() & 1) == 0)
    {
      *&v64[24] = &type metadata for CustomMaterial;
      *&v64[32] = &protocol witness table for CustomMaterial;
      *v64 = swift_allocObject();
      outlined init with copy of CustomMaterial(v2, *v64 + 16);
      CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v56, v64, 0, 0);
      v14 = v56;

      CopyWithAlpha = CGColorCreateCopyWithAlpha(v14, v13);

      if (CopyWithAlpha)
      {
        *&v64[24] = &type metadata for CustomMaterial;
        *&v64[32] = &protocol witness table for CustomMaterial;
        *v64 = swift_allocObject();
        outlined init with copy of CustomMaterial(v2, *v64 + 16);
        v16 = CopyWithAlpha;
        CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v56, v64, 0, 0);

        specialized Material.setParameter<A>(_:alternateTintKey:)(v16, *(&v56 + 1), v57, 0, 0);
      }
    }

    if (a2)
    {
      v17 = *(v2 + 256);
      v18 = *(v2 + 272);
      v60 = *(v2 + 240);
      v61 = v17;
      v19 = *(v2 + 176);
      v20 = *(v2 + 192);
      v62 = v18;
      v63 = *(v2 + 288);
      v56 = v19;
      v57 = v20;
      v21 = *(v2 + 224);
      v58 = *(v2 + 208);
      v59 = v21;
      v22 = WORD1(v19);
      v23 = v19;
      v24 = *(v2 + 228);
      v48 = *(v2 + 212);
      v49 = v24;
      v25 = *(v2 + 196);
      v46 = *(v2 + 180);
      v47 = v25;
      v53 = *(v2 + 292);
      v26 = *(v2 + 276);
      v51 = *(v2 + 260);
      v52 = v26;
      v50 = *(v2 + 244);
      if ((v12 & 0x100000000) != 0)
      {
        if ((v22 & 0x200) != 0)
        {
          v27 = v22 | 1;
        }

        else
        {
          v27 = v22 | 0x201;
        }
      }

      else
      {
        v27 = v22 & 0xFDFE | 1;
      }

      *v41 = v23;
      *&v41[2] = v27;
      v28 = *(v2 + 260);
      *&v41[68] = *(v2 + 244);
      *&v41[84] = v28;
      *&v41[100] = *(v2 + 276);
      v29 = *(v2 + 196);
      *&v41[4] = *(v2 + 180);
      *&v41[20] = v29;
      v30 = *(v2 + 228);
      *&v41[36] = *(v2 + 212);
      *&v41[52] = v30;
      *&v64[64] = *&v41[64];
      *&v64[80] = *&v41[80];
      *&v64[96] = *&v41[96];
      *v64 = *v41;
      *&v64[16] = *&v41[16];
      *&v64[32] = *&v41[32];
      *&v64[48] = *&v41[48];
      v31 = *(v2 + 176);
      v32 = *(v2 + 192);
      v33 = *(v2 + 208);
      v42[3] = *(v2 + 224);
      v34 = *(v2 + 192);
      v42[2] = *(v2 + 208);
      v35 = *(v2 + 176);
      v42[1] = v34;
      v42[0] = v31;
      v36 = *(v2 + 256);
      v42[6] = *(v2 + 272);
      v37 = *(v2 + 240);
      v42[5] = *(v2 + 256);
      v38 = *(v2 + 224);
      v42[4] = *(v2 + 240);
      *&v40[64] = v37;
      *&v40[80] = v36;
      *&v40[96] = *(v2 + 272);
      *&v41[116] = *(v2 + 292);
      *&v64[112] = *&v41[112];
      v43 = *(v2 + 288);
      *&v40[112] = *(v2 + 288);
      *v40 = v35;
      *&v40[16] = v32;
      *&v40[32] = v33;
      *&v40[48] = v38;
      outlined init with copy of CustomMaterial.CustomShaderParameters(&v56, v54);
      outlined init with copy of CustomMaterial.CustomShaderParameters(v41, v54);
      outlined init with copy of CustomMaterial.CustomShaderParameters(v42, v54);
      v39 = specialized static CustomMaterial.CustomShaderParameters.== infix(_:_:)(v64, v40);
      v44[4] = *&v40[64];
      v44[5] = *&v40[80];
      v44[6] = *&v40[96];
      v45 = *&v40[112];
      v44[0] = *v40;
      v44[1] = *&v40[16];
      v44[2] = *&v40[32];
      v44[3] = *&v40[48];
      outlined destroy of CustomMaterial.CustomShaderParameters(v44);
      v54[4] = *&v64[64];
      v54[5] = *&v64[80];
      v54[6] = *&v64[96];
      v55 = *&v64[112];
      v54[0] = *v64;
      v54[1] = *&v64[16];
      v54[2] = *&v64[32];
      v54[3] = *&v64[48];
      outlined destroy of CustomMaterial.CustomShaderParameters(v54);
      if (!v39)
      {
        *&v64[68] = v50;
        *&v64[84] = v51;
        *&v64[100] = v52;
        *&v64[4] = v46;
        *&v64[20] = v47;
        *&v64[36] = v48;
        *v64 = v23;
        *&v64[2] = v27;
        *&v64[116] = v53;
        *&v64[52] = v49;
        specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v64);
      }

      *&v40[68] = v50;
      *&v40[84] = v51;
      *&v40[100] = v52;
      *&v40[4] = v46;
      *&v40[20] = v47;
      *&v40[36] = v48;
      *v40 = v23;
      *&v40[2] = v27;
      *&v40[116] = v53;
      *&v40[52] = v49;
      outlined destroy of CustomMaterial.CustomShaderParameters(v40);
    }
  }
}

id CustomMaterial.SurfaceShader.init(named:in:linkSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v10 + 40, &v16, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v17)
  {
    outlined init with take of ForceEffectBase(&v16, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v13 + 24))(v12, v13);
    v14 = REShaderLibraryAssetGetMetalLibrary();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v14)
    {
      v15 = a4 & 1;
      result = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
    }

    else
    {

      a1 = 0;
      a2 = 0;
      v9 = 0;
      result = 0;
      v15 = 0;
    }

    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = v14;
    *(a5 + 24) = v9;
    *(a5 + 32) = result;
    *(a5 + 40) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomMaterial.GeometryModifier.init(named:in:linkSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v11 + 40, &v17, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v18)
  {
    outlined init with take of ForceEffectBase(&v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v14 + 24))(v13, v14);
    v15 = REShaderLibraryAssetGetMetalLibrary();
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    if (v15)
    {
      v16 = a4 & 1;
    }

    else
    {

      a1 = 0;
      a2 = 0;
      v9 = 0;
      v10 = 0;
      v16 = 0;
    }

    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = v15;
    *(a5 + 24) = v9;
    *(a5 + 32) = v10;
    *(a5 + 40) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomMaterial.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v93 = *(a2 + 8);
  v98 = *a2;
  v101 = a2[2];
  v96 = a2[3];
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v11 = a3[4];
  v10 = a3[5];
  v111 = 0;
  v110 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  v12 = REMaterialParameterBlockValueCreate();
  v112 = v12;
  v115 = xmmword_1C18A4F00;
  v117 = 0;
  v116 = 0;
  memset(v124, 0, sizeof(v124));
  v143 = 0;
  v142 = 0;
  *(v146 + 7) = 0;
  v146[2] = 0;
  v146[0] = 0;
  v144 = 3;
  v145 = 0;
  v147 = 257;
  v13 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (!v13)
  {

    outlined consume of DirectUniformsState?(v6, v7, v8, v9, v11, v10);
LABEL_41:

    outlined consume of CustomMaterial.Blending?(v115, *(&v115 + 1));
    outlined destroy of BodyTrackingComponent?(v124, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
    result = outlined consume of CustomMaterial.Descriptor?(v142, v143, v144);
    *(a4 + 352) = 0;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v14 = v13;
  v76 = v7;
  v77 = v11;
  v73 = v6;
  v74 = v10;
  v75 = v9;
  v108 = v13;

  v109 = v98;
  v110 = v93;
  v111 = v101;
  v112 = v96;
  v113 = 2;
  v114 = 0;
  swift_beginAccess();
  v15 = *(v14 + 16);
  result = REMaterialAssetGetFunctionLinkCount();
  if (result < 0)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  if (!result)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = v76;
    v69 = v77;
    v70 = v8;
LABEL_40:
    outlined consume of DirectUniformsState?(v73, v68, v70, v75, v69, v74);

    outlined consume of __MaterialResource.CoreMaterialFunction?(v62, v63, v64, v65, v66, v67);

    v12 = v112;
    goto LABEL_41;
  }

  v71 = a4;
  v72 = v8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v23 = 0;
  v78 = result;
  v79 = v14;
  do
  {
    v97 = v17;
    v99 = v18;
    v102 = v19;
    v91 = v20;
    v92 = v22;
    v94 = v21;
    v24 = *(v14 + 16);
    REMaterialAssetGetFunctionLinkAtIndex();
    Stage = REFunctionLinkGetStage();
    if ((Stage | 2) == 3)
    {
      v26 = REFunctionLinkGetStage();
      v27 = REFunctionLinkCopyLinkedFunctionName();
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      LinkedFunctionLibrary = REFunctionLinkGetLinkedFunctionLibrary();
      v107 = MEMORY[0x1E69E6B70];
      v106[0] = LinkedFunctionLibrary;
      outlined init with copy of Any(v106, v105);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v106);
      result = REFunctionLinkGetLinkedShaderAPICount();
      if (result < 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v32 = result;
      v80 = v30;
      v81 = v28;
      v83 = v26;
      if (result)
      {
        v33 = 0;
        v34 = MEMORY[0x1E69E7CC0];
        do
        {
          LinkedShaderAPIAtIndex = REFunctionLinkGetLinkedShaderAPIAtIndex();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
          }

          v37 = *(v34 + 2);
          v36 = *(v34 + 3);
          if (v37 >= v36 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
          }

          ++v33;
          *(v34 + 2) = v37 + 1;
          *&v34[4 * v37 + 32] = LinkedShaderAPIAtIndex;
        }

        while (v32 != v33);
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      v38 = REFunctionLinkGetConstantValues();
      outlined consume of __MaterialResource.CoreMaterialFunction?(v85, v86, v87, v88, v89, v90);
      v86 = v81;
      v87 = v80;
      v88 = v104;
      v89 = v34;
      v90 = v38;
      v85 = v83;
    }

    if (Stage == 4 || Stage == 2)
    {
      v40 = REFunctionLinkGetStage();
      v41 = REFunctionLinkCopyLinkedFunctionName();
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = REFunctionLinkGetLinkedFunctionLibrary();
      v107 = MEMORY[0x1E69E6B70];
      v106[0] = v45;
      outlined init with copy of Any(v106, v105);
      swift_dynamicCast();
      v20 = v104;
      __swift_destroy_boxed_opaque_existential_1(v106);
      result = REFunctionLinkGetLinkedShaderAPICount();
      if (result < 0)
      {
        goto LABEL_45;
      }

      v46 = result;
      v82 = v42;
      v84 = v40;
      if (result)
      {
        v47 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        do
        {
          v48 = REFunctionLinkGetLinkedShaderAPIAtIndex();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
          }

          v50 = *(v21 + 2);
          v49 = *(v21 + 3);
          if (v50 >= v49 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v21);
          }

          ++v47;
          *(v21 + 2) = v50 + 1;
          *&v21[4 * v50 + 32] = v48;
        }

        while (v46 != v47);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v22 = REFunctionLinkGetConstantValues();
      outlined consume of __MaterialResource.CoreMaterialFunction?(v97, v99, v102, v91, v94, v92);
      v18 = v82;
      v19 = v44;
      v17 = v84;
    }

    else
    {
      v20 = v91;
      v18 = v99;
      v19 = v102;
      v17 = v97;
    }

    ++v23;
    v14 = v79;
  }

  while (v23 != v78);
  a4 = v71;
  if (!v19)
  {
    v70 = v72;
    v68 = v76;
    v69 = v77;
    v66 = v89;
    v67 = v90;
    v64 = v87;
    v65 = v88;
    v62 = v85;
    v63 = v86;
    goto LABEL_40;
  }

  v51 = *(v79 + 16);
  v100 = v18;
  v103 = v19;

  FeatureFlags = REMaterialAssetGetFeatureFlags();
  LOBYTE(v106[0]) = 1;
  outlined copy of __MaterialResource.CoreMaterialFunction?(v85, v86, v87, v88, v89, v90);
  v52 = v19;
  v53 = v20;
  v54 = v20;
  v55 = v21;
  outlined copy of __MaterialResource.CoreMaterialFunction?(v17, v100, v52, v53, v21, v22);
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  v125 = 0;
  v126 = FeatureFlags;
  v127 = 0;
  v128 = v106[0];
  v129 = 258;
  v130 = v85;
  v131 = v86;
  v132 = v87;
  v133 = v88;
  v134 = v89;
  v135 = v90;
  v136 = v17;
  v137 = v100;
  v138 = v103;
  v139 = v54;
  v57 = v76;
  v56 = v77;
  v140 = v55;
  v141 = v22;
  v58 = v72;
  if ((~(v76 & v77) & 0x3000000000000000) != 0)
  {
    outlined consume of __MaterialResource.CoreMaterialFunction?(v85, v86, v87, v88, v89, v90);
    outlined consume of __MaterialResource.CoreMaterialFunction?(v17, v100, v103, v54, v55, v22);
    v61 = v74;
    v60 = v75;
    v59 = v73;
  }

  else
  {
    v58 = REDirectParameterResourcesCreate();
    outlined consume of __MaterialResource.CoreMaterialFunction?(v85, v86, v87, v88, v89, v90);
    outlined consume of __MaterialResource.CoreMaterialFunction?(v17, v100, v103, v54, v55, v22);
    v59 = 0;
    v60 = 0;
    v56 = 0;
    v61 = 0;
    v57 = 0xC000000000000000;
  }

  v118 = v59;
  v119 = v57;
  v120 = v58;
  v121 = v60;
  v122 = v56;
  v123 = v61;
  outlined init with copy of CustomMaterial(&v108, v71);
  return outlined destroy of CustomMaterial(&v108);
}

uint64_t specialized MaterialWithShaderCache.shaderParameters.setter(__int128 *a1)
{
  v2 = a1[5];
  v19 = a1[4];
  v20 = v2;
  v21 = a1[6];
  v22 = *(a1 + 14);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  v5 = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 224);
  v32 = *(v1 + 208);
  v33 = v7;
  v31[0] = v5;
  v31[1] = v6;
  v8 = *(v1 + 240);
  v9 = *(v1 + 256);
  v10 = *(v1 + 272);
  v37 = *(v1 + 288);
  v35 = v9;
  v36 = v10;
  v34 = v8;
  v23 = v5;
  v24 = v6;
  v25 = v32;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v37;
  outlined init with copy of CustomMaterial.CustomShaderParameters(v31, v38);
  v11 = specialized static CustomMaterial.CustomShaderParameters.== infix(_:_:)(&v23, &v15);
  v38[4] = v27;
  v38[5] = v28;
  v38[6] = v29;
  v39 = v30;
  v38[0] = v23;
  v38[1] = v24;
  v38[2] = v25;
  v38[3] = v26;
  outlined destroy of CustomMaterial.CustomShaderParameters(v38);
  if (!v11)
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(&v23);
  }

  v13[4] = v19;
  v13[5] = v20;
  v13[6] = v21;
  v14 = v22;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  return outlined destroy of CustomMaterial.CustomShaderParameters(v13);
}

float key path getter for CustomMaterial.roughness : CustomMaterial@<S0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for CustomMaterial;
  v9[4] = &protocol witness table for CustomMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(a1, v9[0] + 16);
  a2(v10, v9, 0, 0);
  result = *v10;
  v7 = v10[1];
  v8 = v11;
  *a3 = v10[0];
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t CustomMaterial.roughness.setter(uint64_t a1, void (*a2)(void, void, void, void, float))
{
  a2(*(a1 + 8), *(a1 + 16), 0, 0, *a1);
}

void *key path getter for CustomMaterial.baseColor : CustomMaterial@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for CustomMaterial;
  v9[4] = &protocol witness table for CustomMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(a1, v9[0] + 16);
  result = a2(v10, v9, 0, 0);
  v7 = v10[1];
  v8 = v11;
  *a3 = v10[0];
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t CustomMaterial.baseColor.setter(uint64_t a1, void (*a2)(void, void, void, void, void))
{
  v2 = *a1;
  a2(*a1, *(a1 + 8), *(a1 + 16), 0, 0);
}

double key path getter for CustomMaterial.textureCoordinateTransform : CustomMaterial@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  specialized Material.getUVTransform(withSuffix:)(a1, a2, v7);
  result = *v7;
  v5 = v7[1];
  v6 = v8;
  *a3 = v7[0];
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t (*CustomMaterial.GeometryModifier.library.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return CustomMaterial.GeometryModifier.library.modify;
}

id CustomMaterial.GeometryModifier.init(named:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return CustomMaterial.GeometryModifier.init(named:in:)(a1, a2, a3, a4);
}

{
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();
  v10 = *(v9 + 16);

  v11 = *(v10 + 16);
  LOBYTE(v9) = REEngineConfigurationGetServicesToUpdate();

  if ((v9 & 0x10) != 0)
  {
    result = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 24) = 0;
    *(a4 + 32) = result;
    *(a4 + 40) = 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*CustomMaterial.GeometryModifier.libraryAsset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  *a1 = v3;
  *(v3 + 136) = v1;
  *(v3 + 128) = *(v1 + 24);
  return CustomMaterial.GeometryModifier.libraryAsset.modify;
}

id CustomMaterial.GeometryModifier.init(named:in:linkSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  return CustomMaterial.GeometryModifier.init(named:in:linkSPI:)(a1, a2, a3, a4, a5);
}

{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 16);

  v13 = *(v12 + 16);
  LOBYTE(v11) = REEngineConfigurationGetServicesToUpdate();

  if ((v11 & 0x10) != 0)
  {
    result = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = 0;
    *(a5 + 32) = result;
    *(a5 + 40) = a4 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for MaterialFunction.library.modify in conformance CustomMaterial.GeometryModifier(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return CustomMaterial.GeometryModifier.library.modify;
}

uint64_t CustomMaterial.SurfaceShader.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CustomMaterial.SurfaceShader.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomMaterial.GeometryModifier.library.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24))
  {
    Logger.init()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C1358000, v9, v10, "CustomMaterial: Assigned MTLLibrary when libraryAsset was already initialized. Overriding asset...", v11, 2u);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *(v2 + 24) = 0;
  }

  v12 = *(v2 + 16);
  result = swift_unknownObjectRelease();
  *(v2 + 16) = a1;
  return result;
}

uint64_t (*CustomMaterial.SurfaceShader.library.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return CustomMaterial.SurfaceShader.library.modify;
}

uint64_t CustomMaterial.GeometryModifier.library.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;
  v7 = swift_unknownObjectRetain();
  a3(v7);

  return swift_unknownObjectRelease();
}

uint64_t *CustomMaterial.GeometryModifier.libraryAsset.setter(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v4 + 40, &v9, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v10)
  {
    __break(1u);
    return result;
  }

  outlined init with take of ForceEffectBase(&v9, v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 24))(v5, v6);
  v7 = REShaderLibraryAssetGetMetalLibrary();
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (v7)
  {
    v8 = *(v2 + 16);
    result = swift_unknownObjectRelease();
    *(v2 + 16) = v7;
LABEL_5:
    *(v2 + 24) = v3;
  }

  return result;
}

uint64_t (*CustomMaterial.SurfaceShader.libraryAsset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  *a1 = v3;
  *(v3 + 136) = v1;
  *(v3 + 128) = *(v1 + 24);
  return CustomMaterial.SurfaceShader.libraryAsset.modify;
}

void CustomMaterial.GeometryModifier.libraryAsset.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v5 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of [String : String](v5 + 40, v2 + 40, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
      if (*(v2 + 64))
      {
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_9:
    *(*(v2 + 136) + 24) = v3;
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v4 + 40, v2 + 40, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!*(v2 + 64))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  outlined init with take of ForceEffectBase((v2 + 40), v2);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 24))(v6, v7);
  v8 = REShaderLibraryAssetGetMetalLibrary();
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (v8)
  {
    v9 = *(v2 + 136);
    v10 = *(v9 + 16);
    swift_unknownObjectRelease();
    *(v9 + 16) = v8;
    goto LABEL_9;
  }

LABEL_10:

  free(v2);
}

uint64_t (*protocol witness for MaterialFunction.library.modify in conformance CustomMaterial.SurfaceShader(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return CustomMaterial.SurfaceShader.library.modify;
}

uint64_t CustomMaterial.__resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CustomMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t CustomMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t CustomMaterial.__faceCullMode.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t CustomMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t CustomMaterial.__blending.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 76);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return outlined copy of CustomMaterial.Blending?(v2, v3);
}

uint64_t CustomMaterial.__blending.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v7 = *(v1 + 72);
  v6 = v1 + 72;
  v8 = v7 | (*(v6 + 4) << 32);
  result = outlined consume of CustomMaterial.Blending?(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

id CustomMaterial.__directUniformsState.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

__n128 CustomMaterial.__directUniformsState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  outlined consume of DirectUniformsState(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v6;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  return result;
}

uint64_t CustomMaterial.assetService.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 128, &v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  if (v6)
  {
    return outlined init with take of ForceEffectBase(&v5, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, a1);
  outlined destroy of BodyTrackingComponent?(v1 + 128, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with copy of __REAssetService(a1, v1 + 128);
}

uint64_t static CustomMaterial.getLightingModel(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, v16);
    swift_dynamicCast();
    v4 = (v11 >> 2) & 2;
    if ((v11 & 4) != 0)
    {
      LOBYTE(v4) = 0;
    }

    if ((v11 & 2) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    *a2 = v5;
    outlined destroy of CustomMaterial(v10);
    outlined destroy of CustomMaterial(v17);
  }

  else if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, v16);
    swift_dynamicCast();
    v12[3] = &type metadata for PhysicallyBasedMaterial;
    v12[4] = &protocol witness table for PhysicallyBasedMaterial;
    v12[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v10, v12[0] + 16);
    PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v12, &v13);
    v6 = v13;
    v7 = v14;
    v8 = v15;
    outlined destroy of PhysicallyBasedMaterial(v10);
    outlined consume of MaterialParameters.Texture?(v7, v8);
    if (v6 == 0.0)
    {
      *a2 = 0;
    }

    else
    {
      *a2 = 2;
    }

    outlined destroy of PhysicallyBasedMaterial(v17);
  }

  else if (swift_dynamicCast())
  {
    *a2 = 0;
    outlined destroy of SimpleMaterial(v17);
  }

  else if (swift_dynamicCast())
  {
    *a2 = 1;
    outlined destroy of UnlitMaterial(v17);
  }

  else
  {
    *a2 = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t static CustomMaterial.getBlending(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, &v37);
    swift_dynamicCast();
    CustomMaterial.blending.getter(a2);
    outlined destroy of CustomMaterial(v20);
    outlined destroy of CustomMaterial(v42);
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, &v37);
    swift_dynamicCast();
    PhysicallyBasedMaterial.blending.getter(&v32);
    v4 = v32;
    v5 = v33;
    v6 = v34;
    outlined destroy of PhysicallyBasedMaterial(v20);
    if (v5 == 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
    }

    else
    {
      LODWORD(color[0]) = v4;
      color[1] = *(&v4 + 1);
      v28 = v5;
      LODWORD(v29) = v6;
      CustomMaterial.Opacity.init(_:)(color, &v23);
      v7 = v23;
      v9 = v24;
      v12 = 0x100000000;
      if (!v26)
      {
        v12 = 0;
      }

      v8 = v12 | v25;
    }

    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    *(a2 + 20) = BYTE4(v8);
    outlined destroy of PhysicallyBasedMaterial(v42);
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, &v37);
    swift_dynamicCast();
    v10 = v21;
    outlined destroy of SimpleMaterial(v20);
    v11 = 1065353216;
    if (!v10)
    {
      v11 = 0;
    }

    *a2 = v11;
    *(a2 + 8) = v10 ^ 1u;
    *(a2 + 20) = 0;
    *(a2 + 16) = 0;
    outlined destroy of SimpleMaterial(v42);
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (!swift_dynamicCast())
  {
    *a2 = xmmword_1C18A4F10;
    *(a2 + 20) = 0;
    *(a2 + 16) = 0;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  outlined init with copy of __REAssetService(a1, &v37);
  swift_dynamicCast();

  v14 = v20[9];

  specialized String.withCString<A>(_:)(0x6E6954726F6C6F63, 0xE900000000000074, v14, &v32);
  if (v36 == 255)
  {
    __MaterialResource.subscript.getter(&v37);
  }

  else
  {
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v40 = v35;
    v41 = v36;
  }

  *color = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  Alpha = 0.0;
  if (v41 != 255)
  {
    if (v41 == 6)
    {
      Alpha = CGColorGetAlpha(color[0]);
    }

    else if (v41 == 5)
    {
      v16 = specialized SIMD4<>.cgColor.getter(*color);
      Alpha = CGColorGetAlpha(v16);
      outlined destroy of BodyTrackingComponent?(color, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);

      goto LABEL_26;
    }

    outlined destroy of BodyTrackingComponent?(color, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

LABEL_26:
  *&v17 = Alpha;
  v18 = v17;
  if ((v22 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = !(v22 & 1);
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 20) = 0;
  *(a2 + 16) = 0;
  outlined destroy of UnlitMaterial(v20);
  outlined destroy of UnlitMaterial(v42);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void CustomMaterial.copyParameterBlock(from:)(uint64_t a1)
{
  v6 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v7 = v1;
  v3 = *v1;
  swift_beginAccess();
  v5 = v3;
  v4 = *(v3 + 16);
  REMaterialAssetGetMaterialDefinition();
  REMaterialDefinitionAssetGetParameterKeys();
  v8 = 0;
  v2;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

id CustomMaterial.copyCustomParameters(from:)(void *a1)
{
  v1 = a1;
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v2 + 16);
  result = REMaterialAssetGetGeomFlattenedCustomParamNames();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v2 + 16);
  v8 = REMaterialAssetGetSurfFlattenedCustomParamNames();
  if (!v8)
  {
  }

  v44 = v2;
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v6 + 16);
  v43 = v10;
  if (!v12)
  {

    v47 = 0;
    v26 = *(v10 + 16);
    if (!v26)
    {
    }

LABEL_21:
    v27 = v1[1];
    v28 = *(v1 + 16);
    v29 = v26 - 1;
    v30 = (v10 + 40);
    v31 = v1[3];
    v46 = v1[4];
    while (1)
    {
      v45 = &v39;
      v33 = *(v30 - 1);
      v32 = *v30;
      MEMORY[0x1EEE9AC00](v25);
      *(&v39 - 4) = v27;
      *(&v39 - 24) = v28;
      v34 = v46;
      *(&v39 - 2) = v31;
      *(&v39 - 1) = v34;
      if ((v32 & 0x1000000000000000) == 0)
      {
        if ((v32 & 0x2000000000000000) != 0)
        {
          *&v53 = v33;
          *(&v53 + 1) = v32 & 0xFFFFFFFFFFFFFFLL;

          v35 = v46;

          goto LABEL_27;
        }

        if ((v33 & 0x1000000000000000) != 0)
        {

          v35 = v46;

LABEL_27:
          v36 = v47;
          closure #1 in __RKMaterialParameterBlock.get(parameter:)(&v58);
          v47 = v36;

          goto LABEL_28;
        }
      }

      v42 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v38 = v47;
      _StringGuts._slowWithCString<A>(_:)();
      v47 = v38;

LABEL_28:

      if (v62 == 255)
      {
        __MaterialResource.subscript.getter(&v63);
      }

      else
      {
        v63 = v58;
        v64 = v59;
        v65 = v60;
        v66 = v61;
        v67 = v62;
      }

      v57 = v67;
      v55 = v65;
      v56 = v66;
      v53 = v63;
      v54 = v64;
      if (v67 == 255)
      {

        if (!v29)
        {
        }
      }

      else
      {
        v50 = v65;
        v51 = v66;
        v52 = v67;
        v48 = v63;
        v49 = v64;
        v37 = String.utf8CString.getter();

        __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v37 + 32), &v48);

        v25 = outlined destroy of BodyTrackingComponent?(&v53, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        if (!v29)
        {
        }
      }

      --v29;
      v30 += 2;
    }
  }

  v13 = v1[1];
  v14 = *(v1 + 16);
  v15 = v12 - 1;
  v41 = v6;
  v42 = v1;
  v16 = (v6 + 40);
  v17 = v1[3];
  v46 = v1[4];
  v47 = 0;
  while (1)
  {
    v45 = &v39;
    v18 = *(v16 - 1);
    v19 = *v16;
    MEMORY[0x1EEE9AC00](v11);
    *(&v39 - 4) = v13;
    *(&v39 - 24) = v14;
    v20 = v46;
    *(&v39 - 2) = v17;
    *(&v39 - 1) = v20;
    if ((v19 & 0x1000000000000000) == 0)
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        *&v53 = v18;
        *(&v53 + 1) = v19 & 0xFFFFFFFFFFFFFFLL;

        v21 = v46;

        goto LABEL_10;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {

        v21 = v46;

LABEL_10:
        v22 = v47;
        closure #1 in __RKMaterialParameterBlock.get(parameter:)(&v58);
        v47 = v22;

        goto LABEL_11;
      }
    }

    v40 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v24 = v47;
    _StringGuts._slowWithCString<A>(_:)();
    v47 = v24;

LABEL_11:

    if (v62 == 255)
    {
      __MaterialResource.subscript.getter(&v63);
    }

    else
    {
      v63 = v58;
      v64 = v59;
      v65 = v60;
      v66 = v61;
      v67 = v62;
    }

    v57 = v67;
    v55 = v65;
    v56 = v66;
    v53 = v63;
    v54 = v64;
    if (v67 == 255)
    {
      break;
    }

    v50 = v65;
    v51 = v66;
    v52 = v67;
    v48 = v63;
    v49 = v64;
    v23 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v23 + 32), &v48);

    v11 = outlined destroy of BodyTrackingComponent?(&v53, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    if (!v15)
    {
      goto LABEL_20;
    }

LABEL_18:
    --v15;
    v16 += 2;
  }

  if (v15)
  {
    goto LABEL_18;
  }

LABEL_20:

  v1 = v42;
  v10 = v43;
  v26 = *(v43 + 16);
  if (v26)
  {
    goto LABEL_21;
  }
}

uint64_t CustomMaterial.copyParameters(from:)(void *a1)
{
  v2 = v1;
  static CustomMaterial.getBlending(from:)(a1, &v49);
  v4 = v49;
  v5 = v50;
  v19[0] = v49;
  v19[1] = v50;
  v21 = v52;
  v20 = v51;
  CustomMaterial.process(blending:doShaderUpdate:)(v19, 1);
  outlined consume of CustomMaterial.Blending(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 112))(v6, v7);
  if (v8 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (!v8)
  {
    v10 = 0;
  }

  if (v9)
  {
    v10 = 2;
  }

  *(v1 + 40) = v10;
  *(v1 + 48) = 0;
  outlined init with copy of __REAssetService(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (swift_dynamicCast())
  {
    CustomMaterial.copyParameterBlock(from:)(a1);
    outlined init with copy of __REAssetService(a1, &v44);
    swift_dynamicCast();
    CustomMaterial.copyCustomParameters(from:)(v19);
    outlined destroy of CustomMaterial(v19);
    outlined destroy of CustomMaterial(&v49);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  if (swift_dynamicCast())
  {
    CustomMaterial.copyParameterBlock(from:)(a1);
    outlined init with copy of __REAssetService(a1, &v44);
    swift_dynamicCast();
    outlined destroy of PhysicallyBasedMaterial(v19);
    outlined destroy of PhysicallyBasedMaterial(&v49);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  if (swift_dynamicCast())
  {
    CustomMaterial.copyParameterBlock(from:)(a1);
    outlined destroy of SimpleMaterial(&v49);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  if (!swift_dynamicCast())
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  outlined init with copy of __REAssetService(a1, &v44);
  swift_dynamicCast();
  v11 = v22;

  v12 = v11;

  specialized String.withCString<A>(_:)(0x6E6954726F6C6F63, 0xE900000000000074, v12, v42);
  if (v43 == 255)
  {
    __MaterialResource.subscript.getter(&v44);
  }

  else
  {
    v44 = v42[0];
    v45 = v42[1];
    v46 = v42[2];
    v47 = v42[3];
    v48 = v43;
  }

  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  if (v48 != 255)
  {
    v13 = v37.n128_u64[0];
    if (v48 == 6)
    {
      *(&v33 + 1) = &type metadata for CustomMaterial;
      *&v34 = &protocol witness table for CustomMaterial;
      *&v32 = swift_allocObject();
      outlined init with copy of CustomMaterial(v2, v32 + 16);
      outlined copy of __RKMaterialParameterBlock.Parameter(v37.n128_u64[0], v37.n128_i64[1], v38.n128_i64[0], v38.n128_i64[1], v39.n128_i64[0], v39.n128_i64[1], v40.n128_i64[0], v40.n128_i64[1], v41);
    }

    else
    {
      if (v48 != 5)
      {
LABEL_24:
        outlined destroy of BodyTrackingComponent?(&v37, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        goto LABEL_25;
      }

      v13 = specialized SIMD4<>.cgColor.getter(v37);
      *(&v33 + 1) = &type metadata for CustomMaterial;
      *&v34 = &protocol witness table for CustomMaterial;
      *&v32 = swift_allocObject();
      outlined init with copy of CustomMaterial(v2, v32 + 16);
    }

    CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v27, &v32, 0, 0);

    specialized Material.setParameter<A>(_:alternateTintKey:)(v13, *(&v27 + 1), v28, 0, 0);

    goto LABEL_24;
  }

LABEL_25:
  v14 = v22;

  v15 = v14;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18E2A60, v15, &v27);
  if (v31 == 255)
  {
    __MaterialResource.subscript.getter(&v32);
  }

  else
  {
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
  }

  v25[2] = v34;
  v25[3] = v35;
  v26 = v36;
  v25[0] = v32;
  v25[1] = v33;
  if (v36 != 255)
  {
    if (v36 == 1)
    {
      v16 = *(&v25[0] + 1);
      v23[3] = &type metadata for CustomMaterial;
      v23[4] = &protocol witness table for CustomMaterial;
      v23[0] = swift_allocObject();
      outlined init with copy of CustomMaterial(v2, v23[0] + 16);

      CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v24, v23, 0, 0);

      v17 = v24;
      specialized Material.setParameter<A>(_:alternateTintKey:)(v24, v16, 84148994, 0, 0);
    }

    outlined destroy of BodyTrackingComponent?(v25, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  outlined destroy of UnlitMaterial(v19);
  outlined destroy of UnlitMaterial(&v49);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t CustomMaterial.blending.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v1 = v6[0];
  v6[1] = v2;
  v8 = v3;
  v7 = v4;
  CustomMaterial.process(blending:doShaderUpdate:)(v6, 1);

  return outlined consume of CustomMaterial.Blending(v1, v2);
}

uint64_t static CustomMaterial.createDefaultSurfaceShader(from:with:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = specialized static __ServiceLocator.shared.getter();
  outlined init with copy of __REAssetService(a1, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (swift_dynamicCast())
  {

    outlined destroy of CustomMaterial(v29);
    outlined init with copy of __REAssetService(a1, v27);
    swift_dynamicCast();
    v7 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    *a3 = v32;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
    a3[4] = v11;
    a3[5] = v12;
    outlined copy of __MaterialResource.CoreMaterialFunction?(v7, v8, v9, v10, v11, v12);
    return outlined destroy of CustomMaterial(v29);
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v29);
  v14 = v30;
  v15 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v15 + 32))(v14, v15);
  AssetHandle = REAssetManagerCreateAssetHandle();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (!AssetHandle)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with copy of __REAssetService(a1, v28);
  if (swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, &v25);
    swift_dynamicCast();
    if (v5 == 2)
    {
      v17 = 0x6F637261656C435FLL;
    }

    else
    {
      v17 = 0;
    }

    if (v5 == 2)
    {
      v18 = 0xEA00000000007461;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v19 = PhysicallyBasedMaterial.opacityThreshold.getter();
    if ((v19 & 0x100000000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0x75436168706C415FLL;
    }

    if ((v19 & 0x100000000) != 0)
    {
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xEC00000074756F74;
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v25 = 0xD000000000000025;
    v26 = 0x80000001C18EBDB0;
    MEMORY[0x1C68F3410](v17, v18);

    MEMORY[0x1C68F3410](v20, v21);

    v23 = v25;
    v22 = v26;
    outlined destroy of PhysicallyBasedMaterial(v27);
    outlined destroy of PhysicallyBasedMaterial(v29);
  }

  else if (swift_dynamicCast())
  {
    v22 = 0x80000001C18EBD90;
    outlined destroy of SimpleMaterial(v29);
    v23 = 0xD00000000000001CLL;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      __swift_destroy_boxed_opaque_existential_1(v28);
      goto LABEL_23;
    }

    v22 = 0x80000001C18EBD70;
    outlined destroy of UnlitMaterial(v29);
    v23 = 0xD00000000000001BLL;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  v24 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *a3 = 4;
  a3[1] = v23;
  a3[2] = v22;
  a3[3] = AssetHandle;
  a3[4] = &outlined read-only object #0 of static CustomMaterial.createDefaultSurfaceShader(from:with:);
  a3[5] = v24;
LABEL_23:
  RERelease();
}

uint64_t static CustomMaterial.createDefaultGeometryModifier()@<X0>(uint64_t a1@<X8>)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = *(v4 + 32);

  v5(v3, v4);
  AssetHandle = REAssetManagerCreateAssetHandle();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (AssetHandle)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];

    *a1 = 3;
    *(a1 + 8) = 0xD000000000000010;
    *(a1 + 16) = 0x80000001C18E1760;
    *(a1 + 24) = AssetHandle;
    *(a1 + 32) = &outlined read-only object #0 of static CustomMaterial.createDefaultGeometryModifier();
    *(a1 + 40) = v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v17 = a1[4];
  v7 = *(a1 + 40);
  v8 = specialized static __ServiceLocator.shared.getter();
  if (v5)
  {

    RERetain();
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of __REAssetService(v8 + 120, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v3;
    v12 = v7;
    v13 = v4;
    v14 = *(v10 + 32);

    v14(v9, v10);
    v4 = v13;
    v7 = v12;
    v3 = v11;
    swift_unknownObjectRetain();

    MEMORY[0x1C68F3410](0x696C6C6174656D2ELL, 0xE900000000000062);
    String.utf8CString.getter();

    v5 = REAssetManagerShaderLibraryMemoryAssetCreateWithNetworkIdentifier();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v15 = &outlined read-only object #1 of static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:);
  *a2 = 3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  if (v7)
  {
    v15 = &outlined read-only object #0 of static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:);
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;

  return v17;
}

id static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v17 = a1[4];
  v7 = *(a1 + 40);
  v8 = specialized static __ServiceLocator.shared.getter();
  if (v5)
  {

    RERetain();
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of __REAssetService(v8 + 120, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v3;
    v12 = v7;
    v13 = v4;
    v14 = *(v10 + 32);

    v14(v9, v10);
    v4 = v13;
    v7 = v12;
    v3 = v11;
    swift_unknownObjectRetain();

    MEMORY[0x1C68F3410](0x696C6C6174656D2ELL, 0xE900000000000062);
    String.utf8CString.getter();

    v5 = REAssetManagerShaderLibraryMemoryAssetCreateWithNetworkIdentifier();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v15 = &outlined read-only object #1 of static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:);
  *a2 = 4;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  if (v7)
  {
    v15 = &outlined read-only object #0 of static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:);
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;

  return v17;
}

void CustomMaterial.getCurrentResourceBlendMode()(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  FunctionConstant = REMaterialAssetGetFunctionConstant();
  if (FunctionConstant)
  {
    v6 = FunctionConstant;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1702195828 && v7 == 0xE400000000000000)
    {

      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v9 & 1;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
}

uint64_t CustomMaterial.init(coreSurfaceShader:coreGeometryModifier:descriptor:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *(&v32 + 1) = *a1;
  v33 = *(a1 + 8);
  v34 = *(a1 + 24);
  v71 = *(a1 + 5);
  v29 = *a2;
  v30 = *(a2 + 8);
  v31 = *(a2 + 24);
  *&v32 = *(a2 + 5);
  v6 = a3[1];
  v69 = *a3;
  *v70 = v6;
  *&v70[11] = *(a3 + 27);
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  *(a4 + 8) = MEMORY[0x1E69E7CC0];
  v7 = REMaterialParameterBlockValueCreate();
  *(a4 + 128) = 0u;
  v27 = v7;
  *(a4 + 32) = v7;
  *(a4 + 56) = xmmword_1C18A4F00;
  *(a4 + 76) = 0;
  *(a4 + 72) = 0;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 296) = 0;
  *(a4 + 304) = 0;
  *(a4 + 344) = 0;
  *(a4 + 320) = 0;
  *(a4 + 328) = 0;
  *(a4 + 312) = 3;
  *(a4 + 335) = 0;
  *(a4 + 352) = 257;
  v8 = CustomMaterial.Descriptor.toCustomFeatureFlags()();
  v58 = 1;
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  v9 = v70[26];
  if (one-time initialization token for shaderCacheRegistry != -1)
  {
    swift_once();
  }

  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, &v50);
  specialized AssetServiceScopedRegistry.instance(for:)(&v50);
  __swift_destroy_boxed_opaque_existential_1(&v50);
  LOBYTE(v59) = v9;
  WORD1(v59) = v8;
  *(&v59 + 1) = 0;
  v28 = v8;
  v11 = v58;
  v60 = v58;
  v61 = 258;
  v62 = v29;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v66 = v33;
  v67 = v34;
  v68 = v71;
  v12 = specialized ShaderCache.getResource(_:)(&v59);
  if (v4)
  {

    outlined destroy of CustomMaterial.Descriptor(&v69);
    LOBYTE(v50) = v9;
    WORD1(v50) = v28;
    *(&v50 + 1) = 0;
    LOBYTE(v51) = v11;
    *(&v51 + 1) = 258;
    *(&v51 + 1) = v29;
    v52 = v30;
    v53 = v31;
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v71;
    outlined destroy of CustomMaterial.CustomShaderParameters(&v50);

    outlined consume of CustomMaterial.Blending?(0, 2);
    outlined destroy of BodyTrackingComponent?(a4 + 128, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
    v19 = *(a4 + 320);
    v20 = *(a4 + 328);
    v21 = *(a4 + 336) | (*(a4 + 338) << 16);
    return outlined consume of CustomMaterial.Descriptor?(*(a4 + 296), *(a4 + 304), *(a4 + 312));
  }

  else
  {
    v13 = v12;

    *a4 = v13;
    LOBYTE(v50) = v9;
    WORD1(v50) = v28;
    *(&v50 + 1) = 0;
    LOBYTE(v51) = v11;
    *(&v51 + 1) = 258;
    *(&v51 + 1) = v29;
    v52 = v30;
    v53 = v31;
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v71;
    *(a4 + 288) = v71;
    v14 = v53;
    *(a4 + 208) = v52;
    *(a4 + 224) = v14;
    v15 = v56;
    *(a4 + 256) = v55;
    *(a4 + 272) = v15;
    *(a4 + 240) = v54;
    v16 = v51;
    *(a4 + 176) = v50;
    *(a4 + 192) = v16;
    *(a4 + 40) = v70[13];
    *(a4 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C1887600;
    v18 = type metadata accessor for __MaterialResource();
    *(v17 + 32) = v13;
    *(v17 + 56) = v18;
    *(v17 + 64) = &protocol witness table for __MaterialResource;
    swift_retain_n();
    outlined init with copy of CustomMaterial.CustomShaderParameters(&v50, v38);
    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(v17);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v17 + 32));
    swift_deallocClassInstance();
    v23 = REDirectParameterResourcesCreate();
    *(a4 + 80) = xmmword_1C18A2C50;
    *(a4 + 96) = v23;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    if (*v70 == 2)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(&v69 + 1);
    }

    if (*v70 == 2)
    {
      v25 = 1;
    }

    else
    {
      v25 = *v70;
    }

    if (*v70 == 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = *&v70[8] | (v70[12] << 32);
    }

    v35[0] = v24;
    v35[1] = v25;
    v36 = v26;
    v37 = BYTE4(v26);
    CustomMaterial.process(blending:doShaderUpdate:)(v35, 0);
    outlined consume of CustomMaterial.Blending(v24, v25);
    v38[0] = v9;
    v39 = v28;
    v40 = 0;
    v41 = v11;
    v42 = 258;
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v49 = v71;
    return outlined destroy of CustomMaterial.CustomShaderParameters(v38);
  }
}

uint64_t CustomMaterial.Descriptor.toCustomFeatureFlags()()
{
  if ((*(v0 + 16) - 1) >= 2)
  {
    if (((*(v0 + 24) | (*(v0 + 28) << 32)) & 0x100000000) != 0)
    {
      v1 = 513;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 41))
  {
    v2 = v1 | (0x800020004uLL >> (16 * *v0)) | 0x10;
  }

  else
  {
    v2 = v1 | (0x800020004uLL >> (16 * *v0));
  }

  if (*(v0 + 40))
  {
    return v2;
  }

  else
  {
    return (*(v0 + 32) << 6) & 0x1C00 | (((*(v0 + 32) >> 7) & 1) << 14) | (32 * (*(v0 + 32) & 0xF)) | v2;
  }
}

uint64_t CustomMaterial.Descriptor.init(lightingModel:blending:faceCulling:options:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v10 = *(a2 + 20);
  v11 = *a3;
  v12 = *a4;
  v13 = *(a4 + 8);
  *(a5 + 41) = 0;
  *a5 = v6;
  result = outlined consume of CustomMaterial.Blending?(0, 2);
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 28) = v10;
  *(a5 + 24) = v9;
  *(a5 + 29) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = v13;
  return result;
}

uint64_t CustomMaterial.init(surfaceShader:geometryModifier:lightingModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *a2;
  v10 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v44 = *a3;
  v43 = *a1;
  *__src = *a1;
  *&__src[8] = v5;
  v65 = v5;
  v45 = v6;
  *&__src[16] = v6;
  *&__src[24] = v7;
  *&__src[32] = v8;
  __src[40] = v9;
  v61 = v11;
  v62 = v10;
  *&v63 = v13;
  *(&v63 + 1) = v12;
  *&v64 = v14;
  BYTE8(v64) = v15;
  specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(__src, &v61);
  if (v4)
  {
    outlined consume of CustomMaterial.GeometryModifier?(v11, v10, v13, v12, v14);

    swift_unknownObjectRelease();
  }

  else
  {
    v38 = v9;
    v39 = v15;
    if (v10)
    {

      v17 = v10;
      v18 = v11;
    }

    else
    {
      v18 = 0;
      v17 = 0xE000000000000000;
    }

    *__src = 0;
    *&__src[8] = 0xE000000000000000;

    MEMORY[0x1C68F3410](v18, v17);

    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    MEMORY[0x1C68F3410](v43, v65);
    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    v19 = 0xE500000000000000;
    v20 = 0x74696C6E75;
    if (v44 != 1)
    {
      v20 = 0x616F637261656C63;
      v19 = 0xE900000000000074;
    }

    if (v44)
    {
      v21 = v20;
    }

    else
    {
      v21 = 7629164;
    }

    if (v44)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    MEMORY[0x1C68F3410](v21, v22);

    v23 = *__src;
    v35 = v13;
    if (v10)
    {
      v53 = v11;
      v54 = v10;
      v55 = v13;
      v56 = v12;
      v57 = v14;
      LOBYTE(v58) = v39 & 1;
      v24 = *&__src[8];

      MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
      static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v53, __src);

      v37 = __src[0];
      v36 = *&__src[8];
      v26 = *&__src[16];
      v25 = *&__src[32];
    }

    else
    {
      v24 = *&__src[8];
      static CustomMaterial.createDefaultGeometryModifier()(&v61);
      v37 = v61;
      v36 = v62;
      v26 = v63;
      v25 = v64;
    }

    v41 = v26;
    v42 = v25;
    v53 = v43;
    v54 = v65;
    v55 = v45;
    v56 = v7;
    v57 = v8;
    LOBYTE(v58) = v38;
    *__src = v23;
    *&__src[8] = v24;
    MEMORY[0x1C68F3410](0x667275735FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)(&v53, __src);
    outlined consume of CustomMaterial.GeometryModifier?(v11, v10, v35, v12, v14);

    swift_unknownObjectRelease();

    v27 = __src[0];
    v29 = *&__src[8];
    v28 = *&__src[16];
    v31 = *&__src[24];
    v30 = *&__src[32];
    v32 = *&__src[40];
    outlined consume of CustomMaterial.Blending?(0, 2);
    __src[0] = 0;
    v60[0] = v44;
    *&v60[8] = xmmword_1C18A4F10;
    *&v60[24] = 0;
    *&v60[28] = 512;
    *&v60[32] = 0;
    v60[40] = 0;
    *&v60[41] = 0;

    v33 = v32;
    LOBYTE(v53) = v27;
    v54 = v29;
    v55 = v28;
    v56 = v31;
    v57 = v30;
    v58 = v33;

    v34 = *(&v42 + 1);
    v49[0] = v37;
    v50 = v36;
    v51 = v41;
    v52 = v42;
    v47 = *v60;
    v48[0] = *&v60[16];
    *(v48 + 11) = *&v60[27];
    outlined init with copy of CustomMaterial.Descriptor(v60, v46);
    CustomMaterial.init(coreSurfaceShader:coreGeometryModifier:descriptor:)(&v53, v49, &v47, __src);
    memcpy(a4, __src, 0x162uLL);
    RERelease();

    RERelease();

    return outlined destroy of CustomMaterial.Descriptor(v60);
  }
}

uint64_t CustomMaterial.Descriptor.blending.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 28);
  v5 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return outlined copy of CustomMaterial.Blending?(v2, v3);
}

uint64_t CustomMaterial.Descriptor.blending.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v7 = *(v1 + 24);
  v6 = v1 + 24;
  v8 = v7 | (*(v6 + 4) << 32);
  result = outlined consume of CustomMaterial.Blending?(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

void CustomMaterial.Descriptor.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t CustomMaterial.Descriptor.options.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t CustomMaterial.Descriptor.init(lightingModel:blending:faceCulling:options:attributeSet:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  v11 = *(a2 + 20);
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *a5;
  *(a6 + 42) = 0;
  *a6 = v7;
  result = outlined consume of CustomMaterial.Blending?(0, 2);
  *(a6 + 8) = v8;
  *(a6 + 16) = v9;
  *(a6 + 28) = v11;
  *(a6 + 24) = v10;
  *(a6 + 29) = v12;
  *(a6 + 32) = v13;
  *(a6 + 40) = v14;
  *(a6 + 41) = v15;
  return result;
}

void CustomMaterial.Descriptor.hash(into:)()
{
  v1 = v0[29];
  v2 = v0[40];
  v3 = v0[42];
  if ((*(v0 + 2) - 1) >= 2)
  {
    v4 = (v0[28] & 1) + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 4);
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v4);
  MEMORY[0x1C68F4C10](v1);
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int CustomMaterial.Descriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  CustomMaterial.Descriptor.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomMaterial.Descriptor()
{
  Hasher.init(_seed:)();
  CustomMaterial.Descriptor.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.Descriptor()
{
  Hasher.init(_seed:)();
  CustomMaterial.Descriptor.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CustomMaterial.init(surfaceShader:geometryModifier:descriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = a3[1];
  v60 = *a3;
  v61[0] = v17;
  *(v61 + 11) = *(a3 + 27);
  v43 = v60;
  v45 = v6;
  *__src = v6;
  *&__src[8] = v5;
  v62 = v5;
  v46 = v7;
  *&__src[16] = v7;
  *&__src[24] = v8;
  *&__src[32] = v9;
  __src[40] = v10;
  v53 = v12;
  v54 = v11;
  v55 = v14;
  v56 = v13;
  v57 = v15;
  LOBYTE(v58) = v16;
  specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(__src, &v53);
  if (v4)
  {
    outlined destroy of CustomMaterial.Descriptor(&v60);
    outlined consume of CustomMaterial.GeometryModifier?(v12, v11, v14, v13, v15);

    swift_unknownObjectRelease();
  }

  else
  {
    v38 = v10;
    v39 = v8;
    v40 = v12;
    v19 = v62;
    if (v11)
    {

      v20 = v11;
      v21 = v12;
    }

    else
    {
      v21 = 0;
      v20 = 0xE000000000000000;
    }

    *__src = 0;
    *&__src[8] = 0xE000000000000000;

    MEMORY[0x1C68F3410](v21, v20);

    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    MEMORY[0x1C68F3410](v45, v19);
    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    v22 = 0xE500000000000000;
    v23 = 0x74696C6E75;
    if (v43 != 1)
    {
      v23 = 0x616F637261656C63;
      v22 = 0xE900000000000074;
    }

    if (v43)
    {
      v24 = v23;
    }

    else
    {
      v24 = 7629164;
    }

    if (v43)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    MEMORY[0x1C68F3410](v24, v25);

    v26 = *__src;
    v27 = *&__src[8];
    if (v11)
    {
      v53 = v40;
      v54 = v11;
      v55 = v14;
      v56 = v13;
      v57 = v15;
      LOBYTE(v58) = v16 & 1;

      MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
      static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v53, __src);
    }

    else
    {
      static CustomMaterial.createDefaultGeometryModifier()(__src);
    }

    v37 = __src[0];
    v36 = *&__src[8];
    v42 = *&__src[16];
    v44 = *&__src[32];
    v53 = v45;
    v54 = v19;
    v55 = v46;
    v56 = v39;
    v57 = v9;
    LOBYTE(v58) = v38;
    *__src = v26;
    *&__src[8] = v27;
    MEMORY[0x1C68F3410](0x667275735FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)(&v53, __src);
    outlined consume of CustomMaterial.GeometryModifier?(v40, v11, v14, v13, v15);

    swift_unknownObjectRelease();

    v28 = __src[0];
    v30 = *&__src[8];
    v29 = *&__src[16];
    v32 = *&__src[24];
    v31 = *&__src[32];
    v33 = *&__src[40];

    v34 = v33;
    LOBYTE(v53) = v28;
    v54 = v30;
    v55 = v29;
    v56 = v32;
    v57 = v31;
    v58 = v34;

    v35 = *(&v44 + 1);
    v49[0] = v37;
    v50 = v36;
    v51 = v42;
    v52 = v44;
    v47 = v60;
    v48[0] = v61[0];
    *(v48 + 11) = *(v61 + 11);
    CustomMaterial.init(coreSurfaceShader:coreGeometryModifier:descriptor:)(&v53, v49, &v47, __src);
    memcpy(a4, __src, 0x162uLL);
    RERelease();

    RERelease();
  }
}

uint64_t CustomMaterial.init(from:surfaceShader:geometryModifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + 8);
  v55 = *a2;
  v6 = *(a2 + 24);
  v77 = *(a2 + 16);
  v51 = v6;
  v7 = *(a2 + 32);
  v50 = *(a2 + 40);
  v8 = *(a3 + 8);
  v49 = *(a3 + 16);
  v53 = *(a3 + 24);
  v54 = *a3;
  v56 = *(a3 + 32);
  v52 = *(a3 + 40);
  static CustomMaterial.getLightingModel(from:)(a1, __src);
  v46 = __src[0];
  static CustomMaterial.getBlending(from:)(a1, __src);
  v10 = *__src;
  v9 = *&__src[8];
  v11 = *&__src[16] | (__src[20] << 32);
  v12 = a1[3];
  v13 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = v12;
  v15 = v5;
  v16 = v7;
  v17 = (*(v13 + 112))(v14, v13);
  *__src = v55;
  *&__src[8] = v15;
  if (v17 >= 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17;
  }

  if (v18)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19;
  }

  v44 = v20;
  *&__src[16] = v77;
  *&__src[24] = v51;
  *&__src[32] = v7;
  __src[40] = v50;
  v73 = v54;
  v74 = v8;
  *&v75 = v49;
  *(&v75 + 1) = v53;
  *&v76 = v56;
  BYTE8(v76) = v52;
  outlined copy of CustomMaterial.Blending(v10, v9);
  specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(__src, &v73);
  if (v47)
  {
    outlined consume of CustomMaterial.Blending(v10, v9);
    outlined consume of CustomMaterial.Blending(v10, v9);
    outlined consume of CustomMaterial.GeometryModifier?(v54, v8, v49, v53, v56);

    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    if (v8)
    {

      v21 = v8;
      v22 = v54;
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v8 = 0xE000000000000000;
    }

    v41 = v9;
    *__src = 0;
    *&__src[8] = 0xE000000000000000;

    MEMORY[0x1C68F3410](v22, v8);

    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    MEMORY[0x1C68F3410](v55, v15);
    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    v23 = 0xE500000000000000;
    v24 = 0x74696C6E75;
    if (v46 != 1)
    {
      v24 = 0x616F637261656C63;
      v23 = 0xE900000000000074;
    }

    if (v46)
    {
      v25 = v24;
    }

    else
    {
      v25 = 7629164;
    }

    if (v46)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    MEMORY[0x1C68F3410](v25, v26);

    v28 = *__src;
    v27 = *&__src[8];
    v40 = v11;
    if (v21)
    {
      v64 = v54;
      v65 = v21;
      v66 = v49;
      v67 = v53;
      v68 = v56;
      LOBYTE(v69) = v52 & 1;

      MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
      static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v64, __src);

      v39 = __src[0];
      v38 = *&__src[8];
      v42 = *&__src[16];
      v45 = *&__src[32];
    }

    else
    {
      static CustomMaterial.createDefaultGeometryModifier()(&v73);
      v39 = v73;
      v38 = v74;
      v42 = v75;
      v45 = v76;
    }

    v64 = v55;
    v65 = v15;
    v66 = v77;
    v67 = v51;
    v68 = v16;
    LOBYTE(v69) = v50;
    *__src = v28;
    *&__src[8] = v27;
    MEMORY[0x1C68F3410](0x667275735FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)(&v64, __src);
    outlined consume of CustomMaterial.GeometryModifier?(v54, v21, v49, v53, v56);

    swift_unknownObjectRelease();

    v29 = __src[0];
    v31 = *&__src[8];
    v30 = *&__src[16];
    v33 = *&__src[24];
    v32 = *&__src[32];
    v34 = *&__src[40];
    outlined consume of CustomMaterial.Blending?(0, 2);
    __src[0] = 0;
    LOBYTE(v71) = v46;
    *(&v71 + 1) = v10;
    *v72 = v41;
    v72[12] = BYTE4(v40);
    *&v72[8] = v40;
    v72[13] = v44;
    *&v72[16] = 0;
    v72[24] = 0;
    *&v72[25] = 0;

    v35 = v34;
    LOBYTE(v64) = v29;
    v65 = v31;
    v66 = v30;
    v77 = v33;
    v67 = v33;
    v68 = v32;
    v69 = v35;

    v36 = *(&v45 + 1);
    v60[0] = v39;
    v61 = v38;
    v62 = v42;
    v63 = v45;
    v58 = v71;
    v59[0] = *v72;
    *(v59 + 11) = *&v72[11];
    outlined init with copy of CustomMaterial.Descriptor(&v71, v57);
    CustomMaterial.init(coreSurfaceShader:coreGeometryModifier:descriptor:)(&v64, v60, &v58, __src);
    memcpy(a4, __src, 0x162uLL);
    RERelease();

    RERelease();

    outlined destroy of CustomMaterial.Descriptor(&v71);
    CustomMaterial.copyParameters(from:)(v48);
    outlined consume of CustomMaterial.Blending(v10, v41);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }
}

void CustomMaterial.init(from:geometryModifier:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 8);
  v35 = *a2;
  v5 = *(a2 + 16);
  v34 = *(a2 + 24);
  v6 = *(a2 + 32);
  v33 = *(a2 + 40);
  static CustomMaterial.getLightingModel(from:)(a1, __src);
  v7 = LOBYTE(__src[0]);
  static CustomMaterial.getBlending(from:)(a1, __src);
  v44 = __src[0];
  v67 = __src[1];
  v8 = LODWORD(__src[2]) | (BYTE4(__src[2]) << 32);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 112))(v9, v10);
  if (v11 >= 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11;
  }

  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  LOBYTE(v54) = v7;
  static CustomMaterial.createDefaultSurfaceShader(from:with:)(a1, &v54, __src);
  v15 = __src[2];
  if (__src[2])
  {
    v32 = v8;
    v16 = __src[1];
    v39 = __src[0];
    v40 = __src[3];
    v41 = __src[4];
    v42 = __src[5];
    v65 = 0;
    v66 = 0xE000000000000000;

    MEMORY[0x1C68F3410](v35, v4);

    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    v38 = v16;
    v43 = v15;
    MEMORY[0x1C68F3410](v16, v15);
    MEMORY[0x1C68F3410](95, 0xE100000000000000);
    v17 = 0xE500000000000000;
    v18 = 0x74696C6E75;
    if (v7 != 1)
    {
      v18 = 0x616F637261656C63;
      v17 = 0xE900000000000074;
    }

    if (v7)
    {
      v19 = v18;
    }

    else
    {
      v19 = 7629164;
    }

    if (v7)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    MEMORY[0x1C68F3410](v19, v20);

    v54 = v35;
    v55 = v4;
    v56 = v5;
    v57 = v34;
    v58 = v6;
    LOBYTE(v59) = v33;
    __src[0] = v65;
    __src[1] = v66;
    MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v54, __src);

    swift_unknownObjectRelease();

    v21 = __src[0];
    v22 = __src[2];
    v36 = __src[1];
    v24 = __src[3];
    v23 = __src[4];
    v25 = __src[5];
    v26 = v67;
    outlined copy of CustomMaterial.Blending(v44, v67);
    outlined consume of CustomMaterial.Blending?(0, 2);
    LOBYTE(__src[0]) = 0;
    LOBYTE(v61) = v7;
    *(&v61 + 1) = v44;
    *v62 = v26;
    v62[12] = BYTE4(v32);
    *&v62[8] = v32;
    v62[13] = v14;
    *&v62[16] = 0;
    v63 = 0;
    v64 = 0;
    LOBYTE(v54) = v39;
    v55 = v38;
    v56 = v43;
    v57 = v40;
    v58 = v41;
    v59 = v42;
    v48[0] = v21;
    v49 = v36;
    v50 = v22;
    v51 = v24;
    v52 = v23;
    v53 = v25;
    *&v47[11] = *&v62[11];
    v46 = v61;
    *v47 = *v62;
    outlined copy of __MaterialResource.CoreMaterialFunction?(v39, v38, v43, v40, v41, v42);

    v27 = v25;
    outlined init with copy of CustomMaterial.Descriptor(&v61, v45);
    CustomMaterial.init(coreSurfaceShader:coreGeometryModifier:descriptor:)(&v54, v48, &v46, __src);
    if (v37)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      outlined consume of CustomMaterial.Blending(v44, v67);
      outlined destroy of CustomMaterial.Descriptor(&v61);

      outlined consume of __MaterialResource.CoreMaterialFunction?(v39, v38, v43, v40, v41, v42);
      return;
    }

    memcpy(a3, __src, 0x162uLL);
    CustomMaterial.copyParameters(from:)(a1);
    RERelease();

    outlined destroy of CustomMaterial.Descriptor(&v61);
    outlined consume of __MaterialResource.CoreMaterialFunction?(v39, v38, v43, v40, v41, v42);
    v29 = v44;
    v30 = v67;
  }

  else
  {

    swift_unknownObjectRelease();

    lazy protocol witness table accessor for type CustomMaterialError and conformance CustomMaterialError();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    v29 = v44;
    v30 = v67;
  }

  outlined consume of CustomMaterial.Blending(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomMaterial.Custom.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CustomMaterial.Custom.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(v1 + 16);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CustomMaterial.Custom.init(value:texture:)@<X0>(uint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = *result;
  v4 = *(result + 8);
  *a2 = a3;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u32[2] = v4;
  return result;
}

id CustomMaterial.Custom.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 2);
  if (v6)
  {
    v7 = *(v2 + 2);
    v11 = *v2;

    result = REMaterialCreateDefaultSamplerDescriptor();
    v5 = v11;
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  strcpy(a1, "textureCustom");
  *(a1 + 14) = -4864;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "userParameter");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v5;
  *(a2 + 80) = 5;
  return result;
}

uint64_t CustomMaterial.Custom.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, int8x16_t *a2@<X8>)
{

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = Material.getFloat4Parameter(key:)(0x6172615072657375, 0xED0000726574656DLL, v4, v5);
  v8 = v7;
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  Material.getTextureParameter(key:)(0x4365727574786574, 0xED00006D6F747375, v11, v12, &v19);
  v13 = v20;
  if (v20)
  {
    v14 = v19;

    outlined consume of MaterialParameters.Texture?(v14, v13);
    v15 = 84148994;
  }

  else
  {
    v15 = 0;
  }

  v16.i64[0] = v6;
  v16.i64[1] = v8;
  if (v10)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  *a2 = vbicq_s8(v16, vdupq_n_s32(v17));
  a2[1].i64[0] = v13;
  a2[1].i32[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*CustomMaterial.baseColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[3] = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.BaseColor.init(material:alternateTintKey:)(a1, v4, 0, 0);
  return CustomMaterial.baseColor.modify;
}

uint64_t (*CustomMaterial.metallic.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.Metallic.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.metallic.modify;
}

uint64_t (*CustomMaterial.roughness.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.Roughness.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.roughness.modify;
}

uint64_t (*CustomMaterial.emissiveColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.emissiveColor.modify;
}

uint64_t CustomMaterial.baseColor.modify(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = *(a1 + 24);
  if (a2)
  {
    v6 = *(a1 + 8);

    v7 = v4;
    a3();
  }

  else
  {
    (a3)(*a1, *(a1 + 8), *(a1 + 16), 0, 0);
  }
}

uint64_t (*CustomMaterial.specular.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.Specular.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.specular.modify;
}

uint64_t key path setter for CustomMaterial.opacityThreshold : CustomMaterial(uint64_t result, uint64_t a2)
{
  if ((*(result + 4) & 1) == 0)
  {
    v4 = *result;
    v5 = *(a2 + 32);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v7 = *(a2 + 32);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v8 = *(a2 + 32);
      v9 = REMaterialParameterBlockValueCopy();

      *(a2 + 32) = v9;
    }

    return REMaterialParameterBlockValueSetFloat();
  }

  return result;
}

uint64_t CustomMaterial.opacityThreshold.setter(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = *(v1 + 32);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v4 = *(v1 + 32);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v5 = *(v1 + 32);
      v6 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v6;
    }

    return REMaterialParameterBlockValueSetFloat();
  }

  return result;
}

uint64_t (*CustomMaterial.opacityThreshold.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = CustomMaterial.opacityThreshold.getter();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return CustomMaterial.opacityThreshold.modify;
}

uint64_t CustomMaterial.opacityThreshold.modify(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    v1 = *result;
    v2 = *(result + 8);
    v3 = *(*result + 32);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v5 = *(v1 + 32);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v6 = *(v1 + 32);
      v7 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v7;
    }

    return REMaterialParameterBlockValueSetFloat();
  }

  return result;
}

unsigned __int8 *CustomMaterial.faceCulling.setter(unsigned __int8 *result)
{
  *(v1 + 40) = *result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t *(*CustomMaterial.faceCulling.modify(uint64_t *(*result)(uint64_t *result)))(uint64_t *result)
{
  *result = v1;
  if (*(v1 + 48))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 40);
    if (v2 >= 3)
    {
      LOBYTE(v2) = 2;
    }

    *(result + 8) = v2;
    return CustomMaterial.faceCulling.modify;
  }

  return result;
}

uint64_t *CustomMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 40) = *(result + 8);
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*CustomMaterial.blending.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  if (*(v1 + 178))
  {
    v12 = &type metadata for CustomMaterial;
    v13 = &protocol witness table for CustomMaterial;
    v11[0] = swift_allocObject();
    outlined init with copy of CustomMaterial(v1, v11[0] + 16);
    CustomMaterial.Opacity.init(material:alternateTintKey:)(v11, v14);
    v12 = &type metadata for CustomMaterial;
    v13 = &protocol witness table for CustomMaterial;
    v11[0] = swift_allocObject();
    outlined init with copy of CustomMaterial(v1, v11[0] + 16);
    CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v10, v11, 0, 0);
    v6 = v10;

    Alpha = CGColorGetAlpha(v6);

    CustomMaterial.getCurrentResourceBlendMode()(v11);
    *&Alpha = Alpha;
    v3 = LODWORD(Alpha);
    v5 = v15;
    v8 = 0x100000000;
    if (!LOBYTE(v11[0]))
    {
      v8 = 0;
    }

    v4 = v8 | v16;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 20) = BYTE4(v4);
  return CustomMaterial.blending.modify;
}

uint64_t CustomMaterial.blending.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16) | (*(a1 + 20) << 32);
  v4 = *(a1 + 24);
  v6[0] = *a1;
  v2 = v6[0];
  v6[1] = v1;
  v7 = v3;
  v8 = BYTE4(v3);
  CustomMaterial.process(blending:doShaderUpdate:)(v6, 1);

  return outlined consume of CustomMaterial.Blending(v2, v1);
}

void (*CustomMaterial.normal.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x258uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  outlined init with copy of CustomMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v8 = *(v4 + 96);
  v7 = *(v4 + 104);

  v9 = v7;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v9, v4 + 432);
  v10 = *(v4 + 496);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 448);
    *v4 = *(v4 + 432);
    *(v4 + 16) = v11;
    v12 = *(v4 + 480);
    *(v4 + 32) = *(v4 + 464);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v4 + 64);
  *(v4 + 592) = v16;
  v17 = *(v4 + 48);
  *(v4 + 560) = *(v4 + 32);
  *(v4 + 576) = v17;
  v18 = *(v4 + 16);
  *(v4 + 528) = *v4;
  *(v4 + 544) = v18;
  if (v16 != 255)
  {
    if (v16 == 1)
    {
      v15 = *(v4 + 536);

      v14 = 84148994;
    }

    outlined destroy of BodyTrackingComponent?(v4 + 528, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *(v4 + 504) = v15;
  *(v4 + 512) = v14;
  outlined destroy of CustomMaterial(v4 + 72);
  return CustomMaterial.normal.modify;
}

void (*CustomMaterial.ambientOcclusion.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x258uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  outlined init with copy of CustomMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);

  v9 = v8;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v9, v4 + 432);
  v10 = *(v4 + 496);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 448);
    *v4 = *(v4 + 432);
    *(v4 + 16) = v11;
    v12 = *(v4 + 480);
    *(v4 + 32) = *(v4 + 464);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v4 + 64);
  *(v4 + 592) = v16;
  v17 = *(v4 + 48);
  *(v4 + 560) = *(v4 + 32);
  *(v4 + 576) = v17;
  v18 = *(v4 + 16);
  *(v4 + 528) = *v4;
  *(v4 + 544) = v18;
  if (v16 != 255)
  {
    if (v16 == 1)
    {
      v15 = *(v4 + 536);

      v14 = 84148994;
    }

    outlined destroy of BodyTrackingComponent?(v4 + 528, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *(v4 + 504) = v15;
  *(v4 + 512) = v14;
  outlined destroy of CustomMaterial(v4 + 72);
  return CustomMaterial.ambientOcclusion.modify;
}

uint64_t (*CustomMaterial.clearcoat.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.clearcoat.modify;
}

uint64_t (*CustomMaterial.clearcoatRoughness.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v4, a1);
  return CustomMaterial.clearcoatRoughness.modify;
}

uint64_t CustomMaterial.metallic.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void, void, float))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (a2)
  {
    v8 = *(a1 + 8);

    a3(v9, v6, 0, 0, v4);
  }

  else
  {
    a3(*(a1 + 8), v6, 0, 0, *a1);
  }
}

uint64_t (*CustomMaterial.textureCoordinateTransform.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, a1);
  return CustomMaterial.textureCoordinateTransform.modify;
}

uint64_t (*CustomMaterial.secondaryTextureCoordinateTransform.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, a1);
  return CustomMaterial.secondaryTextureCoordinateTransform.modify;
}

double key path getter for CustomMaterial.custom : CustomMaterial@<D0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  v7[3] = &type metadata for CustomMaterial;
  v7[4] = &protocol witness table for CustomMaterial;
  v7[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(a1, v7[0] + 16);
  CustomMaterial.Custom.init(material:alternateTintKey:)(v7, &v8);
  result = *v8.i64;
  v5 = v9;
  v6 = v10;
  *a2 = v8;
  a2[1].i64[0] = v5;
  a2[1].i32[2] = v6;
  return result;
}

uint64_t CustomMaterial.custom.setter(__n128 *a1)
{
  specialized Material.setParameter<A>(_:alternateTintKey:)(a1[1].n128_i64[0], a1[1].n128_i32[2], *a1);
}

void (*CustomMaterial.custom.modify(uint64_t *a1))(__n128 **a1, char a2)
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
  *(v3 + 32) = v1;
  v6[3] = &type metadata for CustomMaterial;
  v6[4] = &protocol witness table for CustomMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v6[0] + 16);
  CustomMaterial.Custom.init(material:alternateTintKey:)(v6, v4);
  return CustomMaterial.custom.modify;
}

void CustomMaterial.custom.modify(__n128 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1].n128_i32[2];
  v5 = (*a1)[2].n128_u64[0];
  v6 = (*a1)[1].n128_i64[0];
  if (a2)
  {
    v9 = v3;

    specialized Material.setParameter<A>(_:alternateTintKey:)(v7, v4, v9);

    v8 = v2[1].n128_u64[0];
  }

  else
  {
    specialized Material.setParameter<A>(_:alternateTintKey:)(v6, v4, v3);
  }

  free(v2);
}

unint64_t one-time initialization function for shaderCacheRegistry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCyAA14CustomMaterialV0iG10ParametersVGGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCyAA14CustomMaterialV0iG10ParametersVGGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation11ShaderCacheCyAE14CustomMaterialV0iG10ParametersVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static CustomMaterial.shaderCacheRegistry = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation11ShaderCacheCyAE23PhysicallyBasedMaterialV19PBRShaderParametersVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static PhysicallyBasedMaterial.shaderCacheRegistry = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCy0A3Kit13UnlitMaterialV0jG10ParametersVGGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA11ShaderCacheCy0A3Kit13UnlitMaterialV0jG10ParametersVGGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation11ShaderCacheCy0E3Kit13UnlitMaterialV0jG10ParametersVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static UnlitMaterial.shaderCacheRegistry = v0;
  return result;
}

uint64_t CustomMaterial.shaderCache.getter()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    if (one-time initialization token for shaderCacheRegistry != -1)
    {
      swift_once();
    }

    v2 = v0;
    CustomMaterial.assetService.getter(v5);
    v1 = specialized AssetServiceScopedRegistry.instance(for:)(v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = *(v0 + 168);

    *(v2 + 168) = v1;
  }

  return v1;
}

unint64_t CustomMaterial.CustomShaderParameters.materialPath.getter()
{
  v1 = *(v0 + 2);
  if ((v1 & 4) != 0)
  {
    if (v1)
    {
      return 0xD000000000000034;
    }

    else
    {
      return 0xD000000000000029;
    }
  }

  else
  {
    v2 = 0xD000000000000032;
    if (v1)
    {
      v2 = 0xD00000000000003DLL;
    }

    if ((v1 & 8) == 0)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD000000000000039;
    if ((v1 & 1) == 0)
    {
      v3 = 0xD00000000000002ELL;
    }

    if ((v1 & 2) != 0)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t CustomMaterial.CustomShaderParameters.functionConstants.getter()
{
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C18A1E70;
  *(v2 + 32) = 0xD000000000000026;
  *(v2 + 40) = 0x80000001C18EBDE0;
  *(v2 + 48) = (v1 >> 9) & 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0xD000000000000018;
  *(v2 + 88) = 0x80000001C18EBE10;
  *(v2 + 96) = (v1 >> 5) & 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0xD000000000000012;
  *(v2 + 136) = 0x80000001C18EBE30;
  v3 = (v1 >> 6) & 1;
  *(v2 + 144) = v3;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1;
  *(v2 + 176) = 0xD000000000000018;
  *(v2 + 184) = 0x80000001C18EBE50;
  *(v2 + 192) = v3;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 224) = 0x6C6E55686374614DLL;
  *(v2 + 232) = 0xEF726F6C6F437469;
  *(v2 + 240) = (v1 >> 7) & 1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 272) = 0xD000000000000018;
  *(v2 + 280) = 0x80000001C18EBE70;
  *(v2 + 288) = (v1 >> 8) & 1;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 320) = 0xD000000000000019;
  *(v2 + 328) = 0x80000001C18EBE90;
  *(v2 + 336) = (v1 >> 4) & 1;
  *(v2 + 344) = 0;
  *(v2 + 352) = 1;
  *(v2 + 368) = 0xD00000000000001CLL;
  *(v2 + 376) = 0x80000001C18EBEB0;
  *(v2 + 384) = (v1 >> 12) & 1;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v4;
}

void CustomMaterial.CustomShaderParameters.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 18);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 104);
  v11 = *(v0 + 40);
  v12 = *(v0 + 88);
  Hasher._combine(_:)(*(v0 + 2));
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
    if (v3 != 2)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v8 = v3 & 1;
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    if (v3 != 2)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  Hasher._combine(_:)(v8);
  if (v11)
  {
    Hasher._combine(_:)(1u);

    v9 = *(&v13 + 1);
    __MaterialResource.CoreMaterialFunction.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v12)
  {
    Hasher._combine(_:)(1u);

    v10 = *(&v14 + 1);
    __MaterialResource.CoreMaterialFunction.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomMaterial.CustomShaderParameters()
{
  Hasher.init(_seed:)();
  CustomMaterial.CustomShaderParameters.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.CustomShaderParameters()
{
  Hasher.init(_seed:)();
  CustomMaterial.CustomShaderParameters.hash(into:)();
  return Hasher._finalize()();
}

unsigned __int8 *(*CustomMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 344) == 1;
  return CustomMaterial.triangleFillMode.modify;
}

uint64_t protocol witness for Material.__faceCullMode.getter in conformance CustomMaterial()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.setter in conformance CustomMaterial(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

id protocol witness for Material.__directUniformsState.getter in conformance CustomMaterial@<X0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

_BYTE *(*CustomMaterial.writesDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 352);
  return CustomMaterial.writesDepth.modify;
}

_BYTE *(*CustomMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 353);
  return CustomMaterial.readsDepth.modify;
}

id CustomMaterial.GeometryModifier.init(named:libraryAssetPath:linkSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  return CustomMaterial.GeometryModifier.init(named:libraryAssetPath:linkSPI:)(a1, a2, a3, a4, a5, a6);
}

{
  v10 = specialized String.withCString<A>(_:)(a3, a4);

  if (v10)
  {
    v11 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of [String : String](v11 + 40, &v16, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (!v17)
    {
      __break(1u);
      return result;
    }

    outlined init with take of ForceEffectBase(&v16, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v14 + 24))(v13, v14);
    v15 = REShaderLibraryAssetGetMetalLibrary();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v15)
    {
      result = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
      *a6 = a1;
      *(a6 + 8) = a2;
      *(a6 + 16) = v15;
      *(a6 + 24) = v10;
      *(a6 + 32) = result;
      *(a6 + 40) = a5 & 1;
      return result;
    }
  }

  *(a6 + 25) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

uint64_t closure #1 in closure #1 in CustomMaterial.GeometryModifier.init(named:libraryAssetPath:linkSPI:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 32))(v3, v4);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a1 = AssetHandle;
  return result;
}

uint64_t CustomMaterial.normal.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for CustomMaterial;
  v4[4] = &protocol witness table for CustomMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

void *key path getter for CustomMaterial.normal : CustomMaterial@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v8[3] = &type metadata for CustomMaterial;
  v8[4] = &protocol witness table for CustomMaterial;
  v8[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(a1, v8[0] + 16);
  result = a2(&v9, v8, 0, 0);
  v7 = v10;
  *a3 = v9;
  *(a3 + 8) = v7;
  return result;
}

uint64_t CustomMaterial.normal.setter(uint64_t a1, void (*a2)(void, void, void, void))
{
  a2(*a1, *(a1 + 8), 0, 0);
}

void (*CustomMaterial.clearcoatNormal.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x258uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  outlined init with copy of CustomMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);

  v9 = v8;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v9, v4 + 432);
  v10 = *(v4 + 496);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 448);
    *v4 = *(v4 + 432);
    *(v4 + 16) = v11;
    v12 = *(v4 + 480);
    *(v4 + 32) = *(v4 + 464);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v4 + 64);
  *(v4 + 592) = v16;
  v17 = *(v4 + 48);
  *(v4 + 560) = *(v4 + 32);
  *(v4 + 576) = v17;
  v18 = *(v4 + 16);
  *(v4 + 528) = *v4;
  *(v4 + 544) = v18;
  if (v16 != 255)
  {
    if (v16 == 1)
    {
      v15 = *(v4 + 536);

      v14 = 84148994;
    }

    outlined destroy of BodyTrackingComponent?(v4 + 528, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *(v4 + 504) = v15;
  *(v4 + 512) = v14;
  outlined destroy of CustomMaterial(v4 + 72);
  return CustomMaterial.clearcoatNormal.modify;
}

void CustomMaterial.normal.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void, void))
{
  v4 = *a1;
  v5 = *(*a1 + 512);
  v6 = *(*a1 + 520);
  v7 = *(*a1 + 504);
  if (a2)
  {

    a3(v8, v5, 0, 0);

    v9 = v4[63];
  }

  else
  {
    a3(v7, v5, 0, 0);
  }

  free(v4);
}

uint64_t CustomMaterial.GeometryModifier.hash(into:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  Hasher._combine(_:)(*(v0 + 40));
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v4 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return MEMORY[0x1C68F4C10]([v3 hash]);
}

Swift::Int CustomMaterial.GeometryModifier.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v5 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68F4C10]([v3 hash]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomMaterial.GeometryModifier(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = *(v3 + 40);
  v10 = *v3;
  v11 = *(v3 + 1);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  Hasher.init(_seed:)();
  a3(v9);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.GeometryModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = v4[3];
  v7 = v4[4];
  v8 = *(v4 + 40);
  v11 = *v4;
  v12 = *(v4 + 1);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  Hasher.init(_seed:)();
  a4(v10);
  return Hasher._finalize()();
}

BOOL specialized static CustomMaterial.CustomShaderParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v96 = v2;
    v97 = v3;
    v6 = a1[17];
    v7 = a1[18];
    v9 = *(a1 + 3);
    v8 = *(a1 + 4);
    v11 = *(a1 + 5);
    v10 = *(a1 + 6);
    v13 = *(a1 + 7);
    v12 = *(a1 + 8);
    v15 = *(a1 + 9);
    v14 = *(a1 + 10);
    v17 = *(a1 + 11);
    v16 = *(a1 + 12);
    v19 = *(a1 + 13);
    v18 = *(a1 + 14);
    v20 = a2[17];
    v21 = a2[18];
    v22 = *(a2 + 3);
    v77 = *(a2 + 4);
    v23 = *(a2 + 5);
    v75 = *(a2 + 6);
    v76 = *(a2 + 7);
    v24 = *(a2 + 10);
    v25 = *(a2 + 12);
    v73 = *(a2 + 11);
    v26 = *(a2 + 13);
    v27 = *(a2 + 14);
    if (a1[16])
    {
      if (!a2[16])
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 1) == *(a2 + 1))
      {
        v28 = a2[16];
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        return 0;
      }
    }

    if (v6 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v20 == 2 || ((v20 ^ v6) & 1) != 0)
    {
      return 0;
    }

    v71 = *(a2 + 9);
    if (v7 == 2)
    {
      if (v21 != 2)
      {
        return 0;
      }

LABEL_20:
      v69 = v14;
      v70 = *(a2 + 8);
      v29 = v11;
      if (v11)
      {
        v84 = v9;
        v85 = v8;
        v86 = v11;
        v87 = v10;
        v30 = v13;
        v88 = v13;
        v89 = v12;
        if (v23)
        {
          v60 = v24;
          v61 = v25;
          v62 = v26;
          v63 = v27;
          v64 = v17;
          v65 = v15;
          v67 = v18;
          v68 = v16;
          v66 = v19;
          LOBYTE(v78) = v22;
          v79 = v77;
          v80 = v23;
          v81 = v75;
          v82 = v76;
          v83 = v70;
          v58 = v13;
          v59 = v12;
          v31 = v10;
          outlined copy of __MaterialResource.CoreMaterialFunction?(v9, v8, v11, v10, v30, v12);
          outlined copy of __MaterialResource.CoreMaterialFunction?(v22, v77, v23, v75, v76, v70);
          outlined copy of __MaterialResource.CoreMaterialFunction?(v9, v8, v11, v31, v58, v59);
          v32 = protocol witness for static Equatable.== infix(_:_:) in conformance __MaterialResource.CoreMaterialFunction(&v84, &v78);

          outlined consume of __MaterialResource.CoreMaterialFunction?(v9, v8, v11, v31, v58, v59);
          if ((v32 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_29;
        }

        v33 = v8;
        v44 = v12;
        v45 = v10;
        v43 = v29;
        v35 = v30;
        outlined copy of __MaterialResource.CoreMaterialFunction?(v9, v8, v29, v10, v30, v12);
        v74 = v22;
        v46 = v22;
        v39 = v76;
        v40 = v75;
        v41 = v70;
        outlined copy of __MaterialResource.CoreMaterialFunction?(v46, v77, 0, v75, v76, v70);
        outlined copy of __MaterialResource.CoreMaterialFunction?(v9, v33, v43, v45, v35, v44);
      }

      else
      {
        v60 = *(a2 + 10);
        v61 = *(a2 + 12);
        v62 = *(a2 + 13);
        v63 = *(a2 + 14);
        v64 = v17;
        v65 = v15;
        v67 = v18;
        v68 = v16;
        v66 = v19;
        v33 = v8;
        v34 = v10;
        v35 = v13;
        v36 = v13;
        v37 = v12;
        outlined copy of __MaterialResource.CoreMaterialFunction?(v9, v8, 0, v10, v36, v12);
        if (!v23)
        {
          outlined copy of __MaterialResource.CoreMaterialFunction?(v22, v77, 0, v75, v76, v70);
          outlined consume of __MaterialResource.CoreMaterialFunction?(v9, v8, 0, v34, v35, v37);
LABEL_29:
          if (v64)
          {
            v84 = v65;
            v85 = v69;
            v86 = v64;
            v87 = v68;
            v88 = v66;
            v89 = v67;
            if (v73)
            {
              LOBYTE(v78) = v71;
              v79 = v60;
              v80 = v73;
              v81 = v61;
              v82 = v62;
              v83 = v63;
              outlined copy of __MaterialResource.CoreMaterialFunction?(v65, v69, v64, v68, v66, v67);
              outlined copy of __MaterialResource.CoreMaterialFunction?(v71, v60, v73, v61, v62, v63);
              outlined copy of __MaterialResource.CoreMaterialFunction?(v65, v69, v64, v68, v66, v67);
              v47 = protocol witness for static Equatable.== infix(_:_:) in conformance __MaterialResource.CoreMaterialFunction(&v84, &v78);

              outlined consume of __MaterialResource.CoreMaterialFunction?(v65, v69, v64, v68, v66, v67);
              return (v47 & 1) != 0;
            }

            v51 = v68;
            v50 = v65;
            v49 = v66;
            v48 = v64;
            v52 = v67;
            outlined copy of __MaterialResource.CoreMaterialFunction?(v65, v69, v64, v68, v66, v67);
            v53 = v71;
            v55 = v60;
            v54 = v61;
            v57 = v62;
            v56 = v63;
            outlined copy of __MaterialResource.CoreMaterialFunction?(v71, v60, 0, v61, v62, v63);
            outlined copy of __MaterialResource.CoreMaterialFunction?(v65, v69, v64, v68, v66, v67);
          }

          else
          {
            v48 = 0;
            v50 = v65;
            v49 = v66;
            v51 = v68;
            v52 = v67;
            outlined copy of __MaterialResource.CoreMaterialFunction?(v65, v69, 0, v68, v66, v67);
            if (!v73)
            {
              outlined copy of __MaterialResource.CoreMaterialFunction?(v71, v60, 0, v61, v62, v63);
              outlined consume of __MaterialResource.CoreMaterialFunction?(v65, v69, 0, v68, v66, v67);
              return 1;
            }

            v53 = v71;
            v55 = v60;
            v54 = v61;
            v57 = v62;
            v56 = v63;
            outlined copy of __MaterialResource.CoreMaterialFunction?(v71, v60, v73, v61, v62, v63);
          }

          v84 = v50;
          v85 = v69;
          v86 = v48;
          v87 = v51;
          v88 = v49;
          v89 = v52;
          v90 = v53;
          v91 = v55;
          v92 = v73;
          v93 = v54;
          v94 = v57;
          v95 = v56;
          outlined destroy of BodyTrackingComponent?(&v84, &_s10RealityKit18__MaterialResourceC04CoreC8FunctionVSg_AFtMd, &_s10RealityKit18__MaterialResourceC04CoreC8FunctionVSg_AFtMR);
          return 0;
        }

        v72 = v34;
        v74 = v22;
        v38 = v22;
        v39 = v76;
        v40 = v75;
        v41 = v70;
        outlined copy of __MaterialResource.CoreMaterialFunction?(v38, v77, v23, v75, v76, v70);
        v42 = v37;
        v43 = 0;
        v44 = v42;
        v45 = v72;
      }

      v84 = v9;
      v85 = v33;
      v86 = v43;
      v87 = v45;
      v88 = v35;
      v89 = v44;
      v90 = v74;
      v91 = v77;
      v92 = v23;
      v93 = v40;
      v94 = v39;
      v95 = v41;
      outlined destroy of BodyTrackingComponent?(&v84, &_s10RealityKit18__MaterialResourceC04CoreC8FunctionVSg_AFtMd, &_s10RealityKit18__MaterialResourceC04CoreC8FunctionVSg_AFtMR);
      return 0;
    }

    result = 0;
    if (v21 != 2 && ((v21 ^ v7) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized static CustomMaterial.Descriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = a1[29];
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = a1[42];
  v9 = *a2;
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = a2[29];
  v13 = *(a2 + 4);
  v14 = a2[40];
  v15 = v10 - 3;
  v16 = a2[42];
  if ((v4 - 1) >= 2)
  {
    if (v15 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v20 = *(a2 + 6) | (a2[28] << 32);
      outlined copy of CustomMaterial.Blending?(*(a2 + 1), *(a2 + 2));
      return 0;
    }

    v18 = ((*(a2 + 6) | (a2[28] << 32)) >> 32) & 1;
    if (v10 == 2)
    {
      LOBYTE(v18) = 0;
    }

    v19 = a1[28] & 1 ^ v18;
  }

  else
  {
    v22 = *(a2 + 4);
    v23 = a2[42];
    v24 = a2[40];
    v25 = *a1;
    outlined copy of CustomMaterial.Blending?(*(a1 + 1), v4);
    if (v15 < 0xFFFFFFFFFFFFFFFELL)
    {
      return 0;
    }

    outlined copy of CustomMaterial.Blending?(v11, v10);
    v19 = 0;
    v14 = v24;
    v3 = v25;
    v16 = v23;
    v13 = v22;
  }

  result = 0;
  if (v3 == v9 && (v19 & 1) == 0 && v5 == v12)
  {
    if (v7)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == v13)
      {
        v21 = v14;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    return v8 ^ v16 ^ 1u;
  }

  return result;
}

uint64_t specialized static CustomMaterial.SurfaceShader.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 24);
    v3 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v8 = a2[3];
    v7 = a2[4];
    if (*a1 == *a2 && *(a1 + 8) == v6)
    {
      goto LABEL_5;
    }

    v9 = *a2;
    v10 = a2[1];
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_5:
      swift_unknownObjectRetain();
      v11 = MEMORY[0x1C68F3280](v5, v6);
      v12 = [v2 isEqual_];
      swift_unknownObjectRelease();

      if (v12)
      {
        if (v4)
        {
          if (v4 == v8)
          {
LABEL_8:
            type metadata accessor for NSObject();
            v13 = v3;
            v14 = v7;
            v15 = static NSObject.== infix(_:_:)();

            return v15 & 1;
          }
        }

        else if (!v8)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

void specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 + 8);
  if (v5)
  {
    v20 = a1[1];
    v21 = v2;
    v6 = *a2;
    v7 = *(a2 + 16);
    v25 = *(a2 + 24);
    v8 = *(a2 + 32);
    v22 = *(a2 + 40);

    swift_unknownObjectRetain();
    v9 = v8;
    v10 = [v7 functionNames];
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v6;
    v24 = v5;
    MEMORY[0x1EEE9AC00](v12);
    v19 = &v23;
    LOBYTE(v10) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v18, v11);

    if ((v10 & 1) == 0)
    {
      lazy protocol witness table accessor for type CustomMaterialError and conformance CustomMaterialError();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      outlined consume of CustomMaterial.GeometryModifier?(v6, v5, v7, v25, v8);
      return;
    }

    outlined consume of CustomMaterial.GeometryModifier?(v6, v5, v7, v25, v8);
    v3 = v20;
    v2 = v21;
  }

  v13 = [v4 functionNames];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v2;
  v24 = v3;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23;
  LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v18, v14);

  if ((v13 & 1) == 0)
  {
    lazy protocol witness table accessor for type CustomMaterialError and conformance CustomMaterialError();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CustomMaterialError and conformance CustomMaterialError()
{
  result = lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError;
  if (!lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError;
  if (!lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterialError and conformance CustomMaterialError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterialErrorSPI and conformance CustomMaterialErrorSPI()
{
  result = lazy protocol witness table cache variable for type CustomMaterialErrorSPI and conformance CustomMaterialErrorSPI;
  if (!lazy protocol witness table cache variable for type CustomMaterialErrorSPI and conformance CustomMaterialErrorSPI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterialErrorSPI and conformance CustomMaterialErrorSPI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.LightingModel and conformance CustomMaterial.LightingModel()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.LightingModel and conformance CustomMaterial.LightingModel;
  if (!lazy protocol witness table cache variable for type CustomMaterial.LightingModel and conformance CustomMaterial.LightingModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.LightingModel and conformance CustomMaterial.LightingModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Descriptor.AttributeSet and conformance CustomMaterial.Descriptor.AttributeSet()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor.AttributeSet and conformance CustomMaterial.Descriptor.AttributeSet;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor.AttributeSet and conformance CustomMaterial.Descriptor.AttributeSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor.AttributeSet and conformance CustomMaterial.Descriptor.AttributeSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor.FunctionConstantOptions and conformance CustomMaterial.Descriptor.FunctionConstantOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Descriptor and conformance CustomMaterial.Descriptor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Descriptor and conformance CustomMaterial.Descriptor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Descriptor and conformance CustomMaterial.Descriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Descriptor and conformance CustomMaterial.Descriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.GeometryModifier and conformance CustomMaterial.GeometryModifier()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.GeometryModifier and conformance CustomMaterial.GeometryModifier;
  if (!lazy protocol witness table cache variable for type CustomMaterial.GeometryModifier and conformance CustomMaterial.GeometryModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.GeometryModifier and conformance CustomMaterial.GeometryModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.SurfaceShader and conformance CustomMaterial.SurfaceShader()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.SurfaceShader and conformance CustomMaterial.SurfaceShader;
  if (!lazy protocol witness table cache variable for type CustomMaterial.SurfaceShader and conformance CustomMaterial.SurfaceShader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.SurfaceShader and conformance CustomMaterial.SurfaceShader);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14CustomMaterialV8BlendingOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_10RealityKit18__MaterialResourceC04CoreC8FunctionVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14CustomMaterialV10DescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 <= 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for CustomMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
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

uint64_t storeEnumTagSinglePayload for CustomMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Descriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 43))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy28_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Custom(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for CustomMaterial.Custom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for CustomMaterial.CustomShaderParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for CustomMaterial.CustomShaderParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CustomMaterial.CustomShaderParameters(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CustomMaterial.CustomShaderParameters and conformance CustomMaterial.CustomShaderParameters();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in CustomMaterial.SurfaceShader.init(named:libraryAssetPath:linkSPI:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in closure #1 in CustomMaterial.GeometryModifier.init(named:libraryAssetPath:linkSPI:)(a1);
}

id outlined copy of __RKMaterialParameterBlock.Parameter(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 6)
  {

    return result;
  }

  else
  {
    if (a9 == 1)
    {
      v9 = result;
    }

    else if (a9)
    {
      return result;
    }
  }
}

uint64_t outlined consume of CustomMaterial.Descriptor?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 3)
  {
    return outlined consume of CustomMaterial.Blending?(a2, a3);
  }

  return result;
}

unint64_t NetworkSessionError.localizedDescription.getter()
{
  result = 0x6D20644920707041;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x776F6C667265764FLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6C706D6920746F4ELL;
      break;
    case 0xA:
      result = 0x7165722072657355;
      break;
    case 0xB:
      result = 0x656461656C206F4ELL;
      break;
    case 0xC:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t NetworkSessionError.errorDescription.getter()
{
  result = 0x6D20644920707041;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x776F6C667265764FLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6C706D6920746F4ELL;
      break;
    case 0xA:
      result = 0x7165722072657355;
      break;
    case 0xB:
      result = 0x656461656C206F4ELL;
      break;
    case 0xC:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

Swift::Int NetworkSessionError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int NetworkParticipantError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NetworkSessionError and conformance NetworkSessionError()
{
  result = lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError;
  if (!lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError;
  if (!lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSessionError and conformance NetworkSessionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkParticipantError and conformance NetworkParticipantError()
{
  result = lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError;
  if (!lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError;
  if (!lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkParticipantError and conformance NetworkParticipantError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}