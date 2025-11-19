void outlined consume of Result<OpaquePointer, TextureResource.TextureImportOperationError>(void *a1, void *a2, char a3, char a4)
{
  if (a4)
  {
    outlined consume of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }
}

uint64_t partial apply for closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(a1, a2, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 37), *(v2 + 40), *(v2 + 48));
}

void outlined consume of Result<AUAudioUnit, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<AUAudioUnit, Error>(a1);
  }
}

unint64_t lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError;
  if (!lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError;
  if (!lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 61))
  {
    v3 = 0;
  }

  return closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v3 | (*(v2 + 59) << 16) | (*(v2 + 58) << 8) | *(v2 + 57), *(v2 + 64), *(v2 + 72), *(v2 + 80));
}

uint64_t partial apply for doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 61))
  {
    v1 = 0;
  }

  v3 = *(v0 + 88);
  return doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 | (*(v0 + 59) << 16) | (*(v0 + 58) << 8) | *(v0 + 57), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.copy(to:)(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in TextureResource.copy(to:)(a1);
}

uint64_t partial apply for closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 29) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = 0x100000000;
  if (!*(v2 + 28))
  {
    v8 = 0;
  }

  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = v8 | (*(v2 + 26) << 16) | (*(v2 + 25) << 8) | *(v2 + 24);

  return closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(a1, a2 & 1, v7, v10, v2 + v6, v9);
}

uint64_t objectdestroy_364Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = 0x100000000;
  if (!*(v0 + 29))
  {
    v4 = 0;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v4 | (*(v0 + 27) << 16) | (*(v0 + 26) << 8) | *(v0 + 25);

  return closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(v2, v3, v7, v5);
}

id outlined copy of Result<[Entity], Error>(id a1, char a2, uint64_t (*a3)(id))
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return a3(a1);
  }
}

uint64_t lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 44))
  {
    v2 = 0;
  }

  return closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | (*(v1 + 42) << 16) | (*(v1 + 41) << 8) | *(v1 + 40), *(v1 + 48));
}

uint64_t objectdestroy_370Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 28))
  {
    v1 = 0;
  }

  return closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(*(v0 + 16), v1 | (*(v0 + 26) << 16) | (*(v0 + 25) << 8) | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t objectdestroy_361Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return a3(v4, v5);
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_229Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_288Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_209Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id outlined copy of Result<ModelEntity, Error>(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<ModelEntity, Error>(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t partial apply for closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for TextureResource.LoadError();
  swift_storeEnumTagMultiPayload();
}

uint64_t objectdestroy_384Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t partial apply for closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 28))
  {
    v1 = 0;
  }

  return closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(*(v0 + 16), v1 | (*(v0 + 26) << 16) | (*(v0 + 25) << 8) | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

void partial apply for closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 44))
  {
    v1 = 0;
  }

  v2 = *(v0 + 64);
  closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 | (*(v0 + 42) << 16) | (*(v0 + 41) << 8) | *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t getEnumTagSinglePayload for TextureResource.TextureImportOperationError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextureResource.TextureImportOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t RealityRenderer.EntityCollection.count.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  result = REEntityGetChildCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (!result)
    {
LABEL_6:

      return v4;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v1 + 16);
      result = REEntityGetChildCount();
      if (v5 >= result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RealityRenderer.EntityCollection.subscript.getter(uint64_t a1)
{
  v5 = *v1;

  v3 = Entity.ChildCollection.subscript.getter(a1);

  return v3;
}

Swift::Int __swiftcall RealityRenderer.EntityCollection.index(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = after;
    v3 = *(*v1 + 16);
    after = REEntityGetChildCount();
    if (after > v2)
    {
      return v2 + 1;
    }
  }

  __break(1u);
  return after;
}

uint64_t RealityRenderer.EntityCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;

  Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(a1, a2, a3);
}

uint64_t RealityRenderer.EntityCollection.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();
  v4 = specialized HasHierarchy.parent.getter();
  if (!v4)
  {
  }

  v5 = *(v4 + 16);

  v6 = *(v3 + 16);

  if (v5 == v6)
  {
    v7 = *(a1 + 16);
    REEntitySetParent();
    type metadata accessor for Entity();
    static Entity.updateInteractions(root:)(a1);
  }
}

Swift::Void __swiftcall RealityRenderer.EntityCollection.remove(at:)(Swift::Int at)
{
  v3 = *v1;

  v4 = Entity.ChildCollection.subscript.getter(at);

  v5 = specialized HasHierarchy.parent.getter();
  if (v5)
  {
    v6 = *(v5 + 16);

    v7 = *(v3 + 16);

    if (v6 == v7)
    {
      v8 = *(v4 + 16);
      REEntitySetParent();
      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v4);
    }
  }

  else
  {
  }
}

uint64_t RealityRenderer.EntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v10 = *v4;

  a4(a1, a2, a3);
}

uint64_t protocol witness for EntityCollection.remove(_:) in conformance RealityRenderer.EntityCollection(uint64_t a1)
{
  v3 = *v1;

  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(a1, 0);
}

uint64_t protocol witness for EntityCollection.remove(at:) in conformance RealityRenderer.EntityCollection(uint64_t a1)
{
  v3 = *v1;

  v4 = Entity.ChildCollection.subscript.getter(a1);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v4, 0);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEntityGetChildCount();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  v7 = *v2;

  v5 = Entity.ChildCollection.subscript.getter(v4);
  a1[1] = v5;

  *a1 = v5;
  return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
}

uint64_t protocol witness for Collection.subscript.getter in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(v6 + 16);
  result = REEntityGetChildCount();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

uint64_t protocol witness for Collection.indices.getter in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  v4 = *(v3 + 16);

  result = REEntityGetChildCount();
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance RealityRenderer.EntityCollection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized Collection.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance RealityRenderer.EntityCollection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_36;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_34;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v12 = v6;
    v13 = *v6;
    v14 = v12[1];
    v32 = v14;
    v15 = a5;
    v11 = 1;
    v30 = v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    while ((v8 & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(v14 + 32);
      if (v8 >= v16)
      {
        break;
      }

      v17 = v8 >> 6;
      v18 = *(v14 + 64 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (*(v14 + 36) != v10)
      {
        goto LABEL_31;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
      }

      else
      {
        v20 = v7;
        v21 = v9;
        v22 = v15;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v14 + 8 * v17 + 72);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
            outlined consume of [String : AudioResource].Index._Variant(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_22;
          }
        }

        outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
        outlined consume of [String : AudioResource].Index._Variant(v8, v10, 0);
        v8 = v16;
LABEL_22:
        v15 = v22;
        v9 = v21;
        v7 = v20;
        v13 = v30;
      }

      v28 = *(v14 + 36);

      if (v28 != v9)
      {
        goto LABEL_32;
      }

      if (v8 == v7)
      {
        return v11;
      }

      if (__OFADD__(v11++, 1))
      {
        goto LABEL_33;
      }

      v14 = v32;
      v10 = v15;
      if (v32)
      {
        continue;
      }

LABEL_9:
      if (v13)
      {
        result = AnimationLibraryResource.keyedResources.getter();
        v14 = result;
        continue;
      }

      v14 = MEMORY[0x1E69E7CC8];
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  outlined consume of [String : AudioResource].Index._Variant(a4, a2, 0);
  return 0;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < result)
  {
    goto LABEL_14;
  }

  if (a2 != result)
  {
    v4 = result;
    v3 = a2 - result;
    if (a2 <= result)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 = 0;
    while (!__OFADD__(v6, 1))
    {
      if (v4 < 0)
      {
        goto LABEL_12;
      }

      v7 = *(a3 + 16);
      result = REEntityGetChildCount();
      if (v4 + v6 >= result)
      {
        goto LABEL_13;
      }

      if (v3 == ++v6)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return 0;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityRenderer.EntityCollection(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityRenderer.EntityCollection(void *result, void *a2)
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

uint64_t *protocol witness for Collection.index(after:) in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(*v2 + 16);
    result = REEntityGetChildCount();
    if (v3 < result)
    {
      *a2 = v3 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance RealityRenderer.EntityCollection(uint64_t *result)
{
  v2 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(*v1 + 16);
    result = REEntityGetChildCount();
    if (v2 < result)
    {
      *v3 = v2 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance RealityRenderer.EntityCollection()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  ChildCount = REEntityGetChildCount();
  v4 = specialized Collection.distance(from:to:)(0, ChildCount, v1);

  return v4;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RealityRenderer.EntityCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t (*RealityRenderer.CameraSettings.__proto_antialiasingMode_v1.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.__proto_antialiasingMode_v1.modify;
}

CGColorRef one-time initialization function for _blackTransparent()
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  static RealityRenderer.CameraSettings.ColorBackground._blackTransparent = result;
  return result;
}

id RealityRenderer.CameraSettings.colorBackground.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void RealityRenderer.CameraSettings.colorBackground.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.CameraOutput.InitError()
{
  v1 = 0xD000000000000035;
  v2 = *v0;
  v3 = 0xD00000000000003ELL;
  if (v2 == 3)
  {
    v3 = 0xD000000000000035;
  }

  if (v2 != 2)
  {
    v1 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD00000000000003BLL;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

RealityFoundation::RealityRenderer::CameraOutput::RelativeViewport __swiftcall RealityRenderer.CameraOutput.RelativeViewport.init(originX:originY:width:height:)(Swift::Double originX, Swift::Double originY, Swift::Double width, Swift::Double height)
{
  *v4 = originX;
  v4[1] = originY;
  v4[2] = width;
  v4[3] = height;
  result.height = height;
  result.width = width;
  result.originY = originY;
  result.originX = originX;
  return result;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.colorTextures.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.viewports.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t RealityRenderer.CameraOutput.init(_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[3];
  v23 = a1[2];
  v24 = v5;
  v6 = v21 >> 62;
  if (v21 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (*(&v21 + 1) >> 62)
  {
    goto LABEL_70;
  }

  if (*((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v7 = 0;
    if (v23)
    {
LABEL_11:
      if (v6)
      {
        result = __CocoaSet.count.getter();
        if (result)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_17;
        }
      }

      v9 = *(&v21 + 1);
      if (!(*(&v21 + 1) >> 62))
      {
        result = *((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

LABEL_78:
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_21:
        if (v9 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_29:
            v9 = v22;
            if (!(v22 >> 62))
            {
              result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_31;
              }

LABEL_65:
              result = swift_unknownObjectRelease();
              v19 = a1[1];
              *a2 = *a1;
              a2[1] = v19;
              v20 = a1[3];
              a2[2] = a1[2];
              a2[3] = v20;
              return result;
            }

LABEL_86:
            result = __CocoaSet.count.getter();
            if (!result)
            {
              goto LABEL_65;
            }

LABEL_31:
            if ((v9 & 0xC000000000000001) == 0)
            {
              if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v11 = *(v9 + 32);
                swift_unknownObjectRetain();
                goto LABEL_34;
              }

              __break(1u);
              goto LABEL_92;
            }

LABEL_90:
            v11 = MEMORY[0x1C68F41F0](0, v9);
LABEL_34:
            if ([v11 layerCount] != 2)
            {
LABEL_35:
              outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
              lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
              swift_allocError();
              v13 = 4;
LABEL_67:
              *v12 = v13;
              swift_willThrow();
              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            goto LABEL_64;
          }
        }

        else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C68F41F0](0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v10 = *(v9 + 32);
          swift_unknownObjectRetain();
        }

        if (([v10 usage] & 4) != 0)
        {
          if ([v10 arrayLength] == 2)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

LABEL_66:
          outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
          lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
          swift_allocError();
          v13 = 3;
          goto LABEL_67;
        }

LABEL_55:
        outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
        lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
        swift_allocError();
        v13 = 1;
        goto LABEL_67;
      }

LABEL_17:
      if (!v7)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (([v7 usage] & 4) != 0)
      {
        if ([v7 arrayLength] == 2)
        {
          v9 = *(&v21 + 1);
          goto LABEL_21;
        }

        outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
        lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
        swift_allocError();
        *v14 = 2;
LABEL_47:
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

LABEL_46:
      outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
      lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
      swift_allocError();
      *v16 = 0;
      goto LABEL_47;
    }
  }

  else
  {
LABEL_3:
    while ((v21 & 0xC000000000000001) == 0)
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v21 + 32);
        swift_unknownObjectRetain();
        if (v23)
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_70:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_10;
      }
    }

    v7 = MEMORY[0x1C68F41F0](0, v21);
    if (v23)
    {
      goto LABEL_11;
    }
  }

LABEL_38:
  if (v6)
  {
    result = __CocoaSet.count.getter();
    v15 = &property descriptor for UnlitMaterial.readsDepth;
    if (result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = &property descriptor for UnlitMaterial.readsDepth;
    if (result)
    {
      goto LABEL_44;
    }
  }

  v9 = *(&v21 + 1);
  if (*(&v21 + 1) >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_49;
    }
  }

  else
  {
    result = *((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_49;
    }
  }

LABEL_44:
  if (v7)
  {
    if (([v7 v15[429]] & 4) == 0)
    {
      goto LABEL_46;
    }

    v9 = *(&v21 + 1);
LABEL_49:
    if (v9 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_58;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1C68F41F0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v17 = *(v9 + 32);
      swift_unknownObjectRetain();
    }

    if (([v17 v15[429]] & 4) == 0)
    {
      goto LABEL_55;
    }

    if ([v17 arrayLength] != 1)
    {
      goto LABEL_66;
    }

    swift_unknownObjectRelease();
LABEL_58:
    v9 = v22;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_65;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C68F41F0](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_90;
      }

      v18 = *(v22 + 32);
      swift_unknownObjectRetain();
    }

    if ([v18 layerCount] != 1)
    {
      goto LABEL_35;
    }

LABEL_64:
    swift_unknownObjectRelease();
    goto LABEL_65;
  }

LABEL_93:
  __break(1u);
  return result;
}

uint64_t RealityRenderer.scene.getter()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t key path getter for RealityRenderer.entities : RealityRenderer@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 24);
  memset(v5, 0, sizeof(v5));
  v6 = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v5, 0, v3);

  *a2 = v3;
  return result;
}

uint64_t RealityRenderer.entities.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  memset(v4, 0, sizeof(v4));
  v5 = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v4, 0, v2);
}

uint64_t RealityRenderer.entities.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(*a1 + 16);

  if (v3 != *(v2 + 16))
  {
    __break(1u);
  }

  return result;
}

void (*RealityRenderer.entities.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 24);
  *(v3 + 48) = v5;
  *(v3 + 40) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v4, 0, v5);

  return RealityRenderer.entities.modify;
}

void RealityRenderer.entities.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 40) + 16);
  v4 = *(*a1 + 48);
  if ((a2 & 1) == 0)
  {

    if (v3 == *(v4 + 16))
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  if (v3 != *(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

void RealityRenderer.subscribe<A>(to:on:componentType:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, ValueMetadata *a6@<X6>, uint64_t a7@<X7>, uint64_t **a8@<X8>)
{
  v24 = a8;
  v25 = a7;
  v23 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  if (*(v8 + 16))
  {

    Scene.subscribe<A>(to:on:componentType:_:)(a1, a2, a3, a4, a5, v23, v25, v27);

    outlined init with copy of __REAssetService(v27, v26);
    type metadata accessor for StoredEventSubscription();
    v19 = swift_allocObject();
    Empty.init(completeImmediately:)();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>, &_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
    v20 = Publisher<>.sink(receiveValue:)();
    (*(v15 + 8))(v18, v14);
    v21 = type metadata accessor for AnyCancellable();
    v22 = MEMORY[0x1E695BF08];
    v19[5] = v21;
    v19[6] = v22;
    v19[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v27);
    *v24 = v19;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v19 + 2);
    outlined init with take of ForceEffectBase(v26, (v19 + 2));
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t RealityRenderer.ImageBasedLight.resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t key path setter for RealityRenderer.lighting : RealityRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  return RealityRenderer.updateIBL()();
}

uint64_t RealityRenderer.lighting.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
}

uint64_t RealityRenderer.lighting.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return RealityRenderer.updateIBL()();
}

uint64_t (*RealityRenderer.lighting.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RealityRenderer.lighting.modify;
}

uint64_t RealityRenderer.lighting.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return RealityRenderer.updateIBL()();
  }

  return result;
}

uint64_t key path setter for RealityRenderer.activeCamera : RealityRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t RealityRenderer.activeCamera.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t RealityRenderer.activeCamera.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

id key path getter for RealityRenderer.cameraSettings : RealityRenderer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 57);
  v5 = *(v3 + 58);
  v6 = *(v3 + 60);
  v7 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 1) = v4;
  *(a2 + 2) = v5;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;

  return v7;
}

void key path setter for RealityRenderer.cameraSettings : RealityRenderer(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 56) = v2;
  *(v7 + 57) = v3;
  *(v7 + 58) = v4;
  *(v7 + 60) = v5;
  *(v7 + 64) = v6;
  v9 = v6;
}

id RealityRenderer.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 57);
  v4 = *(v1 + 58);
  v5 = *(v1 + 60);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 1) = v3;
  *(a1 + 2) = v4;
  *(a1 + 4) = v5;
  *(a1 + 8) = v6;

  return v6;
}

void RealityRenderer.cameraSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  swift_beginAccess();
  v7 = *(v1 + 64);
  *(v1 + 56) = v2;
  *(v1 + 57) = v3;
  *(v1 + 58) = v4;
  *(v1 + 60) = v5;
  *(v1 + 64) = v6;
}

uint64_t static RealityRenderer.MetalEventAction.wait(for:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return swift_unknownObjectRetain();
}

float closure #1 in RealityRenderer.extendedDynamicRangeOutput.didset()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = *(v1 + 76);

  return v2;
}

float thunk for @escaping @callee_guaranteed () -> (@unowned Float)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

void RealityRenderer.extendedDynamicRangeOutput.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  *(v1 + 72) = a1;
  if (v4 != v3)
  {
    v5 = *(v1 + 16);
    if (a1)
    {
      if (v5)
      {
        v6 = *(v5 + 16);
        RESceneAddEDRColorManagementComponent();
        v7 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = partial apply for closure #1 in RealityRenderer.extendedDynamicRangeOutput.didset;
        aBlock[5] = v7;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned Float);
        aBlock[3] = &block_descriptor_3;
        v8 = _Block_copy(aBlock);

        REEDRColorManagementComponentSetHeadroomCallback();
        _Block_release(v8);
        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (!v5)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v9 = *(v5 + 16);
    RESceneRemoveEDRColorManagementComponent();
  }
}

void (*RealityRenderer.extendedDynamicRangeOutput.modify(uint64_t *a1))(uint64_t a1)
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
  *(v4 + 32) = *(v1 + 72);
  return RealityRenderer.extendedDynamicRangeOutput.modify;
}

void RealityRenderer.extendedDynamicRangeOutput.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  RealityRenderer.extendedDynamicRangeOutput.setter(*(*a1 + 32));

  free(v1);
}

uint64_t RealityRenderer.extendedDynamicRangeHeadroom.setter(float a1)
{
  v3 = (v1 + 76);
  result = swift_beginAccess();
  if (a1 < 1.0 || a1 > 16.0)
  {
    a1 = *v3;
  }

  *v3 = a1;
  return result;
}

void (*RealityRenderer.extendedDynamicRangeHeadroom.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v4 + 32) = *(v1 + 76);
  return RealityRenderer.extendedDynamicRangeHeadroom.modify;
}

void RealityRenderer.extendedDynamicRangeHeadroom.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  if (v2 < 1.0 || v2 > 16.0)
  {
    v2 = *(v3 + 76);
  }

  *(v3 + 76) = v2;
  free(v1);
}

dispatch_semaphore_t one-time initialization function for uniqueTokenGenerator()
{
  result = dispatch_semaphore_create(1);
  static RealityRenderer.uniqueTokenGenerator = 0;
  qword_1EBEA6210 = result;
  return result;
}

{
  result = dispatch_semaphore_create(1);
  static VideoPlayerComponent.uniqueTokenGenerator = 0;
  qword_1EBEB0F40 = result;
  return result;
}

void RealityRenderer.PostProcessRenderGraphAndMaterial.ensurePostProcessRenderGraphAndMaterial(postProcessRenderGraphOriginalHandle:backgroundMaterialDefinitionHandle:)()
{
  v1 = v0;
  if (!*(v0 + 16) || !*(v0 + 24))
  {
    v2 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v3 = *(v2 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v4 = *(v3 + 40);

    if (v4)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v4 + 120, v13);

      v5 = v14;
      v6 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v6 + 32))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v7 = RERenderGraphAssetClone();
      v8 = *(v2 + 24);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v9 = *(v8 + 40);

      if (v9)
      {
        swift_beginAccess();
        outlined init with copy of __REAssetService(v9 + 120, v13);

        REMaterialAssetBuilderCreate();
        REMaterialAssetBuilderSetMaterialDefinition();
        v10 = v14;
        v11 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v11 + 32))(v10, v11);
        v12 = REAssetManagerMaterialAssetBuilderBuild();
        RERelease();
        __swift_destroy_boxed_opaque_existential_1(v13);
        RERenderGraphAssetSetRuntimeNodeAssetHandleSetting();

        *(v1 + 16) = v7;
        *(v1 + 24) = v12;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t RealityRenderer.PostProcessRenderGraphAndMaterial.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t RealityRenderer.nextPostProcessRenderGraphAndMaterial()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E6530];
  while (1)
  {
    v3 = *(v1 + 168);
    v4 = *(v1 + 176);
    if (v3 >> 62)
    {
      break;
    }

    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < result)
    {
      goto LABEL_11;
    }

LABEL_4:
    type metadata accessor for Entity();
    v6 = swift_allocObject();
    *(v6 + 16) = REEntityCreate();
    MEMORY[0x1C68F9740]();
    v7 = *(v6 + 16);
    RERelease();
    specialized setupEntityTraits<A>(_:)(v6);
    v8 = *(v6 + 16);
    REEntityGetOrAddComponent();

    __EntityInfoComponent.init(entity:)(v9, &v21);
    v10 = v21;
    v11 = v22;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v10, v11, v6);

    v12 = *(v6 + 16);

    if (v12 != *(v6 + 16))
    {
      __break(1u);
LABEL_17:

      v18 = MEMORY[0x1C68F41F0](v12, v2);

      v20 = *(v1 + 176);
      v19 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v21 = 0xD000000000000018;
    v22 = 0x80000001C18E0540;
    v23 = *(v1 + 176);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v13);

    Entity.name.setter();
    type metadata accessor for RealityRenderer.PostProcessRenderGraphAndMaterial();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v6;
    swift_beginAccess();

    MEMORY[0x1C68F3650](v15);
    if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (v3 < 0)
  {
    v16 = *(v1 + 168);
  }

  result = __CocoaSet.count.getter();
  if (v4 >= result)
  {
    goto LABEL_4;
  }

LABEL_11:
  v2 = *(v1 + 168);
  v12 = *(v1 + 176);
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v18 = *(v2 + 8 * v12 + 32);

  v19 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
LABEL_15:
    *(v1 + 176) = v19;
    return v18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.InitError()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD00000000000003BLL;
  }

  *v0;
  return result;
}

uint64_t RealityRenderer.oneCameraClearColorGamutCache.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(v0 + 305))
  {
    v1 = *(v0 + 272);
    RECGColorToColorGamut();
    result = 0;
    *(v0 + 288) = 0uLL;
    *(v0 + 304) = 0;
  }

  else
  {
    result = *(v0 + 304);
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RealityRenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  RealityRenderer.init()();
  return v0;
}

uint64_t RealityRenderer.init()()
{
  v1 = v0;
  *(v0 + 96) = 0;
  v2 = v0 + 96;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 0;
  *(v0 + 76) = 0x40000000;
  *(v0 + 152) = 0;
  v81 = (v0 + 152);
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 256;
  *(v2 + 352) = v3;
  *(v2 + 360) = 0;
  *(v2 + 368) = 0;
  *(v2 + 376) = v3;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = v3;
  *(v2 + 336) = v3;
  *(v2 + 344) = 0;
  if (one-time initialization token for _blackTransparent != -1)
  {
    swift_once();
  }

  v4 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;
  *(v1 + 56) = 257;
  *(v1 + 58) = 0;
  *(v1 + 60) = -1;
  *(v1 + 64) = v4;
  v5 = v4;
  GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  *(v1 + 480) = 0;
  *(v1 + 488) = GenericRGB;
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 24);
  swift_unownedRetainStrong();
  v9 = *(v8 + 24);

  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 80, &v85);
  v10 = *(&v86 + 1);
  v11 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  (*(v11 + 32))(&v82, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  MEMORY[0x1C68F9230](v9);
  OverlayForRealityRenderer = REEngineCreateOverlayForRealityRenderer();
  if (!OverlayForRealityRenderer)
  {
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v15 = 1;
    goto LABEL_7;
  }

  v13 = OverlayForRealityRenderer;
  if (REEngineOverlayIsEngineInsideTick())
  {
    RERelease();
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v14 = 0;
LABEL_7:
    swift_willThrow();
LABEL_8:

    v16 = *(v1 + 16);

    v17 = *(v1 + 32);

    v18 = *(v1 + 48);

    v19 = *(v1 + 96);

    v20 = *(v1 + 104);

    v21 = *(v1 + 112);

    v22 = *(v1 + 160);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v1 + 152));
    v23 = *(v1 + 168);

    outlined destroy of BodyTrackingComponent?(v2 + 96, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    outlined destroy of BodyTrackingComponent?(v2 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

    v24 = *(v2 + 328);
    v91 = *(v2 + 312);
    v92 = v24;
    v93 = *(v2 + 344);
    v25 = *(v2 + 264);
    v87 = *(v2 + 248);
    v88 = v25;
    v26 = *(v2 + 296);
    v89 = *(v2 + 280);
    v90 = v26;
    v27 = *(v2 + 232);
    v85 = *(v2 + 216);
    v86 = v27;
    outlined destroy of RealityRenderer.RenderContext(&v85);
    v28 = *(v1 + 448);

    v29 = *(v1 + 456);

    v30 = *(v1 + 472);

    type metadata accessor for RealityRenderer();
    swift_deallocPartialClassInstance();
    return v1;
  }

  specialized static RealityRenderer.createEmitterAsset()();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v7 + 40, &v82, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!*(&v83 + 1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  outlined init with take of ForceEffectBase(&v82, &v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
  type metadata accessor for RERenderManager();
  swift_dynamicCast();
  v32 = *(v82 + 16);
  RERenderGraphEmitterPreloadProvidersAssets();
  *(v1 + 80) = v13;
  RealityRendererSceneGroup = REECSManagerCreateRealityRendererSceneGroup();
  if (!RealityRendererSceneGroup)
  {
    v61 = *(v1 + 80);
    RERelease();
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();

    RERelease();
    goto LABEL_8;
  }

  *(v1 + 88) = RealityRendererSceneGroup;
  v34 = *(v1 + 80);
  REEngineOverlaySetRealityRendererSceneGroup();
  closure #1 in RealityRenderer.init()();
  v35 = *(v1 + 16);
  *(v1 + 16) = v36;

  type metadata accessor for AnchorEntity();
  swift_allocObject();
  result = Entity.init()();
  *(v1 + 24) = result;
  v37 = *(v1 + 16);
  if (!v37)
  {
    goto LABEL_52;
  }

  v38 = result;

  specialized Scene.AnchorCollection.append(_:)(v38, v37);

  v39 = *(v1 + 16);
  if (!v39)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = *(v1 + 88);
  v41 = *(v39 + 16);
  REECSManagerAddSceneToRealityRendererSceneGroup();
  v42 = *(v7 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v43 = *(v42 + 40);

  if (!v43)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v43 + 120, &v85);

  v44 = *(&v86 + 1);
  v45 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  v46 = (*(v45 + 32))(v44, v45);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v1 + 120) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v1 + 128) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v1 + 136) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v1 + 144) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v1 + 184) = result;
  v47 = *(v1 + 120);
  REAssetHandleLoadAsync();
  v48 = *(v1 + 128);
  REAssetHandleLoadAsync();
  v49 = *(v7 + 24);
  swift_unownedRetainStrong();
  v50 = *(v49 + 16);

  v51 = *(v50 + 16);
  EnablePreloadEngineAssets = REEngineConfigurationGetEnablePreloadEngineAssets();

  if (EnablePreloadEngineAssets)
  {
    v53 = *(v1 + 136);
    REAssetHandleLoadAsync();
    v54 = *(v1 + 144);
    REAssetHandleLoadAsync();
    v55 = *(v1 + 184);
    REAssetHandleLoadAsync();
  }

  v56 = *(v7 + 24);
  swift_unownedRetainStrong();
  v57 = *(v56 + 16);

  v58 = *(v57 + 16);
  IsSolariumLeanModeEnabled = REEngineConfigurationIsSolariumLeanModeEnabled();

  if (IsSolariumLeanModeEnabled)
  {
    v60 = *(*(v1 + 24) + 16);
    REAnchorComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    REAnchorComponentSetAnchoredLocally();
    goto LABEL_31;
  }

  swift_beginAccess();
  v63 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    result = swift_beginAccess();
    v64 = v63[3];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (!v65)
    {
      v63[3] = v66;

      RealityFusionSession.sharedCount.didset();
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_51;
  }

  specialized static __ServiceLocator.shared.getter();
  type metadata accessor for RealityFusionSession();
  swift_allocObject();
  v63 = specialized RealityFusionSession.init(_:)();
LABEL_29:
  v67 = *(v1 + 104);
  *(v1 + 104) = v63;

  REEntityCreate();
  REEntitySetName();
  REAnchorComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REAnchorComponentSetAnchoredLocally();
  RESceneUnderstandingRootComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESceneUnderstandingRenderOptionsComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  v68 = *(v1 + 16);
  if (v68)
  {
    v69 = *(v68 + 16);
    RESceneAddEntity();
    REHideEntity();
LABEL_31:
    type metadata accessor for Entity();
    swift_allocObject();
    v70 = Entity.init()();
    v71 = *v2;
    *v2 = v70;

    Entity.name.setter();

    if (*v2)
    {
      v72 = *v2;

      Entity.turnIntoNinja()();

      if (*(v1 + 16))
      {
        *&v85 = *(v1 + 16);
        v73 = *v2;
        if (*v2)
        {

          Scene.AnchorCollection.appendNinja(_:)(v73);

          result = RealityRenderer.updateIBL()();
          if (*(v1 + 16))
          {
            v84 = 0;
            v83 = 0u;
            v82 = 0u;
            v74 = swift_allocObject();
            swift_weakInit();

            _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v82, partial apply for closure #2 in RealityRenderer.init(), v74, &v85);

            outlined destroy of BodyTrackingComponent?(&v82, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
            swift_beginAccess();
            outlined assign with take of Cancellable?(&v85, v2 + 96);
            result = swift_endAccess();
            if (*(v1 + 16))
            {
              v84 = 0;
              v83 = 0u;
              v82 = 0u;
              v75 = swift_allocObject();
              swift_weakInit();

              _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6RenderV_Tt0g5(&v82, partial apply for closure #3 in RealityRenderer.init(), v75, &v85);

              outlined destroy of BodyTrackingComponent?(&v82, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
              swift_beginAccess();
              outlined assign with take of Cancellable?(&v85, v2 + 136);
              swift_endAccess();
              v76 = *(v1 + 152);
              v77 = *(v1 + 160);
              *v81 = 0;
              v81[1] = 0;
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v76);
              v78 = *(v7 + 24);
              swift_unownedRetainStrong();
              v79 = *(v78 + 16);

              v80 = *(v79 + 16);
              LODWORD(v75) = REEngineConfigurationGetEnablePreloadMXIAssets();

              if (v75)
              {
                if (MEMORY[0x1C68F68B0](v46))
                {
                  REAssetManagerUpdate();
                  if (MEMORY[0x1C68F68B0](v46))
                  {
                    usleep(0x3E8u);
                    REAssetManagerUpdate();
                    if (MEMORY[0x1C68F68B0](v46))
                    {
                      usleep(0x3E8u);
                      REAssetManagerUpdate();
                      if (MEMORY[0x1C68F68B0](v46))
                      {
                        usleep(0x3E8u);
                        REAssetManagerUpdate();
                        if (MEMORY[0x1C68F68B0](v46))
                        {
                          usleep(0x3E8u);
                          REAssetManagerUpdate();
                          if (MEMORY[0x1C68F68B0](v46))
                          {
                            usleep(0x3E8u);
                            REAssetManagerUpdate();
                            if (MEMORY[0x1C68F68B0](v46))
                            {
                              usleep(0x3E8u);
                              REAssetManagerUpdate();
                              if (MEMORY[0x1C68F68B0](v46))
                              {
                                usleep(0x3E8u);
                                REAssetManagerUpdate();
                                if (MEMORY[0x1C68F68B0](v46))
                                {
                                  usleep(0x3E8u);
                                  REAssetManagerUpdate();
                                  if (MEMORY[0x1C68F68B0](v46))
                                  {
                                    usleep(0x3E8u);
                                    REAssetManagerUpdate();
                                    if (MEMORY[0x1C68F68B0](v46))
                                    {
                                      usleep(0x3E8u);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              RERelease();

              return v1;
            }

            goto LABEL_64;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_65:
  __break(1u);
  return result;
}

void closure #1 in RealityRenderer.init()()
{
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (__OFADD__(static RealityRenderer.uniqueTokenGenerator, 1))
  {
    __break(1u);
  }

  else
  {
    ++static RealityRenderer.uniqueTokenGenerator;
    OS_dispatch_semaphore.signal()();
    swift_endAccess();
    _StringGuts.grow(_:)(24);

    v0 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v0);

    String.utf8CString.getter();

    v1 = RESceneCreate();

    type metadata accessor for Scene();
    swift_allocObject();
    Scene.init(coreScene:)(v1);
    RERelease();
  }
}

uint64_t closure #2 in RealityRenderer.init()(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    RealityRenderer.doUpdateCallback(deltaTime:)();
  }

  return result;
}

uint64_t closure #3 in RealityRenderer.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    RealityRenderer.doRenderCallback()();
  }

  return result;
}

uint64_t RealityRenderer.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v48.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 120);
  RERelease();
  v13 = *(v1 + 128);
  RERelease();
  v14 = *(v1 + 136);
  RERelease();
  v15 = *(v1 + 144);
  RERelease();
  v16 = *(v1 + 184);
  RERelease();
  result = specialized static __ServiceLocator.__sharedEngine.getter();
  if (result)
  {
    v51 = v8;
    v52 = v6;
    v53 = v7;
    v54 = v3;
    v55 = v2;
    v18 = *(result + 32);
    result = swift_beginAccess();
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = *(v1 + 72);
      v21 = *(v1 + 104);
      v22 = *(v1 + 112);
      v48 = *(v1 + 80);
      swift_beginAccess();
      outlined init with copy of [String : String](v1 + 192, v61, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v61, v59, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      outlined init with copy of [String : String](v1 + 232, v57, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      v23 = swift_allocObject();
      v24 = v59[0];
      v25 = v59[1];
      *(v23 + 48) = vextq_s8(v48, v48, 8uLL);
      *(v23 + 64) = v24;
      *(v23 + 80) = v25;
      v26 = v57[1];
      *(v23 + 104) = v57[0];
      *(v23 + 16) = v20;
      *(v23 + 24) = v19;
      *(v23 + 32) = v22;
      v49 = v22;
      v50 = v21;
      *(v23 + 40) = v21;
      *(v23 + 96) = v60;
      *(v23 + 120) = v26;
      *(v23 + 136) = v58;
      *&v64 = partial apply for closure #1 in RealityRenderer.deinit;
      *(&v64 + 1) = v23;
      *&v62 = MEMORY[0x1E69E9820];
      *(&v62 + 1) = 1107296256;
      *&v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v63 + 1) = &block_descriptor_11;
      v27 = _Block_copy(&v62);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v28 = v18;
      static DispatchQoS.unspecified.getter();
      v56 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      v29 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v30 = v52;
      v31 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1C68F3CA0](0, v29, v30, v27);
      _Block_release(v27);

      (*(v54 + 8))(v30, v31);
      (*(v51 + 8))(v29, v53);
      outlined destroy of BodyTrackingComponent?(v61, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

      v32 = *(v1 + 16);

      v33 = *(v1 + 24);

      v34 = *(v1 + 32);

      v35 = *(v1 + 48);

      v36 = *(v1 + 96);

      v37 = *(v1 + 104);

      v38 = *(v1 + 112);

      v39 = *(v1 + 160);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v1 + 152));
      v40 = *(v1 + 168);

      outlined destroy of BodyTrackingComponent?(v1 + 192, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      outlined destroy of BodyTrackingComponent?(v1 + 232, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

      v41 = *(v1 + 424);
      v68 = *(v1 + 408);
      v69 = v41;
      v70 = *(v1 + 440);
      v42 = *(v1 + 360);
      v64 = *(v1 + 344);
      v65 = v42;
      v43 = *(v1 + 392);
      v66 = *(v1 + 376);
      v67 = v43;
      v44 = *(v1 + 328);
      v62 = *(v1 + 312);
      v63 = v44;
      outlined destroy of RealityRenderer.RenderContext(&v62);
      v45 = *(v1 + 448);

      v46 = *(v1 + 456);

      v47 = *(v1 + 472);

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RealityRenderer.deinit(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v13 + 40, &v32, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v33)
  {
    outlined init with take of ForceEffectBase(&v32, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    v15 = v32;
    if (a1)
    {
      v16 = *(a2 + 16);
      RESceneRemoveEDRColorManagementComponent();
    }

    if (!a3)
    {
      goto LABEL_8;
    }

    v26 = a2;
    if (one-time initialization token for dispatchQueue != -1)
    {
      swift_once();
    }

    v17 = static __RERenderGraphEmitter.dispatchQueue;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = a3;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.unsetup(mgr:);
    *(v19 + 24) = v18;
    v30 = thunk for @callee_guaranteed () -> ()partial apply;
    v31 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v29 = &block_descriptor_348;
    v20 = _Block_copy(aBlock);

    dispatch_sync(v17, v20);
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    a2 = v26;
    if (v17)
    {
      __break(1u);
    }

    else
    {
LABEL_8:
      outlined init with copy of [String : String](a7, aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        dispatch thunk of Cancellable.cancel()();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      }

      outlined init with copy of [String : String](a8, aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        dispatch thunk of Cancellable.cancel()();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      }

      swift_beginAccess();
      outlined init with copy of __REAssetService(v13 + 80, aBlock);
      v21 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(aBlock, v29);
      (*(v22 + 3))(a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (!a4)
      {
        goto LABEL_17;
      }

      result = swift_beginAccess();
      v23 = *(a4 + 24);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (!v24)
      {
        *(a4 + 24) = v25;

        RealityFusionSession.sharedCount.didset();

LABEL_17:
        RERelease();
        RERelease();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RealityRenderer.__deallocating_deinit()
{
  RealityRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t RealityRenderer.updateIBL()()
{
  result = swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 96);
  if (v2)
  {
    if (!v3)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v4 = *(v0 + 40);
    swift_retain_n();
    swift_retain_n();
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017__ImageBasedLightD0V_TtB5(v2, v4, 0, v3);

    v5 = *(v3 + 16);

    v6 = *(v3 + 16);

    if (v5 == v6)
    {
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017__ImageBasedLightD0V_TtB5(0, 0, 0, v3);
  v7 = *(v3 + 16);

  v8 = *(v3 + 16);

  if (v7 != v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(uint64_t a1, unint64_t *a2, char *a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v54 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  v8 = a2[5];
  v9 = a2[6];
  v49 = a2[7];
  v51 = *a3;
  v10 = a3[1];
  v46 = a3[2];
  v50 = *(a3 + 1);
  v11 = *(a3 + 1);
  v12 = *(a1 + 16);
  RERenderGraphFileProviderArrayComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RERenderGraphFileProviderArrayComponentRemoveAll();
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  RECameraViewDescriptorsComponentAddViewDescriptor();
  v52 = v4 >> 62;
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_77;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_80;
  }

  v13 = *(v4 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    swift_unknownObjectRelease();
LABEL_7:
    v48 = v54 >> 62;
    if (v54 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_13;
      }
    }

    else if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1C68F41F0](0, v54);
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:

        MEMORY[0x1C68F41F0](0, v4);

        v20 = MEMORY[0x1C68F41F0](0, v4);

        goto LABEL_29;
      }

      v14 = *(v54 + 32);
      swift_unknownObjectRetain();
    }

    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    swift_unknownObjectRelease();
LABEL_13:
    if (v5 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
LABEL_80:

      MEMORY[0x1C68F41F0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v15 = *(v5 + 32);
      swift_unknownObjectRetain();
    }

    RECameraViewDescriptorsComponentSetRasterizationRateMap();
    swift_unknownObjectRelease();
LABEL_19:
    if (v7)
    {
      RECameraViewDescriptorsComponentSetViewMode();
    }

    if (*(v6 + 2))
    {
      break;
    }

    __break(1u);
LABEL_77:

    MEMORY[0x1C68F41F0](0, v4);
  }

  v16 = *(v6 + 4);
  v17 = *(v6 + 5);
  v18 = *(v6 + 6);
  v19 = *(v6 + 7);
  RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
  if (v52)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_85;
  }

  v20 = *(v4 + 32);
  swift_unknownObjectRetain_n();
LABEL_29:
  v21 = [v20 arrayLength];
  swift_unknownObjectRelease();
  if (v21 >= 2)
  {
    RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
  }

  swift_unknownObjectRelease();
LABEL_32:
  RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
  RERenderGraphDataStructAddFloat4();
  MEMORY[0x1C68FD860](RenderGraphDataStruct, "disableAA", v10 ^ 1u);
  v23 = RELinkedOnOrAfterFall2025OSVersions();
  v24 = v11;
  if (v11)
  {
    v25 = v23;
    v26 = *(v53 + 272);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    v27 = v11;
    v28 = v26;
    v29 = static _CFObject.== infix(_:_:)();

    if ((v29 & 1) == 0)
    {
      v30 = *(v53 + 272);
      *(v53 + 272) = v27;
      v31 = v27;

      RECGColorToColorGamut();
      *(v53 + 288) = 0;
      *(v53 + 296) = 0;
      *(v53 + 304) = 0;
    }

    RealityRenderer.oneCameraClearColorGamutCache.getter();
    v33 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v32))));
    v34 = (v33 ^ (v33 | v51 ^ 1)) & v25;
    if ((v33 | v51 ^ 1))
    {
      v24 = v11;
    }

    else
    {
      v24 = v11;
      if (((v46 ^ 1) & 1) == 0)
      {
        v35 = *(v53 + 184);
        RERenderGraphFileProviderArrayComponentAdd();
        v34 = 1;
      }
    }
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x1C68FD880](RenderGraphDataStruct, "meshSceneFilterMask", v50);
  MEMORY[0x1C68FD860](RenderGraphDataStruct, "disableTonemapping", 1);
  if (v34)
  {

    if (!v9)
    {
      goto LABEL_66;
    }

LABEL_49:
    if (v52)
    {
      v6 = &property descriptor for UnlitMaterial.readsDepth;
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_58;
      }
    }

    else
    {
      v6 = &property descriptor for UnlitMaterial.readsDepth;
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        v41 = *(v53 + 128);
        RERenderGraphFileProviderArrayComponentAdd();
        v40 = 1;
        goto LABEL_59;
      }
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v38 = *(v4 + 32);
        swift_unknownObjectRetain();
LABEL_56:
        v39 = [v38 *(v6 + 439)];
        swift_unknownObjectRelease();
        if (!v39)
        {
          goto LABEL_58;
        }

        v40 = 0;
LABEL_59:
        if (!v48)
        {
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

LABEL_68:
          if (v40)
          {
LABEL_66:
            RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
            RERelease();
            RECameraViewDescriptorsComponentSetForceWaitOnPipelineCompilation();
            RECameraViewDescriptorsComponentSetRenderCommandEncoder();
            RECameraViewDescriptorsComponentSetRenderCommandEncoderCommandMask();
            v45 = *MEMORY[0x1E69E9840];
            return;
          }

LABEL_65:
          v44 = *(v53 + 120);
          RERenderGraphFileProviderArrayComponentAdd();
          goto LABEL_66;
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_68;
        }

LABEL_61:
        if ((v54 & 0xC000000000000001) != 0)
        {

          v42 = MEMORY[0x1C68F41F0](0, v54);

LABEL_64:
          v43 = [v42 *(v6 + 439)];
          swift_unknownObjectRelease();
          if (v40 & 1 | (v43 != 0))
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v42 = *(v54 + 32);
          swift_unknownObjectRetain();
          goto LABEL_64;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

LABEL_85:

    v38 = MEMORY[0x1C68F41F0](0, v4);

    goto LABEL_56;
  }

  v36 = *(v53 + 136);
  v37 = *(v53 + 144);
  RealityRenderer.PostProcessRenderGraphAndMaterial.ensurePostProcessRenderGraphAndMaterial(postProcessRenderGraphOriginalHandle:backgroundMaterialDefinitionHandle:)();
  if (*(a4 + 16))
  {
    if (*(a4 + 24))
    {
      RERenderGraphAssetSetRuntimeNodeSettingBool();
      RERenderGraphAssetSetRuntimeNodeSettingBool();
      REMaterialAssetSetBool();
      if (v24)
      {
        REMaterialAssetSetColor4F();
      }

      RERenderGraphAssetSetRuntimeNodeSettingBool();
      String.utf8CString.getter();

      RERenderGraphAssetSetRuntimeNodeStringSetting();

      RERenderGraphFileProviderArrayComponentAdd();
      if (v9)
      {
        goto LABEL_49;
      }

      goto LABEL_66;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *RealityRenderer.CameraOutput.renderPassDescritptor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id RealityRenderer.doUpdateCallback(deltaTime:)()
{
  v1 = v0;
  v2 = *(v0 + 104);
  if (v2)
  {
    result = swift_beginAccess();
    v4 = *(v2 + 16);
    if (!v4)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v5 = v4;
    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v7 = *(v6 + 16);
    result = REServiceLocatorGetECSService();
    if (!result)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    RFServiceManagerGenerateSnapshot();
    result = RFServiceManagerGetAnchorManagementService();
    if (result)
    {
      v8 = *(v1 + 16);
      if (!v8)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v9 = *(v8 + 16);
      v10 = result;
      RFAnchorManagementServiceUpdateByDeltaTime();
    }
  }

  *(v1 + 176) = 0;
  result = swift_beginAccess();
  if (*(v1 + 440))
  {
    if (*(v1 + 440) == 1)
    {
      v11 = RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
      result = swift_beginAccess();
      v12 = *(v1 + 48);
      if (v12)
      {
        v13 = *(v1 + 328);
        v86 = *(v1 + 312);
        v87 = v13;
        v14 = *(v1 + 360);
        v88 = *(v1 + 344);
        v89 = v14;
        if (v86)
        {
          *v61 = v86;
          v15 = *(v1 + 336);
          *&v61[8] = *(v1 + 320);
          *&v61[24] = v15;
          *&v61[40] = *(v1 + 352);
          *&v61[56] = *(v1 + 368);
          swift_beginAccess();
          v16 = *(v1 + 57);
          v17 = *(v1 + 58);
          v18 = *(v1 + 60);
          v19 = *(v1 + 64);
          v77 = *(v1 + 56);
          v78 = v16;
          v79 = v17;
          v80 = v18;
          v81 = v19;

          outlined init with copy of [String : String](&v86, &v67, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMd, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMR);
          v20 = v19;
          RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(v12, v61, &v77, v11);

          v67 = *v61;
          v68 = *&v61[16];
          v69 = *&v61[32];
          v70 = *&v61[48];
          return outlined destroy of RealityRenderer.CameraOutput(&v67);
        }

        goto LABEL_47;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v22 = *(*(v1 + 472) + 16);
    if (v22)
    {
      result = RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
      v23 = *(v1 + 472);
      if (*(v23 + 16))
      {
        v24 = result;
        v25 = 0;
        v26 = 0;
        v27 = v22 - 1;
        do
        {
          v28 = *(v23 + v25 + 112);
          if (!v21[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v28), (v29 & 1) == 0))
          {

            v30 = v28;
            goto LABEL_27;
          }

          v30 = *(v24 + 32);
          v31 = *(v28 + 16);
          swift_retain_n();

          _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA017PerspectiveCameraD0V_Tt0B5(v28, &v67);

          v32 = DWORD2(v67) | (BYTE12(v67) << 32);
          if ((v32 & 0xFF00000000) == 0x200000000)
          {
            v33 = *(v28 + 16);

            if (REEntityGetComponent())
            {
              REOrthographicCameraComponentGetNear();
              v35 = v34;
              REOrthographicCameraComponentGetFar();
              v37 = v36;
              REOrthographicCameraComponentGetScale();
              v39 = v38;
              v40 = REOrthographicCameraComponentGetScaleDirection() == 0;

              _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018OrthographicCameraD0V_TtB5Tf4ndn_n(v35 | (v37 << 32), v39 | (v40 << 32), v30);
            }

            else
            {

              RECustomMatrixCameraComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                goto LABEL_24;
              }

              if (RECustomMatrixCameraComponentGetEyeCount() != 1)
              {

                _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_Tt0B5(v28, &v67);

                v57 = v67;
                if (v67)
                {
                  v58 = *(&v67 + 1);
                  v60 = v68;

                  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_TtB5(v57, v58, v60, 0, v30);

                  outlined consume of _proto_StereoProjectiveTransformCameraComponent_v1?(v57);
                }

                goto LABEL_24;
              }

              v54 = *(v28 + 16);

              Component = REEntityGetComponent();
              if (Component)
              {
                *&v82 = Component;
                static ProjectiveTransformCameraComponent.__fromCore(_:)(&v82, v61);

                v73 = v64;
                v74 = v65;
                v75 = v66;
                v69 = *&v61[32];
                v70 = *&v61[48];
                v71 = v62;
                v72 = v63;
                v67 = *v61;
                v68 = *&v61[16];
                destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v67, v56);
                v92 = v73;
                v93 = v74;
                v94 = v75;
                v88 = v69;
                v89 = v70;
                v90 = v71;
                v91 = v72;
                v86 = v67;
                v87 = v68;

                _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(&v86, v30);
              }
            }
          }

          else
          {
            v41 = v67;

            _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(v41, v32, v30);
          }

LABEL_24:
          specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v28, 0);
          swift_beginAccess();

          MEMORY[0x1C68F3650](v42);
          if (*((*(v1 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v59 = *((*(v1 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

LABEL_27:

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v82 = v21;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v30, isUniquelyReferenced_nonNull_native);

          v44 = *(v1 + 472);
          if (v26 >= *(v44 + 16))
          {
            goto LABEL_42;
          }

          v21 = v82;
          v45 = v44 + v25;
          v46 = *(v45 + 32);
          v47 = *(v45 + 48);
          v48 = *(v45 + 80);
          *&v61[32] = *(v45 + 64);
          *&v61[48] = v48;
          *v61 = v46;
          *&v61[16] = v47;
          v82 = *(v45 + 32);
          v83 = *(v45 + 48);
          v84 = *(v45 + 64);
          v85 = *(v45 + 80);
          v49 = *(v45 + 97);
          v50 = *(v45 + 98);
          v51 = *(v45 + 100);
          v52 = *(v45 + 104);
          v77 = *(v45 + 96);
          v78 = v49;
          v79 = v50;
          v80 = v51;
          v81 = v52;
          outlined init with copy of RealityRenderer.CameraOutput(v61, v76);
          v53 = v52;
          RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(v30, &v82, &v77, v24);

          v67 = v82;
          v68 = v83;
          v69 = v84;
          v70 = v85;
          outlined destroy of RealityRenderer.CameraOutput(&v67);
          if (v27 == v26)
          {
          }

          result = RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
          v24 = result;
          v23 = *(v1 + 472);
          ++v26;
          v25 += 88;
        }

        while (v26 < *(v23 + 16));
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  return result;
}

uint64_t specialized HasHierarchy.setParent(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = v2[2];
  result = REEntityGetParent();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_9:

    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v3, a2 & 1);
  }

  v8 = result;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v9 = swift_dynamicCastClassUnconditional();
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_13:

    Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v3, a2 & 1);
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    __break(1u);
    return result;
  }

  v10 = specialized static Entity.entityInfoType(_:)();
  if (v10)
  {
    v9 = (*(v10 + 232))();
    v11 = *(v9 + 16);

    MEMORY[0x1C68F9740](v11, 0);
    *(v9 + 16) = v8;
    MEMORY[0x1C68F9740](v8, v9);

    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = makeEntity(for:)(v8);
    if (!a1)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if (*(v9 + 16) != *(a1 + 16))
  {
    goto LABEL_9;
  }
}

uint64_t RealityRenderer.doRenderCallback()()
{
  result = swift_beginAccess();
  if (*(v0 + 440))
  {
    v2 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of [String : String](v2 + 40, &v63, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (v64)
    {
      outlined init with take of ForceEffectBase(&v63, &aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
      type metadata accessor for RERenderManager();
      swift_dynamicCast();
      v3 = v63;
      v4 = *(v63 + 16);
      RenderFrameSettings = RERenderManagerCreateRenderFrameSettings();
      v6 = *(v0 + 424);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *(v0 + 424);

        v9 = (v6 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;
          RERenderFrameSettingsAddGpuWaitEvent();
          v9 += 2;
          --v7;
        }

        while (v7);
      }

      v12 = *(v0 + 432);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v0 + 432);

        v15 = (v12 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          RERenderFrameSettingsAddGpuSignalEvent();
          v15 += 2;
          --v13;
        }

        while (v13);
      }

      v18 = *(v0 + 80);
      REEngineOverlayGetCurrentTime();
      RERenderFrameSettingsSetTotalTime();
      v56 = v3;
      v19 = *(v3 + 16);
      RenderFrameWorkload = RERenderManagerCreateRenderFrameWorkload();
      type metadata accessor for RERenderFrameWorkload();
      v21 = swift_allocObject();
      *(v21 + 16) = RenderFrameWorkload;
      MEMORY[0x1C68FD7C0](RenderFrameWorkload, RenderFrameSettings);
      v22 = *(v0 + 408);
      if (v22)
      {
        v23 = *(v0 + 416);
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = v22;
        v25[4] = v23;
        v26 = *(v21 + 16);
        v27 = swift_allocObject();
        v27[2] = partial apply for closure #4 in RealityRenderer.doRenderCallback();
        v27[3] = v25;
        v27[4] = v21;
        v61 = closure #1 in RERenderFrameWorkload.addCompletedHandler(handler:)partial apply;
        v62 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v60 = &block_descriptor_329;
        v28 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22);

        RERenderFrameWorkloadAddCompletedHandler();
        _Block_release(v28);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22);
      }

      v29 = *(v0 + 152);
      if (v29)
      {
        v30 = *(v0 + 160);
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        v32 = *(v21 + 16);
        v33 = swift_allocObject();
        v33[2] = partial apply for closure #2 in RealityRenderer.doRenderCallback();
        v33[3] = v31;
        v33[4] = v21;
        v61 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v62 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v60 = &block_descriptor_318;
        v34 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29);

        RERenderFrameWorkloadAddCompletedHandler();
        _Block_release(v34);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29);
      }

      v35 = *(v0 + 392);
      if (v35)
      {
        v36 = *(v0 + 400);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = swift_allocObject();
        v38[2] = v37;
        v38[3] = v35;
        v38[4] = v36;
        v39 = *(v21 + 16);
        v40 = swift_allocObject();
        v40[2] = partial apply for closure #3 in RealityRenderer.doRenderCallback();
        v40[3] = v38;
        v40[4] = v21;
        v61 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v62 = v40;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v60 = &block_descriptor_309_0;
        v41 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v35);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v35);

        RERenderFrameWorkloadAddScheduledHandler();
        _Block_release(v41);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v35);
      }

      v42 = *(v0 + 376);
      if (v42)
      {
        v43 = *(v0 + 384);
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = swift_allocObject();
        v45[2] = v44;
        v45[3] = v42;
        v45[4] = v43;
        v46 = *(v21 + 16);
        v47 = swift_allocObject();
        v47[2] = partial apply for closure #4 in RealityRenderer.doRenderCallback();
        v47[3] = v45;
        v47[4] = v21;
        v61 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v62 = v47;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v60 = &block_descriptor_299_0;
        v48 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v42);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v42);

        RERenderFrameWorkloadAddEncodedHandler();
        _Block_release(v48);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v42);
      }

      v49 = *(v0 + 464);
      v50 = *(v21 + 16);
      result = RERenderFrameWorkloadSetExternalEncoderOperation();
      if (*(v0 + 441))
      {
        goto LABEL_22;
      }

      v51 = *(v0 + 112);
      if (v51)
      {
        v52 = *(*(v51 + 16) + 16);
        v53 = *(v56 + 16);
        RERenderGraphEmitterAssetExecute();
LABEL_22:
        v54 = *(v21 + 16);
        RERenderFrameWorkloadCommit();

        RERelease();
        v55 = *(v0 + 456);
        *(v0 + 456) = v21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void closure #2 in RealityRenderer.doRenderCallback()(uint64_t a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v3 = *(v2 + 16);

  if (MEMORY[0x1C68FE2A0](v3))
  {
    v4 = *(a1 + 16);
    if (!REProfilerServiceRenderFrameWorkloadHasStatistics())
    {

      return;
    }

    REProfilerServiceProcessData();
    REProfilerServiceCopyRenderFrameWorkloadStatistics();
    static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in RealityRenderer.doRenderCallback()(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void RealityRenderer.lazyInitEmitter()()
{
  if (!*(v0 + 112))
  {
    v1 = v0;
    v2 = specialized static __ServiceLocator.shared.getter();
    type metadata accessor for __RERenderGraphEmitter();

    v3 = static __RERenderGraphEmitter.firstUsedEmitter()();
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;

    if (!*(v0 + 112))
    {
      v5 = specialized static RealityRenderer.createEmitterAsset()();
      v18 = MEMORY[0x1E69E6B70];
      v17[0] = v5;
      outlined init with copy of Any(v17, &v22);
      swift_dynamicCast();
      v6 = v21;
      __swift_destroy_boxed_opaque_existential_1(v17);
      type metadata accessor for __REAsset();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = *(v0 + 112);
      *(v0 + 112) = v8;
    }

    swift_beginAccess();
    outlined init with copy of [String : String](v2 + 40, &v22, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (!v23)
    {
      __break(1u);
      return;
    }

    outlined init with take of ForceEffectBase(&v22, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    v10 = v22;
    v11 = *(v1 + 112);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = one-time initialization token for dispatchQueue;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = static __RERenderGraphEmitter.dispatchQueue;
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v11;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.setup(mgr:);
    *(v15 + 24) = v14;
    v19 = _sIg_Ieg_TRTA_0;
    v20 = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed () -> ();
    v18 = &block_descriptor_338;
    v16 = _Block_copy(v17);

    dispatch_sync(v13, v16);
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
LABEL_10:
    }
  }
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.UpdateAndRenderError()
{
  if (*v0)
  {
    result = 0xD00000000000005ALL;
  }

  else
  {
    result = 0xD00000000000003BLL;
  }

  *v0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealityRenderer.update(_:)(Swift::Double a1)
{
  v2 = *(v1 + 80);
  if (REEngineOverlayIsEngineInsideTick())
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 424);
    v14[6] = *(v1 + 408);
    v14[7] = v4;
    v15 = *(v1 + 440);
    v5 = *(v1 + 360);
    v14[2] = *(v1 + 344);
    v14[3] = v5;
    v6 = *(v1 + 392);
    v14[4] = *(v1 + 376);
    v14[5] = v6;
    v7 = *(v1 + 328);
    v14[0] = *(v1 + 312);
    v14[1] = v7;
    *(v1 + 392) = 0u;
    *(v1 + 408) = 0u;
    *(v1 + 360) = 0u;
    *(v1 + 376) = 0u;
    *(v1 + 328) = 0u;
    *(v1 + 344) = 0u;
    *(v1 + 312) = 0u;
    v8 = MEMORY[0x1E69E7CC0];
    *(v1 + 424) = MEMORY[0x1E69E7CC0];
    *(v1 + 432) = v8;
    *(v1 + 440) = 0;
    outlined destroy of RealityRenderer.RenderContext(v14);
    v9 = *(v1 + 80);
    REEngineOverlayEnterFrame();
    v10 = *(v1 + 80);
    REEngineOverlayFramePrepare();
    v11 = *(v1 + 80);
    REEngineOverlayFrameSimulate();
    v12 = *(v1 + 80);
    REEngineOverlayFrameCommit();
    v13 = *(v1 + 80);
    REEngineOverlayFrameExit();
  }
}

uint64_t RealityRenderer.updateAndRender(deltaTime:cameraOutput:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[1];
  v54 = *a1;
  v55 = v14;
  v15 = a1[3];
  v56 = a1[2];
  v57 = v15;
  v16 = *(v7 + 80);
  result = REEngineOverlayIsEngineInsideTick();
  if (result)
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v46 = a6;
  if ((v54 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x1C68F41F0](0, v54);
  }

  else
  {
    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v54 + 32);
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  if (*(v7 + 64) || ![v19 isFramebufferOnly])
  {
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v21 = (v7 + 312);
    swift_beginAccess();
    v22 = *(v7 + 328);
    v53[0] = *(v7 + 312);
    v53[1] = v22;
    v23 = *(v7 + 360);
    v53[2] = *(v7 + 344);
    v53[3] = v23;
    v24 = v55;
    *(v7 + 312) = v54;
    *(v7 + 328) = v24;
    v25 = v52;
    *(v7 + 344) = v51;
    *(v7 + 360) = v25;
    outlined init with copy of RealityRenderer.CameraOutput(&v54, v47);
    outlined destroy of BodyTrackingComponent?(v53, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMd, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMR);
    if (a2)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v7 + 392);
    v28 = *(v7 + 400);
    *(v7 + 392) = a2;
    *(v7 + 400) = v26;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27);
    if (a4)
    {
      v29 = a5;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v7 + 408);
    v31 = *(v7 + 416);
    *(v7 + 408) = a4;
    *(v7 + 416) = v29;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4);
    v32 = *(v7 + 424);
    v33 = *(v7 + 432);
    *(v7 + 424) = v46;
    *(v7 + 432) = a7;

    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v30);

    swift_beginAccess();
    if (*(v7 + 48))
    {
      *(v7 + 440) = 1;
      RealityRenderer.lazyInitEmitter()();
    }

    else
    {
      *(v7 + 440) = 0;
    }

    v34 = *(v7 + 80);
    REEngineOverlayEnterFrame();
    v35 = *(v7 + 80);
    REEngineOverlayFramePrepare();
    v36 = *(v7 + 80);
    REEngineOverlayFrameSimulate();
    v37 = *(v7 + 80);
    REEngineOverlayFrameCommit();
    v38 = *(v7 + 80);
    REEngineOverlayFrameExit();
    v39 = *(v7 + 424);
    v47[6] = *(v7 + 408);
    v47[7] = v39;
    v48 = *(v7 + 440);
    v40 = *(v7 + 360);
    v47[2] = *(v7 + 344);
    v47[3] = v40;
    v41 = *(v7 + 392);
    v47[4] = *(v7 + 376);
    v47[5] = v41;
    v42 = *(v7 + 328);
    v47[0] = *v21;
    v47[1] = v42;
    *(v7 + 392) = 0u;
    *(v7 + 408) = 0u;
    *(v7 + 360) = 0u;
    *(v7 + 376) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 344) = 0u;
    *v21 = 0u;
    v43 = MEMORY[0x1E69E7CC0];
    *(v7 + 424) = MEMORY[0x1E69E7CC0];
    *(v7 + 432) = v43;
    *(v7 + 440) = 0;
    outlined destroy of RealityRenderer.RenderContext(v47);
    v44 = *(v7 + 48);
    if (v44)
    {
      v45 = *(v44 + 16);

      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      RERenderGraphFileProviderArrayComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERenderGraphFileProviderArrayComponentRemoveAll();
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

id RealityRenderer.cameraRenderingSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 488);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  return v2;
}

void RealityRenderer.cameraRenderingSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 488);
  *(v1 + 480) = v2;
  *(v1 + 488) = v3;
}

void (*RealityRenderer.cameraRenderingSettings.modify(uint64_t a1))(char *a1)
{
  v2 = *(v1 + 488);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
  v3 = v2;
  return RealityRenderer.cameraRenderingSettings.modify;
}

void RealityRenderer.cameraRenderingSettings.modify(char *a1)
{
  v1 = *a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(v2 + 488);
  *(v2 + 480) = v1;
  *(v2 + 488) = v3;
}

uint64_t CameraRenderingOutput.Descriptor.colorTextures.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CameraRenderingOutput.Descriptor.viewports.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static CameraRenderingOutput.Descriptor.monoscopic(colorTexture:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1898160;
  *(v4 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21CameraRenderingOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21CameraRenderingOutputV16RelativeViewportVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v5 + 48) = _Q0;
  *a2 = v4;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t *CameraRenderingOutput.init(_:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((*result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  if (([v5 usage] & 4) != 0)
  {
    result = swift_unknownObjectRelease();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {

    lazy protocol witness table accessor for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError();
    swift_allocError();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify;
}

uint64_t RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 8) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 8) = v4;
  }

  return result;
}

uint64_t RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify;
}

uint64_t RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 16) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 16) = v4;
  }

  return result;
}

uint64_t static RealityRenderer.CameraOutput.Descriptor.singleProjection(colorTexture:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1898160;
  *(v6 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v7 + 48) = _Q0;
  v13 = MEMORY[0x1E69E7CC0];
  *a3 = v6;
  *(a3 + 8) = v13;
  *(a3 + 16) = v13;
  *(a3 + 24) = v7;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = -1;

  return swift_unknownObjectRetain();
}

_BYTE *(*RealityRenderer.CameraOutput.Descriptor._proto_layout_v1.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return RealityRenderer.CameraOutput.Descriptor._proto_layout_v1.modify;
}

_BYTE *(*RealityRenderer.CameraSettings.antialiasing.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.antialiasing.modify;
}

_BYTE *(*RealityRenderer.CameraSettings.allowInplaceTonemapping.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 2);
  return RealityRenderer.CameraSettings.allowInplaceTonemapping.modify;
}

_DWORD *(*RealityRenderer.CameraSettings.modelFilter.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return RealityRenderer.CameraSettings.modelFilter.modify;
}

uint64_t RealityRenderer.viewDescriptors.setter(uint64_t a1)
{
  v2 = *(v1 + 472);
  *(v1 + 472) = a1;
}

uint64_t (*RealityRenderer.viewDescriptors.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 472);
  a1[1] = v1;

  return RealityRenderer.viewDescriptors.modify;
}

uint64_t RealityRenderer.viewDescriptors.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 472);
  *(v1 + 472) = v2;
}

uint64_t RealityRenderer.CameraViewDescriptor.cameraOutput.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of RealityRenderer.CameraOutput(v7, &v6);
}

__n128 RealityRenderer.CameraViewDescriptor.cameraOutput.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  outlined destroy of RealityRenderer.CameraOutput(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

id RealityRenderer.CameraViewDescriptor.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 65);
  v3 = *(v1 + 66);
  v4 = *(v1 + 68);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  return v5;
}

void RealityRenderer.CameraViewDescriptor.cameraSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);

  *(v1 + 64) = v2;
  *(v1 + 65) = v3;
  *(v1 + 66) = v4;
  *(v1 + 68) = v5;
  *(v1 + 72) = v6;
}

uint64_t RealityRenderer.CameraViewDescriptor.camera.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t RealityRenderer.CameraViewDescriptor.init(cameraOutput:camera:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  v5 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v5;
  *(a3 + 80) = a2;
  v6 = one-time initialization token for _blackTransparent;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;
  v8 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;

  *(a3 + 64) = 257;
  *(a3 + 66) = 0;
  *(a3 + 68) = -1;
  *(a3 + 72) = v7;
  return result;
}

void RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v8 + 80);
  if (REEngineOverlayIsEngineInsideTick())
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return;
  }

  v18 = a7;
  v19 = (v8 + 312);
  swift_beginAccess();
  v71 = *(v8 + 384);
  v73 = *(v8 + 376);
  *(v8 + 376) = a1;
  *(v8 + 384) = a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
  v20 = *(v8 + 392);
  v21 = *(v8 + 400);
  *(v8 + 392) = a3;
  *(v8 + 400) = a4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3);
  v22 = *(v8 + 408);
  v23 = *(v8 + 416);
  *(v8 + 408) = a5;
  *(v8 + 416) = a6;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a5);
  v24 = *(v8 + 424);
  v25 = *(v8 + 432);
  *(v8 + 424) = v18;
  *(v8 + 432) = a8;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v73);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v20);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22);

  if (*(*(v8 + 472) + 16))
  {
    *(v8 + 440) = 2;
    RealityRenderer.lazyInitEmitter()();
  }

  else
  {
    *(v8 + 440) = 0;
  }

  if (*(v8 + 441) == 1)
  {
    v26 = *(v8 + 80);
    REEngineOverlaySetReuseLastFrameOnce();
    if (*(v8 + 441) == 1)
    {
      v27 = *(v8 + 80);
      REEngineOverlaySkipFrameSimulateForNextFrame();
    }
  }

  v28 = *(v8 + 80);
  REEngineOverlayEnterFrame();
  v29 = *(v8 + 80);
  REEngineOverlayFramePrepare();
  if (*(v8 + 441) == 1)
  {
    RealityRenderer.doUpdateCallback(deltaTime:)();
  }

  v30 = *(v8 + 80);
  REEngineOverlayFrameSimulate();
  v31 = *(v8 + 80);
  REEngineOverlayFrameCommit();
  v32 = *(v8 + 80);
  REEngineOverlayFrameExit();
  v33 = *(v8 + 424);
  v79[6] = *(v8 + 408);
  v79[7] = v33;
  v80 = *(v8 + 440);
  v34 = *(v8 + 360);
  v79[2] = *(v8 + 344);
  v79[3] = v34;
  v35 = *(v8 + 392);
  v79[4] = *(v8 + 376);
  v79[5] = v35;
  v36 = *(v8 + 328);
  v79[0] = *v19;
  v79[1] = v36;
  *(v8 + 392) = 0u;
  *(v8 + 408) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 328) = 0u;
  *(v8 + 344) = 0u;
  *v19 = 0u;
  v37 = MEMORY[0x1E69E7CC0];
  *(v8 + 424) = MEMORY[0x1E69E7CC0];
  *(v8 + 432) = v37;
  *(v8 + 440) = 0;
  outlined destroy of RealityRenderer.RenderContext(v79);
  v70 = v8;
  v38 = *(*(v8 + 472) + 16);
  if (v38)
  {
    v39 =  + 56;
    do
    {
      v40 = *(v39 - 16);
      v76 = *(v39 - 24);
      v41 = *(v39 - 8);
      v42 = *v39;
      v43 = *(v39 + 16);
      v72 = *(v39 + 24);
      v44 = *(*(v39 + 56) + 16);
      v74 = *(v39 + 48);
      swift_retain_n();

      swift_unknownObjectRetain();
      v45 = v72;
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      RERenderGraphFileProviderArrayComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERenderGraphFileProviderArrayComponentRemoveAll();

      swift_unknownObjectRelease();

      v39 += 88;
      --v38;
    }

    while (v38);

    v8 = v70;
  }

  swift_beginAccess();
  v46 = *(v8 + 448);
  if (v46 >> 62)
  {
    goto LABEL_52;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
LABEL_17:
    _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOi0_(v77);
    v81[6] = v77[6];
    v81[7] = v77[7];
    v82 = v78;
    v81[2] = v77[2];
    v81[3] = v77[3];
    v81[4] = v77[4];
    v81[5] = v77[5];
    v81[0] = v77[0];
    v81[1] = v77[1];
    if (v47 >= 1)
    {

      v48 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x1C68F41F0](v48, v46);
        }

        else
        {
          v49 = *(v46 + 8 * v48 + 32);
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0, 0x200000000, v49);

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018OrthographicCameraD0V_TtB5Tf4ndn_n(0, 0x200000000, v49);
        v50 = *(v49 + 16);

        if (v50 != *(v49 + 16))
        {
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
          v47 = __CocoaSet.count.getter();
          if (!v47)
          {
            goto LABEL_46;
          }

          goto LABEL_17;
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(v81, v49);
        v51 = *(v49 + 16);

        if (v51 != *(v49 + 16))
        {
          goto LABEL_48;
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_TtB5(0, 0, 0, 0, v49);
        v8 = *(v49 + 16);

        if (v8 != *(v49 + 16))
        {
          goto LABEL_49;
        }

        RECameraViewDescriptorsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RECameraViewDescriptorsComponentClearCameraViewDescriptors();
        RERenderGraphFileProviderArrayComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderGraphFileProviderArrayComponentRemoveAll();
        v52 = *(v49 + 16);
        Parent = REEntityGetParent();
        if (Parent)
        {
          break;
        }

LABEL_20:
        ++v48;

        if (v47 == v48)
        {

          v8 = v70;
          goto LABEL_46;
        }
      }

      v54 = Parent;
      v55 = type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        v56 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_50;
        }

        v58 = specialized static Entity.entityInfoType(_:)();
        if (v58)
        {
          v8 = v58;
          v57 = (*(v58 + 232))();
          v59 = *(v57 + 16);

          MEMORY[0x1C68F9740](v59, 0);
          *(v57 + 16) = v54;
          MEMORY[0x1C68F9740](v54, v57);

          goto LABEL_34;
        }

        v56 = makeEntity(for:)(v54);
      }

      v57 = v56;
LABEL_34:
      v60 = *(v49 + 16);
      swift_retain_n();
      v61 = REEntityGetParent();
      if (v61)
      {
        v62 = v61;
        if (REEntityGetSwiftObject())
        {
          v63 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_51;
          }

          v64 = specialized static Entity.entityInfoType(_:)();
          if (v64)
          {
            v65 = (*(v64 + 232))();
            v66 = *(v65 + 16);

            MEMORY[0x1C68F9740](v66, 0);
            *(v65 + 16) = v62;
            MEMORY[0x1C68F9740](v62, v65);

            v63 = v65;
          }

          else
          {
            v63 = makeEntity(for:)(v62);
          }
        }

        v67 = *(v63 + 16);

        v8 = *(v57 + 16);

        if (v67 == v8)
        {
          v68 = *(v49 + 16);
          REEntitySetParent();
          v8 = v55;
          static Entity.updateInteractions(root:)(v49);
        }
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    v69 = *(v8 + 448);
    *(v8 + 448) = MEMORY[0x1E69E7CC0];
  }
}

Swift::Void __swiftcall RealityRenderer.waitForEncoded()()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v1 + 16);
    JUMPOUT(0x1C68FD7F0);
  }
}

Swift::Void __swiftcall RealityRenderer.waitForScheduled()()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v1 + 16);
    JUMPOUT(0x1C68FD800);
  }
}

Swift::Void __swiftcall RealityRenderer.waitForCompleted()()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v1 + 16);
    JUMPOUT(0x1C68FD7E0);
  }
}

void *static RealityRenderer.CameraOutput.RenderCommandEncoderCommands.setRenderPipelineState.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

void static RealityRenderer.CameraOutput.Descriptor.singleProjection(descriptor:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = MEMORY[0x1E69E7CC0];
  v3 = [a1 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [v4 texture];

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = swift_unknownObjectRetain();
    MEMORY[0x1C68F3650](v7);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v8 = v26;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v25 = v6;
  v9 = [a1 depthAttachment];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 texture];

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = swift_unknownObjectRetain();
    MEMORY[0x1C68F3650](v13);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v14 = v25;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1887600;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v15 + 48) = _Q0;
  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  *(a2 + 56) = -1;

  v21 = a1;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.setter(uint64_t a1)
{
  v3 = *(v1 + 40);
  result = swift_unknownObjectRelease();
  *(v1 + 40) = a1;
  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  swift_unknownObjectRetain();
  return RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v3 + 40) = v4;

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = a1[2];
    result = swift_unknownObjectRelease();
    *(v3 + 40) = v4;
  }

  return result;
}

void *(*RealityRenderer.CameraOutput.Descriptor.renderCommandEncoderCommandMask.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 56);
  a1[1] = v1;
  return RealityRenderer.CameraOutput.Descriptor.renderCommandEncoderCommandMask.modify;
}

_BYTE *(*RealityRenderer.externalEncoderOperation.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 464);
  return RealityRenderer.externalEncoderOperation.modify;
}

uint64_t EncodedFrame.render(whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v16 = *(v9 + 16);
  swift_beginAccess();
  *(v16 + 441) = 1;
  if (a1)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0;
  }

  if (!a3)
  {
    a4 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(0, 0, a1, v17, a3, a4, a5, a6);

  if (!v8)
  {
    *(v9 + 24) = 1;
  }

  return result;
}

Swift::Void __swiftcall EncodedFrame.setCameraTransform(viewDescriptorIndex:_:)(Swift::Int viewDescriptorIndex, simd_float4x4 *_)
{
  if (viewDescriptorIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(*(v2 + 16) + 472);
  if (*(v7 + 16) <= viewDescriptorIndex)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v7 + 88 * viewDescriptorIndex + 112);
  v12 = v6;
  v10 = v4;
  v11 = v5;
  v9 = v3;

  specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v9, v10, v11, v12);
}

uint64_t specialized HasTransform.setTransformMatrix(_:relativeTo:)(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = v5;
  v32 = *MEMORY[0x1E69E9840];
  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v19 = v7;
  v20 = v8;
  v22 = v9;
  v23 = v10;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v26);
  if ((v26[48] & 1) != 0 && one-time initialization token for identity != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    a2 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a2.f32[0]), v20, *a2.f32, 1), v22, a2, 2), v23, a2, 3);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a3.f32[0]), v20, *a3.f32, 1), v22, a3, 2), v23, a3, 3);
    v12 = vmlaq_lane_f32(vmulq_n_f32(v19, a4.f32[0]), v20, *a4.f32, 1);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a5.f32[0]), v20, *a5.f32, 1), v22, a5, 2), v23, a5, 3);
    v20 = v13;
    a3 = v11;
    v13.i32[3] = 0;
    v27 = 0u;
    a5 = v13;
    a4 = vmlaq_laneq_f32(vmlaq_laneq_f32(v12, v22, a4, 2), v23, a4, 3);
    REDecomposeMatrix();
    *&v14 = simd_float4x4.scale.getter(a2, a3, a4);
    v27 = v14;
    v28 = 0;
    v29 = 0;
    v30 = a5;
    v31 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(&v27);
    v15 = *(v6 + 16);

    if (v15 == *(v6 + 16))
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall EncodedFrame.setCameraProjectiveTransform(viewDescriptorIndex:_:)(Swift::Int viewDescriptorIndex, simd_float4x4 *_)
{
  if (viewDescriptorIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(*(v2 + 16) + 472);
  if (*(v8 + 16) <= viewDescriptorIndex)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v9 = v8 + 88 * viewDescriptorIndex;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(*(v9 + 112) + 16);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  v26 = *(v9 + 104);
  swift_retain_n();

  swift_unknownObjectRetain();
  v17 = v16;
  Component = REEntityGetComponent();
  if (Component)
  {
    *&v28 = Component;
    static ProjectiveTransformCameraComponent.__fromCore(_:)(&v28, v42);

    swift_unknownObjectRelease();

    v39 = v45;
    v40 = v46;
    v41 = v47;
    v37 = v43;
    v38 = v44;
    v20 = *(*(v27 + 16) + 472);
    if (*(v20 + 16) > viewDescriptorIndex)
    {
      v21 = *(v20 + 88 * viewDescriptorIndex + 112);
      v34 = v39;
      v35 = v40;
      v36 = v41;
      v32 = v37;
      v33 = v38;
      v28 = v22;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v28, v19);
      v45 = v34;
      v46 = v35;
      v47 = v36;
      v42[2] = v30;
      v42[3] = v31;
      v43 = v32;
      v44 = v33;
      v42[0] = v28;
      v42[1] = v29;

      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(v42, v21);

      return;
    }

    goto LABEL_8;
  }

LABEL_9:

  __break(1u);
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:colorTextures:)(Swift::Int viewDescriptorIndex, Swift::OpaquePointer colorTextures)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = &v6[88 * viewDescriptorIndex];
  v8 = *(v7 + 4);
  *(v7 + 4) = colorTextures;

  v9 = *(v5 + 472);
  *(v5 + 472) = v6;
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:depthTextures:)(Swift::Int viewDescriptorIndex, Swift::OpaquePointer depthTextures)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = &v6[88 * viewDescriptorIndex];
  v8 = *(v7 + 5);
  *(v7 + 5) = depthTextures;

  v9 = *(v5 + 472);
  *(v5 + 472) = v6;
}

uint64_t EncodedFrame.setOutput(viewDescriptorIndex:renderCommandEncoder:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v6 + 88 * a1;
  v9 = *(v8 + 72);
  *(v8 + 72) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v10 = *(v5 + 472);
  *(v5 + 472) = v6;
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:renderPassDescriptor:)(Swift::Int viewDescriptorIndex, MTLRenderPassDescriptor renderPassDescriptor)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = &v6[88 * viewDescriptorIndex];
  v8 = *(v7 + 10);
  *(v7 + 10) = renderPassDescriptor;
  v9 = renderPassDescriptor.super.isa;

  v10 = *(v5 + 472);
  *(v5 + 472) = v6;
}

uint64_t EncodedFrame.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t EncodedFrame.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t RealityRenderer.updateAndRenderViewDescriptorsToFrame(deltaTime:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(0, 0, a1, v10, a3, v11, a5, a6);
  if (!v8)
  {
    type metadata accessor for EncodedFrame();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v7;
  }

  return v6;
}

uint64_t RealityRenderer.updateAndRenderViewDescriptorsToFrame(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a2 = 0;
  }

  if (!a3)
  {
    a4 = 0;
  }

  if (!a5)
  {
    a6 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v10)
  {
    type metadata accessor for EncodedFrame();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 16) = v9;
  }

  return v8;
}

void static RealityRenderer.setEmitterPreference(_:)(_BYTE *a1)
{
  if (static RealityRenderer.emitterPreference == 2)
  {
    static RealityRenderer.emitterPreference = (*a1 & 1) != 0;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v2 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t RealityRenderer.setHandleFrameStatistics(handleFrameStatistics:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v6 = *(v5 + 24);
    swift_unownedRetainStrong();
    v7 = *(v6 + 24);

    REFrameStatisticsSetEnabled();

    a1 = v4;
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + 152);
  v10 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = v8;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9);
}

double _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(uint64_t a1, uint64_t a2)
{
  v3 = *zmmword_1C1887630;
  v19 = *zmmword_1C1887630;
  if (!a1)
  {
LABEL_7:
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 16);

  v6 = MEMORY[0x1C69004D0](v5);
  v7 = *(a1 + 16);
  if (v6)
  {
    v8 = *(a1 + 16);
    RETransformServiceGetWorldMatrix4x4F();
LABEL_6:
    v19 = v9;

    v3 = *zmmword_1C1887630;
    goto LABEL_7;
  }

  RETransformComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RETransformComponentGetWorldMatrix4x4F();
    goto LABEL_6;
  }

  v3 = *zmmword_1C1887630;
  v19 = *zmmword_1C1887630;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = *(a2 + 16);

  v11 = MEMORY[0x1C69004D0](v10);
  v12 = *(a2 + 16);
  if (v11)
  {
    v13 = *(a2 + 16);
    RETransformServiceGetParentWorldMatrix4x4F();
  }

  else
  {
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {

      v3 = *zmmword_1C1887630;
      goto LABEL_13;
    }

    RETransformComponentGetParentWorldMatrix4x4F();
  }

  v20.columns[0] = v14;
  v20.columns[1] = v15;
  v20.columns[2] = v16;
  v20.columns[3] = v17;

  v3 = v20;
LABEL_13:
  v21 = __invert_f4(v3);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21.columns[0], v19.f32[0]), v21.columns[1], *v19.f32, 1), v21.columns[2], v19, 2), v21.columns[3], v19, 3).u64[0];
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError);
  }

  return result;
}

uint64_t specialized static RealityRenderer.createEmitterAsset()()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = *(v2 + 32);

  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (static RealityRenderer.emitterPreference == 2)
  {
    static RealityRenderer.emitterPreference = 0;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {

    return AssetHandle;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError()
{
  result = lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError;
  if (!lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError;
  if (!lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError);
  }

  return result;
}

double _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOi0_(uint64_t a1)
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
  *(a1 + 128) = 512;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RealityRenderer.EntityCollection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation;
  if (!lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraOutput(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraSettings.ColorBackground(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraSettings.ColorBackground(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraViewDescriptor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraViewDescriptor(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CameraRenderingSettings.ColorBackground.Value(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraRenderingSettings.ColorBackground.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

__n128 __swift_memcpy130_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for RealityRenderer.RenderContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 130))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RealityRenderer.RenderContext(uint64_t result, int a2, int a3)
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
      *(result + 130) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for closure #2 in RealityRenderer.doRenderCallback()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #2 in RealityRenderer.doRenderCallback()(a1);
}

uint64_t objectdestroy_295Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of _proto_StereoProjectiveTransformCameraComponent_v1?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction;
  if (!lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction);
  }

  return result;
}

Swift::Int __RKEntityActionGroup.Ordering.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for __RKEntityActionGroup.actions : __RKEntityActionGroup(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t __RKEntityActionGroup.actions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t __RKEntityActionGroup.ordering.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 120);
  return result;
}

uint64_t __RKEntityActionGroup.init(actions:ordering:loopCount:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = *a2;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 112) = a1;
  *(v4 + 120) = v5;
  if (a4)
  {
    a3 = 1;
  }

  *(v4 + 128) = a3;
  v7 = __RKEntityAction.init(targetEntity:)(0);

  v8 = __RKEntityActionGroup.collapseRedundantGroups()();
  swift_beginAccess();
  v9 = *(v7 + 112);
  *(v7 + 112) = v8;

  swift_beginAccess();
  if (*(v7 + 120))
  {
  }

  else
  {
    v10 = __RKEntityActionGroup.reorderConcurrentActions()();
    v11 = *(v7 + 112);
    *(v7 + 112) = v10;
  }

  return v7;
}

uint64_t __RKEntityActionGroup.collapseRedundantGroups()()
{
  v17 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_32:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      type metadata accessor for __RKEntityActionGroup();
      v7 = swift_dynamicCastClass();

      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = __RKEntityActionGroup.allActions()();
      v9 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9 != 1)
      {
        goto LABEL_6;
      }

      v5 = swift_beginAccess();
      if (*(v7 + 128) != 1)
      {
        goto LABEL_6;
      }

      v10 = __RKEntityActionGroup.allActions()();
      v11 = v10;
      if (v10 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_5:

LABEL_6:
          MEMORY[0x1C68F3650](v5);
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_9;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v12 = *(v11 + 32);
      }

      MEMORY[0x1C68F3650](v13);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_9:
      ++v4;

      if (v3 == v4)
      {
        v16 = v17;

        return v16;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityActionGroup.reorderConcurrentActions()()
{
  v15 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_32:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C68F41F0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      if (((*(*v6 + 488))() & 1) == 0)
      {

        MEMORY[0x1C68F3650](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v15;
        goto LABEL_8;
      }

      v7 = v5 >> 62;
      if (v5 >> 62)
      {
        result = __CocoaSet.count.getter();
        if (result < 0)
        {
          goto LABEL_36;
        }

        result = __CocoaSet.count.getter();
        if (result < 0)
        {
          goto LABEL_37;
        }

        v13 = __CocoaSet.count.getter();
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_31;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v7)
        {
          v10 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }
      }

      else if (!v7)
      {
        v10 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v12 = *(v10 + 16);
        goto LABEL_6;
      }

      __CocoaSet.count.getter();
LABEL_6:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_7:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v6);

      v15 = v5;
LABEL_8:
      if (v3 == ++v4)
      {

        return v5;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __RKEntityActionGroup.preloadAssets()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v5 = *(v0 + 112);
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
LABEL_3:
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v2; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C68F41F0](i, v1);
        }

        else
        {
          v4 = *(v1 + 8 * i + 32);
        }

        (*(*v4 + 400))();
      }
    }
  }
}

uint64_t __RKEntityActionGroup.checkForCompletion(with:)(uint64_t *a1)
{
  if (*(v1 + 152) == 1)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    swift_beginAccess();
    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v24 = v2;
    v25 = v3;
    result = __RKEntityAction.state.didset(&v24);
    *(v1 + 152) = 0;
    return result;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = *(v1 + 136);
  swift_beginAccess();
  v8 = *(v1 + 112);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v19 = *(v1 + 112);
    }

    result = __CocoaSet.count.getter();
    if (v7 != result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      return result;
    }
  }

  v9 = *(v1 + 144);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_26:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_18;
    }

    return result;
  }

  *(v1 + 144) = v10;
  swift_beginAccess();
  v11 = *(v1 + 128);
  v13 = v11 > 1 && v10 < v11;
  if (v11 && !v13)
  {
    *(v1 + 144) = 0;
    swift_beginAccess();
    v14 = *(v1 + 96);
    v15 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v22 = v14;
    v23 = v15;
    return __RKEntityAction.state.didset(&v22);
  }

  swift_beginAccess();
  v16 = *(v1 + 96);
  v17 = *(v1 + 104);
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  v22 = v16;
  v23 = v17;
  __RKEntityAction.state.didset(&v22);
  swift_beginAccess();
  if ((*(v1 + 120) & 1) == 0)
  {
    v20 = v6;
    v21 = v5;
    return __RKEntityActionGroup.performConcurrentActions(with:)(&v20);
  }

  v18 = *(v1 + 112);
  if (v18 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_18:
    *(v1 + 136) = 0;
    v20 = v6;
    v21 = v5;
    return __RKEntityActionGroup.performSequentialAction(at:context:)(0, &v20);
  }

  return result;
}

uint64_t *__RKEntityActionGroup.performConcurrentActions(with:)(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  *(v1 + 136) = 0;
  if ((*(v1 + 152) & 1) == 0)
  {
    v4 = v1;
    result = swift_beginAccess();
    v5 = *(v1 + 112);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v21 = *(v1 + 112);
      }

      result = __CocoaSet.count.getter();
      v6 = result;
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = v4;
    v7 = v5 & 0xC000000000000001;

    v8 = 0;
    v9 = v5;
    do
    {
      if (v7)
      {
        v10 = MEMORY[0x1C68F41F0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      ++v8;
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v2;
      v12[4] = v3;
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      *(v10 + 48) = partial apply for closure #1 in __RKEntityActionGroup.performConcurrentActions(with:);
      *(v10 + 56) = v12;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13);

      v5 = v9;
    }

    while (v6 != v8);

    v4 = v23;
LABEL_11:
    v15 = *(v4 + 112);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v22 = *(v4 + 112);
      }

      result = __CocoaSet.count.getter();
      v16 = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
LABEL_20:
        swift_beginAccess();
        v19 = *(v4 + 96);
        v20 = *(v4 + 104);
        *(v4 + 96) = 1;
        *(v4 + 104) = 1;
        v24 = v19;
        v25 = v20;
        return __RKEntityAction.state.didset(&v24);
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C68F41F0](v17, v15);
        }

        else
        {
          v18 = *(v15 + 8 * v17 + 32);
        }

        ++v17;
        v26[0] = v2;
        v26[1] = v3;
        (*(*v18 + 408))(v26);
      }

      while (v16 != v17);

      goto LABEL_20;
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in __RKEntityActionGroup.performConcurrentActions(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 136);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(result + 136) = v8;
      v9[0] = a2;
      v9[1] = a3;
      __RKEntityActionGroup.checkForCompletion(with:)(v9);
    }
  }

  return result;
}

uint64_t __RKEntityActionGroup.performSequentialAction(at:context:)(unint64_t a1, uint64_t *a2)
{
  v5 = v2;
  v7 = *a2;
  v8 = a2[1];
  v40[0] = 91;
  v40[1] = 0xE100000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  v11 = v10;
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  if (*(v2 + 152))
  {
    v12 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v12, v40);
  }

  swift_beginAccess();
  v14 = *(v2 + 112);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v31 = *(v5 + 112);

    v11 = MEMORY[0x1C68F41F0](a1, v14);

    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = *(v14 + 8 * a1 + 32);

LABEL_7:
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = 91;
    v16[4] = 0xE100000000000000;
    v16[5] = v7;
    v16[6] = v8;
    v17 = v11[6];
    v18 = v11[7];
    v11[6] = partial apply for closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:);
    v11[7] = v16;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);

    v3 = &v32;
    v4 = static os_log_type_t.info.getter();
    if (one-time initialization token for interactionsLoggingEnabled == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_8:
  v35 = v7;
  if (interactionsLoggingEnabled)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v38 = 0xD00000000000001FLL;
    v39 = 0x80000001C18E0780;
    v36 = a1;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v19);

    v20 = MEMORY[0x1C68F3410](8250, 0xE200000000000000);
    v21 = (*(*v11 + 440))(v20);
    MEMORY[0x1C68F3410](v21);

    a1 = v39;
    v34 = v38;
    if (one-time initialization token for interactionsLogger == -1)
    {
LABEL_10:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, interactionsLogger);

      v23 = Logger.logObject.getter();

      if (os_log_type_enabled(v23, v4))
      {
        v24 = swift_slowAlloc();
        HIDWORD(v32) = v4;
        v25 = v24;
        v26 = swift_slowAlloc();
        v33 = v3;
        v27 = v26;
        v38 = v26;
        *v25 = 136315394;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(91, 0xE100000000000000, &v38);
        *(v25 + 12) = 2080;
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a1, &v38);

        *(v25 + 14) = v28;
        _os_log_impl(&dword_1C1358000, v23, BYTE4(v32), "%s%s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v27, -1, -1);
        MEMORY[0x1C6902A30](v25, -1, -1);
      }

      else
      {
      }

      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

LABEL_15:
  v38 = v35;
  v39 = v8;
  (*(*v11 + 408))(&v38);
  swift_beginAccess();
  v29 = *(v5 + 96);
  v30 = *(v5 + 104);
  *(v5 + 96) = 1;
  *(v5 + 104) = 1;
  v36 = v29;
  v37 = v30;
  __RKEntityAction.state.didset(&v36);
}

void closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v20[0] = a2;
    v20[1] = a3;
    v16 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v16, v20);
    return;
  }

  v10 = Strong;
  v11 = *(Strong + 136);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_8:
    if (v12 < __CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_9:
    v18 = a2;
    v19 = a3;
    v17 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v18);
    v18 = a4;
    v19 = a5;
    __RKEntityActionGroup.checkForCompletion(with:)(&v18);
    goto LABEL_10;
  }

  *(Strong + 136) = v12;
  swift_beginAccess();
  v13 = *(v10 + 112);
  if (v13 >> 62)
  {
    goto LABEL_8;
  }

  if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = a2;
  v19 = a3;
  v14 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v14, &v18, partial apply for implicit closure #1 in closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:), v10);
  v15 = *(v10 + 136);
  v18 = a4;
  v19 = a5;
  __RKEntityActionGroup.performSequentialAction(at:context:)(v15, &v18);
LABEL_10:
}

uint64_t implicit closure #1 in closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:)(uint64_t a1)
{
  _StringGuts.grow(_:)(60);
  MEMORY[0x1C68F3410](0xD00000000000003ALL, 0x80000001C18E07A0);
  v4 = *(a1 + 136);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  return 0;
}

uint64_t __RKEntityActionGroup.perform(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v22[0] = 91;
  v22[1] = 0xE100000000000000;
  v20 = 0;
  v21 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v5 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v5, v22, partial apply for implicit closure #1 in __RKEntityActionGroup.perform(with:), v1);
  *(v1 + 152) = 0;
  swift_beginAccess();
  v6 = *(v1 + 112);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = 91;
    v21 = 0xE100000000000000;
    v11 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v11, &v20);
    swift_beginAccess();
    v12 = *(v1 + 96);
    v13 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v18 = v12;
    LOBYTE(v19) = v13;
    __RKEntityAction.state.didset(&v18);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v10 = *(v1 + 112);
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_3:
  swift_beginAccess();
  if ((*(v1 + 120) & 1) == 0)
  {
    v18 = 91;
    v19 = 0xE100000000000000;
    v9 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v9, &v18);
    v18 = v3;
    v19 = v2;
    __RKEntityActionGroup.performConcurrentActions(with:)(&v18);
    goto LABEL_16;
  }

  v7 = *(v1 + 112);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v14 = *(v1 + 112);
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }

LABEL_15:
    v18 = 91;
    v19 = 0xE100000000000000;
    v15 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v15, &v18);
    goto LABEL_16;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  v18 = 91;
  v19 = 0xE100000000000000;
  v8 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v8, &v18);
  *(v1 + 136) = 0;
  v18 = v3;
  v19 = v2;
  __RKEntityActionGroup.performSequentialAction(at:context:)(0, &v18);
LABEL_16:
  v18 = 91;
  v19 = 0xE100000000000000;
  v16 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v16, &v18);

  return 1;
}

uint64_t implicit closure #1 in __RKEntityActionGroup.perform(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  swift_beginAccess();
  v2 = *(a1 + 112);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v6 = *(a1 + 112);
    }

    __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](0x736E6F6974636120, 0xE800000000000000);
  return 0x736E6961746E6F43;
}

uint64_t __RKEntityActionGroup.allActions()()
{
  v23 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v22 = i;
    while (v3)
    {
      MEMORY[0x1C68F41F0](v4, v1);
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_29;
      }

LABEL_11:
      type metadata accessor for __RKEntityActionGroup();
      if (!swift_dynamicCastClass())
      {

        MEMORY[0x1C68F3650](v16);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v23;
        goto LABEL_4;
      }

      v8 = __RKEntityActionGroup.allActions()();
      v9 = v8;
      if (v8 >> 62)
      {
        v10 = __CocoaSet.count.getter();
        if (!v10)
        {
LABEL_27:

          goto LABEL_4;
        }
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      if (v10 < 1)
      {
        goto LABEL_30;
      }

      v11 = v3;
      v12 = v1;
      for (j = 0; j != v10; ++j)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](j, v9);
        }

        else
        {
          v14 = *(v9 + 8 * j + 32);
        }

        MEMORY[0x1C68F3650](v15);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v5 = v23;

      v1 = v12;
      v3 = v11;
      i = v22;
LABEL_4:
      if (v4 == i)
      {

        return v5;
      }
    }

    if (v4 >= *(v21 + 16))
    {
      goto LABEL_31;
    }

    v7 = *(v20 + 8 * v4);

    v6 = __OFADD__(v4++, 1);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::Bool __swiftcall __RKEntityActionGroup.runningExclusiveAndBlocksForCompletion()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_23:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68F41F0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      if ((*(*v5 + 328))())
      {

LABEL_20:
        v9 = 1;
        goto LABEL_21;
      }

      swift_beginAccess();
      v7 = *(v5 + 96);
      v8 = *(v5 + 104);

      if (v8 == 1 && v7 == 1)
      {
        swift_beginAccess();
        if (*(v1 + 89) == 1)
        {
          swift_beginAccess();
          if (*(v1 + 90))
          {
            goto LABEL_20;
          }
        }
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v9 = 0;
LABEL_21:

  return v9;
}

unint64_t __RKEntityActionGroup.isExclusiveWith(action:)(uint64_t a1)
{
  if (v1 == a1)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 89) == 1)
  {
    swift_beginAccess();
    if (*(a1 + 89))
    {
      return 1;
    }
  }

  result = __RKEntityActionGroup.allActions()();
  v4 = result;
  if (result >> 62)
  {
LABEL_37:
    result = __CocoaSet.count.getter();
    v5 = result;
    if (result)
    {
LABEL_7:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v20 = v4 + 32;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = v4;
      v18 = v4 & 0xC000000000000001;
      v19 = v5;
      while (1)
      {
LABEL_8:
        if (v7)
        {
          v8 = MEMORY[0x1C68F41F0](v6, v4);
          v9 = __OFADD__(v6++, 1);
          if (v9)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v6 >= *(v21 + 16))
          {
            __break(1u);
            return result;
          }

          v8 = *(v20 + 8 * v6);

          v9 = __OFADD__(v6++, 1);
          if (v9)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        type metadata accessor for __RKEntityActionGroup();
        if (swift_dynamicCastClass())
        {
          break;
        }

        v17 = (*(*v8 + 456))(a1);

        if (v17)
        {

          return 1;
        }

        if (v6 == v5)
        {
          goto LABEL_38;
        }
      }

      v10 = __RKEntityActionGroup.allActions()();
      v11 = v10;
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v10 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      v4 = v11 & 0xC000000000000001;
      while (v13 != v14)
      {
        if (v4)
        {
          v15 = MEMORY[0x1C68F41F0](v14, v11);
          if (__OFADD__(v14, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v14 >= *(v12 + 16))
          {
            goto LABEL_35;
          }

          v15 = *(v11 + 8 * v14 + 32);

          if (__OFADD__(v14, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        v16 = (*(*v8 + 456))(v15);

        ++v14;
        if (v16)
        {

          return 1;
        }
      }

      v4 = v22;
      v7 = v18;
      v5 = v19;
      if (v6 != v19)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_38:

  return 0;
}

uint64_t __RKEntityActionGroup.reversed()()
{
  v1 = v0;
  v13 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {

      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (__OFSUB__(v3--, 1))
        {
          __break(1u);
LABEL_17:

          goto LABEL_18;
        }

        if ((v2 & 0xC000000000000001) == 0)
        {
          break;
        }

        v6 = MEMORY[0x1C68F41F0](v3, v2);
LABEL_11:
        if ((*(*v6 + 432))())
        {

          MEMORY[0x1C68F3650](v7);
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v8 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v4 = v13;
          if (!v3)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (!v3)
          {
            goto LABEL_17;
          }
        }
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v6 = *(v2 + 32 + 8 * v3);

    goto LABEL_11;
  }

LABEL_22:
  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:
  swift_beginAccess();
  v12[0] = *(v0 + 120);
  type metadata accessor for __RKEntityActionGroup();
  swift_allocObject();
  v9 = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v4, v12, 1, 0);
  swift_beginAccess();
  v10 = *(v1 + 89);
  swift_beginAccess();
  *(v9 + 89) = v10;
  return v9;
}

Swift::Bool __swiftcall __RKEntityActionGroup.stop()()
{
  v11[0] = 91;
  v11[1] = 0xE100000000000000;
  v11[4] = 0;
  v11[5] = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v1 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v2 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v2, v11);

  *(v0 + 152) = 1;
  LOBYTE(v3) = swift_beginAccess();
  v4 = *(v0 + 112);
  if (v4 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    v5 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return v3;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](i, v4);
      v9 = v7;
    }

    else
    {
      v9 = *(v4 + 8 * i + 32);
    }

    (*(*v9 + 448))(v7, v8);
  }

LABEL_10:
  LOBYTE(v3) = 1;
  return v3;
}

uint64_t __RKEntityActionGroup.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(34);
  MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E0680);
  swift_beginAccess();
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](5975337, 0xE300000000000000);
  swift_beginAccess();
  v23 = *(v0 + 120);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x28202D205DLL, 0xE500000000000000);
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 1)
  {
    while (1)
    {
      MEMORY[0x1C68F3410](5966090, 0xE300000000000000);
      v4 = *(v1 + 112);
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);

        goto LABEL_6;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = __CocoaSet.count.getter();
      if (v3 < 1)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v1 + 112);

    v5 = MEMORY[0x1C68F41F0](0, v4);

LABEL_6:
    v7 = (*(*v5 + 440))(v6);
    v9 = v8;

    MEMORY[0x1C68F3410](v7, v9);

    v10 = v3 - 1;
    if (v3 != 1)
    {
      v12 = 5;
      do
      {
        MEMORY[0x1C68F3410](592428, 0xE300000000000000);
        v13 = *(v1 + 112);
        if ((v13 & 0xC000000000000001) != 0)
        {
          v19 = *(v1 + 112);

          v14 = MEMORY[0x1C68F41F0](v12 - 4, v13);
        }

        else
        {
          if ((v12 - 4) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v14 = *(v13 + 8 * v12);
        }

        v16 = (*(*v14 + 440))(v15);
        v18 = v17;

        MEMORY[0x1C68F3410](v16, v18);

        ++v12;
        --v10;
      }

      while (v10);
    }

    MEMORY[0x1C68F3410](679177, 0xE300000000000000);
  }

LABEL_8:
  MEMORY[0x1C68F3410](665865, 0xE300000000000000);
  return 0;
}

uint64_t __RKEntityActionGroup.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v16 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_19:
    swift_beginAccess();
    v14 = *(v1 + 120);
    swift_beginAccess();
    v11 = *(v1 + 128);
    v12 = type metadata accessor for __RKEntityActionGroup();
    swift_allocObject();
    result = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v7, &v14, v11, 0);
    a1[3] = v12;
    *a1 = result;
    return result;
  }

  if (v4 < 0)
  {
    v10 = *(v1 + 112);
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C68F41F0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      (*(*v8 + 464))(v15, 0);
      type metadata accessor for __RKEntityAction();
      if (swift_dynamicCast())
      {

        MEMORY[0x1C68F3650](v9);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v16;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityActionGroup.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v20 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v4 = *(v2 + 112);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
    swift_beginAccess();
    v19 = *(v2 + 120);
    swift_beginAccess();
    v15 = *(v2 + 128);
    type metadata accessor for __RKEntityActionGroup();
    swift_allocObject();
    return __RKEntityActionGroup.init(actions:ordering:loopCount:)(v8, &v19, v15, 0);
  }

  if (v4 < 0)
  {
    v14 = *(v2 + 112);
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68F41F0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = (*(*v9 + 472))(a1, a2);
      v12 = v11;
      if (v10)
      {
        v13 = swift_retain_n();
        MEMORY[0x1C68F3650](v13);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v20;
      }

      ++v7;

      v6 |= v12;
    }

    while (v5 != v7);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityActionGroup.deinit()
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
  v6 = *(v0 + 112);

  return v0;
}

uint64_t __RKEntityActionGroup.__deallocating_deinit()
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
  v6 = *(v0 + 112);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering);
  }

  return result;
}

float PhysicsBodyComponent.massProperties.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

float PhysicsBodyComponent.massProperties.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  return result;
}

uint64_t PhysicsBodyComponent.material.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t PhysicsBodyComponent.isTranslationLocked.getter()
{
  if (v0[90])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[89])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[88] | v1;
}

uint64_t PhysicsBodyComponent.isTranslationLocked.setter(uint64_t result, char a2, char a3)
{
  v3[88] = result;
  v3[89] = a2;
  v3[90] = a3;
  return result;
}

uint64_t PhysicsBodyComponent.isRotationLocked.getter()
{
  if (v0[93])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[92])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[91] | v1;
}

uint64_t PhysicsBodyComponent.isRotationLocked.setter(uint64_t result, char a2, char a3)
{
  v3[91] = result;
  v3[92] = a2;
  v3[93] = a3;
  return result;
}

void PhysicsBodyComponent.linearDamping.setter(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 164) = a1;
}

void PhysicsBodyComponent.angularDamping.setter(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 168) = a1;
}

uint64_t PhysicsBodyComponent.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static PhysicsMassProperties.default;
  v11 = *&qword_1EBEB2100;
  v12 = xmmword_1EBEB20F0;
  v10 = xmmword_1EBEB2110;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static PhysicsMaterialResource.default;

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = MEMORY[0x1C68FE290](*(v4 + 16));
  if (result)
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v9 = v6;
    result = REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v8 = vand_s8(__PAIR64__(v7, v9), vcgez_f32(__PAIR64__(v7, v9)));
  }

  else
  {
    v8 = 0x3E8000003CA3D70ALL;
  }

  *a1 = 2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 164) = v8;
  return result;
}

uint64_t PhysicsBodyComponent.init(massProperties:material:mode:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v17 = *(a1 + 2);
  v18 = *(a1 + 1);
  v16 = *(a1 + 3);
  v7 = *a3;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default == -1)
  {
    if (a2)
    {
LABEL_5:
      v8 = a2;
      goto LABEL_8;
    }
  }

  else
  {
    swift_once();
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v8 = static PhysicsMaterialResource.default;

LABEL_8:

  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v9 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v15 = v10;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v14 = v11;

    v13 = vand_s8(__PAIR64__(v14, v15), vcgez_f32(__PAIR64__(v14, v15)));
  }

  else
  {

    v13 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v7;
  *(a4 + 16) = v6;
  *(a4 + 32) = v18;
  *(a4 + 48) = v17;
  *(a4 + 64) = v16;
  *(a4 + 80) = v8;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v13;
  return result;
}

uint64_t PhysicsBodyComponent.init(shapes:density:material:mode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = specialized static ShapeResource.__makeShapeResource(_:)(a1);

  v8 = one-time initialization token for default;

  if (v8 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = static PhysicsMaterialResource.default;
  v10 = *(v7 + 16);

  REMakeMassFrameFromShapeAssetAndDensity();
  if (one-time initialization token for identity == -1)
  {
    v11 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_once();
  v11 = a2;
  if (!a2)
  {
LABEL_7:

    v11 = v9;
  }

LABEL_8:

  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v12 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v21 = v13;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v20 = v14;

    v15 = vand_s8(__PAIR64__(v20, v21), vcgez_f32(__PAIR64__(v20, v21)));
  }

  else
  {

    v15 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v6;
  *(a4 + 16) = v27;
  *(a4 + 32) = v26;
  *(a4 + 48) = v24;
  *(a4 + 64) = v25;
  *(a4 + 80) = v11;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v15;
  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v16 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v23 = v17;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v22 = v18;

    *(a4 + 164) = vand_s8(__PAIR64__(v22, v23), vcgez_f32(__PAIR64__(v22, v23)));
  }

  else
  {
  }

  return result;
}

uint64_t PhysicsBodyComponent.init(shapes:mass:material:mode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = specialized static ShapeResource.__makeShapeResource(_:)(a1);

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = static PhysicsMaterialResource.default;
  v9 = *(v7 + 16);

  REMakeMassFrameFromShapeAssetAndMass();
  if (one-time initialization token for identity == -1)
  {
    v10 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_once();
  v10 = a2;
  if (!a2)
  {
LABEL_7:

    v10 = v8;
  }

LABEL_8:

  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v11 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v17 = v12;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v16 = v13;

    v15 = vand_s8(__PAIR64__(v16, v17), vcgez_f32(__PAIR64__(v16, v17)));
  }

  else
  {

    v15 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v6;
  *(a4 + 16) = v21;
  *(a4 + 32) = v20;
  *(a4 + 48) = v18;
  *(a4 + 64) = v19;
  *(a4 + 80) = v10;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v15;
  return result;
}

uint64_t PhysicsBodyComponent.init(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static PhysicsMaterialResource.default;

  MotionType = RERigidBodyComponentGetMotionType();
  if (MotionType >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = MotionType;
    RERigidBodyComponentGetMassFrame();
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    Material = RERigidBodyComponentGetMaterial();
    v25 = v4;
    if (Material)
    {
      v6 = Material;
      if (REAssetGetSwiftObject() && (type metadata accessor for PhysicsMaterialResource(), (v7 = swift_dynamicCastClass()) != 0))
      {
        v8 = v7;
      }

      else
      {
        type metadata accessor for PhysicsMaterialResource();
        v8 = swift_allocObject();
        *(v8 + 32) = v6;
        REPhysicsMaterialAssetGetStaticFriction();
        *(v8 + 16) = v9;
        REPhysicsMaterialAssetGetDynamicFriction();
        *(v8 + 20) = v10;
        REPhysicsMaterialAssetGetRestitution();
        *(v8 + 24) = v11;
        RERetain();
        REAssetSetSwiftObject();

        swift_unknownObjectRelease();
      }

      v24 = v8;
    }

    else
    {
      v24 = v2;
    }

    LockTranslationX = RERigidBodyComponentGetLockTranslationX();
    LockTranslationY = RERigidBodyComponentGetLockTranslationY();
    LockTranslationZ = RERigidBodyComponentGetLockTranslationZ();
    LockRotationX = RERigidBodyComponentGetLockRotationX();
    LockRotationY = RERigidBodyComponentGetLockRotationY();
    LockRotationZ = RERigidBodyComponentGetLockRotationZ();
    CCDEnabled = RERigidBodyComponentGetCCDEnabled();
    GravityEnabled = RERigidBodyComponentGetGravityEnabled();
    RERigidBodyComponentGetLinearDamping();
    RERigidBodyComponentGetAngularDamping();
    RERigidBodyComponentGetLinearDamping();
    v23 = v20;
    result = RERigidBodyComponentGetAngularDamping();
    *a1 = v25;
    *(a1 + 16) = v29;
    *(a1 + 32) = v28;
    *(a1 + 48) = v26;
    *(a1 + 64) = v27;
    *(a1 + 80) = v24;
    *(a1 + 88) = LockTranslationX;
    *(a1 + 89) = LockTranslationY;
    *(a1 + 90) = LockTranslationZ;
    *(a1 + 91) = LockRotationX;
    *(a1 + 92) = LockRotationY;
    *(a1 + 93) = LockRotationZ;
    *(a1 + 94) = CCDEnabled;
    *(a1 + 95) = 0u;
    *(a1 + 111) = 0u;
    *(a1 + 127) = 0u;
    *(a1 + 143) = 0u;
    *(a1 + 159) = 0;
    *(a1 + 160) = GravityEnabled;
    *(a1 + 164) = vand_s8(__PAIR64__(v22, v23), vcgez_f32(__PAIR64__(v22, v23)));
  }

  return result;
}

uint64_t PhysicsBodyComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 4);
  v6 = *(v1 + 10);
  v7 = v2[88];
  v8 = v2[89];
  v9 = v2[90];
  v10 = v2[91];
  v11 = v2[92];
  v12 = v2[93];
  v13 = v2[94];
  v23 = v2[95];
  v19 = *(v2 + 6);
  v20 = *(v2 + 7);
  v21 = *(v2 + 8);
  v22 = *(v2 + 9);
  v18 = v2[160];
  v15 = *(v2 + 41);
  v14 = *(v2 + 42);
  v25 = *(v2 + 2);
  v26 = *(v2 + 4);
  v24 = *(v2 + 3);
  RERigidBodyComponentSetMotionType();
  REMakeMassFrame();
  RERigidBodyComponentSetMassFrame();
  if (*(v6 + 32) && (v16 = *(v6 + 32), REAssetHandleIsLoaded()) || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v6 + 32)))
  {
    RERigidBodyComponentSetMaterial();
    RERigidBodyComponentSetLockTranslationX();
    RERigidBodyComponentSetLockTranslationY();
    RERigidBodyComponentSetLockTranslationZ();
    RERigidBodyComponentSetLockRotationX();
    RERigidBodyComponentSetLockRotationY();
    RERigidBodyComponentSetLockRotationZ();
    RERigidBodyComponentSetCCDEnabled();
    RERigidBodyComponentSetCCDVelocityThreshold();
    RERigidBodyComponentSetCanSleep();
    RERigidBodyComponentSetGravityEnabled();
    RERigidBodyComponentSetLinearDamping();
    RERigidBodyComponentSetAngularDamping();
    RERigidBodyComponentAddUserForce();
    RERigidBodyComponentAddUserTorque();
    RERigidBodyComponentAddUserLinearImpulse();
    RERigidBodyComponentAddUserAngularImpulse();
    if (v23)
    {
      RERigidBodyComponentTeleport();
    }

    return RENetworkMarkComponentDirty();
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *(*PhysicsBodyComponent.isAffectedByGravity.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 160);
  return PhysicsBodyComponent.isAffectedByGravity.modify;
}

float *(*PhysicsBodyComponent.linearDamping.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 164);
  return PhysicsBodyComponent.linearDamping.modify;
}

float *PhysicsBodyComponent.linearDamping.modify(float *result)
{
  v1 = result[2];
  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  *(*result + 164) = v1;
  return result;
}

float *(*PhysicsBodyComponent.angularDamping.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 168);
  return PhysicsBodyComponent.angularDamping.modify;
}

float *PhysicsBodyComponent.angularDamping.modify(float *result)
{
  v1 = result[2];
  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  *(*result + 168) = v1;
  return result;
}

uint64_t PhysicsBodyComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = v1[7];
  v11 = v1[9];
  v52 = v1[8];
  v53[0] = v11;
  *(v53 + 12) = *(v1 + 156);
  v12 = v1[3];
  v13 = v1[5];
  v48 = v1[4];
  v49 = v13;
  v14 = v1[5];
  v15 = v1[7];
  v50 = v1[6];
  v51 = v15;
  v16 = v1[1];
  v44 = *v1;
  v45 = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v46 = v1[2];
  v47 = v17;
  v20 = v1[9];
  v42[19] = v52;
  v43[0] = v20;
  *(v43 + 12) = *(v1 + 156);
  v42[15] = v48;
  v42[16] = v14;
  v42[17] = v50;
  v42[18] = v10;
  v42[11] = v19;
  v42[12] = v18;
  v42[13] = v46;
  v42[14] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C18A1E70;
  strcpy((v21 + 32), "massProperties");
  *(v21 + 47) = -18;
  v22 = v45;
  v38 = v47;
  v39 = v46;
  v37 = v48;
  *(v21 + 72) = &type metadata for PhysicsMassProperties;
  v23 = swift_allocObject();
  *(v21 + 48) = v23;
  *(v23 + 16) = v22;
  v24 = v38;
  *(v23 + 32) = v39;
  *(v23 + 48) = v24;
  *(v23 + 64) = v37;
  *(v21 + 80) = 0x6C6169726574616DLL;
  *(v21 + 88) = 0xE800000000000000;
  v25 = v49;
  v26 = type metadata accessor for PhysicsMaterialResource();
  *(v21 + 96) = v25;
  *(v21 + 120) = v26;
  *(v21 + 128) = 1701080941;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = v44;
  *(v21 + 168) = &type metadata for PhysicsBodyMode;
  *(v21 + 176) = 0xD000000000000025;
  *(v21 + 184) = 0x80000001C18E07E0;
  v27 = MEMORY[0x1E69E6370];
  *(v21 + 192) = BYTE14(v49);
  *(v21 + 216) = v27;
  *(v21 + 224) = 0xD000000000000010;
  *(v21 + 232) = 0x80000001C18E0810;
  v28 = BYTE11(v49);
  v29 = BYTE12(v49);
  v30 = BYTE13(v49);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb1x_Sb1ySb1ztMd, &_sSb1x_Sb1ySb1ztMR);
  *(v21 + 240) = v28;
  *(v21 + 241) = v29;
  *(v21 + 242) = v30;
  *(v21 + 264) = v31;
  *(v21 + 272) = 0xD000000000000013;
  *(v21 + 280) = 0x80000001C18E0830;
  v32 = BYTE9(v49);
  v33 = BYTE10(v49);
  *(v21 + 288) = BYTE8(v49);
  *(v21 + 289) = v32;
  *(v21 + 290) = v33;
  *(v21 + 312) = v31;
  *(v21 + 320) = 0xD000000000000013;
  *(v21 + 328) = 0x80000001C18E0850;
  *(v21 + 336) = v53[1];
  *(v21 + 360) = v27;
  strcpy((v21 + 368), "angularDamping");
  *(v21 + 383) = -18;
  v34 = DWORD2(v53[1]);
  *(v21 + 408) = MEMORY[0x1E69E6448];
  *(v21 + 384) = v34;
  v35 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v40);
  outlined init with copy of PhysicsBodyComponent(&v44, v42);
  outlined init with copy of PhysicsBodyComponent(&v44, v42);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static PhysicsBodyComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->u8[0] != a2->u8[0])
  {
    goto LABEL_10;
  }

  v2 = a1[5].i64[0];
  v3 = a1[5].u8[8];
  v4 = a1[5].u8[9];
  v28 = a1[5].u8[10];
  v29 = a1[5].u8[11];
  v30 = a1[5].u8[12];
  v31 = a1[5].u8[13];
  v5 = a1[5].u8[14];
  v6 = a2[5].i64[0];
  v7 = a2[5].u8[8];
  v8 = a2[5].u8[9];
  v9 = a2[5].u8[10];
  v10 = a2[5].u8[11];
  v11 = a2[5].u8[12];
  v26 = a2[5].u8[13];
  v27 = a2[5].u8[14];
  v13 = a2[3];
  v12 = a2[4];
  v14 = a2[2];
  v15 = a2[1].i32[0];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1[2];
  v33[0].i32[0] = a1[1].i32[0];
  v33[1] = v18;
  v33[2] = v17;
  v33[3] = v16;
  v32[0].i32[0] = v15;
  v32[1] = v14;
  v32[2] = v13;
  v32[3] = v12;
  if ((specialized static PhysicsMassProperties.== infix(_:_:)(v33, v32) & 1) == 0)
  {
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v25 = v5;
  v19 = *(v2 + 32);
  if (v19 && (v20 = *(v2 + 32), REAssetHandleIsLoaded()) || (result = PhysicsMaterialResource.makeCoreAsset()(), (v19 = *(v2 + 32)) != 0))
  {
    v22 = *(v6 + 32);
    if (v22 && (v23 = *(v6 + 32), (REAssetHandleIsLoaded() & 1) != 0) || (result = PhysicsMaterialResource.makeCoreAsset()(), (v22 = *(v6 + 32)) != 0))
    {
      v24 = (v19 == v22) & (v3 ^ v7 ^ 1) & (v4 ^ v8 ^ 1) & (v28 ^ v9 ^ 1) & (v29 ^ v10 ^ 1) & (v30 ^ v11 ^ 1) & (v31 ^ v26 ^ 1) & (v25 ^ v27 ^ 1);
      return v24 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy172_16(uint64_t a1, __int128 *a2)
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
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsBodyComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsBodyComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

RealityFoundation::EmphasizeAction::EmphasisAnimationStyle_optional __swiftcall EmphasizeAction.EmphasisAnimationStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RealityFoundation::EmphasizeAction::EmphasisMotionType_optional __swiftcall EmphasizeAction.EmphasisMotionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance EmphasizeAction.CodingKeys()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6974696464417369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79546E6F69746F6DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmphasizeAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized EmphasizeAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmphasizeAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmphasizeAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmphasizeAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13[2] = v1[2];
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}