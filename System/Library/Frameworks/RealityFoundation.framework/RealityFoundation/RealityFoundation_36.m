uint64_t CustomMaterial.ResourceStorage.subscript.getter()
{
  v1 = *v0;
  dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v2 & 1) != 0 || (TextureAssetAtOffset = REDirectParameterResourcesGetTextureAssetAtOffset()) == 0)
  {
    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v6 + 120, v8);
    v5 = closure #1 in static TextureResource.builtinTexture(named:)(v8);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v4 = TextureAssetAtOffset;
    type metadata accessor for TextureResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v5;
}

uint64_t CustomMaterial.ResourceStorage.subscript.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static CustomMaterial.supportsMutableUniformsResources)
  {
    dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v12)
    {
      Logger.init()();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136315138;
        v28 = v13;
        v29 = v16;
        v17 = AnyKeyPath.debugDescription.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v29);

        *(v15 + 4) = v19;
        v20 = v28;
        _os_log_impl(&dword_1C1358000, v28, v14, "Attempted to assign texture to invalid key path %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1C6902A30](v16, -1, -1);
        MEMORY[0x1C6902A30](v15, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v24 = *v2;
      v25 = *(a1 + 16);
      REDirectParameterResourcesSetTextureAssetAtOffset();
    }
  }

  else
  {
    Logger.init()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1358000, v21, v22, "CustomMaterial: Resource storage in withMutableUniforms is not supported on this device. Requires Tier 2 Argument Buffer support.", v23, 2u);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t (*CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter();
  return CustomMaterial.ResourceStorage.subscript.modify;
}

uint64_t CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = a1[3];
  if ((a2 & 1) == 0)
  {
    return CustomMaterial.ResourceStorage.subscript.setter(v4);
  }

  CustomMaterial.ResourceStorage.subscript.setter(v7);
}

{
  return CustomMaterial.ResourceStorage.subscript.modify(a1, a2, CustomMaterial.ResourceStorage.subscript.setter);
}

{
  return CustomMaterial.ResourceStorage.subscript.modify(a1, a2, CustomMaterial.ResourceStorage.subscript.setter);
}

uint64_t (*CustomMaterial.ResourceStorage.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter(a2);
  return CustomMaterial.ResourceStorage.subscript.modify;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter(a2);
  return CustomMaterial.ResourceStorage.subscript.modify;
}

void CustomMaterial.ResourceStorage.subscript.getter()
{
  v1 = *v0;
  dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v2 & 1) == 0)
  {
    v3 = REDirectParameterResourcesGetBufferAtOffset();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for LowLevelBuffer();
      swift_allocObject();
      LowLevelBuffer.init(coreBuffer:)(v4);
    }
  }
}

void CustomMaterial.ResourceStorage.subscript.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static CustomMaterial.supportsMutableUniformsResources)
  {
    dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v12)
    {
      Logger.init()();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136315138;
        v27 = v13;
        v28 = v16;
        v17 = AnyKeyPath.debugDescription.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

        *(v15 + 4) = v19;
        v20 = v27;
        _os_log_impl(&dword_1C1358000, v27, v14, "Attempted to assign buffer to invalid key path %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1C6902A30](v16, -1, -1);
        MEMORY[0x1C6902A30](v15, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v24 = *v2;
      if (a1)
      {
        v25 = *(a1 + 16);
      }

      else
      {
        v25 = 0;
      }

      REDirectParameterResourcesSetBufferAtOffset();
    }
  }

  else
  {
    Logger.init()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1358000, v21, v22, "CustomMaterial: Resource storage in withMutableUniforms is not supported on this device. Requires Tier 2 Argument Buffer support.", v23, 2u);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }
}

uint64_t CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = a1[3];
  v5 = *a1;
  v6 = a1[1];
  if (a2)
  {
    v7 = *a1;

    a3(v5, v6);
  }

  else
  {
    v9 = a1[1];

    return (a3)(v5, v6);
  }
}

void CustomMaterial.withMutableUniforms<A>(ofType:stage:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a5 - 8) + 64);
  if (*a2 == 1)
  {
    DirectUniformsState.convertToUniqueWithSurfSize(size:)(v9);
    MEMORY[0x1EEE9AC00](v10);
    v13 = a5;
    v14 = a1;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    v19 = partial apply for closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:);
    v20 = v12;
    specialized DirectUniformsState.withUniqueSurfaceBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withUniqueSurfaceBytes<A>(_:), v17);
  }

  else
  {
    DirectUniformsState.convertToUniqueWithGeomSize(size:)(v9);
    MEMORY[0x1EEE9AC00](v11);
    v13 = a5;
    v14 = a1;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    v19 = partial apply for closure #2 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:);
    v20 = v12;
    specialized DirectUniformsState.withUniqueGeometryBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withUniqueSurfaceBytes<A>(_:), v17);
  }
}

void CustomMaterial.withMutableUniforms<A>(ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DirectUniformsState.convertToSharedWithSize(size:)(*(*(a4 - 8) + 64));
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v10 = a4;
  v11 = partial apply for closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:_:);
  v12 = v8;
  specialized DirectUniformsState.withSharedBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withSharedBytes<A>(_:), v9);
}

uint64_t closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:)(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t (*a5)(uint64_t, id *), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = *(*(a7 - 8) + 72);
    if (v9)
    {
      if (a2 - a1 != 0x8000000000000000 || v9 != -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_5:
  v10 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v10)
  {
    return a5(v10, a3);
  }

LABEL_9:

  _StringGuts.grow(_:)(49);

  v12 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*static CustomMaterial.supportsMutableUniformsResources.modify())()
{
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKEntityInteractionsComponent.registration.modify;
}

uint64_t one-time initialization function for supportsMutableUniformsResources(uint64_t a1, BOOL *a2)
{
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v3 + 40, &v9, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v10)
  {
    outlined init with take of ForceEffectBase(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8 = [v7 argumentBuffersSupport];
    result = swift_unknownObjectRelease();
    *a2 = v8 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CustomMaterial.supportsMutableUniformsResources.getter(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t static CustomMaterial.supportsMutableUniformsResources.setter(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static CustomMaterial._proto_withMutableUniformsResourcesSupported.modify())()
{
  if (one-time initialization token for _proto_withMutableUniformsResourcesSupported != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKSimulationSceneCoordinator.shared.modify;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError);
  }

  return result;
}

uint64_t outlined destroy of MaterialParameters.Value?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v9)
    {
      outlined copy of Data._Representation(v8, v7);
      outlined consume of Data._Representation(v8, v7);
      *&v28 = v8;
      *(&v28 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C18A2C50;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v28, a2, a3, a4);
      v10 = v28;
      v11 = *(&v28 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v8, v7);
      *&v28 = v8;
      WORD4(v28) = v7;
      BYTE10(v28) = BYTE2(v7);
      BYTE11(v28) = BYTE3(v7);
      BYTE12(v28) = BYTE4(v7);
      BYTE13(v28) = BYTE5(v7);
      BYTE14(v28) = BYTE6(v7);
      a2(&v28, &v28 + BYTE6(v7), a4);
      v10 = v28;
      v11 = DWORD2(v28) | ((WORD6(v28) | (BYTE14(v28) << 16)) << 32);
    }

    *a1 = v10;
    a1[1] = v11;
    goto LABEL_15;
  }

  if (v9 != 2)
  {
    *(&v28 + 7) = 0;
    *&v28 = 0;
    a2(&v28, &v28, a4);
LABEL_15:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  outlined consume of Data._Representation(v8, v7);
  *&v28 = v8;
  *(&v28 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v13 = *(&v28 + 1);
  v14 = *(v28 + 16);
  v15 = *(v28 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v17 = v16;
    v18 = __DataStorage._offset.getter();
    v19 = v14 - v18;
    if (__OFSUB__(v14, v18))
    {
      __break(1u);
    }

    else
    {
      v20 = __OFSUB__(v15, v14);
      v21 = v15 - v14;
      if (!v20)
      {
        v22 = MEMORY[0x1C68F2040]();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        a2(v17 + v19, v17 + v19 + v23, a4);
        *a1 = v28;
        a1[1] = v13 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  Data.InlineSlice.ensureUniqueReference()();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = a2;
  v9 = *(a1 + 1);

  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = __DataStorage._offset.getter();
  v13 = v7 - v12;
  if (__OFSUB__(v7, v12))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v8 - v7;
  v15 = MEMORY[0x1C68F2040]();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17(v11 + v13, v11 + v13 + v16, a4);
}

unint64_t lazy protocol witness table accessor for type CustomShaderStage and conformance CustomShaderStage()
{
  result = lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage;
  if (!lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation19DirectUniformsStateO(uint64_t a1)
{
  if (((*(a1 + 32) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 32) >> 60) & 3;
  }
}

uint64_t getEnumTagSinglePayload for DirectUniformsState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 48))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 32) >> 60) & 3 | (*(a1 + 8) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DirectUniformsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 2) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DirectUniformsState(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[4] = v2;
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_1C18A9570;
  }

  return result;
}

void **assignWithTake for CustomMaterial.ResourceStorage(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void specialized DirectUniformsState.withSharedBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v2[1];
    v6 = v2[2];
    v8 = *v2;
    v9 = v2[3];
    v10 = v2[5];
    outlined copy of Data._Representation(*v2, v7);
    v11 = v6;
    outlined consume of DirectUniformsState(v8, v7, v6, v9, v3, v10);
    v25 = v8;
    v26 = v7;
    v27 = v11;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = REDirectParameterResourcesCopy();

      v27 = v12;
      v11 = v12;
    }

    v13 = *v2;
    v14 = v2[1];
    v15 = v2[2];
    v16 = v2[3];
    v17 = v2[4];
    v18 = v2[5];
    v24 = v11;
    v19 = v11;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v25, a1, a2, &v24);
    outlined consume of DirectUniformsState(v13, v14, v15, v16, v17, v18);

    v20 = v25;
    v21 = v26;
    v22 = v27;
    *v2 = v25;
    v2[1] = v21;
    v2[2] = v22;
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 0;
    outlined copy of Data._Representation(v20, v21);
    v23 = v22;
    outlined consume of Data._Representation(v20, v21);
  }
}

void specialized DirectUniformsState.withUniqueGeometryBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) == 0x1000000000000000)
  {
    v5 = v2[5];
    v7 = v2[2];
    v6 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    outlined copy of Data._Representation(*v2, v8);
    v10 = v7;
    outlined copy of Data._Representation(v6, v3 & 0xCFFFFFFFFFFFFFFFLL);
    v11 = v5;
    v24 = v6;
    v25 = v5;
    outlined consume of DirectUniformsState(v9, v8, v7, v6, v3, v5);
    v28 = v9;
    v29 = v8;
    v30 = v10;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = REDirectParameterResourcesCopy();

      v30 = v12;
      v10 = v12;
    }

    v13 = *v2;
    v14 = v2[1];
    v16 = v2[2];
    v15 = v2[3];
    v17 = v2[4];
    v18 = v2[5];
    v27 = v10;
    v19 = v10;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v28, a1, a2, &v27);
    outlined consume of DirectUniformsState(v13, v14, v16, v15, v17, v18);

    v20 = v28;
    v21 = v29;
    v22 = v30;
    *v2 = v28;
    v2[1] = v21;
    v2[2] = v22;
    v2[3] = v24;
    v2[4] = v3;
    v2[5] = v25;
    outlined copy of Data._Representation(v20, v21);
    v26 = v22;
    outlined consume of Data._Representation(v20, v21);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized DirectUniformsState.withUniqueSurfaceBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) == 0x1000000000000000)
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    outlined copy of Data._Representation(*v2, v6);
    v10 = v9;
    outlined copy of Data._Representation(v8, v3 & 0xCFFFFFFFFFFFFFFFLL);
    v11 = v7;
    v27 = v6;
    v28 = v5;
    v26 = v9;
    outlined consume of DirectUniformsState(v5, v6, v9, v8, v3, v7);
    v31 = v8;
    v32 = v3 & 0xCFFFFFFFFFFFFFFFLL;
    v33 = v11;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    v12 = a2;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v13 = REDirectParameterResourcesCopy();

      v33 = v13;
      v11 = v13;
    }

    v14 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v16 = v2[3];
    v18 = v2[4];
    v19 = v2[5];
    v30 = v11;
    v20 = v11;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v31, a1, v12, &v30);
    outlined consume of DirectUniformsState(v14, v15, v17, v16, v18, v19);

    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v32 | 0x1000000000000000;
    *v2 = v28;
    v2[1] = v27;
    v2[2] = v26;
    v2[3] = v21;
    v2[4] = v24;
    v2[5] = v23;
    outlined copy of Data._Representation(v21, v22);
    v29 = v23;
    outlined consume of Data._Representation(v21, v22);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void partial apply for closure #1 in DirectUniformsState.withSharedBytes<A>(_:)(uint64_t a1, uint64_t a2, id *a3)
{
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  v10 = *a3;
  v8 = v10;
  v7(a1, a2, &v10);
  v9 = v10;
}

uint64_t __RKLightTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKLightTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

double TextComponent.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void TextComponent.size.setter(double a1, double a2)
{
  if (a1 > 2048.0)
  {
    a1 = 2048.0;
  }

  if (a2 > 2048.0)
  {
    a2 = 2048.0;
  }

  *v2 = a1;
  v2[1] = a2;
}

int8x16_t (*TextComponent.size.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return TextComponent.size.modify;
}

int8x16_t TextComponent.size.modify(uint64_t a1)
{
  v1 = vdupq_n_s64(0x40A0000000000000uLL);
  result = vbslq_s8(vcgtq_f64(*a1, v1), v1, *a1);
  **(a1 + 16) = result;
  return result;
}

uint64_t TextComponent.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextComponent() + 20);

  return outlined init with copy of AttributedString?(v3, a1);
}

uint64_t type metadata accessor for TextComponent()
{
  result = type metadata singleton initialization cache for TextComponent;
  if (!type metadata singleton initialization cache for TextComponent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextComponent.text.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TextComponent() + 20);

  return outlined assign with take of AttributedString?(a1, v3);
}

uint64_t outlined assign with take of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *TextComponent.backgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextComponent() + 24));
  v2 = v1;
  return v1;
}

void TextComponent.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextComponent() + 24);

  *(v1 + v3) = a1;
}

uint64_t TextComponent.cornerRadius.setter(float a1)
{
  result = type metadata accessor for TextComponent();
  *(v1 + *(result + 28)) = a1;
  return result;
}

float TextComponent.coreEdgeInsets.getter()
{
  v1 = v0 + *(type metadata accessor for TextComponent() + 32);
  result = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  return result;
}

uint64_t TextComponent.coreEdgeInsets.setter(float a1, float a2, float a3, float a4)
{
  result = type metadata accessor for TextComponent();
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t TextComponent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TextComponent();
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for AttributedString();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[6]] = 0;
  *&a1[v2[7]] = 0;
  v6 = &a1[v2[8]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t static TextComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextComponent();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  *v13 = 0.0;
  v13[1] = 0.0;
  v15 = v9[7];
  v16 = *(v4 + 56);
  v16(v13 + v15, 1, 1, v3, v11);
  v32 = v9[8];
  *(v13 + v32) = 0.0;
  v33 = v9[9];
  *(v13 + v33) = 0;
  v17 = v13 + v9[10];
  *v17 = 0;
  *(v17 + 1) = 0;
  RETextComponentGetSize();
  if (v18 > 2048.0)
  {
    v18 = 2048.0;
  }

  if (v19 > 2048.0)
  {
    v19 = 2048.0;
  }

  *v13 = v18;
  v13[1] = v19;
  v20 = RETextComponentGetAttributedString();
  AttributedString.init(_:)();
  outlined destroy of BodyTrackingComponent?(v13 + v15, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(v4 + 16))(v13 + v15, v7, v3);
  (v16)(v13 + v15, 0, 1, v3);
  v21 = RETextComponentGetBackgroundColor();
  *(v13 + v32) = v21;
  RETextComponentGetCornerRadius();
  *(v13 + v33) = v22;
  v23 = MEMORY[0x1C68FF080](v14);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  (*(v4 + 8))(v7, v3);
  *v17 = v23;
  *(v17 + 1) = v25;
  *(v17 + 2) = v27;
  *(v17 + 3) = v29;
  outlined init with copy of TextComponent(v13, v34);
  return outlined destroy of TextComponent(v13);
}

uint64_t outlined init with copy of TextComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TextComponent(uint64_t a1)
{
  v2 = type metadata accessor for TextComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextComponent();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &aBlock - v10;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *v2;
  v19 = v2[1];
  RETextComponentSetSize();
  outlined init with copy of AttributedString?(v2 + v4[5], v11);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v20(v11, 1, v12) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  type metadata accessor for NSAttributedString();
  v21 = NSAttributedString.init(_:)();
  MEMORY[0x1C68FF0A0](v17, v21);
  v22 = *(v2 + v4[6]);
  if (v22)
  {
    GenericGray = *(v2 + v4[6]);
  }

  else
  {
    GenericGray = CGColorCreateGenericGray(1.0, 0.0);
    v22 = 0;
  }

  v24 = v22;
  MEMORY[0x1C68FF0B0](v17, GenericGray);

  v25 = *(v2 + v4[7]);
  RETextComponentSetCornerRadius();
  v26 = (v2 + v4[8]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  RETextComponentSetEdgeInsets();
  outlined init with copy of TextComponent(v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19TextComponentRender_pMd, &_s17RealityFoundation19TextComponentRender_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&aBlock, v38);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    swift_getDynamicType();
    v36 = (*(v38[4] + 8))();
    v37 = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = thunk for @escaping @callee_guaranteed (@guaranteed CGContextRef, @guaranteed CFAttributedStringRef, @unowned CGRect, @guaranteed CGColorRef, @unowned CGSize) -> ();
    *(&v35 + 1) = &block_descriptor_23;
    v32 = _Block_copy(&aBlock);

    RETextComponentSetRenderBlock();
    _Block_release(v32);

    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {

    v36 = 0;
    aBlock = 0u;
    v35 = 0u;
    return outlined destroy of BodyTrackingComponent?(&aBlock, &_s17RealityFoundation19TextComponentRender_pSgMd, &_s17RealityFoundation19TextComponentRender_pSgMR);
  }
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CGContextRef, @guaranteed CFAttributedStringRef, @unowned CGRect, @guaranteed CGColorRef, @unowned CGSize) -> ()(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);

  v23 = a2;
  v21 = a3;
  v22 = a4;
  v20(v23, v21, v22, a5, a6, a7, a8, a9, a10);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata completion function for TextComponent()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for CGColorRef?, type metadata accessor for CGColorRef);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RETextEdgeInsets(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for AttributedString?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Void __swiftcall AudioGeneratorController.play()()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v2 = specialized HasHierarchy.parent.getter(), , v2))
  {

    if (!*(v0 + 72))
    {
LABEL_4:
      static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v3 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  else
  {
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v4 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    if (!*(v1 + 72))
    {
      goto LABEL_4;
    }
  }

  v5 = *(v1 + 24);
  REAudioPlayerComponentPlayToken();
  RENetworkMarkComponentDirty();
}

uint64_t AudioGeneratorController.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  v2 = v1[8];
  *a1 = v1[6];
  a1[1] = v3;
  a1[2] = v2;
}

uint64_t AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  swift_weakInit();
  *(v5 + 64) = v12;
  *(v5 + 72) = 0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = v9;
  *(v5 + 52) = v10;
  *(v5 + 56) = v11;
  swift_beginAccess();
  swift_weakAssign();
  v13 = *(a4 + 16);

  REAudioPlayerComponentGetComponentType();
  *(v5 + 24) = REEntityGetOrAddComponentByClass();
  RERetain();
  v22[0] = v9;
  v22[1] = v10;
  v23 = v11;
  v24 = v12;
  type metadata accessor for AudioGeneratorResource();
  swift_allocObject();

  v14 = v25;
  v15 = AudioGeneratorResource.init(configuration:renderHandler:)(v22, a1, a2);
  if (v14)
  {

    swift_weakDestroy();
    v16 = *(v5 + 40);

    v17 = *(v5 + 64);

    type metadata accessor for AudioGeneratorController();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 80) = v15;
    v18 = *(v5 + 24);
    v19 = *(v15 + 24);
    *(v5 + 72) = REAudioPlayerComponentPrepareAsset();
    v20 = *(v5 + 24);
    RENetworkMarkComponentDirty();
  }

  return v5;
}

void *AudioGeneratorController.deinit()
{
  MEMORY[0x1C68F7360](v0[3], v0[9]);
  MEMORY[0x1C68F7170](v0[3], v0[9]);
  v1 = v0[3];
  RENetworkMarkComponentDirty();
  v2 = v0[3];
  RERelease();
  swift_weakDestroy();
  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[10];

  return v0;
}

uint64_t AudioGeneratorController.__deallocating_deinit()
{
  MEMORY[0x1C68F7360](v0[3], v0[9]);
  MEMORY[0x1C68F7170](v0[3], v0[9]);
  v1 = v0[3];
  RENetworkMarkComponentDirty();
  v2 = v0[3];
  RERelease();
  swift_weakDestroy();
  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

double AudioGeneratorController.gain.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  return v3;
}

uint64_t key path setter for AudioGeneratorController.gain : AudioGeneratorController(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 24);
  v5 = *(*a2 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  v7 = v6;
  v8 = *(v3 + 72);
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v2 != v7)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t AudioGeneratorController.gain.setter(double a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  v6 = v5;
  v7 = *(v1 + 72);
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v6 != a1)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t (*AudioGeneratorController.gain.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 24);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  *a1 = v5;
  return AudioGeneratorController.gain.modify;
}

uint64_t AudioGeneratorController.gain.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(v2 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  v6 = v5;
  v7 = *(v2 + 72);
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v3 != v6)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

Swift::Void __swiftcall AudioGeneratorController.stop()()
{
  MEMORY[0x1C68F7360](*(v0 + 24), *(v0 + 72));

  RENetworkMarkComponentDirty();
}

uint64_t SceneEvents.AnchoredStateChanged.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
}

uint64_t AudioEvents.PlaybackCompleted.playbackController.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SynchronizationEvents.OwnershipRequest.accept.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ComponentEvents.WillRemove.componentType.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

float ManipulationEvents.WillBegin.pivotPoint.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  return result;
}

uint64_t ManipulationEvents.WillBegin.shouldReject.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ManipulationEvents.WillBegin.init(entity:inputDevices:pivotPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = a5;
  *(a3 + 24) = a6;
  *(a3 + 28) = a7;
  *(a3 + 32) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  *(a3 + 40) = 0;
  return result;
}

float ManipulationEvents.DidUpdateTransform.pivotPoint.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  return result;
}

uint64_t ManipulationEvents.DidUpdateTransform.init(entity:inputDevices:pivotPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = a5;
  *(a3 + 24) = a6;
  *(a3 + 28) = a7;
  return result;
}

__n128 ManipulationEvents.DidReachMovementThreshold.inputDevice.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 16);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 ManipulationEvents.DidReachMovementThreshold.init(entity:inputDevice:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2->n128_u16[0];
  v4 = a2[3].n128_i8[0];
  a3->n128_u64[0] = a1;
  a3[1].n128_u16[0] = v3;
  result = a2[1];
  v6 = a2[2];
  a3[2] = result;
  a3[3] = v6;
  a3[4].n128_u8[0] = v4;
  return result;
}

uint64_t ManipulationEvents.WillRelease.init(entity:inputDevices:wasCancelled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ManipulationEvents.DidHandOff.init(entity:oldInputDevices:newInputDevices:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RealityFoundation::VideoPlayerEvents::ContentTypeDidChange::ContentType_optional __swiftcall VideoPlayerEvents.ContentTypeDidChange.ContentType.init(rawValue:)(RealityFoundation::VideoPlayerEvents::ContentTypeDidChange::ContentType_optional rawValue)
{
  if (rawValue.value == RealityFoundation_VideoPlayerEvents_ContentTypeDidChange_ContentType_mono)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == RealityFoundation_VideoPlayerEvents_ContentTypeDidChange_ContentType_invalid)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance VideoPlayerEvents.ContentTypeDidChange.ContentType@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, ValueMetadata *a8, uint64_t a9)
{
  if (a8 == &type metadata for SynchronizationEvents.OwnershipRequest)
  {
    Scene.eventService.getter(v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    type metadata accessor for REOwnershipRequestEvent(0);
    EventService.publisher<A>(for:on:)(v17, a1, v15, v17, v16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = &type metadata for SynchronizationEvents.OwnershipRequest;
    v19[3] = a9;
    v19[4] = v18;
    v19[5] = a5;
    v19[6] = a7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipRequestEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    v21 = Publisher<>.sink(receiveValue:)();

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    if (a8 == &type metadata for SceneEvents.Update || a8 == &type metadata for SceneEvents.Render)
    {
      Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(a8, a1, a2, a3, 0, a8, v24, a9);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = a8;
      v13[3] = a9;
      v13[4] = v12;
      v13[5] = a5;
      v13[6] = a7;
      type metadata accessor for Scene.Publisher();

      swift_getWitnessTable();
      v21 = Publisher<>.sink(receiveValue:)();
    }

    else
    {
      Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(a8, a1, a2, a3, a4, a8, v24, a9);
      v20 = swift_allocObject();
      v20[2] = a8;
      v20[3] = a9;
      v20[4] = a5;
      v20[5] = a7;
      type metadata accessor for Scene.Publisher();

      swift_getWitnessTable();
      v21 = Publisher<>.sink(receiveValue:)();
    }
  }

  result = type metadata accessor for AnyCancellable();
  v23 = MEMORY[0x1E695BF08];
  a6[3] = result;
  a6[4] = v23;
  *a6 = v21;
  return result;
}

uint64_t outlined init with copy of SynchronizationPeerID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  v30 = v12[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    if (!*(v16 + 224))
    {
    }

    v29 = v8;
    v27 = a4;
    v28 = a3;
    v17 = *(v16 + 232);
    ObjectType = swift_getObjectType();
    v31[0] = v13;
    v19 = *(v17 + 32);
    swift_unknownObjectRetain();
    v19(&v32, v31, ObjectType, v17);
    if (!v33)
    {

      swift_unknownObjectRelease();
      return outlined destroy of BodyTrackingComponent?(&v32, &_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
    }

    outlined init with take of ForceEffectBase(&v32, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MutableBoxCySbGMd, &_s17RealityFoundation10MutableBoxCySbGMR);
    result = swift_allocObject();
    *(result + 16) = 0;
    if (v14)
    {
      v20 = result;
      v21 = REEntityGetSwiftObject();
      v22 = v29;
      if (v21)
      {
        type metadata accessor for Entity();
        v23 = swift_dynamicCastClassUnconditional();
        goto LABEL_7;
      }

      result = REEntityIsBeingDestroyed();
      if ((result & 1) == 0)
      {
        v25 = specialized static Entity.entityInfoType(_:)();
        if (v25)
        {
          v24 = (*(v25 + 232))();
          v26 = *(v24 + 16);

          v22 = v29;
          MEMORY[0x1C68F9740](v26, 0);
          *(v24 + 16) = v14;
          MEMORY[0x1C68F9740](v14, v24);

LABEL_13:
          outlined init with copy of __REAssetService(v36, &v32 + 8);
          *&v32 = v24;
          v34 = partial apply for closure #1 in closure #1 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:);
          v35 = v20;
          outlined init with copy of SynchronizationEvents.OwnershipRequest(&v32, v31);

          swift_dynamicCast();
          v28(v11);
          result = (*(v22 + 8))(v11, a5);
          if (v30)
          {
            *v30 = *(v20 + 16);

            swift_unknownObjectRelease();

            outlined destroy of SynchronizationEvents.OwnershipRequest(&v32);
            return __swift_destroy_boxed_opaque_existential_1(v36);
          }

LABEL_19:
          __break(1u);
          return result;
        }

        v23 = makeEntity(for:)(v14);
LABEL_7:
        v24 = v23;
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(a1);
    }
  }

  return result;
}

uint64_t Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v615 = a6;
  v558 = a4;
  v556 = a3;
  v613 = a2;
  v616 = a7;
  v617 = a1;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmn3DidO0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmn3DidO0VGMR);
  v565 = *(v566 - 8);
  v9 = *(v565 + 64);
  MEMORY[0x1EEE9AC00](v566);
  v564 = &v504 - v10;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmN9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmN9DidChangeVGMR);
  v562 = *(v563 - 8);
  v11 = *(v562 + 64);
  MEMORY[0x1EEE9AC00](v563);
  v561 = &v504 - v12;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMR);
  v559 = *(v560 - 8);
  v13 = *(v559 + 64);
  MEMORY[0x1EEE9AC00](v560);
  v557 = &v504 - v14;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVG0E10Foundation0lK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVG0E10Foundation0lK6EventsO0lM9DidChangeVGMR);
  v554 = *(v555 - 8);
  v15 = *(v554 + 64);
  MEMORY[0x1EEE9AC00](v555);
  v553 = &v504 - v16;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMR);
  v551 = *(v552 - 8);
  v17 = *(v551 + 64);
  MEMORY[0x1EEE9AC00](v552);
  v550 = &v504 - v18;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v548 = *(v549 - 8);
  v19 = *(v548 + 64);
  MEMORY[0x1EEE9AC00](v549);
  v547 = &v504 - v20;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v545 = *(v546 - 8);
  v21 = *(v545 + 64);
  MEMORY[0x1EEE9AC00](v546);
  v544 = &v504 - v22;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v542 = *(v543 - 8);
  v23 = *(v542 + 64);
  MEMORY[0x1EEE9AC00](v543);
  v541 = &v504 - v24;
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v539 = *(v540 - 8);
  v25 = *(v539 + 64);
  MEMORY[0x1EEE9AC00](v540);
  v538 = &v504 - v26;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v536 = *(v537 - 8);
  v27 = *(v536 + 64);
  MEMORY[0x1EEE9AC00](v537);
  v535 = &v504 - v28;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGAF11AudioEventsO17PlaybackCompletedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGAF11AudioEventsO17PlaybackCompletedVGMR);
  v530 = *(v531 - 8);
  v29 = *(v530 + 64);
  MEMORY[0x1EEE9AC00](v531);
  v529 = &v504 - v30;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v533 = *(v534 - 8);
  v31 = *(v533 + 64);
  MEMORY[0x1EEE9AC00](v534);
  v532 = &v504 - v32;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v527 = *(v528 - 8);
  v33 = *(v527 + 64);
  MEMORY[0x1EEE9AC00](v528);
  v526 = &v504 - v34;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v524 = *(v525 - 8);
  v35 = *(v524 + 64);
  MEMORY[0x1EEE9AC00](v525);
  v523 = &v504 - v36;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVG0E10Foundation06MotionK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVG0E10Foundation06MotionK6EventsO0lM0VGMR);
  v521 = *(v522 - 8);
  v37 = *(v521 + 64);
  MEMORY[0x1EEE9AC00](v522);
  v520 = &v504 - v38;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMR);
  v518 = *(v519 - 8);
  v39 = *(v518 + 64);
  MEMORY[0x1EEE9AC00](v519);
  v517 = &v504 - v40;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMR);
  v515 = *(v516 - 8);
  v41 = *(v515 + 64);
  MEMORY[0x1EEE9AC00](v516);
  v514 = &v504 - v42;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGAF15CollisionEventsO5EndedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGAF15CollisionEventsO5EndedVGMR);
  v512 = *(v513 - 8);
  v43 = *(v512 + 64);
  MEMORY[0x1EEE9AC00](v513);
  v511 = &v504 - v44;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGAF15CollisionEventsO7UpdatedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGAF15CollisionEventsO7UpdatedVGMR);
  v509 = *(v510 - 8);
  v45 = *(v509 + 64);
  MEMORY[0x1EEE9AC00](v510);
  v508 = &v504 - v46;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMR);
  v506 = *(v507 - 8);
  v47 = *(v506 + 64);
  MEMORY[0x1EEE9AC00](v507);
  v505 = &v504 - v48;
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGAF15AnimationEventsO0E10FoundationE08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGAF15AnimationEventsO0E10FoundationE08PlaybackL0VGMR);
  v568 = *(v569 - 8);
  v49 = *(v568 + 64);
  MEMORY[0x1EEE9AC00](v569);
  v567 = &v504 - v50;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v571 = *(v572 - 8);
  v51 = *(v571 + 64);
  MEMORY[0x1EEE9AC00](v572);
  v570 = &v504 - v52;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v574 = *(v575 - 8);
  v53 = *(v574 + 64);
  MEMORY[0x1EEE9AC00](v575);
  v573 = &v504 - v54;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v577 = *(v578 - 8);
  v55 = *(v577 + 64);
  MEMORY[0x1EEE9AC00](v578);
  v576 = &v504 - v56;
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAF15AnimationEventsO0E10FoundationE0klmN0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAF15AnimationEventsO0E10FoundationE0klmN0VGMR);
  v580 = *(v581 - 8);
  v57 = *(v580 + 64);
  MEMORY[0x1EEE9AC00](v581);
  v579 = &v504 - v58;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v583 = *(v584 - 8);
  v59 = *(v583 + 64);
  MEMORY[0x1EEE9AC00](v584);
  v582 = &v504 - v60;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v586 = *(v587 - 8);
  v61 = *(v586 + 64);
  MEMORY[0x1EEE9AC00](v587);
  v585 = &v504 - v62;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v589 = *(v590 - 8);
  v63 = *(v589 + 64);
  MEMORY[0x1EEE9AC00](v590);
  v588 = &v504 - v64;
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v592 = *(v593 - 8);
  v65 = *(v592 + 64);
  MEMORY[0x1EEE9AC00](v593);
  v591 = &v504 - v66;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v595 = *(v596 - 8);
  v67 = *(v595 + 64);
  MEMORY[0x1EEE9AC00](v596);
  v594 = &v504 - v68;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVG0E10Foundation0oK6EventsO0lmnO0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVG0E10Foundation0oK6EventsO0lmnO0VGMR);
  v598 = *(v599 - 8);
  v69 = *(v598 + 64);
  MEMORY[0x1EEE9AC00](v599);
  v597 = &v504 - v70;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVG0E10Foundation06AnchorK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVG0E10Foundation06AnchorK6EventsO0lM0VGMR);
  v601 = *(v602 - 8);
  v71 = *(v601 + 64);
  MEMORY[0x1EEE9AC00](v602);
  v600 = &v504 - v72;
  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVG0E10Foundation0mK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVG0E10Foundation0mK6EventsO0lM0VGMR);
  v604 = *(v605 - 8);
  v73 = *(v604 + 64);
  MEMORY[0x1EEE9AC00](v605);
  v603 = &v504 - v74;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGAF0G6EventsO0klM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGAF0G6EventsO0klM0VGMR);
  v607 = *(v608 - 8);
  v75 = *(v607 + 64);
  MEMORY[0x1EEE9AC00](v608);
  v606 = &v504 - v76;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMR);
  v610 = *(v611 - 8);
  v77 = *(v610 + 64);
  MEMORY[0x1EEE9AC00](v611);
  v79 = &v504 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v504 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMR);
  v612 = *(v83 - 8);
  v84 = *(v612 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v504 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v504 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF06EnginelM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF06EnginelM0VGMR);
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v504 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v504 - v96;
  if (a5)
  {
    v609 = *(a5 + 16);
  }

  else
  {
    v609 = 0;
  }

  v614 = a8;
  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v624);
    v98 = v626;
    if (v626)
    {
      v99 = v627;
      __swift_project_boxed_opaque_existential_1(&v624, v626);
      type metadata accessor for REEngineDoUpdateEvent(0);
      EventService.publisher<A>(for:on:)(v100, v613, v98, v100, v99);
      v101 = *(&v619 + 1);
      v98 = v619;
      v102 = v620;
      __swift_destroy_boxed_opaque_existential_1(&v624);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v624, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v101 = 0;
      v102 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v102)
    {
      *&v624 = v98;
      *(&v624 + 1) = v101;
      v625 = v102;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      Publisher.compactMap<A>(_:)();

      v108 = *(v91 + 32);
      v108(v97, v94, v90);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH06EnginemN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH06EnginemN0VGGMR);
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      v112 = swift_allocObject();
      v108(&v112[*(*v112 + *MEMORY[0x1E695BEE8] + 16)], v97, v90);
    }

    else
    {

      v112 = 0;
    }

    *&v624 = v112;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA17EngineUpdateEventVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA17EngineUpdateEventVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v624);
    v103 = v626;
    if (v626)
    {
      v104 = v627;
      __swift_project_boxed_opaque_existential_1(&v624, v626);
      type metadata accessor for REEngineDoUpdateEvent(0);
      EventService.publisher<A>(for:on:)(v105, v613, v103, v105, v104);
      v107 = *(&v619 + 1);
      v106 = v619;
      v103 = v620;
      __swift_destroy_boxed_opaque_existential_1(&v624);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v624, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v106 = 0;
      v107 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v103)
    {
      *&v624 = v106;
      *(&v624 + 1) = v107;
      v625 = v103;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      Publisher.compactMap<A>(_:)();

      v120 = *(v612 + 32);
      v120(v89, v86, v83);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMR);
      v122 = *(v121 + 48);
      v123 = *(v121 + 52);
      v103 = swift_allocObject();
      v120(v103 + *(*v103 + *MEMORY[0x1E695BEE8] + 16), v89, v83);
    }

    else
    {
    }

    *&v624 = v103;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v624);
    v115 = v626;
    if (v626)
    {
      v116 = v627;
      __swift_project_boxed_opaque_existential_1(&v624, v626);
      type metadata accessor for REEngineDoRenderEvent(0);
      EventService.publisher<A>(for:on:)(v117, v613, v115, v117, v116);
      v119 = *(&v619 + 1);
      v118 = v619;
      v115 = v620;
      __swift_destroy_boxed_opaque_existential_1(&v624);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v624, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v118 = 0;
      v119 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v115)
    {
      *&v624 = v118;
      *(&v624 + 1) = v119;
      v625 = v115;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoRenderEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
      Publisher.compactMap<A>(_:)();

      v134 = *(v610 + 32);
      v135 = v611;
      v134(v82, v79, v611);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMR);
      v137 = *(v136 + 48);
      v138 = *(v136 + 52);
      v115 = swift_allocObject();
      v134(v115 + *(*v115 + *MEMORY[0x1E695BEE8] + 16), v82, v135);
    }

    else
    {
    }

    *&v624 = v115;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v124 = v626;
    v125 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneAnchoredStateChangedEvent(0);
    EventService.publisher<A>(for:on:)(v126, v613, v124, v126, v125);
    v127 = v619;
    v128 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v127;
    v625 = v128;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneAnchoredStateChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMR);
    v129 = v606;
    Publisher.compactMap<A>(_:)();

    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneAnchoredStateChangedEventVGAH0I6EventsO0lmN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneAnchoredStateChangedEventVGAH0I6EventsO0lmN0VGGMR);
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    v133 = swift_allocObject();
    (*(v607 + 32))(&v133[*(*v133 + *MEMORY[0x1E695BEE8] + 16)], v129, v608);
    *&v624 = v133;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO20AnchoredStateChangedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO20AnchoredStateChangedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v140 = v626;
    v141 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnchorStateDidAnchorEvent(0);
    EventService.publisher<A>(for:on:)(v142, v613, v140, v142, v141);
    v143 = v619;
    v144 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v143;
    v625 = v144;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateDidAnchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMR);
    v145 = v603;
    Publisher.compactMap<A>(_:)();

    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REAnchorStateDidAnchorEventVG0G10Foundation0nL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REAnchorStateDidAnchorEventVG0G10Foundation0nL6EventsO0mN0VGGMR);
    v147 = *(v146 + 48);
    v148 = *(v146 + 52);
    v149 = swift_allocObject();
    (*(v604 + 32))(&v149[*(*v149 + *MEMORY[0x1E695BEE8] + 16)], v145, v605);
    *&v624 = v149;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO03DidF0VGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO03DidF0VGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v150 = v626;
    v151 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnchorStateWillUnanchorEvent(0);
    EventService.publisher<A>(for:on:)(v152, v613, v150, v152, v151);
    v153 = v619;
    v154 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v153;
    v625 = v154;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateWillUnanchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMR);
    v155 = v600;
    Publisher.compactMap<A>(_:)();

    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REAnchorStateWillUnanchorEventVG0G10Foundation06AnchorL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REAnchorStateWillUnanchorEventVG0G10Foundation06AnchorL6EventsO0mN0VGGMR);
    v157 = *(v156 + 48);
    v158 = *(v156 + 52);
    v159 = swift_allocObject();
    (*(v601 + 32))(&v159[*(*v159 + *MEMORY[0x1E695BEE8] + 16)], v155, v602);
    *&v624 = v159;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO12WillUnanchorVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO12WillUnanchorVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v160 = v626;
    v161 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnchorStateDidFailToAnchorEvent(0);
    EventService.publisher<A>(for:on:)(v162, v613, v160, v162, v161);
    v163 = v619;
    v164 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v163;
    v625 = v164;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateDidFailToAnchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMR);
    v165 = v597;
    Publisher.compactMap<A>(_:)();

    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So33REAnchorStateDidFailToAnchorEventVG0G10Foundation0pL6EventsO0mnoP0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So33REAnchorStateDidFailToAnchorEventVG0G10Foundation0pL6EventsO0mnoP0VGGMR);
    v167 = *(v166 + 48);
    v168 = *(v166 + 52);
    v169 = swift_allocObject();
    (*(v598 + 32))(&v169[*(*v169 + *MEMORY[0x1E695BEE8] + 16)], v165, v599);
    *&v624 = v169;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO09DidFailToF0VGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO09DidFailToF0VGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v170 = v626;
    v171 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneEntityDidAddEvent(0);
    EventService.publisher<A>(for:on:)(v172, v613, v170, v172, v171);
    v173 = v619;
    v174 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v173;
    v625 = v174;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidAddEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMR);
    v175 = v594;
    Publisher.compactMap<A>(_:)();

    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24RESceneEntityDidAddEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24RESceneEntityDidAddEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v177 = *(v176 + 48);
    v178 = *(v176 + 52);
    v179 = swift_allocObject();
    (*(v595 + 32))(&v179[*(*v179 + *MEMORY[0x1E695BEE8] + 16)], v175, v596);
    *&v624 = v179;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE12DidAddEntityVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE12DidAddEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v180 = v626;
    v181 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneEntityDidActivateEvent(0);
    EventService.publisher<A>(for:on:)(v182, v613, v180, v182, v181);
    v183 = v619;
    v184 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v183;
    v625 = v184;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidActivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMR);
    v185 = v591;
    Publisher.compactMap<A>(_:)();

    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidActivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidActivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v187 = *(v186 + 48);
    v188 = *(v186 + 52);
    v189 = swift_allocObject();
    (*(v592 + 32))(&v189[*(*v189 + *MEMORY[0x1E695BEE8] + 16)], v185, v593);
    *&v624 = v189;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidActivateEntityVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidActivateEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v190 = v626;
    v191 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneEntityWillDeactivateEvent(0);
    EventService.publisher<A>(for:on:)(v192, v613, v190, v192, v191);
    v193 = v619;
    v194 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v193;
    v625 = v194;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityWillDeactivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMR);
    v195 = v588;
    Publisher.compactMap<A>(_:)();

    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneEntityWillDeactivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneEntityWillDeactivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v197 = *(v196 + 48);
    v198 = *(v196 + 52);
    v199 = swift_allocObject();
    (*(v589 + 32))(&v199[*(*v199 + *MEMORY[0x1E695BEE8] + 16)], v195, v590);
    *&v624 = v199;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE20WillDeactivateEntityVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE20WillDeactivateEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v200 = v626;
    v201 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneEntityWillRemoveEvent(0);
    EventService.publisher<A>(for:on:)(v202, v613, v200, v202, v201);
    v203 = v619;
    v204 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v203;
    v625 = v204;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityWillRemoveEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMR);
    v205 = v585;
    Publisher.compactMap<A>(_:)();

    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28RESceneEntityWillRemoveEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28RESceneEntityWillRemoveEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v207 = *(v206 + 48);
    v208 = *(v206 + 52);
    v209 = swift_allocObject();
    (*(v586 + 32))(&v209[*(*v209 + *MEMORY[0x1E695BEE8] + 16)], v205, v587);
    *&v624 = v209;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE16WillRemoveEntityVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE16WillRemoveEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v210 = v626;
    v211 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RESceneEntityDidReparentEvent(0);
    EventService.publisher<A>(for:on:)(v212, v613, v210, v212, v211);
    v213 = v619;
    v214 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v213;
    v625 = v214;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidReparentEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMR);
    v215 = v582;
    Publisher.compactMap<A>(_:)();

    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidReparentEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidReparentEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v217 = *(v216 + 48);
    v218 = *(v216 + 52);
    v219 = swift_allocObject();
    (*(v583 + 32))(&v219[*(*v219 + *MEMORY[0x1E695BEE8] + 16)], v215, v584);
    *&v624 = v219;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidReparentEntityVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidReparentEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v220 = v626;
    v221 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnimationSkeletalPoseUpdateCompleteEvent(0);
    EventService.publisher<A>(for:on:)(v222, v613, v220, v222, v221);
    v223 = v619;
    v224 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v223;
    v625 = v224;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationSkeletalPoseUpdateCompleteEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMR);
    v225 = v579;
    Publisher.compactMap<A>(_:)();

    v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAH15AnimationEventsO0G10FoundationE0lmnO0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAH15AnimationEventsO0G10FoundationE0lmnO0VGGMR);
    v227 = *(v226 + 48);
    v228 = *(v226 + 52);
    v229 = swift_allocObject();
    (*(v580 + 32))(&v229[*(*v229 + *MEMORY[0x1E695BEE8] + 16)], v225, v581);
    *&v624 = v229;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE26SkeletalPoseUpdateCompleteVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE26SkeletalPoseUpdateCompleteVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v230 = v626;
    v231 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v232, v613, v230, v232, v231);
    v233 = v619;
    v234 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v233;
    v625 = v234;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v235 = v576;
    Publisher.compactMap<A>(_:)();

    v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v237 = *(v236 + 48);
    v238 = *(v236 + 52);
    v239 = swift_allocObject();
    (*(v577 + 32))(&v239[*(*v239 + *MEMORY[0x1E695BEE8] + 16)], v235, v578);
    *&v624 = v239;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v240 = v626;
    v241 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnimationHasLoopedEvent(0);
    EventService.publisher<A>(for:on:)(v242, v613, v240, v242, v241);
    v243 = v619;
    v244 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v243;
    v625 = v244;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasLoopedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMR);
    v245 = v573;
    Publisher.compactMap<A>(_:)();

    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REAnimationHasLoopedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REAnimationHasLoopedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v247 = *(v246 + 48);
    v248 = *(v246 + 52);
    v249 = swift_allocObject();
    (*(v574 + 32))(&v249[*(*v249 + *MEMORY[0x1E695BEE8] + 16)], v245, v575);
    *&v624 = v249;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO14PlaybackLoopedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO14PlaybackLoopedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v250 = v626;
    v251 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v252, v613, v250, v252, v251);
    v253 = v619;
    v254 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v253;
    v625 = v254;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v255 = v570;
    Publisher.compactMap<A>(_:)();

    v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v257 = *(v256 + 48);
    v258 = *(v256 + 52);
    v259 = swift_allocObject();
    (*(v571 + 32))(&v259[*(*v259 + *MEMORY[0x1E695BEE8] + 16)], v255, v572);
    *&v624 = v259;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v260 = v626;
    v261 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAnimationHasStartedEvent(0);
    EventService.publisher<A>(for:on:)(v262, v613, v260, v262, v261);
    v263 = v619;
    v264 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v263;
    v625 = v264;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasStartedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMR);
    v265 = v567;
    Publisher.compactMap<A>(_:)();

    v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REAnimationHasStartedEventVGAH15AnimationEventsO0G10FoundationE08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REAnimationHasStartedEventVGAH15AnimationEventsO0G10FoundationE08PlaybackM0VGGMR);
    v267 = *(v266 + 48);
    v268 = *(v266 + 52);
    v269 = swift_allocObject();
    (*(v568 + 32))(&v269[*(*v269 + *MEMORY[0x1E695BEE8] + 16)], v265, v569);
    *&v624 = v269;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE15PlaybackStartedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE15PlaybackStartedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v270 = v626;
    v271 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RECollisionDidStartEventEx(0);
    EventService.publisher<A>(for:on:)(v272, v613, v270, v272, v271);
    v273 = v619;
    v274 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v273;
    v625 = v274;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStartEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    v275 = v505;
    Publisher.compactMap<A>(_:)();

    v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMR);
    v277 = *(v276 + 48);
    v278 = *(v276 + 52);
    v279 = swift_allocObject();
    (*(v506 + 32))(&v279[*(*v279 + *MEMORY[0x1E695BEE8] + 16)], v275, v507);
    *&v624 = v279;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v280 = v626;
    v281 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RECollisionDidUpdateEventEx(0);
    EventService.publisher<A>(for:on:)(v282, v613, v280, v282, v281);
    v283 = v619;
    v284 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v283;
    v625 = v284;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidUpdateEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMR);
    v285 = v508;
    Publisher.compactMap<A>(_:)();

    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27RECollisionDidUpdateEventExVGAH15CollisionEventsO7UpdatedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27RECollisionDidUpdateEventExVGAH15CollisionEventsO7UpdatedVGGMR);
    v287 = *(v286 + 48);
    v288 = *(v286 + 52);
    v289 = swift_allocObject();
    (*(v509 + 32))(&v289[*(*v289 + *MEMORY[0x1E695BEE8] + 16)], v285, v510);
    *&v624 = v289;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO7UpdatedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO7UpdatedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v290 = v626;
    v291 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for RECollisionDidStopEvent(0);
    EventService.publisher<A>(for:on:)(v292, v613, v290, v292, v291);
    v293 = v619;
    v294 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v293;
    v625 = v294;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStopEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMR);
    v295 = v511;
    Publisher.compactMap<A>(_:)();

    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23RECollisionDidStopEventVGAH15CollisionEventsO5EndedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23RECollisionDidStopEventVGAH15CollisionEventsO5EndedVGGMR);
    v297 = *(v296 + 48);
    v298 = *(v296 + 52);
    v299 = swift_allocObject();
    (*(v512 + 32))(&v299[*(*v299 + *MEMORY[0x1E695BEE8] + 16)], v295, v513);
    *&v624 = v299;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5EndedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5EndedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v300 = v626;
    v301 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REEntityPhysicsWillSimulateEvent(0);
    EventService.publisher<A>(for:on:)(v302, v613, v300, v302, v301);
    v303 = v619;
    v304 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v303;
    v625 = v304;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEntityPhysicsWillSimulateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMR);
    v305 = v514;
    Publisher.compactMap<A>(_:)();

    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32REEntityPhysicsWillSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32REEntityPhysicsWillSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMR);
    v307 = *(v306 + 48);
    v308 = *(v306 + 52);
    v309 = swift_allocObject();
    (*(v515 + 32))(&v309[*(*v309 + *MEMORY[0x1E695BEE8] + 16)], v305, v516);
    *&v624 = v309;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO12WillSimulateVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO12WillSimulateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v310 = v626;
    v311 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REEntityPhysicsDidSimulateEvent(0);
    EventService.publisher<A>(for:on:)(v312, v613, v310, v312, v311);
    v313 = v619;
    v314 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v313;
    v625 = v314;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEntityPhysicsDidSimulateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMR);
    v315 = v517;
    Publisher.compactMap<A>(_:)();

    v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So31REEntityPhysicsDidSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So31REEntityPhysicsDidSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMR);
    v317 = *(v316 + 48);
    v318 = *(v316 + 52);
    v319 = swift_allocObject();
    (*(v518 + 32))(&v319[*(*v319 + *MEMORY[0x1E695BEE8] + 16)], v315, v519);
    *&v624 = v319;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO11DidSimulateVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO11DidSimulateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v320 = v626;
    v321 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REMotionStateDidChangeEvent(0);
    EventService.publisher<A>(for:on:)(v322, v613, v320, v322, v321);
    v323 = v619;
    v324 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v323;
    v625 = v324;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REMotionStateDidChangeEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMR);
    v325 = v520;
    Publisher.compactMap<A>(_:)();

    v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REMotionStateDidChangeEventVG0G10Foundation06MotionL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REMotionStateDidChangeEventVG0G10Foundation06MotionL6EventsO0mN0VGGMR);
    v327 = *(v326 + 48);
    v328 = *(v326 + 52);
    v329 = swift_allocObject();
    (*(v521 + 32))(&v329[*(*v329 + *MEMORY[0x1E695BEE8] + 16)], v325, v522);
    *&v624 = v329;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17MotionStateEventsO9DidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17MotionStateEventsO9DidChangeVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v330 = v626;
    v331 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REOwnershipRequestEvent(0);
    EventService.publisher<A>(for:on:)(v332, v613, v330, v332, v331);
    v333 = v619;
    v334 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v335 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_allocObject();
    swift_weakInit();
    v624 = v333;
    v625 = v334;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipRequestEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    v336 = v523;
    Publisher.compactMap<A>(_:)();

    v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipRequestEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipRequestEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v338 = *(v337 + 48);
    v339 = *(v337 + 52);
    v340 = swift_allocObject();
    (*(v524 + 32))(&v340[*(*v340 + *MEMORY[0x1E695BEE8] + 16)], v336, v525);
    *&v624 = v340;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipRequestVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipRequestVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v341 = v626;
    v342 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REOwnershipResponseEvent(0);
    EventService.publisher<A>(for:on:)(v343, v613, v341, v343, v342);
    v344 = v619;
    v345 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v346 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_allocObject();
    swift_weakInit();
    v624 = v344;
    v625 = v345;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipResponseEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
    v347 = v526;
    Publisher.compactMap<A>(_:)();

    v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v349 = *(v348 + 48);
    v350 = *(v348 + 52);
    v351 = swift_allocObject();
    (*(v527 + 32))(&v351[*(*v351 + *MEMORY[0x1E695BEE8] + 16)], v347, v528);
    *&v624 = v351;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v352 = v626;
    v353 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REOwnershipChangedEvent(0);
    EventService.publisher<A>(for:on:)(v354, v613, v352, v354, v353);
    v355 = v619;
    v356 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v357 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_allocObject();
    swift_weakInit();
    v624 = v355;
    v625 = v356;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMR);
    v358 = v532;
    Publisher.compactMap<A>(_:)();

    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipChangedEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipChangedEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v360 = *(v359 + 48);
    v361 = *(v359 + 52);
    v362 = swift_allocObject();
    (*(v533 + 32))(&v362[*(*v362 + *MEMORY[0x1E695BEE8] + 16)], v358, v534);
    *&v624 = v362;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipChangedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipChangedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v363 = v626;
    v364 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REAudioPlayerDidCompleteEvent(0);
    EventService.publisher<A>(for:on:)(v365, v613, v363, v365, v364);
    v366 = v619;
    v367 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v366;
    v625 = v367;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAudioPlayerDidCompleteEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMR);
    v368 = v529;
    Publisher.compactMap<A>(_:)();

    v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAudioPlayerDidCompleteEventVGAH11AudioEventsO17PlaybackCompletedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAudioPlayerDidCompleteEventVGAH11AudioEventsO17PlaybackCompletedVGGMR);
    v370 = *(v369 + 48);
    v371 = *(v369 + 52);
    v372 = swift_allocObject();
    (*(v530 + 32))(&v372[*(*v372 + *MEMORY[0x1E695BEE8] + 16)], v368, v531);
    *&v624 = v372;
    v113 = &_s10RealityKit5SceneC9PublisherVy_AA11AudioEventsO17PlaybackCompletedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_AA11AudioEventsO17PlaybackCompletedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v373 = v626;
    v374 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REComponentDidAddEvent(0);
    (*(v374 + 8))(&v619, v375, v613, v556, v558, v375, v373, v374);
    v376 = v619;
    v377 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v376;
    v625 = v377;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidAddEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMR);
    v378 = v535;
    Publisher.compactMap<A>(_:)();

    v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So22REComponentDidAddEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So22REComponentDidAddEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v380 = *(v379 + 48);
    v381 = *(v379 + 52);
    v382 = swift_allocObject();
    (*(v536 + 32))(&v382[*(*v382 + *MEMORY[0x1E695BEE8] + 16)], v378, v537);
    *&v624 = v382;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO6DidAddVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO6DidAddVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v383 = v626;
    v384 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REComponentDidActivateEvent(0);
    (*(v384 + 8))(&v619, v385, v613, v556, v558, v385, v383, v384);
    v386 = v619;
    v387 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v386;
    v625 = v387;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidActivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMR);
    v388 = v538;
    Publisher.compactMap<A>(_:)();

    v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REComponentDidActivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REComponentDidActivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v390 = *(v389 + 48);
    v391 = *(v389 + 52);
    v392 = swift_allocObject();
    (*(v539 + 32))(&v392[*(*v392 + *MEMORY[0x1E695BEE8] + 16)], v388, v540);
    *&v624 = v392;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO11DidActivateVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO11DidActivateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v393 = v626;
    v394 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REComponentWillDeactivateEvent(0);
    (*(v394 + 8))(&v619, v395, v613, v556, v558, v395, v393, v394);
    v396 = v619;
    v397 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v396;
    v625 = v397;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentWillDeactivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMR);
    v398 = v541;
    Publisher.compactMap<A>(_:)();

    v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REComponentWillDeactivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REComponentWillDeactivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v400 = *(v399 + 48);
    v401 = *(v399 + 52);
    v402 = swift_allocObject();
    (*(v542 + 32))(&v402[*(*v402 + *MEMORY[0x1E695BEE8] + 16)], v398, v543);
    *&v624 = v402;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO14WillDeactivateVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO14WillDeactivateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v403 = v626;
    v404 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REComponentWillRemoveEvent(0);
    (*(v404 + 8))(&v619, v405, v613, v556, v558, v405, v403, v404);
    v406 = v619;
    v407 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v406;
    v625 = v407;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentWillRemoveEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMR);
    v408 = v544;
    Publisher.compactMap<A>(_:)();

    v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REComponentWillRemoveEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REComponentWillRemoveEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v410 = *(v409 + 48);
    v411 = *(v409 + 52);
    v412 = swift_allocObject();
    (*(v545 + 32))(&v412[*(*v412 + *MEMORY[0x1E695BEE8] + 16)], v408, v546);
    *&v624 = v412;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO10WillRemoveVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO10WillRemoveVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v413 = v626;
    v414 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REComponentDidChangeEvent(0);
    (*(v414 + 8))(&v619, v415, v613, v556, v558, v415, v413, v414);
    v416 = v619;
    v417 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    *(swift_allocObject() + 16) = v609;
    v624 = v416;
    v625 = v417;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidChangeEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMR);
    v418 = v547;
    Publisher.compactMap<A>(_:)();

    v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REComponentDidChangeEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REComponentDidChangeEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v420 = *(v419 + 48);
    v421 = *(v419 + 52);
    v422 = swift_allocObject();
    (*(v548 + 32))(&v422[*(*v422 + *MEMORY[0x1E695BEE8] + 16)], v418, v549);
    *&v624 = v422;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO9DidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO9DidChangeVGMR;
    goto LABEL_30;
  }

  if (swift_conformsToProtocol2() && v617)
  {
    Scene.eventService.getter(&v624);
    v423 = v626;
    v424 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AccessibilityActivateEvent_pMd, &_s17RealityFoundation26AccessibilityActivateEvent_pMR);
    v621 = 0;
    v619 = 0u;
    v620 = 0u;
    EventService.publisher<A>(for:on:)(v425, &v619, v423, v425, v424);
    outlined destroy of BodyTrackingComponent?(&v619, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v618 = v622;
    v426 = v623;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v618;
    v625 = v426;
    v427 = swift_allocObject();
    v428 = v614;
    *(v427 + 16) = v615;
    *(v427 + 24) = v428;
    v429 = partial apply for closure #33 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
LABEL_103:
    result = Scene.Publisher.init<A>(corePublisher:transform:)(&v624, v429, &v619);
    *v616 = v619;
    return result;
  }

  if (swift_conformsToProtocol2() && v617)
  {
    Scene.eventService.getter(&v624);
    v430 = v626;
    v431 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityIncrementEvent_pMd, &_s17RealityFoundation27AccessibilityIncrementEvent_pMR);
    v621 = 0;
    v619 = 0u;
    v620 = 0u;
    EventService.publisher<A>(for:on:)(v432, &v619, v430, v432, v431);
    outlined destroy of BodyTrackingComponent?(&v619, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v618 = v622;
    v433 = v623;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v618;
    v625 = v433;
    v434 = swift_allocObject();
    v435 = v614;
    *(v434 + 16) = v615;
    *(v434 + 24) = v435;
    v429 = partial apply for closure #34 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v617)
  {
    Scene.eventService.getter(&v624);
    v436 = v626;
    v437 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityDecrementEvent_pMd, &_s17RealityFoundation27AccessibilityDecrementEvent_pMR);
    v621 = 0;
    v619 = 0u;
    v620 = 0u;
    EventService.publisher<A>(for:on:)(v438, &v619, v436, v438, v437);
    outlined destroy of BodyTrackingComponent?(&v619, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v618 = v622;
    v439 = v623;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v618;
    v625 = v439;
    v440 = swift_allocObject();
    v441 = v614;
    *(v440 + 16) = v615;
    *(v440 + 24) = v441;
    v429 = partial apply for closure #35 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v617)
  {
    Scene.eventService.getter(&v624);
    v442 = v626;
    v443 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30AccessibilityCustomActionEvent_pMd, &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR);
    v621 = 0;
    v619 = 0u;
    v620 = 0u;
    EventService.publisher<A>(for:on:)(v444, &v619, v442, v444, v443);
    outlined destroy of BodyTrackingComponent?(&v619, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v618 = v622;
    v445 = v623;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v618;
    v625 = v445;
    v446 = swift_allocObject();
    v447 = v614;
    *(v446 + 16) = v615;
    *(v446 + 24) = v447;
    v429 = partial apply for closure #36 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v617)
  {
    Scene.eventService.getter(&v624);
    v448 = v626;
    v449 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd, &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR);
    v621 = 0;
    v619 = 0u;
    v620 = 0u;
    EventService.publisher<A>(for:on:)(v450, &v619, v448, v450, v449);
    outlined destroy of BodyTrackingComponent?(&v619, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v618 = v622;
    v451 = v623;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v618;
    v625 = v451;
    v452 = swift_allocObject();
    v453 = v614;
    *(v452 + 16) = v615;
    *(v452 + 24) = v453;
    v429 = partial apply for closure #37 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v454 = v626;
    v455 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REVideoPlayerContentTypeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v456, v613, v454, v456, v455);
    v457 = v619;
    v458 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v457;
    v625 = v458;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerContentTypeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMR);
    v459 = v550;
    Publisher.compactMap<A>(_:)();

    v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerContentTypeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerContentTypeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMR);
    v461 = *(v460 + 48);
    v462 = *(v460 + 52);
    v463 = swift_allocObject();
    (*(v551 + 32))(&v463[*(*v463 + *MEMORY[0x1E695BEE8] + 16)], v459, v552);
    *&v624 = v463;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ContentTypeDidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ContentTypeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v464 = v626;
    v465 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REVideoPlayerVideoSizeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v466, v613, v464, v466, v465);
    v467 = v619;
    v468 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v467;
    v625 = v468;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoSizeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMR);
    v469 = v553;
    Publisher.compactMap<A>(_:)();

    v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So34REVideoPlayerVideoSizeChangedEventVG0G10Foundation0mL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So34REVideoPlayerVideoSizeChangedEventVG0G10Foundation0mL6EventsO0mN9DidChangeVGGMR);
    v471 = *(v470 + 48);
    v472 = *(v470 + 52);
    v473 = swift_allocObject();
    (*(v554 + 32))(&v473[*(*v473 + *MEMORY[0x1E695BEE8] + 16)], v469, v555);
    *&v624 = v473;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F13SizeDidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F13SizeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v474 = v626;
    v475 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REVideoPlayerViewingModeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v476, v613, v474, v476, v475);
    v477 = v619;
    v478 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v477;
    v625 = v478;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerViewingModeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMR);
    v479 = v557;
    Publisher.compactMap<A>(_:)();

    v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerViewingModeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerViewingModeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMR);
    v481 = *(v480 + 48);
    v482 = *(v480 + 52);
    v483 = swift_allocObject();
    (*(v559 + 32))(&v483[*(*v483 + *MEMORY[0x1E695BEE8] + 16)], v479, v560);
    *&v624 = v483;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ViewingModeDidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ViewingModeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v624);
    v484 = v626;
    v485 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
    EventService.publisher<A>(for:on:)(v486, v613, v484, v486, v485);
    v487 = v619;
    v488 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v487;
    v625 = v488;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    v489 = v561;
    Publisher.compactMap<A>(_:)();

    v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mnO9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mnO9DidChangeVGGMR);
    v491 = *(v490 + 48);
    v492 = *(v490 + 52);
    v493 = swift_allocObject();
    (*(v562 + 32))(&v493[*(*v493 + *MEMORY[0x1E695BEE8] + 16)], v489, v563);
    *&v624 = v493;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F25ReceiverEndpointDidChangeVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F25ReceiverEndpointDidChangeVGMR;
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    Scene.eventService.getter(&v624);
    v494 = v626;
    v495 = v627;
    __swift_project_boxed_opaque_existential_1(&v624, v626);
    type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
    EventService.publisher<A>(for:on:)(v496, v613, v494, v496, v495);
    v497 = v619;
    v498 = v620;
    __swift_destroy_boxed_opaque_existential_1(&v624);
    v624 = v497;
    v625 = v498;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    v499 = v564;
    Publisher.compactMap<A>(_:)();

    v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mno3DidP0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mno3DidP0VGGMR);
    v501 = *(v500 + 48);
    v502 = *(v500 + 52);
    v503 = swift_allocObject();
    (*(v565 + 32))(&v503[*(*v503 + *MEMORY[0x1E695BEE8] + 16)], v499, v566);
    *&v624 = v503;
    v113 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F26ReceiverEndpointDidChangedVGMd;
    v114 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F26ReceiverEndpointDidChangedVGMR;
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(v113, v114);
  type metadata accessor for Scene.Publisher();
  return swift_dynamicCast();
}

uint64_t closure #1 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t Scene.Publisher.init<A>(corePublisher:transform:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  type metadata accessor for Scene.CorePublisher();
  swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.CompactMap();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = *(a1 + 2);
  if (v15)
  {
    v20 = *a1;
    v21 = v15;
    Publisher.compactMap<A>(_:)();

    (*(v5 + 32))(v14, v11, v4);
    (*(v5 + 16))(v8, v14, v4);
    swift_getWitnessTable();
    v16 = AnyPublisher.init<A>(_:)();

    result = (*(v5 + 8))(v14, v4);
  }

  else
  {

    v16 = 0;
  }

  *v19 = v16;
  return result;
}

uint64_t closure #2 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = v3;
  if (!result)
  {
    v5 = 0.0;
  }

  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t closure #3 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t closure #4 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = REEntityIsNonHiddenAndInHierarchy();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v7 = swift_dynamicCastClassUnconditional();
    goto LABEL_4;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v8 = specialized static Entity.entityInfoType(_:)();
    if (v8)
    {
      v2 = (*(v8 + 232))();
      v9 = v2[2];

      MEMORY[0x1C68F9740](v9, 0);
      v2[2] = v4;
      MEMORY[0x1C68F9740](v4, v2);

LABEL_8:
      v10 = *v2;
      result = swift_conformsToProtocol2();
      if (result)
      {
        *a2 = v5;
        a2[1] = v2;
        a2[2] = result;
        return result;
      }

      if (one-time initialization token for ecsCoreLogger == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    v7 = makeEntity(for:)(v4);
LABEL_4:
    v2 = v7;
    goto LABEL_8;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_11:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, ecsCoreLogger);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315394;
    v16 = v2[2];
    REEntityGetName();
    v17 = String.init(cString:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = v2[2];
    LocalId = REEntityGetLocalId();

    *(v14 + 14) = LocalId;

    _os_log_impl(&dword_1C1358000, v12, v13, "AnchoredStateChanged event was not delivered because '%s' (%llx) does not conform to HasAnchoring", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C6902A30](v15, -1, -1);
    MEMORY[0x1C6902A30](v14, -1, -1);
  }

  else
  {
  }

LABEL_14:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t closure #5 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    v6 = 0;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v6;
    return result;
  }

  if (!REEntityGetSwiftObject())
  {
    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = specialized static Entity.entityInfoType(_:)();
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v8);

      result = v8;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = makeEntity(for:)(v3);
      if (v4)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
  if (!v4)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_11:
  if (v4 == 1)
  {
    v6 = 1;
    goto LABEL_13;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #6 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    v6 = 0;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v6;
    return result;
  }

  if (!REEntityGetSwiftObject())
  {
    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = specialized static Entity.entityInfoType(_:)();
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v8);

      result = v8;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = makeEntity(for:)(v3);
      if (v4)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
  if (!v4)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_11:
  if (v4 == 1)
  {
    v6 = 1;
    goto LABEL_13;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #7 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    LOBYTE(v6) = 0;
LABEL_10:
    *a2 = result;
    *(a2 + 8) = v6;
    return result;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
    if (v4 >= 4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v7 = specialized static Entity.entityInfoType(_:)();
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v8);

      result = v8;
      if (v4 < 4)
      {
LABEL_9:
        v6 = 0x2010003u >> (8 * v4);
        goto LABEL_10;
      }
    }

    else
    {
      result = makeEntity(for:)(v3);
      if (v4 < 4)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #8 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    goto LABEL_5;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_5:
    *a2 = result;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v5 = specialized static Entity.entityInfoType(_:)();
    if (v5)
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v6);

      result = v6;
    }

    else
    {
      result = makeEntity(for:)(v3);
    }

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t closure #12 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = REEntityIsNonHiddenAndInHierarchy();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_22;
      }

      v8 = specialized static Entity.entityInfoType(_:)();
      if (v8)
      {
        v7 = (*(v8 + 232))();
        v9 = *(v7 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v7 + 16) = v4;
        MEMORY[0x1C68F9740](v4, v7);

LABEL_10:
        v10 = *(v7 + 16);
        if (REIsEntityHidden())
        {

LABEL_12:
          *a2 = 0;
          a2[1] = 0;
          return result;
        }

        goto LABEL_13;
      }

      v6 = makeEntity(for:)(v4);
    }

    v7 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_13:
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_19:
    *a2 = result;
    a2[1] = v7;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v11 = specialized static Entity.entityInfoType(_:)();
    if (v11)
    {
      v12 = (*(v11 + 232))();
      v13 = *(v12 + 16);

      MEMORY[0x1C68F9740](v13, 0);
      *(v12 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v12);

      result = v12;
    }

    else
    {
      result = makeEntity(for:)(v3);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t *closure #14 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v4 = result[1];
    v5 = *result;
    result = REEntityIsNonHiddenAndInHierarchy();
    if (!result)
    {
      v8 = 0;
LABEL_11:
      *a2 = v8;
      return result;
    }

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
      goto LABEL_5;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v9 = specialized static Entity.entityInfoType(_:)();
      if (v9)
      {
        v7 = (*(v9 + 232))();
        v10 = *(v7 + 16);

        MEMORY[0x1C68F9740](v10, 0);
        *(v7 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v7);

        goto LABEL_10;
      }

      v6 = makeEntity(for:)(v2);
LABEL_5:
      v7 = v6;
LABEL_10:
      type metadata accessor for AnimationPlaybackController();
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      swift_weakInit();
      *(v8 + 16) = v4;
      swift_weakAssign();
      v11 = *(v7 + 16);
      *(v8 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v7 + 16));
      *(v8 + 24) = Hasher._finalize()();

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *closure #17 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v4 = result[1];
    v5 = *result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
      goto LABEL_4;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v8 = specialized static Entity.entityInfoType(_:)();
      if (v8)
      {
        v7 = (*(v8 + 232))();
        v9 = *(v7 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v7 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v7);

        goto LABEL_8;
      }

      v6 = makeEntity(for:)(v2);
LABEL_4:
      v7 = v6;
LABEL_8:
      type metadata accessor for AnimationPlaybackController();
      v10 = swift_allocObject();
      *(v10 + 40) = 0;
      swift_weakInit();
      *(v10 + 16) = v4;
      swift_weakAssign();
      v11 = *(v7 + 16);
      *(v10 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v7 + 16));
      *(v10 + 24) = Hasher._finalize()();

      *a2 = v10;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #18 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*result)
  {
    goto LABEL_42;
  }

  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  result = RECollisionObjectGetUserData();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v3)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  result = RECollisionObjectGetUserData();
  if (result < 0)
  {
    goto LABEL_38;
  }

  v7 = result;
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v8 = swift_dynamicCastClassUnconditional();
LABEL_9:
    v9 = v8;
    goto LABEL_13;
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = specialized static Entity.entityInfoType(_:)();
  if (!v10)
  {
    v8 = makeEntity(for:)(v6);
    goto LABEL_9;
  }

  v9 = (*(v10 + 232))();
  v11 = *(v9 + 16);

  MEMORY[0x1C68F9740](v11, 0);
  *(v9 + 16) = v6;
  MEMORY[0x1C68F9740](v6, v9);

LABEL_13:
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v12 = swift_dynamicCastClassUnconditional();
    goto LABEL_15;
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    goto LABEL_41;
  }

  v14 = specialized static Entity.entityInfoType(_:)();
  if (v14)
  {
    v13 = (*(v14 + 232))();
    v15 = *(v13 + 16);

    MEMORY[0x1C68F9740](v15, 0);
    *(v13 + 16) = v7;
    MEMORY[0x1C68F9740](v7, v13);

    goto LABEL_19;
  }

  v12 = makeEntity(for:)(v7);
LABEL_15:
  v13 = v12;
LABEL_19:
  v16 = *(v9 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_25;
  }

  v18 = SceneNullable;
  v19 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v19)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v18);
  }

  v20 = Scene.physicsOrigin.getter();

  if (v20)
  {

    v38 = *&zmmword_1C1887630[48];
    v42 = *&zmmword_1C1887630[32];
    v40 = *&zmmword_1C1887630[16];
    v44 = *zmmword_1C1887630;
  }

  else
  {
LABEL_25:
    v21 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v9);
    *v22.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v21, 0);
    v42 = v23;
    v44 = v22;
    v38 = v25;
    v40 = v24;
  }

  v26 = *(v9 + 16);

  if (!REEntityGetComponent())
  {

    goto LABEL_30;
  }

  CollisionComponent.init(_:)(&v45);

  v27 = v46;

  if ((v27 & 4) == 0)
  {
LABEL_30:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v28 = REContactSetNeedsSwap();
  v29 = specialized static Scene.copyContacts(from:swapContacts:sceneFromPhysics:)(v44, v40, v42, v38, v4, v28);
LABEL_31:
  REContactSetGetAveragePosition();
  *&v31 = simd_float4x4.transform(position:)(v30, v44, v40, v42, v38);
  v39 = v31;
  REContactSetGetTotalImpulse();
  v43 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v32.f32[0]), v40, *v32.f32, 1), v42, v32, 2);
  v33 = vmulq_f32(v43, v43);
  v33.f32[0] = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
  if (v33.f32[0] <= 0.00000011921)
  {
    v33.f32[0] = 0.00000011921;
  }

  v41 = *v33.f32;
  v34 = vmulq_f32(v44, v44);
  v35 = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
  result = REContactSetGetMaxPenetrationDepth();
  *&v36 = vdiv_f32(*v43.f32, vdup_lane_s32(v41, 0));
  *(&v36 + 2) = v43.f32[2] / *v41.i32;
  HIDWORD(v36) = 0;
  *a2 = v9;
  *(a2 + 8) = v13;
  *(a2 + 16) = v39;
  *(a2 + 32) = v41.i32[0];
  *(a2 + 48) = v36;
  *(a2 + 64) = v35 * v37;
  *(a2 + 72) = v29;
  return result;
}

uint64_t closure #20 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_27;
  }

  v5 = a1[1];
  result = RECollisionObjectGetUserData();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    result = RECollisionObjectGetUserData();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = result;
      if (result)
      {
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v8 = swift_dynamicCastClassUnconditional();
          goto LABEL_9;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v10 = specialized static Entity.entityInfoType(_:)();
          if (v10)
          {
            v9 = (*(v10 + 232))();
            v11 = *(v9 + 16);

            MEMORY[0x1C68F9740](v11, 0);
            *(v9 + 16) = v6;
            MEMORY[0x1C68F9740](v6, v9);

            goto LABEL_13;
          }

          v8 = makeEntity(for:)(v6);
LABEL_9:
          v9 = v8;
LABEL_13:
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            result = swift_dynamicCastClassUnconditional();
LABEL_20:
            *a2 = v9;
            a2[1] = result;
            return result;
          }

          result = REEntityIsBeingDestroyed();
          if ((result & 1) == 0)
          {
            v12 = specialized static Entity.entityInfoType(_:)();
            if (v12)
            {
              v13 = (*(v12 + 232))();
              v14 = *(v13 + 16);

              MEMORY[0x1C68F9740](v14, 0);
              *(v13 + 16) = v7;
              MEMORY[0x1C68F9740](v7, v13);

              result = v13;
            }

            else
            {
              result = makeEntity(for:)(v7);
            }

            goto LABEL_20;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t closure #21 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!v4)
  {
    type metadata accessor for Entity();
    swift_allocObject();
    result = Entity.init()();
    v7 = result;
    v9 = 0;
LABEL_10:
    *a2 = v3;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    return result;
  }

  v5 = *(a1 + 8);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v6 = swift_dynamicCastClassUnconditional();
    goto LABEL_4;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v10 = specialized static Entity.entityInfoType(_:)();
    if (v10)
    {
      v7 = (*(v10 + 232))();
      v11 = *(v7 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v7 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v7);

      goto LABEL_9;
    }

    v6 = makeEntity(for:)(v4);
LABEL_4:
    v7 = v6;
LABEL_9:

    v9 = v7;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #23 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  result = RERigidBodyGetEntity();
  if (result)
  {
    v6 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      result = swift_dynamicCastClassUnconditional();
LABEL_9:
      *a2 = result;
      *(a2 + 8) = v5;
      return result;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v7 = specialized static Entity.entityInfoType(_:)();
      if (v7)
      {
        v8 = (*(v7 + 232))();
        v9 = *(v8 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v8 + 16) = v6;
        MEMORY[0x1C68F9740](v6, v8);

        result = v8;
      }

      else
      {
        result = makeEntity(for:)(v6);
      }

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #24 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v6 = result;
  swift_beginAccess();
  if (!*(v6 + 224))
  {

LABEL_8:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v7 = *(v6 + 232);
  v8 = *(v6 + 224);
  ObjectType = swift_getObjectType();
  v16 = v4;
  v10 = *(v7 + 32);
  swift_unknownObjectRetain();
  v10(&v17, &v16, ObjectType, v7);
  if (!v18)
  {
LABEL_17:
    outlined destroy of BodyTrackingComponent?(&v17, &_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with take of ForceEffectBase(&v17, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MutableBoxCySbGMd, &_s17RealityFoundation10MutableBoxCySbGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  if (!REEntityGetSwiftObject())
  {
    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      v14 = specialized static Entity.entityInfoType(_:)();
      if (v14)
      {
        v13 = (*(v14 + 232))();
        v15 = *(v13 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v13 + 16) = v3;
        MEMORY[0x1C68F9740](v3, v13);

        swift_unknownObjectRelease();
      }

      else
      {
        v13 = makeEntity(for:)(v3);

        swift_unknownObjectRelease();
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Entity();
  v13 = swift_dynamicCastClassUnconditional();
LABEL_13:
  result = outlined init with take of ForceEffectBase(v19, a2 + 8);
  *a2 = v13;
  *(a2 + 48) = partial apply for closure #1 in closure #24 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
  *(a2 + 56) = v12;
  return result;
}

uint64_t closure #25 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  v7 = result;
  swift_beginAccess();
  if (!*(v7 + 224))
  {

LABEL_6:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v8 = *(v7 + 232);
  v9 = *(v7 + 224);
  ObjectType = swift_getObjectType();
  v17 = v4;
  v11 = *(v8 + 32);
  swift_unknownObjectRetain();
  v11(v18, &v17, ObjectType, v8);
  if (v5 <= 1)
  {
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    if (v3)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v5) = 1;
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (REEntityGetSwiftObject())
  {

    swift_unknownObjectRelease();
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_17:
    *a2 = result;
    v16 = v18[1];
    *(a2 + 8) = v18[0];
    *(a2 + 24) = v16;
    *(a2 + 40) = v19;
    *(a2 + 48) = v5;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v13 = specialized static Entity.entityInfoType(_:)();
    if (v13)
    {
      v14 = (*(v13 + 232))(v13);
      v15 = *(v14 + 16);

      MEMORY[0x1C68F9740](v15, 0);
      *(v14 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v14);

      swift_unknownObjectRelease();

LABEL_16:
      result = v14;
      goto LABEL_17;
    }

LABEL_15:
    v14 = makeEntity(for:)(v3);

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t closure #26 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v6 = result;
  swift_beginAccess();
  if (!*(v6 + 224))
  {

LABEL_7:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v7 = *(v6 + 232);
  v8 = *(v6 + 224);
  ObjectType = swift_getObjectType();
  v15 = v4;
  v10 = *(v7 + 32);
  swift_unknownObjectRetain();
  result = v10(v16, &v15, ObjectType, v7);
  if (!v3)
  {
    goto LABEL_16;
  }

  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v11 = specialized static Entity.entityInfoType(_:)();
      if (v11)
      {
        v12 = (*(v11 + 232))(v11);
        v13 = *(v12 + 16);

        MEMORY[0x1C68F9740](v13, 0);
        *(v12 + 16) = v3;
        MEMORY[0x1C68F9740](v3, v12);

        swift_unknownObjectRelease();
      }

      else
      {
        v12 = makeEntity(for:)(v3);

        swift_unknownObjectRelease();
      }

      result = v12;
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
LABEL_13:
  *a2 = result;
  v14 = v16[1];
  *(a2 + 8) = v16[0];
  *(a2 + 24) = v14;
  *(a2 + 40) = v17;
  return result;
}

void closure #27 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized static AudioPlaybackController.audioPlaybackControllerForToken(token:)(*a1);
  if (!v3)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v4 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  *a2 = v3;
}

uint64_t closure #28 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = specialized static Scene.getPublicComponentType(_:)(a1[1]);
  if (!result || (v6 = result, v7 = v5, result = REEntityIsNonHiddenAndInHierarchy(), !result))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_10:
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v8 = specialized static Entity.entityInfoType(_:)();
    if (v8)
    {
      v9 = (*(v8 + 232))();
      v10 = *(v9 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v9 + 16) = v3;
      MEMORY[0x1C68F9740](v3, v9);

      result = v9;
    }

    else
    {
      result = makeEntity(for:)(v3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #33 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a5, v9 ^ 1u, 1, a2);
}

unsigned __int8 *closure #38 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(unsigned __int8 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = result[1];
  if (v2 > 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *result;
  if (v3 > 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4 | v2;
  return result;
}

__n128 closure #39 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = 0;
  return result;
}

uint64_t Scene.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  if (*v2)
  {
    v5 = *v2;
    v3 = *(a2 + 16);
    type metadata accessor for AnyPublisher();
    swift_getWitnessTable();
    return Publisher.subscribe<A>(_:)();
  }

  return result;
}

uint64_t Scene.CorePublisher.init(dispatcher:sourceObject:componentType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a3;
  a4[2] = result;
  *a4 = a2;
  return result;
}

uint64_t Scene.CorePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = type metadata accessor for Scene.CorePublisher.Inner();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v19 - v16;
  v19[1] = *(v3 + 16);
  (*(v6 + 16))(v9, a1, a3, v15);
  (*(v6 + 32))(v17, v9, a3);
  type metadata accessor for REEventDispatcher();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  (*(v13 + 8))(v17, v12);
}

uint64_t Scene.CorePublisher.Inner.combineIdentifier.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(*(a1 + 32) + 8);
  return dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
}

uint64_t Scene.CorePublisher.Inner.receive(subscription:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  return dispatch thunk of Subscriber.receive(subscription:)();
}

uint64_t Scene.CorePublisher.Inner.receive(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  return dispatch thunk of Subscriber.receive(_:)();
}

uint64_t Scene.CorePublisher.Inner.receive(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  return dispatch thunk of Subscriber.receive(completion:)();
}

unint64_t lazy protocol witness table accessor for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response()
{
  result = lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response;
  if (!lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType()
{
  result = lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType;
  if (!lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State()
{
  result = lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State;
  if (!lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State);
  }

  return result;
}

__n128 __swift_memcpy68_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Contact(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Contact(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 68) = v3;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CollisionEvents.Began(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CollisionEvents.Began(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10RealityKit21SynchronizationPeerID_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SynchronizationEvents.OwnershipResponse(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for SynchronizationEvents.OwnershipResponse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynchronizationEvents.OwnershipChanged(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for SynchronizationEvents.OwnershipChanged(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ManipulationEvents.WillBegin(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[5];
}

uint64_t initializeWithCopy for ManipulationEvents.WillBegin(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t *assignWithCopy for ManipulationEvents.WillBegin(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v8 = a2[4];
  v7 = a2[5];
  v9 = a1[5];
  a1[4] = v8;
  a1[5] = v7;

  return a1;
}

uint64_t *assignWithTake for ManipulationEvents.WillBegin(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v6;
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);

  return a1;
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

uint64_t destroy for ManipulationEvents.DidUpdateTransform(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

uint64_t initializeWithCopy for ManipulationEvents.DidUpdateTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *assignWithCopy for ManipulationEvents.DidUpdateTransform(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithTake for ManipulationEvents.DidUpdateTransform(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for ManipulationEvents.DidReachMovementThreshold(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ManipulationEvents.DidReachMovementThreshold(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ViewingModeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ImmersiveViewingModeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for VideoPlayerEvents.ImmersiveViewingModeDidChange(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlayerEvents.ContentTypeDidChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for VideoPlayerEvents.ContentTypeDidChange(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for ImagePresentationEvents.TransitionStarted(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
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

_WORD *storeEnumTagSinglePayload for ImagePresentationEvents.TransitionStarted(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t type metadata instantiation function for Scene.Publisher()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Scene.CorePublisher()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Scene.CorePublisher.Inner(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scene.CorePublisher.Inner(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for Scene.CorePublisher.Inner(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

char *specialized static Scene.copyContacts(from:swapContacts:sceneFromPhysics:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, char a6)
{
  v7 = REContactSetCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v7)
    {
      v60.columns[0] = a1;
      v60.columns[0].i32[3] = 0;
      v10 = vmulq_f32(a1, a1);
      v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
      v60.columns[2] = a3;
      v60.columns[2].i32[3] = 0;
      v60.columns[1] = a2;
      v60.columns[1].i32[3] = 0;
      v61 = __invert_f3(v60);
      v12 = 0;
      v13 = vzip1q_s32(v61.columns[0], v61.columns[1]);
      v13.i32[2] = v61.columns[2].i32[0];
      v50 = v13;
      v14 = vtrn2q_s32(v61.columns[0], v61.columns[1]);
      v14.i32[2] = v61.columns[2].i32[1];
      v61.columns[0] = vzip2q_s32(v61.columns[0], v61.columns[1]);
      v61.columns[0].i32[2] = v61.columns[2].i32[2];
      v48 = v61.columns[0];
      v49 = v14;
      do
      {
        if (a6)
        {
          REContactSetGetPositionBWorld();
          v16 = v15;
          HIDWORD(v16) = v44;
          v59 = v16;
          REContactSetGetNormal();
          *v18.f32 = vsub_f32(0, v17);
          v18.f32[2] = 0.0 - v19;
          v18.i32[3] = 0;
          v58 = v18;
          REContactSetGetImpulse();
          *v21.f32 = vsub_f32(0, v20);
          v21.f32[2] = 0.0 - v22;
          v21.i32[3] = 0;
          v52 = v21;
          v44 = HIDWORD(v59);
        }

        else
        {
          REContactSetGetPositionAWorld();
          v24 = v23;
          HIDWORD(v24) = v45;
          v59 = v24;
          REContactSetGetNormal();
          v26 = v25;
          v26.i32[3] = v46;
          v58 = v26;
          REContactSetGetImpulse();
          v28 = v27;
          v28.i32[3] = v47;
          v52 = v28;
          v46 = v58.i32[3];
          v45 = HIDWORD(v59);
        }

        REContactSetGetPenetrationDepth();
        v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, v52.f32[0]), a2, *v52.f32, 1), a3, v52, 2);
        v32 = vmulq_f32(v31, v31);
        v33 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
        if (v33 > 0.00000011921)
        {
          *v30.i32 = v33;
        }

        else
        {
          *v30.i32 = 0.00000011921;
        }

        v35 = *(v9 + 2);
        v34 = *(v9 + 3);
        if (v35 >= v34 >> 1)
        {
          v41 = v29;
          v53 = v31;
          v43 = v30;
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
          v30 = v43;
          v31 = v53;
          v29 = v41;
          v9 = v42;
        }

        v36 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a1, *&v59 + (v29 * v58.f32[0])), a2, *(&v59 + 1) + vmuls_lane_f32(v29, *v58.f32, 1)), a3, *(&v59 + 2) + vmuls_lane_f32(v29, v58, 2)), a4);
        *&v37 = vdivq_f32(v36, vdupq_laneq_s32(v36, 3)).u64[0];
        *(&v37 + 2) = v36.f32[2] / v36.f32[3];
        HIDWORD(v37) = 0;
        v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, v58.f32[0]), v49, *v58.f32, 1), v48, v58, 2);
        v38.i32[3] = v54;
        ++v12;
        *&v39 = vdiv_f32(*v31.f32, vdup_lane_s32(v30, 0));
        *(&v39 + 2) = v31.f32[2] / *v30.i32;
        HIDWORD(v39) = 0;
        *(v9 + 2) = v35 + 1;
        v40 = &v9[80 * v35];
        *(v40 + 2) = v37;
        *(v40 + 3) = v38;
        *(v40 + 16) = v30.i32[0];
        *(v40 + 5) = v39;
        *(v40 + 24) = v11 * v29;
      }

      while (v7 != v12);
    }

    return v9;
  }

  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentType10rootEntity8matchingAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgAA0K0CSgSSSgtAA0N0RzlFAA0C6EventsO6RenderVSgSo010REEngineDorN0VcfU1_TA_0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static Scene.getPublicComponentType(_:)(uint64_t a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 80, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  swift_beginAccess();
  v3 = *(v18 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 80 * v5;
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    v10 = *(v7 + 48);

    if (v10 == 2)
    {
      return v9;
    }
  }

  else
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v9 = *v14;
      v15 = v14[1];
      swift_endAccess();

      if (swift_conformsToProtocol2())
      {
        v16 = v9 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return v9;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  return 0;
}

uint64_t partial apply for closure #3 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t objectdestroy_502Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for AnchorStateEvents.DidAnchor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for AnchorStateEvents.DidAnchor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static __REAssetBundle.__init(url:assetService:materialDefinition:with:)@<X0>(void *a1@<X1>, char *a2@<X3>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v28 = 1;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v22[0] = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 32))(v7, v8);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(v10, v11);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = RERealityFileMountFileAtURL();

  if (v15)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v15, a1, ServiceLocatorForLegacyAPIWorkaround, v22, a3);
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 32))(v16, v17);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v3)
    {
      _StringGuts.grow(_:)(34);

      v18 = URL.path.getter();
      MEMORY[0x1C68F3410](v18);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v19 = 0xD00000000000001FLL;
      *(v19 + 8) = 0x80000001C18E1F00;
      *(v19 + 16) = 4;
      swift_willThrow();
    }
  }

  result = outlined destroy of __REAssetBundle.LoadOptions(v22);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x1E69E7CC0];
      while (a4 != v7)
      {
        v13 = v7;
        result = v8(&v12, &v13);
        if (v4)
        {

          return v5;
        }

        v9 = v12;
        if (v12)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
            v5 = result;
          }

          v11 = *(v5 + 16);
          v10 = *(v5 + 24);
          if (v11 >= v10 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
            v5 = result;
          }

          *(v5 + 16) = v11 + 1;
          *(v5 + 8 * v11 + 32) = v9;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C68F41F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v15 = v7;
        a1(&v14, &v15);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v14)
        {
          MEMORY[0x1C68F3650](v9);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v16;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

{
  return sub_1C136AB94(a1, a2, a3);
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = *v6;
    a1(&v16, &v18);
    if (v3)
    {
      break;
    }

    if (v16)
    {
      v15 = v16;
      v11 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      v9 = v15;
      if (v13 >= v12 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
        v9 = v15;
        v7 = v8;
      }

      v7[2] = v13 + 1;
      v10 = &v7[3 * v13];
      *(v10 + 2) = v9;
      v10[6] = v11;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t __REAssetBundle.sceneAsset(for:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v11 = 0;
  v12 = (v4 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v11;
  v14 = v5;
  v15 = v11;
  if (v5)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v18 = *(*(v6 + 48) + v17);
    v19 = *(*(v6 + 56) + v17);

    if (v18)
    {
      do
      {
        v20 = MEMORY[0x1C68FDE40](*(v19 + 16), *(a1 + 16));

        if (v20)
        {
          break;
        }

        v11 = v15;
        v5 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaDictionary.Iterator.next()())
        {
          goto LABEL_19;
        }

        type metadata accessor for __REAsset();
        swift_dynamicCast();
        v18 = v22;
        type metadata accessor for RESceneDescriptor();
        swift_dynamicCast();
        v19 = v22;
        v15 = v11;
        v16 = v5;
      }

      while (v22);
    }

LABEL_20:
    outlined consume of [String : AnimationResource].Iterator._Variant();
    return v18;
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
LABEL_19:
        v18 = 0;
        goto LABEL_20;
      }

      v14 = *(v3 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t __REAssetBundle.mainSceneAsset.getter()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v4 = *(v0 + 8);
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x1C68F41F0](0, v1);
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v1 + 32);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double __REAssetBundle.LoadOptions.init(queueOptions:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 81) = 0u;
  *(a2 + 97) = 1;
  *(a2 + 99) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *a2 = v2;
  return result;
}

uint64_t __REAssetBundle.init(bundle:entryName:serviceLocator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v48 = a2;
  v46 = a6;
  v56 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  outlined init with copy of __REAssetService(a4 + 120, v53);
  v15 = v54;
  v16 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v52[0] = *a5;
  __REAssetService.dispatchPredicate(for:)(v52, v15, v16, v14);
  __swift_destroy_boxed_opaque_existential_1(v53);
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a4 + 120, v53);
  swift_beginAccess();
  v17 = *(a4 + 16);
  v51 = 0;
  v18 = [a1 bundleIdentifier];
  if (!v18)
  {

    v31 = [a1 bundlePath];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = 3;
    swift_willThrow();
LABEL_8:

    goto LABEL_16;
  }

  v45 = a5;
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v54;
  v24 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v24 + 32))(v23, v24);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v25 = RERealityFileMountFileInBundle();

  if (v25)
  {

    a5 = v45;
    v26 = *(v45 + 15);
    if (v26)
    {
      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v28 = v26 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v28 = MajorVersionNumber;
      *(v28 + 8) = 1;
    }

    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v25, v53, v17, a5, v46);
    v29 = v54;
    v30 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v30 + 32))(v29, v30);
    RERealityFileUnmount();
    goto LABEL_8;
  }

  v36 = v47;
  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v51);
  if (v36)
  {
  }

  else
  {
    v37 = v51;
    if (v51)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v38 = v37;
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v49 = 0xD00000000000001FLL;
      v50 = 0x80000001C18E1F00;
      MEMORY[0x1C68F3410](v48, a3);

      MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
      MEMORY[0x1C68F3410](v20, v22);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v39 = v49;
      v40 = v50;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v41 = v39;
      *(v41 + 8) = v40;
      *(v41 + 16) = 4;
    }

    swift_willThrow();
  }

  a5 = v45;
LABEL_16:
  outlined destroy of __REAssetBundle.LoadOptions(a5);
  result = __swift_destroy_boxed_opaque_existential_1(v53);
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t one-time initialization function for __sdkBundleVersion()
{
  result = specialized static __REAssetBundle.frameworkVersion(key:)(0x656C646E75424643, 0xEF6E6F6973726556);
  static __REAssetBundle.__sdkBundleVersion = result;
  unk_1EBEA6938 = v1;
  return result;
}

uint64_t static __REAssetBundle.__sdkBundleVersion.getter()
{
  if (one-time initialization token for __sdkBundleVersion != -1)
  {
    swift_once();
  }

  v0 = static __REAssetBundle.__sdkBundleVersion;

  return v0;
}

uint64_t one-time initialization function for minimumWritingFormatVersion()
{
  result = RERealityFileWriterGetDefaultVersion();
  static __REAssetBundle.minimumWritingFormatVersion = result;
  return result;
}

uint64_t one-time initialization function for maximumReadingFormatVersion()
{
  result = RERealityFileWriterGetMaxVersion();
  static __REAssetBundle.maximumReadingFormatVersion = result;
  return result;
}

uint64_t one-time initialization function for defaultRealityFileVersionForWritePublicAPI()
{
  result = RERealityFileWriterGetDefaultVersionForWritePublicAPI();
  static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C506E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.Header.VersionInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __REAssetBundle.Header.VersionInfo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.Header.VersionInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.Header.VersionInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v13 = v15[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t __REAssetBundle.Header.VersionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV11VersionInfoV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __REAssetBundle.Header.versionInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 __REAssetBundle.Header.versionInfo.setter(__int128 *a1)
{
  v8 = a1[1];
  v9 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);

  result = v8;
  *v1 = v9;
  *(v1 + 16) = v8;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.Header.CodingKeys()
{
  if (*v0)
  {
    result = 0x69737265566E696DLL;
  }

  else
  {
    result = 0x496E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.Header.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973726576 && a2 == 0xEB000000006F666ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69737265566E696DLL && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.Header.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.Header.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.Header.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v17 = v1[2];
  v18 = v7;
  v10 = v1[4];
  v11 = v1[5];
  v15 = v1[6];
  v16 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v18;
  v22 = v8;
  v23 = v17;
  v24 = v9;
  v25 = v16;
  v26 = v11;
  v27 = 0;
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo();
  v13 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v13)
  {
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t __REAssetBundle.Header.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV6HeaderV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  if (one-time initialization token for minimumWritingFormatVersion != -1)
  {
    swift_once();
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v12 = v26;
  v17 = v25;
  v18 = v23;
  LOBYTE(v21) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  *a2 = v19;
  a2[1] = v14;
  v15 = v17;
  a2[2] = v18;
  a2[3] = v11;
  a2[4] = v15;
  a2[5] = v12;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

RealityKit::__REAssetIdentifier_optional __swiftcall __REAssetBundle.mainSceneIdentifier()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

BOOL static __REAssetBundle.QueueOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance __REAssetBundle.QueueOptions(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t __REAssetBundle.ExportOptions.AssetRemapping.rawAssetPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t __REAssetBundle.ExportOptions.AssetRemapping.replacementName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

RealityKit::__REAssetBundle::ExportOptions::AssetRemapping __swiftcall __REAssetBundle.ExportOptions.AssetRemapping.init(rawAssetPath:replacement:)(Swift::String rawAssetPath, Swift::String replacement)
{
  *v2 = rawAssetPath;
  v2[1] = replacement;
  result.replacementName = replacement;
  result.rawAssetPath = rawAssetPath;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.compressionLevel.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t __REAssetBundle.ExportOptions.compressionLevel.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void *__REAssetBundle.ExportOptions.progress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void __REAssetBundle.ExportOptions.__envelopeVersion.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 35);
  *a1 = *(v1 + 34);
  a1[1] = v2;
}

_BYTE *__REAssetBundle.ExportOptions.__envelopeVersion.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 34) = *result;
  *(v1 + 35) = v2;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.deploymentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 68);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 28) = v5;
  *(a1 + 24) = v6;
  return outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v2, v3);
}

__n128 __REAssetBundle.ExportOptions.deploymentTarget.setter(__n128 *a1)
{
  v10 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v5 = *(v1 + 64);
  v4 = v1 + 64;
  v6 = a1[1].n128_u8[12];
  v7 = *(v4 - 8);
  v8 = v5 | (*(v4 + 4) << 32);
  outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v4 - 24), *(v4 - 16));
  result = v10;
  *(v4 - 24) = v10;
  *(v4 - 8) = v2;
  *(v4 + 4) = v6;
  *v4 = v3;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.versionOverride.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t __REAssetBundle.ExportOptions.versionOverride.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.configurationSetNames.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.defaultConfigurationNames.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.sceneNamesToConfigurationSpecifications.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.assetsRemapping.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

double __REAssetBundle.ExportOptions.init(queueOptions:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 16777217;
  *(a2 + 40) = xmmword_1C18B7B50;
  *(a2 + 56) = 0;
  *(a2 + 68) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 81) = 0;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 1;
  *(a2 + 122) = 3;
  *a2 = v2;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.getVersioningDetails()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v1 == 5)
  {
    VersionFromDeploymentTarget = 0;
    if (*(v0 + 80))
    {
      return VersionFromDeploymentTarget;
    }

LABEL_20:
    VersionFromDeploymentTarget = v2;
    if (!v2)
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0;
      v12 = 1;
LABEL_23:
      *(v11 + 16) = v12;
      swift_willThrow();
      return VersionFromDeploymentTarget;
    }

    return VersionFromDeploymentTarget;
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64) | (*(v0 + 68) << 32);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v8 = *(v0 + 40);
      v9 = 2;
    }

    else
    {
      if (v1 != 3)
      {
        if (v1 == 4)
        {
          outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, 4uLL);
        }

        goto LABEL_16;
      }

      v8 = *(v0 + 40);
      v9 = 3;
    }

    outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v8, v9);
    goto LABEL_16;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, 1uLL);
    }
  }

  else
  {
    outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, 0);
  }

LABEL_16:
  String.utf8CString.getter();
  outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, v1);
  outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, v1);

  VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

  if ((v7 & 0x100000000) != 0)
  {
    if (v1 >= 5)
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v11 = v5;
      *(v11 + 8) = v1;
      v12 = 2;
      goto LABEL_23;
    }

    v10 = dword_1C18B8D00[v1];
  }

  outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v5, v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_20;
  }

  return VersionFromDeploymentTarget;
}

uint64_t __REAssetBundle.LoadOptions.materialDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 __REAssetBundle.LoadOptions.materialDefinition.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 16);

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  return result;
}

uint64_t __REAssetBundle.LoadOptions.aliasName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t __REAssetBundle.LoadOptions.aliasName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t __REAssetBundle.LoadOptions.contentRequest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of __REAssetBundle.LoadOptions.ContentRequest(v2, v3);
}

uint64_t __REAssetBundle.LoadOptions.contentRequest.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of __REAssetBundle.LoadOptions.ContentRequest(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

uint64_t __REAssetBundle.__MaterialDefinitionOverride.init(materialDefinition:serviceLocator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys()
{
  if (*v0)
  {
    result = 0x656D614E656C6966;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys()
{
  v1 = 0x656D614E656C6966;
  v2 = 0x656449656E656373;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x6D614E656E656373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
    v17 = *(v16 + 24);
    v20 = 2;
    type metadata accessor for UUID();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = *(v3 + *(v16 + 28));
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __REAssetBundle.AssetMap.SceneDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - v9;
  v11 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 24);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 56);
  v34 = v16;
  v19 = v14;
  v18(v14 + v16, 1, 1, v17);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys();
  v32 = v10;
  v21 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(v19 + v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v33 = v11;
    v22 = v30;
    v23 = v31;
    v39 = 0;
    *v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v19[1] = v24;
    v28[2] = v24;
    v38 = 1;
    v19[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v19[3] = v25;
    v37 = 2;
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v28[1] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Any?(v6, v19 + v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    v36 = 3;
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = *(v33 + 28);
    (*(v22 + 8))(v32, v23);
    *(v19 + v26) = v35;
    outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(v19, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(v19);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x656D614E656C6966;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656C6966 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E8FF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.AssetDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __REAssetBundle.AssetMap.AssetDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV0H10DescriptorV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v15 = 0;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v15 = 1;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __REAssetBundle.AssetMap.scenes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t __REAssetBundle.AssetMap.assets.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAssetBundle.AssetMap.CodingKeys()
{
  v1 = 0x737465737361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656E656373;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetBundle.AssetMap.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __REAssetBundle.AssetMap.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetBundle.AssetMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetBundle.AssetMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetBundle.AssetMap.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v12[3] = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
  lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A], &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor and conformance __REAssetBundle.AssetMap.SceneDescriptor);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
    lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __REAssetBundle.AssetMap.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
  v16 = 0;
  lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A], &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor and conformance __REAssetBundle.AssetMap.SceneDescriptor);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
  v16 = 1;
  lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v17;
  LOBYTE(v17) = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static __REAssetBundle.__init(sceneAssets:assetService:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v6);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v4, v6, v3, 0, a2);
}

uint64_t __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a2;
  if (!a4)
  {
    v5 = a2;
    if (one-time initialization token for __sdkBundleVersion != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_4;
  }

  v10 = a4;
  while (2)
  {
    type metadata accessor for RERealityFileHeader();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *a5 = v12;
    a5[1] = a1;
    outlined init with copy of __REAssetService(v7, (a5 + 2));
    if ((a3 & 0xC000000000000001) == 0)
    {
      v13 = *(a3 + 16);

      if (!(a1 >> 62))
      {
        goto LABEL_14;
      }

LABEL_52:
      if (v13 != __CocoaSet.count.getter())
      {
        v14 = __CocoaSet.count.getter();
        if (v14)
        {
          goto LABEL_16;
        }
      }

LABEL_54:

LABEL_56:
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      a5[7] = a3;
      return result;
    }

    v13 = __CocoaSet.count.getter();

    if (a1 >> 62)
    {
      goto LABEL_52;
    }

LABEL_14:
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 == v14 || !v14)
    {
      goto LABEL_54;
    }

LABEL_16:
    v39 = v7;
    v40 = a5;
    v15 = 0;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = a1 & 0xC000000000000001;
    while (v42)
    {
      v5 = MEMORY[0x1C68F41F0](v15, a1);
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_57;
      }

LABEL_26:
      if ((a3 & 0xC000000000000001) != 0)
      {

        v18 = __CocoaDictionary.lookup(_:)();

        if (v18)
        {
          type metadata accessor for RESceneDescriptor();
          swift_dynamicCast();
          if (v43)
          {
            goto LABEL_33;
          }
        }
      }

      else if (*(a3 + 16))
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if (v20)
        {
          v21 = *(*(a3 + 56) + 8 * v19);

          if (v21)
          {
LABEL_33:

            goto LABEL_19;
          }
        }
      }

      v22 = RESceneDescriptorCreateFromParams();
      type metadata accessor for RESceneDescriptor();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      if ((a3 & 0xC000000000000001) != 0)
      {
        if (a3 < 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = a3 & 0xFFFFFFFFFFFFFF8;
        }

        v25 = __CocoaSet.count.getter();
        if (__OFADD__(v25, 1))
        {
          goto LABEL_59;
        }

        a3 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v24, v25 + 1);
      }

      v26 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = a3;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v30 = *(a3 + 16);
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_58;
      }

      a1 = v28;
      if (*(a3 + 24) >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          a3 = v43;
          if ((v28 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          a3 = v43;
          if ((a1 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if ((a1 & 1) != (v34 & 1))
        {
          goto LABEL_65;
        }

        v29 = v33;
        a3 = v43;
        if ((a1 & 1) == 0)
        {
LABEL_47:
          *(a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
          *(*(a3 + 48) + 8 * v29) = v5;
          *(*(a3 + 56) + 8 * v29) = v23;
          v35 = *(a3 + 16);
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_61;
          }

          *(a3 + 16) = v37;
          goto LABEL_18;
        }
      }

      v16 = *(a3 + 56);
      v17 = *(v16 + 8 * v29);
      *(v16 + 8 * v29) = v23;

LABEL_18:
      a1 = v26;
LABEL_19:
      ++v15;
      if (a5 == v14)
      {

        v7 = v39;
        a5 = v40;
        goto LABEL_56;
      }
    }

    if (v15 >= *(v41 + 16))
    {
      goto LABEL_60;
    }

    v5 = *(a1 + 8 * v15 + 32);

    a5 = (v15 + 1);
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_26;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
LABEL_4:
    __REAssetBundle.ExportOptions.PlatformOS.init(rawValue:)(5459817, 0xE300000000000000, &v43);
    if (v44 >= 6)
    {
      outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(v43, v44);
    }

    else
    {
      v11 = dword_1C18B8D14[v44];
    }

    if (one-time initialization token for minimumWritingFormatVersion != -1)
    {
      swift_once();
    }

    if (static __REAssetBundle.minimumWritingFormatVersion < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (static __REAssetBundle.minimumWritingFormatVersion <= 0x7FFFFFFF)
    {
      String.utf8CString.getter();
      String.utf8CString.getter();
      v10 = RERealityFileHeaderCreateFromVersionInfo();

      v7 = v5;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_65:
  type metadata accessor for __REAsset();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static __REAssetBundle.__init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a2;
  v72 = a4;
  v73 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v71 - v7;
  v85 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  v76 = *(v85 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v71 - v19);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v22 = *(a3 + 64);
  v80 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v74 = (v23 + 63) >> 6;
  v77 = a3;

  v26 = 0;
  v78 = v17;
  v79 = v8;
  v81 = v20;
  v82 = v11;
  while (v25)
  {
    v29 = v26;
LABEL_16:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = *(*(v77 + 48) + 8 * v33);
    v35 = v75;
    outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(*(v77 + 56) + *(v76 + 72) * v33, v75);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
    v37 = *(v36 + 48);
    *v17 = v34;
    outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(v35, v17 + v37);
    (*(*(v36 - 8) + 56))(v17, 0, 1, v36);

    v20 = v81;
    v11 = v82;
LABEL_17:
    outlined init with take of (key: __REAsset, value: __REAssetBundle.AssetMap.SceneDescriptor)?(v17, v20);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
    if ((*(*(v38 - 8) + 48))(v20, 1, v38) == 1)
    {

      outlined init with copy of __REAssetService(v71, v87);

      return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v69, v87, v21, 0, v72);
    }

    v86 = *v20;
    outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(v20 + *(v38 + 48), v11);
    v39 = v11;
    v41 = *v11;
    v40 = v11[1];
    v42 = v39[2];
    v83 = v39[3];
    v84 = v42;
    v43 = v79;
    outlined init with copy of [String : String](v39 + *(v85 + 24), v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v43, 1, v44) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      UUID.uuidString.getter();
      (*(v45 + 8))(v43, v44);
    }

    String.utf8CString.getter();
    String.utf8CString.getter();
    String.utf8CString.getter();

    v46 = RESceneDescriptorCreateFromParams();

    v11 = v82;
    v47 = *(v82 + *(v85 + 28));
    v17 = v78;
    if (v47)
    {
      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = (v47 + 48);
        while (1)
        {
          v50 = *(v49 - 2);
          if (v50 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v50 > 0x7FFFFFFF)
          {
            goto LABEL_46;
          }

          v51 = *(v49 - 1);
          v52 = *v49;
          String.utf8CString.getter();
          RESceneDescriptorAddSceneCompatibilityVariant();

          v49 += 3;
          if (!--v48)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

LABEL_27:
    type metadata accessor for RESceneDescriptor();
    v53 = swift_allocObject();
    *(v53 + 16) = v46;
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v54 = v21;
      }

      else
      {
        v54 = v21 & 0xFFFFFFFFFFFFFF8;
      }

      v55 = __CocoaSet.count.getter();
      if (__OFADD__(v55, 1))
      {
        goto LABEL_49;
      }

      v21 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v54, v55 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87[0] = v21;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)();
    v59 = *(v21 + 16);
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_48;
    }

    v63 = v58;
    if (*(v21 + 24) < v62)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
      v57 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      v21 = v87[0];
      if (v63)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v68 = v57;
    specialized _NativeDictionary.copy()();
    v57 = v68;
    v21 = v87[0];
    if (v63)
    {
LABEL_4:
      v27 = *(v21 + 56);
      v28 = *(v27 + 8 * v57);
      *(v27 + 8 * v57) = v53;

      goto LABEL_5;
    }

LABEL_39:
    *(v21 + 8 * (v57 >> 6) + 64) |= 1 << v57;
    *(*(v21 + 48) + 8 * v57) = v86;
    *(*(v21 + 56) + 8 * v57) = v53;
    v65 = *(v21 + 16);
    v61 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v61)
    {
      goto LABEL_50;
    }

    *(v21 + 16) = v66;
LABEL_5:
    outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(v11);
    v20 = v81;
  }

  if (v74 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v74;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v74)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetMR);
      (*(*(v67 - 8) + 56))(v17, 1, 1, v67);
      v25 = 0;
      v26 = v31;
      goto LABEL_17;
    }

    v25 = *(v80 + 8 * v29);
    ++v26;
    if (v25)
    {
      v26 = v29;
      goto LABEL_16;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  type metadata accessor for __REAsset();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __REAssetBundle.init(url:assetService:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v31 = 1;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v25[0] = v8;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 32))(v9, v10);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 32))(v12, v13);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = RERealityFileMountFileAtURL();

  if (v17)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v17, a2, ServiceLocatorForLegacyAPIWorkaround, v25, a4);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 32))(v18, v19);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v4)
    {
      _StringGuts.grow(_:)(34);

      v20 = URL.path.getter();
      MEMORY[0x1C68F3410](v20);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v21 = 0xD00000000000001FLL;
      *(v21 + 8) = 0x80000001C18E1F00;
      *(v21 + 16) = 4;
      swift_willThrow();
    }
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 8))(a1, v22);
  outlined destroy of __REAssetBundle.LoadOptions(v25);
  result = __swift_destroy_boxed_opaque_existential_1(a2);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void static __REAssetBundle.__init(url:assetService:_:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 32))(v6, v7);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v9 = ServiceLocatorForLegacyAPIWorkaround;
  if (!*(a2 + 88))
  {
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 32))(v17, v18);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v16 = RERealityFileMountFileAtURL();

    if (v16)
    {
      goto LABEL_5;
    }

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v3)
    {
      goto LABEL_13;
    }

LABEL_12:
    _StringGuts.grow(_:)(34);

    v27 = URL.path.getter();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    *(v28 + 8) = 0x80000001C18E1F00;
    *(v28 + 16) = 4;
    swift_willThrow();
    goto LABEL_13;
  }

  v30 = ServiceLocatorForLegacyAPIWorkaround;
  v10 = *(a2 + 80);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 32))(v11, v12);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  String.utf8CString.getter();
  v16 = RERealityFileMountFileAtURLWithAliasName();

  if (!v16)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = v30;
LABEL_5:
  v22 = *(a2 + 120);
  if (v22)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v24 = v22 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v24 = MajorVersionNumber;
    *(v24 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v16, a1, v9, a2, a3);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 32))(v25, v26);
  RERealityFileUnmount();
LABEL_13:
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t static __REAssetBundle.__init(url:serviceLocator:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  outlined init with copy of __REAssetService(a1 + 120, v30);
  swift_beginAccess();
  v7 = *(a1 + 16);
  if (!*(a2 + 88))
  {
    v15 = v31;
    v16 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v16 + 32))(v15, v16);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v14 = RERealityFileMountFileAtURL();

    if (v14)
    {
      goto LABEL_5;
    }

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v3)
    {
      goto LABEL_13;
    }

LABEL_12:
    _StringGuts.grow(_:)(34);

    v25 = URL.path.getter();
    MEMORY[0x1C68F3410](v25);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v26 = 0xD00000000000001FLL;
    *(v26 + 8) = 0x80000001C18E1F00;
    *(v26 + 16) = 4;
    swift_willThrow();
    goto LABEL_13;
  }

  v29 = *(a1 + 16);
  v8 = *(a2 + 80);
  v10 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v9 + 32))(v10, v9);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  String.utf8CString.getter();
  v14 = RERealityFileMountFileAtURLWithAliasName();

  if (!v14)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = v29;
LABEL_5:
  v20 = *(a2 + 120);
  if (v20)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v22 = v20 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v22 = MajorVersionNumber;
    *(v22 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v14, v30, v7, a2, a3);
  v23 = v31;
  v24 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v24 + 32))(v23, v24);
  RERealityFileUnmount();
LABEL_13:
  result = __swift_destroy_boxed_opaque_existential_1(v30);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.__init(bundle:entryName:assetService:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  (*(v13 + 32))(v12, v13);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v15 = [a1 bundleIdentifier];
  if (!v15)
  {
    v29 = [a1 bundlePath];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    v34 = 3;
LABEL_7:
    *(v33 + 16) = v34;
    result = swift_willThrow();
    goto LABEL_10;
  }

  v36 = ServiceLocatorForLegacyAPIWorkaround;
  v37 = a5;
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v21 = a4[3];
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v21);
  (*(v20 + 32))(v21, v20);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v22 = RERealityFileMountFileInBundle();

  if (!v22)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v6)
    {

      goto LABEL_10;
    }

    _StringGuts.grow(_:)(48);

    MEMORY[0x1C68F3410](a2, a3);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v17, v19);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    *(v33 + 8) = 0x80000001C18E1F00;
    v34 = 4;
    goto LABEL_7;
  }

  v23 = *(v37 + 120);
  if (v23)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v25 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v25 = MajorVersionNumber;
    *(v25 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v22, a4, v36, v37, a6);
  v26 = a4[3];
  v27 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v26);
  (*(v27 + 32))(v26, v27);
  result = RERealityFileUnmount();
LABEL_10:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.__init(bundle:entryName:serviceLocator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  outlined init with copy of __REAssetService(a4 + 120, v37);
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = [a1 bundleIdentifier];
  if (!v14)
  {
    v27 = [a1 bundlePath];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 3;
LABEL_7:
    swift_willThrow();
    goto LABEL_10;
  }

  v35 = v13;
  v36 = a6;
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v38;
  v20 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v20 + 32))(v19, v20);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v21 = RERealityFileMountFileInBundle();

  if (!v21)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (v6)
    {

      goto LABEL_10;
    }

    _StringGuts.grow(_:)(48);

    MEMORY[0x1C68F3410](a2, a3);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v16, v18);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v34 = 0xD00000000000001FLL;
    *(v34 + 8) = 0x80000001C18E1F00;
    *(v34 + 16) = 4;
    goto LABEL_7;
  }

  v22 = *(a5 + 120);
  if (v22)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v24 = v22 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v24 = MajorVersionNumber;
    *(v24 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v21, v37, v35, a5, v36);
  v25 = v38;
  v26 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v26 + 32))(v25, v26);
  RERealityFileUnmount();
LABEL_10:
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __REAssetBundle.init(url:assetService:downsamplingStrategy:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, _OWORD *a5@<X8>)
{
  v47 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a4;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v53[0] = v14;
  __REAssetService.dispatchPredicate(for:)(v53, v15, v16, v13);
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
  }

  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v56 = 1;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v53[0] = v14;
  outlined assign with copy of __DownsamplingStrategy?(a3, &v55[8]);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v18 + 32))(v17, v18);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v51 = 0;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  (*(v21 + 32))(v20, v21);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = RERealityFileMountFileAtURL();

  v26 = a3;
  if (!v25)
  {
    v30 = v48;
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v51);
    if (!v30)
    {
      v37 = v51;
      if (v51)
      {
        type metadata accessor for CFErrorRef(0);
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
        swift_allocError();
        *v38 = v37;
      }

      else
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v49 = 0xD00000000000001FLL;
        v50 = 0x80000001C18E1F00;
        v39 = URL.path.getter();
        MEMORY[0x1C68F3410](v39);

        MEMORY[0x1C68F3410](46, 0xE100000000000000);
        v40 = v49;
        v41 = v50;
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v42 = v40;
        *(v42 + 8) = v41;
        *(v42 + 16) = 4;
      }

      swift_willThrow();
      v26 = a3;
    }

    goto LABEL_12;
  }

  v27 = v48;
  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v25, a2, ServiceLocatorForLegacyAPIWorkaround, v53, v52);
  if (v27)
  {
    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    (*(v29 + 32))(v28, v29);
    RERealityFileUnmount();
LABEL_12:
    outlined destroy of BodyTrackingComponent?(v26, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v43 = type metadata accessor for URL();
    (*(*(v43 - 8) + 8))(a1, v43);
    goto LABEL_13;
  }

  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  (*(v32 + 32))(v31, v32);
  RERealityFileUnmount();
  outlined destroy of BodyTrackingComponent?(a3, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 8))(a1, v33);
  v34 = v52[1];
  v35 = v47;
  *v47 = v52[0];
  v35[1] = v34;
  v36 = v52[3];
  v35[2] = v52[2];
  v35[3] = v36;
LABEL_13:
  outlined destroy of __REAssetBundle.LoadOptions(v53);
  result = __swift_destroy_boxed_opaque_existential_1(a2);
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __REAssetService.dispatchPredicate(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  __REAssetService.asManager.getter(a2, a3);
  v7 = *(v6 + 88);
  v8 = REAssetManagerGetEngineQueue();

  *a4 = v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(*(v9 - 8) + 104);
  v11 = MEMORY[0x1E69E8020];
  if (v5 != 2)
  {
    v11 = MEMORY[0x1E69E8018];
  }

  v12 = *v11;

  return v10(a4, v12, v9);
}

uint64_t static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v28 = a2;
  v29 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v16 + 104))(v19, *MEMORY[0x1E69E7F98], v15);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  outlined init with copy of __REAssetService(v28, v39);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v12);
  v20 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v21 = swift_allocObject();
  outlined init with take of ForceEffectBase(v39, v21 + 16);
  (*(v13 + 32))(v21 + v20, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v22 = (v21 + ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v30;
  MEMORY[0x1C68F3CA0](0, v11, v7, v24);
  _Block_release(v24);

  (*(v36 + 8))(v7, v25);
  (*(v34 + 8))(v11, v35);
}

uint64_t closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)(void *a1, uint64_t a2, void (*a3)(void **))
{
  v37 = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v32 = 1;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  LOBYTE(v26) = 1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v5, v6);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v24 = 0;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 32))(v8, v9);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = RERealityFileMountFileAtURL();

  if (v13)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v13, a1, ServiceLocatorForLegacyAPIWorkaround, &v26, v25);
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    RERealityFileUnmount();
    outlined init with copy of __REAssetBundle(v25, v22);
    v23 = 0;
    a3(v22);
    outlined destroy of BodyTrackingComponent?(v22, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
    outlined destroy of __REAssetBundle(v25);
    result = outlined destroy of __REAssetBundle.LoadOptions(&v26);
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v24);
    _StringGuts.grow(_:)(34);

    v22[0] = 0xD00000000000001FLL;
    v22[1] = 0x80000001C18E1F00;
    v17 = URL.path.getter();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v18 = swift_allocError();
    *v19 = 0xD00000000000001FLL;
    *(v19 + 8) = 0x80000001C18E1F00;
    *(v19 + 16) = 4;
    swift_willThrow();
    outlined destroy of __REAssetBundle.LoadOptions(&v26);
    v26 = v18;
    BYTE8(v30) = 1;
    v20 = v18;
    a3(&v26);

    result = outlined destroy of BodyTrackingComponent?(&v26, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.load(url:serviceLocator:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v29 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v15 + 104))(v18, *MEMORY[0x1E69E7F98], v14);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  (*(v12 + 16))(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v19, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = v32;
  *(v21 + v20) = v31;
  v23 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v33;
  *v23 = v22;
  v23[1] = v24;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_16;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v30;
  MEMORY[0x1C68F3CA0](0, v10, v6, v25);
  _Block_release(v25);

  (*(v37 + 8))(v6, v26);
  (*(v35 + 8))(v10, v36);
}