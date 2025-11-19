unint64_t closure #3 in Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v5 = a2[1];
  v61 = *a2;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v64 = a2[1];

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v64 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v3 = *v13;
      v14 = v13[1];
      v15 = *(*(a3 + 40) + 16);

      if (!v15)
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v3, v14);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : Entity.ConfigurationCatalog.ConfigurationSetCache].Keys and conformance [A : B].Keys, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMR);
    lazy protocol witness table accessor for type String and conformance String();
    v34 = Sequence<>.joined(separator:)();
    v36 = v35;

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
    swift_allocError();
    *v37 = v3;
    *(v37 + 8) = v14;
    *(v37 + 16) = v34;
    *(v37 + 24) = v36;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v3 = v64;

    Hasher.init()();
    a3 = *(a3 + 32);
    if (a3 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        while (1)
        {
          v19 = i;
          v20 = MEMORY[0x1C68F41F0](v18, a3);
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = v20;
          v23 = *(v20 + 32);
          v24 = *(v20 + 40);
          v25 = *(v3 + 16);

          v63 = v23;
          if (v25 && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24), (v27 & 1) != 0))
          {
            v28 = (*(v3 + 56) + 16 * v26);
            v29 = v28 + 1;
          }

          else
          {
            v28 = v22 + 2;
            v29 = v22 + 3;
          }

          v30 = *v28;
          v31 = *v29;

          if (!*(v22[8] + 16))
          {
            goto LABEL_39;
          }

          specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
          if ((v32 & 1) == 0)
          {
            goto LABEL_39;
          }

          String.hash(into:)();

          swift_unknownObjectRelease();
          ++v18;
          v33 = v21 == v19;
          i = v19;
          v3 = v64;
          if (v33)
          {
            goto LABEL_36;
          }
        }

LABEL_44:
        __break(1u);
      }

      else
      {
        v38 = 0;
        v39 = a3 & 0xFFFFFFFFFFFFFF8;
        a3 += 32;
        while (v38 < *(v39 + 16))
        {
          v22 = *(a3 + 8 * v38);
          v40 = v22[4];
          v24 = v22[5];
          v41 = *(v3 + 16);

          v63 = v40;
          if (v41 && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v24), (v43 & 1) != 0))
          {
            v44 = (*(v3 + 56) + 16 * v42);
            v45 = v44 + 1;
          }

          else
          {
            v44 = v22 + 2;
            v45 = v22 + 3;
          }

          v30 = *v44;
          v31 = *v45;

          if (!*(v22[8] + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v30, v31), (v46 & 1) == 0))
          {
LABEL_39:
            v65 = v22[6];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMR);
            lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : Entity.ConfigurationCatalog.Configuration].Keys and conformance [A : B].Keys, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMR);
            lazy protocol witness table accessor for type String and conformance String();
            v55 = Sequence<>.joined(separator:)();
            v57 = v56;

            lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
            swift_allocError();
            *v58 = v30;
            *(v58 + 8) = v31;
            *(v58 + 16) = v63;
            *(v58 + 24) = v24;
            *(v58 + 32) = v55;
            *(v58 + 40) = v57;
            *(v58 + 48) = 1;
            swift_willThrow();
          }

          ++v38;

          String.hash(into:)();

          v3 = v64;
          if (i == v38)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_46:
      ;
    }

LABEL_36:
    v47 = Hasher.finalize()();
    v48 = v47;
    if (*(*a1 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v47);
      if (v49)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : String].Values and conformance [A : B].Values, &_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
        lazy protocol witness table accessor for type String and conformance String();
        v50 = Sequence<>.joined(separator:)();
        v52 = v51;

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
        swift_allocError();
        *v53 = v50;
        *(v53 + 8) = v52;
        *(v53 + 16) = 0u;
        *(v53 + 32) = 0u;
        *(v53 + 48) = 2;
        return swift_willThrow();
      }

      v59 = *a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *a1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v48, isUniquelyReferenced_nonNull_native);
    *a1 = v66;
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 5;
    goto LABEL_24;
  }

  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000), (v3 & 1) == 0))
  {
LABEL_20:
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v22 = xmmword_1C18B1D60;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = 0;
    *(v22 + 40) = 1;
LABEL_24:
    swift_willThrow();
    goto LABEL_25;
  }

  v4 = *(*(*(v0 + 184) + 16) + 24);
  if (!*(v4 + 16))
  {
LABEL_23:
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v24 = xmmword_1C18B1D60;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = 0;
    *(v24 + 40) = 0;
    goto LABEL_24;
  }

  v5 = *(*(v1 + 56) + 8 * v2);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
  if ((v7 & 1) == 0)
  {

    goto LABEL_23;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  *(v0 + 192) = v8;

  Hasher.init()();
  v9 = *(v8 + 32);
  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C68F41F0](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_37:
          v10 = __CocoaSet.count.getter();
          goto LABEL_8;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }
      }

      if (!*(v5 + 16) || (v14 = *(v12 + 32), v15 = *(v12 + 40), , v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15), v18 = v17, , (v18 & 1) == 0))
      {

        v37 = *(v12 + 32);
        v38 = *(v12 + 40);
        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v39 = v37;
        *(v39 + 8) = v38;
        *(v39 + 24) = 0;
        *(v39 + 32) = 0;
        *(v39 + 16) = 0;
        *(v39 + 40) = 4;
        swift_willThrow();

        goto LABEL_35;
      }

      v19 = (*(v5 + 56) + 16 * v16);
      v20 = *v19;
      v21 = v19[1];

      String.hash(into:)();

      ++v11;
    }

    while (v13 != v10);
  }

  v27 = *(v0 + 184);

  v28 = *(v0 + 104);
  v29 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v29;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v28;
  v30 = Hasher.finalize()();
  v31 = *(v27 + 24);
  if (*(v31 + 16))
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    if (v33)
    {
      v34 = v32;

      *(v0 + 200) = *(*(v31 + 56) + 8 * v34);
      type metadata accessor for MainActor();

      *(v0 + 208) = static MainActor.shared.getter();
      v36 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), v36, v35);
    }
  }

  *(v0 + 160) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : String].Values and conformance [A : B].Values, &_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
  lazy protocol witness table accessor for type String and conformance String();
  v40 = Sequence<>.joined(separator:)();
  v42 = v41;

  lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
  swift_allocError();
  *v43 = v40;
  *(v43 + 8) = v42;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 3;
  swift_willThrow();
LABEL_35:

LABEL_25:
  v25 = *(v0 + 8);

  return v25();
}

{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[21];

  Entity.copy(to:recursive:)(v3, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.CachedEntityReader(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2);
}

uint64_t QueryType.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t QueryType.evaluate(value:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t type metadata instantiation function for QueryType()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for ImageLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, ImageLogger);
  __swift_project_value_buffer(v0, ImageLogger);
  if (one-time initialization token for ImageLog != -1)
  {
    swift_once();
  }

  v1 = ImageLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for ImageLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  ImageLog = result;
  return result;
}

uint64_t AREnvironmentProbeComponent.texture.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t AREnvironmentProbeComponent.init(texture:extent:useAsBackground:)@<X0>(unint64_t result@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  a3->n128_u64[0] = result;
  a3[1] = a4;
  a3[2].n128_u8[0] = a2;
  return result;
}

__n128 static AREnvironmentProbeComponent.__fromCore(_:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  Texture = REAREnvironmentProbeComponentGetTexture();
  if (Texture)
  {
    v5 = Texture;
    type metadata accessor for TextureResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v6 = 0;
  }

  REAREnvironmentProbeComponentGetExtents();
  v10 = v7;
  UseAsBackground = REAREnvironmentProbeComponentGetUseAsBackground();

  a2->n128_u64[0] = v6;
  result = v10;
  a2[1] = v10;
  a2[2].n128_u8[0] = UseAsBackground;
  return result;
}

uint64_t AREnvironmentProbeComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v7 = *(v1 + 1);
  v4 = *(v1 + 32);
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  REAREnvironmentProbeComponentSetTexture();
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance AREnvironmentProbeComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v7 = *(v1 + 1);
  v4 = *(v1 + 32);
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  REAREnvironmentProbeComponentSetTexture();
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();

  return RENetworkMarkComponentDirty();
}

uint64_t getEnumTagSinglePayload for AREnvironmentProbeComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for AREnvironmentProbeComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __RKActiveSceneManager.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t static __RKActiveSceneManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t __RKActiveSceneManager.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  return result;
}

uint64_t __RKActiveSceneManager.activeScene.setter(uint64_t a1)
{
  specialized __RKActiveSceneManager.activeScene.setter(a1);
}

uint64_t (*__RKActiveSceneManager.activeScene.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return __RKActiveSceneManager.activeScene.modify;
}

uint64_t __RKActiveSceneManager.activeScene.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    swift_beginAccess();
    result = *(v5 + 24);
    v6 = *(result + 16);
    if (v6)
    {
      v7 = ( + 40);
      do
      {
        v8 = *(a1 + 24);
        v9 = *(v7 - 1);
        v10 = *v7;
        ObjectType = swift_getObjectType();
        v12 = *(v8 + 16);
        v13 = *(v10 + 8);

        swift_unknownObjectRetain();
        v13(v8, v12, ObjectType, v10);

        swift_unknownObjectRelease();
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t __RKActiveSceneManager.addObserver(observer:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 24);
  v7 = v6[2];
  v8 = v7 + 1;
  v9 = 4;
  while (--v8)
  {
    v10 = v6[v9];
    v9 += 2;
    if (v10 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v13 = v6[2];
  v12 = v6[3];
  if (v13 >= v12 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
  }

  v6[2] = v13 + 1;
  v14 = &v6[2 * v13];
  v14[4] = a1;
  v14[5] = a2;
  *(v2 + 24) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t __RKActiveSceneManager.removeObserver(observer:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    for (i = (v4 + 32); *i != a1; i += 2)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    specialized Array.remove(at:)(v6);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __RKActiveSceneManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t __RKActiveSceneManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t specialized __RKActiveSceneManager.activeScene.setter(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;

  result = swift_beginAccess();
  v6 = *(v2 + 24);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v2 + 24);

    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v2 + 16);
      v14 = *(v11 + 8);

      swift_unknownObjectRetain();
      v14(v2, v13, ObjectType, v11);
      swift_unknownObjectRelease();

      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t HasModel.blendWeights.getter()
{
  v1 = *(v0 + 16);
  REBlendShapeWeightsComponentGetComponentType();
  if (REEntityGetComponentByClass() && (BlendShapeWeightsCount = REBlendShapeWeightsComponentGetBlendShapeWeightsCount()) != 0)
  {
    v3 = BlendShapeWeightsCount;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsCount & ~(BlendShapeWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        result = REBlendShapeWeightsComponentGetBlendWeightCount();
        if (result < 0)
        {
          break;
        }

        v8 = result;
        if (result)
        {
          v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v9 + 16) = v8;
        }

        else
        {
          v9 = v7;
        }

        REBlendShapeWeightsComponentGetBlendWeights();
        *(v9 + 16) = v8;
        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
        }

        ++v6;
        v5[2] = v11 + 1;
        v5[v11 + 4] = v9;
        if (v3 == v6)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1C1887600;
    v5[4] = MEMORY[0x1E69E7CC0];
    return v5;
  }

  return result;
}

uint64_t HasModel.blendWeights.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v1 + 16), REBlendShapeWeightsComponentGetComponentType(), REEntityGetComponentByClass()) && (BlendShapeWeightsCount = REBlendShapeWeightsComponentGetBlendShapeWeightsCount()) != 0 && BlendShapeWeightsCount == v3)
  {
    v6 = 0;
    v7 = a1 + 32;
    while (v3 != v6)
    {
      result = REBlendShapeWeightsComponentGetBlendWeightCount();
      if (v6 >= *(a1 + 16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = a1 + 8 * v6++;
      if (result != *(*(v9 + 32) + 16))
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, MEMORY[0x1E69E7CC0]);

    v10 = 0;
    while (v10 != v3)
    {
      if (v10 >= *(a1 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(*(v7 + 8 * v10) + 16);
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = *(v7 + 8 * v10);
          if (v12 >= *(v13 + 16))
          {
            break;
          }

          v14 = v12 + 1;
          v15 = *(v13 + 4 * v12 + 32);
          result = REBlendShapeWeightsComponentSetBlendWeight();
          v12 = v14;
          if (v11 == v14)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_13:
      if (++v10 == v3)
      {

        return RENetworkMarkComponentDirty();
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_9:
  }

  return result;
}

uint64_t (*HasModel.blendWeights.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = HasModel.blendWeights.getter();
  return HasModel.blendWeights.modify;
}

uint64_t HasModel.blendWeights.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[3];
  if ((a2 & 1) == 0)
  {
    return HasModel.blendWeights.setter(*a1);
  }

  v4 = *a1;

  HasModel.blendWeights.setter(v5);
}

uint64_t HasModel.blendWeightNames.getter()
{
  v1 = *(v0 + 16);
  REBlendShapeWeightsComponentGetComponentType();
  if (REEntityGetComponentByClass() && REBlendShapeWeightsComponentGetBlendShapeWeightsDefinition() && (BlendShapeWeightsCount = REBlendShapeWeightsDefinitionAssetGetBlendShapeWeightsCount()) != 0)
  {
    v3 = BlendShapeWeightsCount;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsCount & ~(BlendShapeWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v5 = result;
      for (i = 0; ; ++i)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        BlendWeightCount = REBlendShapeWeightsDefinitionAssetGetBlendWeightCount();
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendWeightCount & ~(BlendWeightCount >> 63), 0, MEMORY[0x1E69E7CC0]);
        if (BlendWeightCount < 0)
        {
          goto LABEL_20;
        }

        v9 = result;
        if (BlendWeightCount)
        {
          v10 = 0;
          do
          {
            REBlendShapeWeightsDefinitionAssetGetBlendWeightName();
            result = String.init(cString:)();
            v13 = *(v9 + 2);
            v12 = *(v9 + 3);
            if (v13 >= v12 >> 1)
            {
              v17 = v11;
              v18 = result;
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
              v11 = v17;
              result = v18;
            }

            ++v10;
            *(v9 + 2) = v13 + 1;
            v14 = &v9[16 * v13];
            *(v14 + 4) = result;
            *(v14 + 5) = v11;
          }

          while (BlendWeightCount != v10);
        }

        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          v5 = result;
        }

        v5[2] = v16 + 1;
        v5[v16 + 4] = v9;
        if (v7 == v3)
        {
          return v5;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1C1887600;
    v5[4] = MEMORY[0x1E69E7CC0];
    return v5;
  }

  return result;
}

void StateMachineComponent.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
}

uint64_t StateMachineComponent.init(stateMachine:explicitParameterBindings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t StateMachineComponent.stateMachineResource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t StateMachineComponent.stateMachineResource.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 16) = 0;
  }

  return result;
}

uint64_t StateMachineComponent.parameters.getter()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *v0;
    if (*v0)
    {
      v2 = v1[3];
      if (!v2)
      {
        v3 = v1[6];
        static StateMachineGraphCreator.createGraph(from:)(&v11);
        v4 = *&v12[16];
        v5 = v1[2];
        v6 = v1[3];
        v7 = v1[4];
        v8 = v1[5];
        v1[2] = v11;
        *(v1 + 3) = *v12;
        v1[5] = v4;
        result = outlined consume of StateMachineGraph?(v5, v6);
        v2 = v1[3];
        if (!v2)
        {
          __break(1u);
          return result;
        }
      }

      v11 = v1[2];
      *v12 = v2;
      *&v12[8] = *(v1 + 2);
      specialized static StateMachineParametersCreator.syncUp(parameters:with:)(v0 + 8, &v11);
      *(v0 + 16) = 1;
    }
  }

  v10 = *(v0 + 8);
}

uint64_t StateMachineComponent.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*StateMachineComponent.parameters.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 16))
  {
    goto LABEL_6;
  }

  v3 = *v1;
  if (!*v1)
  {
    goto LABEL_6;
  }

  v4 = v3[3];
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = v3[6];
  static StateMachineGraphCreator.createGraph(from:)(&v13);
  v6 = *&v14[16];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v3[2] = v13;
  *(v3 + 3) = *v14;
  v3[5] = v6;
  result = outlined consume of StateMachineGraph?(v7, v8);
  v4 = v3[3];
  if (v4)
  {
LABEL_5:
    v13 = v3[2];
    *v14 = v4;
    *&v14[8] = *(v3 + 2);
    specialized static StateMachineParametersCreator.syncUp(parameters:with:)(v1 + 8, &v13);
    *(v1 + 16) = 1;
LABEL_6:
    v12 = *(v1 + 8);
    a1[2] = v12;
    *a1 = v12;

    return StateMachineComponent.parameters.modify;
  }

  __break(1u);
  return result;
}

uint64_t StateMachineComponent.parameters.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 8) = v4;
    *(v3 + 16) = 0;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 8) = v4;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t static StateMachineComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  StateMachineAsset = REStateMachineComponentGetStateMachineAsset();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for StateMachineResource();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for StateMachineResource();
    v5 = swift_allocObject();
    *(v5 + 48) = StateMachineAsset;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    outlined consume of StateMachineGraph?(0, 0);
    RERetain();
    REAssetSetSwiftObject();
  }

  result = specialized static StateMachineParametersCreator.createBoundParameters(from:)();
  *(a2 + 16) = 0;
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance StateMachineComponent(uint64_t *a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = *a1;
    v5 = *(v2 + 48);
    REStateMachineComponentAssignAsset();

    return specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(v4, v3);
  }

  else
  {

    return specialized static StateMachineUtils.logError(_:)(0xD000000000000025, 0x80000001C18E7CB0);
  }
}

uint64_t StateMachineComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = *a1;
    v5 = *(v2 + 48);
    REStateMachineComponentAssignAsset();

    return specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(v4, v3);
  }

  else
  {

    return specialized static StateMachineUtils.logError(_:)(0xD000000000000025, 0x80000001C18E7CB0);
  }
}

uint64_t getEnumTagSinglePayload for StateMachineComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for StateMachineComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __SkyboxComponent.environment.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

BOOL static __SkyboxComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      if (v4)
      {
        if (v4 == v5)
        {
          goto LABEL_5;
        }
      }

      else if (!v5)
      {
LABEL_5:
        swift_beginAccess();
        v6 = *(v2 + 24);
        swift_beginAccess();
        v7 = *(v3 + 24);
        if (v6)
        {
          return v7 && v6 == v7;
        }

        else
        {
          return v7 == 0;
        }
      }
    }

    return 0;
  }

  return v3 == 0;
}

uint64_t static __SkyboxComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RESkyboxComponentGetMaterial();
  if (result)
  {
    type metadata accessor for EnvironmentResource();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    result = swift_beginAccess();
    *(v5 + 24) = 0;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t __SkyboxComponent.__toCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = REMaterialParameterBlockValueCreate();
  v3 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E7CE0);

  swift_beginAccess();
  v4 = *(v3 + 16);
  RESkyboxComponentSetMaterial();
  RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __SkyboxComponent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return specialized static EnvironmentResource.areEqual(_:_:)(v2, v3);
  }
}

Swift::Int StateMachineCommandExecutionTiming.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t StateMachineCommand.parameters.getter()
{
  return MEMORY[0x1E69E7CC0];
}

{
  return MEMORY[0x1E69E7CC0];
}

uint64_t StateMachineAnimationPlayCommand.init(targetEntity:animationName:playToCompletion:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t StateMachineAnimationPlayCommand.parameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1897FC0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
  *(v7 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  strcpy((v8 + 16), "AnimationName");
  *(v8 + 30) = -4864;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
  *(v7 + 104) = &protocol witness table for StateMachineCommandParameter<A>;
  *(v7 + 88) = v6;
  *(v7 + 72) = 0xD000000000000018;
  *(v7 + 80) = 0x80000001C18E7D00;

  if (v3 != 255)
  {
    outlined copy of BindTarget?(v1, v2, v3);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    v13 = &protocol witness table for StateMachineCommandParameter<A>;
    v9 = swift_allocObject();
    *&v11 = v9;
    strcpy((v9 + 16), "TargetEntity");
    *(v9 + 29) = 0;
    *(v9 + 30) = -5120;
    *(v9 + 32) = v1;
    *(v9 + 40) = v2;
    *(v9 + 48) = v3;
    *(v7 + 16) = 3;
    outlined init with take of ForceEffectBase(&v11, v7 + 112);

    outlined copy of BindTarget(v1, v2, v3);

    outlined consume of BindTarget(v1, v2, v3);
  }

  return v7;
}

uint64_t StateMachineAnimationPlayCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationPlayCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t StateMachineAnimationPlayCommand.animationName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StateMachineAnimationPlayCommand.animationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t StateMachineAnimationStopCommand.init(targetEntity:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t StateMachineAnimationStopCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

__n128 StateMachineAnimationStopAllCommand.init(targetEntity:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t StateMachineAnimationStopCommand.parameters.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 == 255)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1887600;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    *(v4 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
    v5 = swift_allocObject();
    *(v4 + 32) = v5;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    *(v5 + 48) = v3;
    strcpy((v5 + 16), "TargetEntity");
    *(v5 + 29) = 0;
    *(v5 + 30) = -5120;
  }

  outlined copy of BindTarget?(v2, v1, v3);
  return v4;
}

uint64_t StateMachineAnimationStopCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.init(targetEntity:playbackTime:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = a3;
  return result;
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.parameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
  *(v5 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
  *(v5 + 48) = v4;
  strcpy((v5 + 32), "PlaybackTime");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  if (v3 != 255)
  {
    outlined copy of BindTarget(v1, v2, v3);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    v10 = &protocol witness table for StateMachineCommandParameter<A>;
    v6 = swift_allocObject();
    *&v8 = v6;
    strcpy((v6 + 16), "TargetEntity");
    *(v6 + 29) = 0;
    *(v6 + 30) = -5120;
    *(v6 + 32) = v1;
    *(v6 + 40) = v2;
    *(v6 + 48) = v3;
    *(v5 + 16) = 2;
    outlined init with take of ForceEffectBase(&v8, v5 + 72);

    outlined copy of BindTarget(v1, v2, v3);

    outlined consume of BindTarget(v1, v2, v3);
  }

  return v5;
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming()
{
  result = lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming;
  if (!lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationPlayCommand(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for StateMachineAnimationPlayCommand(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationStopCommand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineAnimationStopCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationSetPlaybackTimeCommand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 32))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineAnimationSetPlaybackTimeCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(meshResource:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (result)
  {
    if (v3)
    {
      *(v2 + 16) = REBlendShapeWeightsDefinitionAssetCreateAssetForMesh();
      RERetain();
      REAssetSetSwiftObject();

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BlendShapeWeightsMapping.init(meshResource:)(uint64_t a1)
{
  v1 = specialized BlendShapeWeightsMapping.init(meshResource:)(a1);

  return v1;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(blendShapeName:weightNames:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlendShapeWeightsMapping.init(blendShapeName:weightNames:)(a1, a2, a3);
  return v6;
}

uint64_t BlendShapeWeightsMapping.init(blendShapeName:weightNames:)(char *a1, uint64_t a2, uint64_t a3)
{
  v47[10] = *MEMORY[0x1E69E9840];
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR);
  inited = swift_initStackObject();
  v11 = 0;
  *(inited + 16) = xmmword_1C1887600;
  v12 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v13 = *(a3 + 16);
  v14 = (a3 + 40);
LABEL_3:
  v15 = &v14[2 * v11];
  while (1)
  {
    if (v13 == v11)
    {
      v14 = *(v12 + 2);
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = *(v3 + 2);
      v15 = *(v3 + 3);
      v8 = v11 + 1;
      if (v11 >= v15 >> 1)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    ++v11;
    v16 = v15 + 16;
    v17 = *(v15 - 8);
    v18 = *v15;
    v8 = String.utf8CString.getter();
    v3 = strdup((v8 + 32));

    v15 = v16;
    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v20 = *(v12 + 2);
      v19 = *(v12 + 3);
      v8 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v12);
      }

      *(v12 + 2) = v8;
      *&v12[8 * v20 + 32] = v3;
      goto LABEL_3;
    }
  }

LABEL_39:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_41:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v8, 1, v3);
LABEL_13:
    *(v3 + 2) = v8;
    v21 = &v3[16 * v11 + 32];
    *v21 = v14;
    *(v21 + 1) = v12 + 32;

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    *(v11 + 16) = 2;
    *(v11 + 40) = v12;
    type metadata accessor for NSString();
    v22 = NSString.init(stringLiteral:)();
    v23 = [v22 UTF8String];
    v24 = v22;
    if (!v23)
    {
      goto LABEL_43;
    }

    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[32 * v27 + 32];
    *v28 = 3;
    *(v28 + 8) = v23;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    v47[0] = a1;
    v47[1] = a2;
    v29 = String.utf8CString.getter();
    v30 = strdup((v29 + 32));

    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      *&v31[8 * v33 + 32] = v30;
    }

    outlined destroy of String(v47);
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v35 = *(a1 + 2);
    v34 = *(a1 + 3);
    if (v35 >= v34 >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, a1);
    }

    v36 = (v31 + 32);
    *(a1 + 2) = v35 + 1;
    *&a1[8 * v35 + 32] = v31 + 32;
    v37 = *(v3 + 2);
    v12 = *(a1 + 4);

    AssetWithDefinitionsAndWeightNames = REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitionsAndWeightNames();

    *(v46 + 16) = AssetWithDefinitionsAndWeightNames;
    for (i = *(v31 + 2); i; --i)
    {
      v40 = *v36++;
      free(v40);
    }

    v8 = *(v11 + 16);
    if (!v8)
    {
      break;
    }

    inited = 0;
    v14 = (v11 + 32);
    while (1)
    {
      v15 = *(v11 + 16);
      if (inited >= v15)
      {
        break;
      }

      v41 = *(v14[inited] + 16);
      if (v41)
      {
        v15 = 0;
        while (inited < *(v11 + 16))
        {
          v42 = v14[inited];
          if (v15 >= *(v42 + 16))
          {
            goto LABEL_38;
          }

          a1 = (v15 + 1);
          free(*(v42 + 8 * v15 + 32));
          v15 = a1;
          if (v41 == a1)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_28:
      if (++inited == v8)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_36:

  v43 = *MEMORY[0x1E69E9840];
  return v46;
}

uint64_t BlendShapeWeightsMapping.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t BlendShapeWeightsMapping.deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t BlendShapeWeightsMapping.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t _Proto_BlendShapeWeightsMappingResource_v1.definition.getter@<X0>(char **a1@<X8>)
{

  return _Proto_BlendShapeWeightsMappingDefinition_v1.init(_:)(v2, a1);
}

uint64_t specialized BlendShapeWeightsMapping.init(meshResource:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (result)
  {
    if (v2)
    {
      *(v1 + 16) = REBlendShapeWeightsDefinitionAssetCreateAssetForMesh();
      RERetain();
      v8 = *(v1 + 16);
      REAssetSetSwiftObject();
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

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t one-time initialization function for ecsCoreLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, ecsCoreLogger);
  __swift_project_value_buffer(v0, ecsCoreLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t static AnalyticsManager.shared.getter()
{
  v0 = type metadata accessor for AnalyticsManager();

  return MEMORY[0x1EEE6C000](v0, &unk_1EBEA72B8);
}

uint64_t AnalyticsManager.ObjectCaptureSessionInitEvent.init(sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AnalyticsManager.ObjectCaptureSessionImageStatsEvent.init(sessionID:numImages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

RealityFoundation::AnalyticsManager::ObjectCaptureSessionCaptureModeEvent::CaptureMode_optional __swiftcall AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.init(sessionID:captureMode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = a3(0);
  *(a4 + *(result + 20)) = v7;
  return result;
}

uint64_t AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent.init(sessionID:bundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)(uint64_t a1)
{
  inited = type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent(0);
  v3 = *(inited - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](inited);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000030, 0x80000001C18E7DB0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)()
{
  v0 = UUID.uuidString.getter();
  v1 = MEMORY[0x1C68F3280](v0);

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  return v2;
}

void AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000036, 0x80000001C18E7DF0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)(uint64_t a1)
{
  v2 = UUID.uuidString.getter();
  v3 = MEMORY[0x1C68F3280](v2);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v6 = *(a1 + *(type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0) + 20));
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 0x6567616D496D756ELL, 0xE900000000000073, v8);
  return v4;
}

void AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000037, 0x80000001C18E7E30);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_12;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

void AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000032, 0x80000001C18E7E70);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_18_1;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = UUID.uuidString.getter();
  v9 = MEMORY[0x1C68F3280](v8);

  v10 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v12 = *(a1 + *(a2(0) + 20));
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, a3, a4, v14);
  return v10;
}

void AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD00000000000003CLL, 0x80000001C18E7EB0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_24;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65636E6575716573;
  }

  else
  {
    v4 = 0x7265646C6F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x65636E6575716573;
  }

  else
  {
    v6 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(uint64_t *a1@<X8>)
{
  v2 = 0x7265646C6F66;
  if (*v1)
  {
    v2 = 0x65636E6575716573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)(uint64_t a1)
{
  v2 = UUID.uuidString.getter();
  v3 = MEMORY[0x1C68F3280](v2);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  inited = type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0);
  v7 = *(a1 + *(inited + 20)) == 0;
  if (*(a1 + *(inited + 20)))
  {
    v8 = 0x65636E6575716573;
  }

  else
  {
    v8 = 0x7265646C6F66;
  }

  if (v7)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  v10 = MEMORY[0x1C68F3280](v8, v9);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x7954656372756F73, 0xEA00000000006570, v11);
  return v4;
}

uint64_t closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = UUID.uuidString.getter();
  v11 = MEMORY[0x1C68F3280](v10);

  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v12;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v14 = v39;
  v15 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1 + v15[5], v9, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = 0xEB00000000797469;
      v18 = 0x746E456C65646F6DLL;
    }

    else
    {
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 8))(v9, v19);
      v18 = 0x6C69466C65646F6DLL;
      v17 = 0xE900000000000065;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v17 = 0xE600000000000000;
    v18 = 0x73646E756F62;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v17 = 0xEA00000000006475;
    v18 = 0x6F6C43746E696F70;
  }

  else
  {
    v17 = 0xE500000000000000;
    v18 = 0x7365736F70;
  }

  v20 = MEMORY[0x1C68F3280](v18, v17);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5474736575716572, 0xEB00000000657079, v21);
  v22 = v39;
  v23 = String.init<A>(describing:)();
  v24 = MEMORY[0x1C68F3280](v23);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x6C6961746564, 0xE600000000000000, v25);
  v26 = v39;
  v27 = *(a1 + v15[7]);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = NSNumber.init(integerLiteral:)(v27).super.super.isa;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v26;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 0x73736563637573, 0xE700000000000000, v29);
  v30 = v39;
  v31 = MEMORY[0x1C68F3280](a2, a3);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v30;
  v33 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 0x707954726F727265, 0xE900000000000065, v32);
  v34 = v39;
  v35 = MEMORY[0x1C68F3940](v33, *(a1 + v15[9]));
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v34;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, 0xD000000000000019, 0x80000001C18E7F60, v36);
  return v39;
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = UUID.uuidString.getter();
  v5 = MEMORY[0x1C68F3280](v4);

  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v8 = a2(0);
  v9 = MEMORY[0x1C68F3280](*(a1 + *(v8 + 20)), *(a1 + *(v8 + 20) + 8));
  v10 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, 0x4449656C646E7562, 0xE800000000000000, v10);
  return v6;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status);
  }

  return result;
}

uint64_t type metadata completion function for AnalyticsManager.ObjectCaptureSessionImageStatsEvent()
{
  return type metadata completion function for AnalyticsManager.ObjectCaptureSessionImageStatsEvent();
}

{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void specialized AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(uint64_t a1)
{
  v70 = type metadata accessor for PhotogrammetrySession.Request(0);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v12, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v67 = v9;
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v65 = a1;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v69 = v14;
    v64 = v6;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v12, v9, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v21 = v4;
    v22 = String.init<A>(describing:)();
    v23 = v5;
    v25 = v24;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v12, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v26 = v22;
    v4 = v21;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, aBlock);
    v5 = v23;

    *(v18 + 4) = v27;
    v6 = v64;
    v14 = v69;
    _os_log_impl(&dword_1C1358000, v15, v16, "Sending PhotogrammetrySessionReconstructionResultEvent: %s...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v28 = v20;
    a1 = v65;
    MEMORY[0x1C6902A30](v28, -1, -1);
    MEMORY[0x1C6902A30](v18, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v12, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  }

  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1 + *(v5 + 20), v4, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v4, type metadata accessor for PhotogrammetrySession.Request);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C1358000, v29, v30, "sendPhotogrammetrySessionReconstructionResultEvent got non .modelFile request! Punting...", v31, 2u);
      MEMORY[0x1C6902A30](v31, -1, -1);
    }
  }

  else
  {
    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 8))(v4, v32);
    v33 = *(a1 + *(v5 + 32));
    v63 = v5;
    if (v33)
    {
      aBlock[0] = v33;
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v35 = String.init<A>(describing:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v69 = v14;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = a1;
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000001C18E7F20, aBlock);
      _os_log_impl(&dword_1C1358000, v38, v39, "AnalyticsManaLogging eventName: %s...", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v44 = v43;
      a1 = v42;
      MEMORY[0x1C6902A30](v44, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

    v45 = MEMORY[0x1C68F3280](0xD000000000000033, 0x80000001C18E7F20);
    v46 = v67;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v67, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v48 = v6 + v47 + 7;
    v49 = a1;
    v50 = v48 & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v46, v51 + v47, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v52 = (v51 + v50);
    *v52 = v35;
    v52[1] = v37;
    aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:);
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_83_0;
    v53 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v53);

    v54 = v68;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v49, v68, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136315138;
      outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v54, v46, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v54, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, aBlock);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1C1358000, v55, v56, "... event sent! PhotogrammetrySessionReconstructionResultEvent: %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1C6902A30](v58, -1, -1);
      MEMORY[0x1C6902A30](v57, -1, -1);
    }

    else
    {

      outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v54, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    }
  }
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)()
{
  v1 = *(type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(v0 + v2, v4, v5);
}

void specialized AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD00000000000003DLL, 0x80000001C18E7F80);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_89;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t objectdestroy_20Tm_0(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = *(v1 + v4 + v2[7] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

void type metadata completion function for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhotogrammetrySession.Request(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Error?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Error?()
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Error?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType);
  }

  return result;
}

__n128 Transform.init(_:)(__n128 *a1, double a2, double a3, double a4, __n128 a5, double a6, __n128 a7)
{
  v7 = a1[5];
  v14[4] = a1[4];
  v14[5] = v7;
  v8 = a1[7];
  v14[6] = a1[6];
  v14[7] = v8;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v10 = a1[3];
  v14[2] = a1[2];
  v14[3] = v10;
  SPAffineTransform3DGet4x4Matrix(v14, &v13, v10, a5, a7);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v12 = result;
    swift_once();
    return v12;
  }

  return result;
}

__n128 SPAffineTransform3DGet4x4Matrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q3>, __n128 a5@<Q5>)
{
  result = *a1;
  a3.n128_u64[0] = *(a1 + 16);
  v6 = *(a1 + 32);
  a4.n128_u64[0] = *(a1 + 48);
  v7 = *(a1 + 64);
  a5.n128_u64[0] = *(a1 + 80);
  v8 = *(a1 + 96);
  __asm { FMOV            V7.2D, #1.0 }

  *&_Q7 = *(a1 + 112);
  *a2 = *a1;
  *(a2 + 16) = a3;
  *(a2 + 32) = v6;
  *(a2 + 48) = a4;
  *(a2 + 64) = v7;
  *(a2 + 80) = a5;
  *(a2 + 96) = v8;
  *(a2 + 112) = _Q7;
  return result;
}

double SPAffineTransform3D.init(_:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q2>)
{
  v22 = vcvtq_f64_f32(a2.n128_u64[0]);
  v23 = COERCE_UNSIGNED_INT64(a2.n128_f32[2]);
  SPSize3DMakeWithVector(&v22, &v21);
  SPRotation3D.init(_:)(v5, v4);
  v16 = v7;
  v17 = v6;
  v22 = vcvtq_f64_f32(a3.n128_u64[0]);
  v23 = COERCE_UNSIGNED_INT64(a3.n128_f32[2]);
  SPSize3DMakeWithVector(&v22, v19);
  *v30.vector.f64 = v16;
  *&v20.x = v17;
  *&v20.vector.f64[2] = v16;
  SPAffineTransform3DMake(&v21, v30, &v20, v19, &v22, v8, v9, v10);
  v11 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v11;
  v12 = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v12;
  v13 = v23;
  *a1 = v22;
  *(a1 + 16) = v13;
  result = *&v24;
  v15 = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = v15;
  return result;
}

__n128 SPSize3DMakeWithVector@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

float64_t *SPAffineTransform3DMake@<X0>(SPSize3D *a1@<X0>, SPRotation3D a2@<0:Q0, 16:Q1>, SPVector3D *a3@<X1>, float64x2_t *a4@<X2>, __int128 *a5@<X8>, float64x2_t a6@<Q3>, float64x2_t _Q5@<Q5>, float64x2_t a8@<Q7>)
{
  a8.f64[0] = a1->depth;
  v10 = *&a1->width;
  result = &a1->height;
  v11.f64[0] = 0.0;
  v11.f64[1] = *result;
  _Q1 = *&a3->x;
  _Q0 = *&a3->vector.f64[2];
  _D18 = a3->y;
  _Q17.f64[0] = _Q0.f64[1];
  __asm { FMLA            D2, D17, V0.D[1] }

  v17 = vmuld_lane_f64(_Q0.f64[0], _Q0, 1);
  v18.f64[0] = vmuld_lane_f64(_D18, _Q0, 1);
  a6.f64[0] = -(v18.f64[0] - a3->x * _Q0.f64[0]) - (v18.f64[0] - a3->x * _Q0.f64[0]);
  _Q2.f64[1] = v17 + a3->x * _D18 + v17 + a3->x * _D18;
  v21.f64[0] = -(v17 - a3->x * _D18) - (v17 - a3->x * _D18);
  __asm
  {
    FMLA            D5, D18, V1.D[1]
    FMLA            D5, D17, V0.D[1]
  }

  v20 = _Q5.f64[0] - *&_Q1 * *&_Q1;
  _Q5.f64[0] = vmuld_lane_f64(a3->x, _Q0, 1);
  _Q5.f64[0] = _Q5.f64[0] + _D18 * _Q0.f64[0] + _Q5.f64[0] + _D18 * _Q0.f64[0];
  v21.f64[1] = v20;
  v18.f64[1] = -(a3->x * _Q0.f64[1]);
  v22 = vmlaq_n_f64(v18, *&a3->x, _Q0.f64[0]);
  v23 = vaddq_f64(v22, v22);
  __asm { FMLS            D17, D18, V1.D[1] }

  v25 = *a4;
  _Q0.f64[0] = a4[1].f64[0];
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  v28 = *MEMORY[0x1E69E9B00];
  v27 = *(MEMORY[0x1E69E9B00] + 16);
  v30 = *(MEMORY[0x1E69E9B00] + 32);
  v29 = *(MEMORY[0x1E69E9B00] + 48);
  v32 = *(MEMORY[0x1E69E9B00] + 64);
  v31 = *(MEMORY[0x1E69E9B00] + 80);
  v33 = vandq_s8(vandq_s8(vceqq_f64(v32, v23), vceqq_f64(v30, v21)), vceqq_f64(*MEMORY[0x1E69E9B00], _Q2));
  if (((v33.i64[0] & v33.i64[1] & vandq_s8(vceqq_f64(v31, _Q17), vandq_s8(vceqq_f64(v29, _Q5), vceqq_f64(v27, a6))).u64[0] & 0x8000000000000000) != 0) == _VF || (v34 = vandq_s8(vceqq_f64(v30, v11), vandq_s8(vceqq_f64(v28, v10), vceqq_f64(v32, 0))), ((v34.i64[0] & v34.i64[1] & vandq_s8(vandq_s8(vceqq_f64(v29, 0), vceqq_f64(v27, 0)), vceqq_f64(v31, a8)).u64[0] & 0x8000000000000000) != 0) == _VF))
  {
    v35 = 0;
    v58 = v10;
    v59 = 0uLL;
    v60 = v11;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = a8;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v37 = *(&v58 + v35);
      v36 = *(&v58 + v35 + 16);
      v38 = (&v67 + v35);
      *v38 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(_Q2, v37.f64[0]), v21, v37, 1), v23, *&v36);
      v38[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a6, v37.f64[0]), _Q5, v37, 1), _Q17, *&v36);
      v35 += 32;
    }

    while (v35 != 96);
    _Q2 = v67;
    a6 = v68;
    v21 = v69;
    _Q5 = v70;
    v23 = v71;
    _Q17 = v72;
    *a5 = v67;
    a5[1] = a6;
  }

  v39 = xmmword_1C18B41F0;
  v40 = xmmword_1C18B1340;
  __asm { FMOV            V21.2D, #1.0 }

  v43 = vandq_s8(vandq_s8(vceqq_f64(v30, xmmword_1C18B1340), vceqq_f64(v28, xmmword_1C18B41F0)), vceqzq_f64(v32));
  if (((v43.i64[0] & v43.i64[1] & vandq_s8(vandq_s8(vceqzq_f64(v29), vceqzq_f64(v27)), vceqq_f64(v31, _Q21)).u64[0] & 0x8000000000000000) != 0) != _VF && (v44 = vandq_s8(vandq_s8(vceqq_f64(v29, _Q5), vceqq_f64(v27, a6)), vceqq_f64(v31, _Q17)).u64[0], v45 = vandq_s8(vandq_s8(vceqq_f64(v30, v21), vceqq_f64(v28, _Q2)), vceqq_f64(v32, v23)), ((v45.i64[0] & v45.i64[1] & v44 & 0x8000000000000000) != 0) ^ _VF))
  {
    v53 = 0uLL;
    v25 = vaddq_f64(v25, 0);
    _Q0 = vaddq_f64(_Q0, 0);
    v52 = 0uLL;
    v51 = 0uLL;
  }

  else
  {
    v46 = vceqzq_f64(v25);
    if (((v46.i64[0] & v46.i64[1] & vceqzq_f64(_Q0).u64[0] & 0x8000000000000000) != 0) != _VF)
    {
      v54 = 0;
      v58 = _Q2;
      v59 = a6;
      v60 = v21;
      v61 = _Q5;
      v62 = v23;
      v63 = _Q17;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      do
      {
        v56 = *(&v58 + v54);
        v55 = *(&v58 + v54 + 16);
        v57 = (&v67 + v54);
        *v57 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C18B41F0, v56.f64[0]), xmmword_1C18B1340, v56, 1), 0, v55.f64[0]);
        v57[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v56, 0), 0, v56, 1), _Q21, v55);
        v54 += 32;
      }

      while (v54 != 96);
      v39 = v67;
      v51 = v68;
      v40 = v69;
      v52 = v70;
      v53 = v71;
      _Q21 = v72;
    }

    else
    {
      v47 = 0;
      _Q0.f64[1] = 1.0;
      v58 = _Q2;
      v59 = *&a6.f64[0];
      v60 = v21;
      v61 = *&_Q5.f64[0];
      v62 = v23;
      v63 = *&_Q17.f64[0];
      v64 = 0;
      v65 = 0;
      v66 = xmmword_1C18B1340;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      do
      {
        v49 = *(&v58 + v47);
        v48 = *(&v58 + v47 + 16);
        v50 = (&v67 + v47);
        *v50 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C18B41F0, v49.f64[0]), xmmword_1C18B1340, v49, 1), 0, v48.f64[0]), v25, v48, 1);
        v50[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v49.f64[0]), 0, v49, 1), xmmword_1C18B41F0, v48.f64[0]), _Q0, v48, 1);
        v47 += 32;
      }

      while (v47 != 128);
      v39 = v67;
      v51 = v68;
      v40 = v69;
      v52 = v70;
      v53 = v71;
      _Q21 = v72;
      v25 = v73;
      _Q0 = v74;
    }
  }

  *a5 = v39;
  a5[1] = v51;
  a5[2] = v40;
  a5[3] = v52;
  a5[4] = v53;
  a5[5] = _Q21;
  a5[6] = v25;
  a5[7] = _Q0;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of PhotogrammetrySession.Request(v13, v11, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    outlined init with take of PhotogrammetrySession.Request(v11, v19, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = result;
  v7 = *(a4 + 16);
  for (i = a4 + 40 * a3 + 32; ; i += 40)
  {
    if (v7 == v5)
    {
      return 0;
    }

    if (v5 >= v7)
    {
      break;
    }

    result = v6(i);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t PhotogrammetrySample.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-v4];
  outlined init with copy of [String : String](a1 + 72, v20, &_sypSgMd, &_sypSgMR);
  if (!v21)
  {
    goto LABEL_4;
  }

  v6 = type metadata accessor for PhotogrammetrySample();
  v7 = swift_dynamicCast();
  v8 = *(v6 - 8);
  (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
  if ((*(v8 + 48))(v5, 1, v6) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    __break(1u);
LABEL_4:
    outlined destroy of BodyTrackingComponent?(v20, &_sypSgMd, &_sypSgMR);
    v9 = type metadata accessor for PhotogrammetrySample();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  outlined destroy of BodyTrackingComponent?(v5, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v10 = *a1;
  v11 = *(a1 + 8);
  PhotogrammetrySample.init(id:image:)();
  v12 = *(a1 + 16);

  PhotogrammetrySample.metadata.setter();
  v13 = *(a1 + 24);
  PhotogrammetrySample.depthDataMap.setter();
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  PhotogrammetrySample.gravity.setter();
  v18 = *(a1 + 64);
  PhotogrammetrySample.objectMask.setter();
  return outlined destroy of PhotogrammetrySample(a1);
}

uint64_t PhotogrammetrySessionImpl.init(id:using:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a3;
  v63 = a2;
  v69 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v56[-v7];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56[-v9];
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_activeRequests) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 0;
  v62 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor) = 0;
  v61 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession) = 0;
  v18 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap;
  type metadata accessor for PhotogrammetrySessionImpl.RequestMap();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v17;
  *(v19 + 16) = v20;
  *(v3 + v18) = v19;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage) = 0;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles) = v17;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples) = v17;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples) = v17;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 0;
  v65 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor;
  v64 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  *&aBlock = v17;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v21 = v69;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v67 + 104))(v66, *MEMORY[0x1E69E8090], v68);
  *(v3 + v65) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v4 + v22, v21, v23);
  type metadata accessor for PhotogrammetrySession();
  result = static PhotogrammetrySession.isSupported.getter();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v26 = *(v4 + v61);
  *(v4 + v61) = v63;
  swift_retain_n();

  outlined init with copy of PhotogrammetrySession.Request(v77, v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  v27 = dispatch thunk of PhotogrammetrySession.outputPublisher.getter();

  v28 = type metadata accessor for OutputPublisherMonitor(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  OutputPublisherMonitor.init(publisher:)(v27);
  v32 = v62;
  v33 = *(v4 + v62);
  *(v4 + v62) = v31;

  v34 = *(v4 + v32);
  if (!v34)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  v36 = v34 + v35;
  v37 = v60;
  outlined init with copy of [String : String](v36, v60, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  v39 = *(v38 - 8);
  result = (*(v39 + 48))(v37, 1, v38);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v57;
  AsyncStream.makeAsyncIterator()();
  (*(v39 + 8))(v37, v38);
  v75 = type metadata accessor for AsyncOutputIterator(0);
  v76 = &protocol witness table for AsyncOutputIterator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
  (*(v58 + 32))(boxed_opaque_existential_1, v40, v59);
  result = outlined init with take of ForceEffectBase(&v74, &aBlock);
  v42 = v71;
  *(v4 + 16) = aBlock;
  *(v4 + 32) = v42;
  *(v4 + 48) = v72;
  v43 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor;
  v44 = *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor);
  if (!v44)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = *(v44 + 24);
  v47 = *(v44 + 32);
  *(v44 + 24) = partial apply for closure #1 in PhotogrammetrySessionImpl.init(id:using:configuration:);
  *(v44 + 32) = v45;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v46);

  v48 = *(v4 + v43);
  if (!v48)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v49 = swift_allocObject();
  swift_weakInit();

  v50 = *(v48 + 40);
  v51 = *(v48 + 48);
  *(v48 + 40) = partial apply for closure #2 in PhotogrammetrySessionImpl.init(id:using:configuration:);
  *(v48 + 48) = v49;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v50);

  if (*(v4 + v43))
  {
    swift_weakAssign();
    v52 = objc_opt_self();
    v72 = closure #3 in PhotogrammetrySessionImpl.init(id:using:configuration:);
    v73 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v71 = thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ();
    *(&v71 + 1) = &block_descriptor_161;
    v53 = _Block_copy(&aBlock);
    v54 = [v52 scheduledTimerWithTimeInterval:1 repeats:v53 block:5.0];
    _Block_release(v53);

    outlined destroy of PhotogrammetrySession.Request(v77, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v24 + 8))(v21, v23);
    v55 = *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage);
    *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage) = v54;

    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhotogrammetrySessionImpl.init(id:using:configuration:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.onProcessingComplete();
    *(v3 + 24) = v2;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_175;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);
    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in PhotogrammetrySessionImpl.init(id:using:configuration:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.onProcessingCancelled();
    *(v3 + 24) = v2;
    aBlock[4] = _sIg_Ieg_TRTA_0;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_167;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);
    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

void closure #3 in PhotogrammetrySessionImpl.init(id:using:configuration:)()
{
  act_list[1] = *MEMORY[0x1E69E9840];
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
    *v3 = 134349056;
    *(v3 + 4) = specialized static ResourceUsageHelper.memoryUsage(in:)(2);
    _os_log_impl(&dword_1C1358000, v1, v2, "Memory usage: %{public}llu MB", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    act_list[0] = 0;
    act_listCnt[0] = 0;
    v7 = task_threads(*MEMORY[0x1E69E9A60], act_list, act_listCnt);
    if (act_list[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = act_listCnt[0];
    if (!v8)
    {
      v9 = -1;
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C1358000, v4, v5, "Thread count: %{public}ld", v6, 0xCu);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    act_list[0] = v13;
    *v12 = 136446210;
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 thermalState];

    *act_listCnt = v15;
    type metadata accessor for NSProcessInfoThermalState(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, act_list);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1C1358000, v10, v11, "Thermal state: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t PhotogrammetrySession.Configuration.init(_:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  PhotogrammetrySession.Configuration.init()();
  v6 = *a1;
  PhotogrammetrySession.Configuration.isObjectMaskingEnabled.setter();
  v7 = a1[1];
  v8 = type metadata accessor for PhotogrammetrySession.Configuration.SampleOrdering();
  v9 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  if (v7 == 1)
  {
    v13 = MEMORY[0x1E69982B8];
  }

  else
  {
    v13 = MEMORY[0x1E69982C0];
  }

  (*(v11 + 104))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *v13, v12);
  PhotogrammetrySession.Configuration.sampleOrdering.setter();
  v14 = a1[2];
  v15 = type metadata accessor for PhotogrammetrySession.Configuration.FeatureSensitivity();
  v16 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  if (v14 == 1)
  {
    v20 = MEMORY[0x1E69982C8];
  }

  else
  {
    v20 = MEMORY[0x1E69982D0];
  }

  (*(v18 + 104))(&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *v20, v19);
  PhotogrammetrySession.Configuration.featureSensitivity.setter();
  v21 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](&a1[*(v21 + 28)], v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  PhotogrammetrySession.Configuration.snapshotURL.setter();
  v22 = a1[*(v21 + 32)];
  PhotogrammetrySession.Configuration.ignoreBoundingBox.setter();
  if (PhotogrammetrySession.Configuration.ignoreBoundingBox.getter())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C1358000, v24, v25, "Setting PhotogrammetrySession.Configuration to ignore bounding box!", v26, 2u);
      MEMORY[0x1C6902A30](v26, -1, -1);
    }
  }

  return outlined destroy of PhotogrammetrySession.Request(a1, type metadata accessor for PhotogrammetrySession.Configuration);
}

uint64_t closure #1 in PhotogrammetrySessionImpl.init<A>(id:input:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6 - 8];
  outlined init with copy of [String : String](a1 + 72, v14, &_sypSgMd, &_sypSgMR);
  if (v15)
  {
    v8 = type metadata accessor for PhotogrammetrySample();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v7, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v7, 1, v8) != 1)
    {
      return (*(v10 + 32))(a2, v7, v8);
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v14, &_sypSgMd, &_sypSgMR);
    v12 = type metadata accessor for PhotogrammetrySample();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  outlined destroy of BodyTrackingComponent?(v7, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  outlined init with copy of PhotogrammetrySample(a1, v14);
  return PhotogrammetrySample.init(_:)(v14);
}

void PhotogrammetrySessionImpl.deinit()
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
    _os_log_impl(&dword_1C1358000, v3, v4, "~~~ PhotogrammetrySession deinit was called! ~~~", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor;
  v7 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor);
  if (v7)
  {
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = *(v7 + 64);

      v8(v10);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
    }

    v11 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage;
    v12 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage);
    if (v12)
    {
      [v12 invalidate];
      v13 = *(v1 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v1 + v11) = 0;

    v14 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap;
    v15 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);
    v16 = swift_beginAccess();
    v17 = *(v15 + 16);
    MEMORY[0x1EEE9AC00](v16);

    os_unfair_lock_lock((v17 + 24));
    closure #1 in Atomic.store(_:)specialized partial apply((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));
    swift_endAccess();

    v18 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession;
    if (*(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
    {
      v19 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession);

      dispatch thunk of PhotogrammetrySession.close()();

      outlined destroy of PhotogrammetrySession.Outputs(v1 + 16);
      outlined destroy of PhotogrammetrySession.Request(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
      v20 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_activeRequests);

      v21 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v1 + v21, v22);
      v23 = *(v1 + v6);

      v24 = *(v1 + v18);

      v25 = *(v1 + v14);

      v26 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles);

      v27 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);

      v28 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t PhotogrammetrySessionImpl.__deallocating_deinit()
{
  PhotogrammetrySessionImpl.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for PhotogrammetrySessionImpl()
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void closure #1 in PhotogrammetrySessionImpl.process(requests:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PhotogrammetrySession.Request(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state;
  if (*(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) == 2)
  {
    __break(1u);
    goto LABEL_13;
  }

  specialized PhotogrammetrySessionImpl.throwIfInvalidRequests(_:)(a2);
  if (v2)
  {
    return;
  }

  v13 = *(a2 + 16);
  v14._rawValue = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = v12;
    v30 = a1;
    rawValue = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14._rawValue = rawValue;
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v28 = a2;
    v16 = v6;
    v17 = a2 + v15;
    v18 = type metadata accessor for PhotogrammetrySession.Request();
    v34 = v18;
    v19 = *(v18 - 8);
    v35 = *(v19 + 64);
    v32 = *(v16 + 72);
    v33 = v19;
    v31 = v19 + 32;
    do
    {
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of PhotogrammetrySession.Request(v17, v11, type metadata accessor for PhotogrammetrySession.Request);
      v22 = v36;
      outlined init with copy of PhotogrammetrySession.Request(v11, v36, type metadata accessor for PhotogrammetrySession.Request);
      PhotogrammetrySession.Request.init(_:)(v22, v21);
      v23 = v11;
      outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySession.Request);
      rawValue = v14._rawValue;
      v25 = *(v14._rawValue + 2);
      v24 = *(v14._rawValue + 3);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v14._rawValue = rawValue;
      }

      *(v14._rawValue + 2) = v25 + 1;
      v18 = (*(v33 + 32))(v14._rawValue + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, v21, v34);
      v17 += v32;
      --v13;
      v11 = v23;
    }

    while (v13);
    v12 = v29;
    a1 = v30;
    a2 = v28;
  }

  v26 = *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

  PhotogrammetrySessionImpl.RequestMap.addRequests(apiRequests:internalRequests:)(a2, v14);

  if (!*(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v27 = *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession);

  dispatch thunk of PhotogrammetrySession.process(requests:)();

  *(a1 + v12) = 1;
  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 1;
}

uint64_t PhotogrammetrySession.Request.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v136[3] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v132 = *(v3 - 8);
  v4 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v133.i64[0] = *(v7 - 8);
  v8 = *(v133.i64[0] + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v115 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  v17 = type metadata accessor for PhotogrammetrySession.Request(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a1;
  outlined init with copy of PhotogrammetrySession.Request(a1, v20, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v128.i64[0] = v6;
    v129.i64[0] = v3;
    *&v130 = v13;
    v24 = v133.i64[0];
    v131.i64[0] = v7;
    if (EnumCaseMultiPayload)
    {
      v53 = *(v20 + 1);
      v115 = *v20;
      v117 = v53;
      v54 = *(v20 + 3);
      v116 = *(v20 + 2);
      v119 = v54;
      v55 = *(v20 + 5);
      v118 = *(v20 + 4);
      v121.i64[0] = v55;
      v56 = *(v20 + 7);
      v120 = *(v20 + 6);
      v123.i64[0] = v56;
      v57 = *(v20 + 9);
      v122 = *(v20 + 8);
      v125.i64[0] = v57;
      v58 = *(v20 + 11);
      *&v124 = *(v20 + 10);
      *&v126 = v58;
      v127.i32[0] = v20[96];
      v59 = objc_opt_self();
      v60 = [v59 defaultManager];
      v61 = [v60 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v128.i64[0];
      UUID.init()();
      UUID.uuidString.getter();
      v63 = v10;
      (*(v132 + 8))(v62, v129.i64[0]);
      v64 = v130;
      URL.appendingPathComponent(_:isDirectory:)();

      v65 = v24;
      v66 = v24 + 8;
      v67 = *(v24 + 8);
      v68 = v131.i64[0];
      v67(v63, v131.i64[0]);
      v69 = [v59 defaultManager];
      v70 = URL.path.getter();
      v71 = MEMORY[0x1C68F3280](v70);

      v136[0] = 0;
      LODWORD(v60) = [v69 createDirectoryAtPath:v71 withIntermediateDirectories:1 attributes:0 error:v136];

      if (v60)
      {
        v129.i64[0] = v67;
        v132 = v66;
        v72 = v136[0];
        URL.appendingPathComponent(_:)();
        (*(v65 + 40))(v64, v63, v68);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, logger);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        v76 = os_log_type_enabled(v74, v75);
        v77 = v135;
        if (v76)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v136[0] = v79;
          *v78 = 141558274;
          *(v78 + 4) = 1752392040;
          *(v78 + 12) = 2080;
          swift_beginAccess();
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v136);

          *(v78 + 14) = v82;
          _os_log_impl(&dword_1C1358000, v74, v75, "outputURL for modelEntity: %{mask.hash}s", v78, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x1C6902A30](v79, -1, -1);
          v83 = v78;
          v68 = v131.i64[0];
          MEMORY[0x1C6902A30](v83, -1, -1);
        }

        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
        v85 = *(v84 + 48);
        v86 = *(v84 + 64);
        swift_beginAccess();
        (*(v65 + 16))(v77, v64, v68);
        v87 = *MEMORY[0x1E6998398];
        v88 = type metadata accessor for PhotogrammetrySession.Request.Detail();
        (*(*(v88 - 8) + 104))(v77 + v85, v87, v88);
        v89 = v129.i64[0];
        if (v127.i8[0])
        {
          v90 = 1;
        }

        else
        {
          v104.i64[0] = v115;
          v104.i64[1] = v117;
          v133 = v104;
          v104.i64[0] = v116;
          v104.i64[1] = v119;
          v131 = v104;
          v104.i64[0] = v118;
          v104.i64[1] = v121.i64[0];
          v128 = v104;
          v104.i64[0] = v120;
          v104.i64[1] = v123.i64[0];
          v127 = v104;
          v104.i64[0] = v122;
          v104.i64[1] = v125.i64[0];
          v125 = v104;
          *&v105 = v124;
          *(&v105 + 1) = v126;
          v124 = v105;
          REAABBExtents();
          v126 = v106;
          REAABBCenter();
          if (one-time initialization token for identity != -1)
          {
            v125 = v107;
            swift_once();
            v107.i64[0] = v125.i64[0];
          }

          *v108.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v107.i64, v127, *&v126);
          v127 = v108;
          v126 = v109;
          v125 = v110;
          v124 = v111;
          specialized simd_float4x4.init(translation:rotation:scale:)(*v128.i64, v131, v133.f32[0]);
          PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)();
          v90 = 0;
        }

        outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
        v112 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
        (*(*(v112 - 8) + 56))(v77 + v86, v90, 1, v112);
        v113 = *MEMORY[0x1E69983A8];
        v114 = type metadata accessor for PhotogrammetrySession.Request();
        (*(*(v114 - 8) + 104))(v77, v113, v114);
        result = v89(v64, v68);
      }

      else
      {
        v103 = v136[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
        result = (v67)(v64, v68);
      }
    }

    else
    {
      v25 = v16;
      v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64)];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = *(v26 + 2);
      v123.i64[0] = *(v26 + 3);
      v30 = *(v26 + 5);
      v122 = *(v26 + 4);
      v125.i64[0] = v30;
      v31 = *(v26 + 7);
      *&v124 = *(v26 + 6);
      v127.i64[0] = v31;
      v32 = *(v26 + 9);
      *&v126 = *(v26 + 8);
      v129.i64[0] = v32;
      v33 = *(v26 + 11);
      v128.i64[0] = *(v26 + 10);
      *&v130 = v33;
      v34 = v26[96];
      v35 = v24;
      v36 = v20;
      v37 = v131.i64[0];
      (*(v24 + 32))(v25, v36, v131.i64[0]);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
      v39 = *(v38 + 48);
      v132 = *(v38 + 64);
      v40 = *(v24 + 16);
      v41 = v135;
      v40(v135, v25, v37);
      v42 = *MEMORY[0x1E6998398];
      v43 = type metadata accessor for PhotogrammetrySession.Request.Detail();
      (*(*(v43 - 8) + 104))(v41 + v39, v42, v43);
      if (v34)
      {
        v44 = 1;
        v45 = v135;
        v46 = v131.i64[0];
        v47 = v132;
      }

      else
      {
        v91.i64[0] = v27;
        v91.i64[1] = v28;
        v121 = v91;
        v91.i64[0] = v29;
        v91.i64[1] = v123.i64[0];
        v123 = v91;
        v91.i64[0] = v122;
        v91.i64[1] = v125.i64[0];
        v125 = v91;
        v91.i64[0] = v124;
        v91.i64[1] = v127.i64[0];
        v127 = v91;
        v91.i64[0] = v126;
        v91.i64[1] = v129.i64[0];
        v129 = v91;
        v92.i64[0] = v128.i64[0];
        v92.i64[1] = v130;
        v128 = v92;
        REAABBExtents();
        v130 = v93;
        REAABBCenter();
        if (one-time initialization token for identity != -1)
        {
          v129 = v94;
          swift_once();
          v94.i64[0] = v129.i64[0];
        }

        *&v95 = specialized simd_float4x4.init(translation:rotation:scale:)(*v94.i64, v127, *&v130);
        v129 = v96;
        v130 = v95;
        v128 = v97;
        v127 = v98;
        specialized simd_float4x4.init(translation:rotation:scale:)(*v125.i64, v123, v121.f32[0]);
        v45 = v135;
        v47 = v132;
        PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)();
        v44 = 0;
        v46 = v131.i64[0];
      }

      outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
      (*(v35 + 8))(v25, v46);
      v99 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
      (*(*(v99 - 8) + 56))(v45 + v47, v44, 1, v99);
      v100 = *MEMORY[0x1E69983A8];
      v101 = type metadata accessor for PhotogrammetrySession.Request();
      result = (*(*(v101 - 8) + 104))(v45, v100, v101);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
    v48 = *MEMORY[0x1E69983A0];
    v49 = type metadata accessor for PhotogrammetrySession.Request();
    result = (*(*(v49 - 8) + 104))(v135, v48, v49);
  }

  else
  {
    v22 = v135;
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
      v23 = MEMORY[0x1E6998388];
    }

    else
    {
      outlined destroy of PhotogrammetrySession.Request(v134, type metadata accessor for PhotogrammetrySession.Request);
      v23 = MEMORY[0x1E6998390];
    }

    v51 = *v23;
    v52 = type metadata accessor for PhotogrammetrySession.Request();
    result = (*(*(v52 - 8) + 104))(v22, v51, v52);
  }

  v102 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in PhotogrammetrySessionImpl.cancel()(uint64_t result)
{
  *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 2;
  if (*(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
  {
    v1 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession);

    dispatch thunk of PhotogrammetrySession.cancel()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotogrammetrySessionImpl.addImageMappingDictionary(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v71 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v61 - v9;
  v69 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles;
  if (!*(*(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles) + 16))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_9:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, logger);
      v71 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1C1358000, v71, v22, "There were no image files associated with this session -- not adding mapping.", v23, 2u);
        MEMORY[0x1C6902A30](v23, -1, -1);
      }

      v24 = v71;

      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_9;
  }

  v68 = v8;
  v10 = *(a1 + 16);

  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiSo13simd_float4x4aSg_GTt0g5(v11);
  v73 = v12;
  v13 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);

    v16 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(v72, *(v13 + v16));
      v16 += 8;
      --v14;
    }

    while (v14);

    v17 = v73;
    v18 = *(v73 + 16);
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = v12;
    v18 = *(v12 + 16);
    if (v18)
    {
LABEL_6:
      v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v18, 0);
      v20 = specialized Sequence._copySequenceContents(initializing:)(v72, v19 + 4, v18, v17);
      v66 = v72[4];

      outlined consume of [String : AnimationResource].Iterator._Variant();
      if (v20 == v18)
      {
        goto LABEL_16;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v72[0] = v19;
  specialized MutableCollection<>.sort(by:)(v72);

  v25 = v72[0];
  v26 = v68;
  v27 = *(*(v2 + v69) + 16);
  v66 = *(v72[0] + 2);
  if (v66 != v27)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, logger);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = *(v25 + 2);

      *(v31 + 12) = 2048;
      *(v31 + 14) = *(*(v2 + v69) + 16);

      _os_log_impl(&dword_1C1358000, v29, v30, "sortedSampleID count=%ld  sortedImageFiles count=%ld", v31, 0x16u);
      v32 = v31;
      v26 = v68;
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

    else
    {
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C1358000, v33, v34, "SampleID and sorted URL counts do not match!  The sampleID to URL mapping may be incorrect!", v35, 2u);
      v36 = v35;
      v26 = v68;
      MEMORY[0x1C6902A30](v36, -1, -1);
    }
  }

  if (v66)
  {
    v37 = 0;
    v62 = (v67 + 40);
    v63 = (v67 + 32);
    v64 = (v67 + 8);
    v65 = v67 + 16;
    while (1)
    {
      v38 = *(v2 + v69);
      if (v37 >= *(v38 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v39 = v2;
      v40 = v25;
      v41 = *&v25[8 * v37 + 32];
      v42 = *(v67 + 72);
      v43 = *(v67 + 16);
      v44 = v70;
      v43(v70, v38 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + v42 * v37, v26);
      v43(v71, v44, v26);
      v45 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = a1;
      v72[0] = *(a1 + 8);
      v48 = v72[0];
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      v51 = *(v48 + 2);
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_44;
      }

      v54 = v49;
      if (*(v48 + 3) >= v53)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, isUniquelyReferenced_nonNull_native);
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
        if ((v54 & 1) != (v56 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }

        v50 = v55;
      }

      v26 = v68;
      v57 = v72[0];
      if (v54)
      {
        (*v62)(*(v72[0] + 7) + v50 * v42, v71, v68);
      }

      else
      {
        *&v72[0][8 * (v50 >> 6) + 64] |= 1 << v50;
        *(*(v57 + 6) + 8 * v50) = v41;
        (*v63)(*(v57 + 7) + v50 * v42, v71, v26);
        v58 = *(v57 + 2);
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_45;
        }

        *(v57 + 2) = v60;
      }

      ++v37;
      a1 = v47;
      *(v47 + 8) = v57;
      (*v64)(v70, v26);
      v2 = v39;
      v25 = v40;
      if (v66 == v37)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_42:
}

Swift::Void __swiftcall PhotogrammetrySessionImpl.RequestMap.addRequests(apiRequests:internalRequests:)(Swift::OpaquePointer apiRequests, Swift::OpaquePointer internalRequests)
{
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_6CoreOCABCADOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_6CoreOCABCADOtMR);
  v12 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v42 - v13;
  v44 = *(apiRequests._rawValue + 2);
  if (v44)
  {
    v15 = 0;
    v16 = apiRequests._rawValue + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v42 = *(v9 + 72);
    rawValue = internalRequests._rawValue;
    while (1)
    {
      outlined init with copy of PhotogrammetrySession.Request(v16, v49, type metadata accessor for PhotogrammetrySession.Request);
      v17 = *(internalRequests._rawValue + 2);
      if (v15 == v17)
      {
        outlined destroy of PhotogrammetrySession.Request(v49, type metadata accessor for PhotogrammetrySession.Request);
        goto LABEL_12;
      }

      if (v15 >= v17)
      {
        break;
      }

      v18 = type metadata accessor for PhotogrammetrySession.Request();
      v19 = *(v18 - 8);
      v20 = internalRequests._rawValue + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
      v21 = *(v45 + 48);
      outlined init with take of PhotogrammetrySession.Request(v49, v14, type metadata accessor for PhotogrammetrySession.Request);
      (*(v19 + 16))(&v14[v21], v20, v18);
      outlined init with take of PhotogrammetrySession.Request(v14, v7, type metadata accessor for PhotogrammetrySession.Request);
      v22 = v47;
      (*(v19 + 32))(&v7[*(v47 + 20)], &v14[v21], v18);
      v23 = &v7[*(v22 + 24)];
      Date.init()();
      v24 = v48;
      swift_beginAccess();
      v25 = *(v24 + 16);
      os_unfair_lock_lock((v25 + 24));
      v26 = *(v25 + 16);

      os_unfair_lock_unlock((v25 + 24));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v26);
      }

      ++v15;
      v26[2] = v28 + 1;
      v29 = outlined init with take of PhotogrammetrySession.Request(v7, v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v51 = v26;
      MEMORY[0x1EEE9AC00](v29);
      *(&v42 - 2) = &v51;
      os_unfair_lock_lock((v25 + 24));
      closure #1 in Atomic.store(_:)specialized partial apply((v25 + 16));
      os_unfair_lock_unlock((v25 + 24));

      swift_endAccess();
      internalRequests._rawValue = rawValue;
      v16 += v42;
      if (v44 == v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, logger);
  v31 = v48;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51 = v35;
    *v34 = 136446210;
    swift_beginAccess();
    v36 = *(v31 + 16);

    os_unfair_lock_lock((v36 + 24));
    v37 = *(v36 + 16);

    os_unfair_lock_unlock((v36 + 24));

    v38 = *(v37 + 16);

    v50 = v38;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v51);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1C1358000, v32, v33, "Number of requests in the map: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1C6902A30](v35, -1, -1);
    MEMORY[0x1C6902A30](v34, -1, -1);
  }
}

uint64_t PhotogrammetrySessionImpl.RequestMap.findRequest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  swift_beginAccess();
  v16 = *(v2 + 16);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  v25 = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.findRequest(for:), v17, v15);

  outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v15, v12, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  v18 = 1;
  v19 = (*(v5 + 48))(v12, 1, v4);
  v20 = v24;
  if (v19 != 1)
  {
    outlined init with take of PhotogrammetrySession.Request(v12, v8, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    outlined init with copy of PhotogrammetrySession.Request(v8, v20, type metadata accessor for PhotogrammetrySession.Request);
    outlined destroy of PhotogrammetrySession.Request(v8, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v18 = 0;
  }

  v21 = type metadata accessor for PhotogrammetrySession.Request(0);
  return (*(*(v21 - 8) + 56))(v20, v18, 1, v21);
}

void PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v2 + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v27 = a1;
  v10 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:), v26, v9);
  LOBYTE(a1) = v11;

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v12 = *(v2 + 16);
    os_unfair_lock_lock((v12 + 24));
    v13 = *(v12 + 16);

    os_unfair_lock_unlock((v12 + 24));
    v30 = v13;
    specialized Array.remove(at:)(v10, v7);
    v14 = outlined destroy of PhotogrammetrySession.Request(v7, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v28 = v30;
    MEMORY[0x1EEE9AC00](v14);
    *&v26[-16] = &v28;
    os_unfair_lock_lock((v12 + 24));
    partial apply for specialized closure #1 in Atomic.store(_:)((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));

    swift_endAccess();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136446210;
    v20 = *(v2 + 16);

    os_unfair_lock_lock((v20 + 24));
    v21 = *(v20 + 16);

    os_unfair_lock_unlock((v20 + 24));

    v22 = *(v21 + 16);

    v30 = v22;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v29);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1C1358000, v16, v17, "Number of requests left: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1C6902A30](v19, -1, -1);
    MEMORY[0x1C6902A30](v18, -1, -1);
  }
}

uint64_t PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v14 = *(v2 + 16);

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));

  v22 = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:), v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
    v16 = type metadata accessor for Date();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    outlined init with take of PhotogrammetrySession.Request(v8, v13, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    (*(v20 + 16))(a2, &v13[v18], v19);
    outlined destroy of PhotogrammetrySession.Request(v13, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    return (*(v20 + 56))(a2, 0, 1, v19);
  }
}

uint64_t PhotogrammetrySessionImpl.RequestMap.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in PhotogrammetrySessionImpl.onProcessingCancelled()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);
  swift_beginAccess();
  v3 = *(v2 + 16);

  os_unfair_lock_lock((v3 + 24));
  closure #1 in Atomic.store(_:)specialized partial apply((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  swift_endAccess();

  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 0;
  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 0;
  return result;
}

uint64_t PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(char a1)
{
  v2 = v1;
  v33 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0);
  v8 = inited - 8;
  v9 = *(inited - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](inited);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v34 = v2;
  v19 = v2 + v15;
  v20 = v18;
  v32[1] = v17 + 16;
  v18(v14, v19, v16);
  v14[*(v8 + 28)] = a1 & 1;
  v21 = MEMORY[0x1C68F3280](0xD000000000000031, 0x80000001C18E8450);
  outlined init with copy of PhotogrammetrySession.Request(v14, v11, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  outlined init with take of PhotogrammetrySession.Request(v11, v23 + v22, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_153;
  v24 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);

  outlined destroy of PhotogrammetrySession.Request(v14, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v20(v6, v34 + v15, v16);
  v30 = &v6[*(v33 + 20)];
  *v30 = v27;
  v30[1] = v29;
  specialized AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:)(v6);
  return outlined destroy of PhotogrammetrySession.Request(v6, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
}

uint64_t OutputPublisherMonitor.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID;
  swift_beginAccess();
  outlined init with copy of [String : String](v1 + v13, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  v22 = a1;
  outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v15 + 16))(v9, Strong + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID, v14);

    v18 = *(v15 + 56);
    v18(v9, 0, 1, v14);
    v19 = v22;
    (*(v15 + 32))(v22, v9, v14);
  }

  else
  {
    v18 = *(v15 + 56);
    v18(v9, 1, 1, v14);
    UUID.init()();
    if (v16(v9, 1, v14) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v19 = v22;
  }

  (*(v15 + 16))(v6, v19, v14);
  v18(v6, 0, 1, v14);
  swift_beginAccess();
  outlined assign with take of Any?(v6, v1 + v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV15BufferingPolicyOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v29 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  v15 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  v16 = *(v34 - 8);
  v33 = *(v16 + 56);
  v35 = v16 + 56;
  v33(v1 + v15, 1, 1, v34);
  swift_weakInit();
  v17 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  *v19 = 0;
  v19[1] = 0;
  v29 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v43 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
  *(v1 + v29) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = (v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v22 = swift_allocObject();
  *(v22 + 20) = 0;
  *(v22 + 16) = 0;
  *(v2 + v21) = v22;
  v23 = (v2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  type metadata accessor for OutputPublisherMonitor.Tasks();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScTyyts5NeverOGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + v24) = v25;
  v41 = v2;
  v42 = v39;
  type metadata accessor for PhotogrammetrySession.Output(0);
  (*(v38 + 104))(v37, *MEMORY[0x1E69E8650], v40);
  v26 = v36;
  AsyncStream.init(_:bufferingPolicy:_:)();

  v33(v26, 0, 1, v34);
  v27 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  outlined assign with take of Any?(v26, v2 + v27, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  swift_endAccess();
  return v2;
}

uint64_t closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v6 = *(v5 - 8);
  v40 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  v11 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  v12 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput + 8);
  *v10 = partial apply for closure #1 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v10[1] = v9;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v11);

  v13 = swift_allocObject();
  swift_weakInit();
  v41 = *(v6 + 16);
  v14 = v5;
  v41(v8, a1, v5);
  v15 = *(v6 + 80);
  v16 = (v15 + 24) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = *(v6 + 32);
  v38 = v6 + 32;
  v39 = v18;
  v19 = v14;
  v18(v17 + v16, v8, v14);
  v20 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v22 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v21 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
  *v20 = partial apply for closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v20[1] = v17;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v36;
  v25 = v19;
  v41(v8, v36, v19);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v27 = v26 + v16;
  v28 = v25;
  v39(v27, v8, v25);
  v29 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  v30 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  v31 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete + 8);
  *v29 = partial apply for closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v29[1] = v26;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v30);

  v41(v8, v24, v28);
  v32 = swift_allocObject();
  v39(v32 + ((v15 + 16) & ~v15), v8, v28);
  v33 = *(a2 + 56);
  v34 = *(a2 + 64);
  *(a2 + 56) = partial apply for closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:);
  *(a2 + 64) = v32;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v33);

  AsyncStream.Continuation.onTermination.setter();
  return OutputPublisherMonitor.connectPublisher(_:)(v37);
}

uint64_t closure #1 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OutputPublisherMonitor.publishOutputMessage(internalOutput:)(a1);
  }

  return result;
}

uint64_t closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotogrammetrySession.Output(0);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);

    (*(v13 + 16))(v16, v31, v12);
    outlined init with copy of PhotogrammetrySession.Request(v32, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySession.Output);
    v18 = *(v13 + 80);
    v32 = v7;
    v19 = v4;
    v20 = v3;
    v21 = (v18 + 16) & ~v18;
    v22 = (v14 + *(v30 + 80) + v21) & ~*(v30 + 80);
    v23 = swift_allocObject();
    (*(v13 + 32))(v23 + v21, v16, v12);
    outlined init with take of PhotogrammetrySession.Request(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PhotogrammetrySession.Output);
    aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_203;
    v24 = _Block_copy(aBlock);
    v25 = v33;
    static DispatchQoS.unspecified.getter();
    v36 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v26 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v29;
    MEMORY[0x1C68F3CA0](0, v25, v26, v24);
    _Block_release(v24);

    (*(v19 + 8))(v26, v20);
    (*(v34 + 8))(v25, v32);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  outlined init with copy of PhotogrammetrySession.Request(a2, v6, type metadata accessor for PhotogrammetrySession.Output);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);
    v25[0] = v7;
    v25[1] = v18;
    v19 = result;
    (*(v13 + 16))(v16, a2, v12);
    v20 = v3;
    v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    (*(v13 + 32))(v22 + v21, v16, v12);
    aBlock[4] = partial apply for closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_193;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v24 = v25[0];
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v11, v24, v23);
    _Block_release(v23);
    (*(v4 + 8))(v24, v20);
    (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Output(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v8;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1C1358000, v14, v15, "Publishing processingComplete...", v16, 2u);
    v8 = v26;
    MEMORY[0x1C6902A30](v17, -1, -1);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:), v19);

  v20 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  swift_beginAccess();
  v21 = *(a1 + v20);
  os_unfair_lock_lock((v21 + 20));
  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 20));
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.yield(_:)();
  result = (*(v5 + 8))(v8, v4);
  v23 = *(a1 + 24);
  if (v23)
  {
    v24 = *(a1 + 32);

    v23(v25);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:), v1, 0);
}

{
  v1 = *(v0 + 24);
  OutputPublisherMonitor.Tasks.clear()();

  v2 = *(v0 + 8);

  return v2();
}

void closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)()
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
    _os_log_impl(&dword_1C1358000, v1, v2, "Ending continuation...", v3, 2u);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.finish()();
}

uint64_t closure #5 in closure #1 in OutputPublisherMonitor.init(publisher:)()
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
    _os_log_impl(&dword_1C1358000, v1, v2, "onTermination() called. Stopping monitoring...", v3, 2u);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  return OutputPublisherMonitor.stopMonitoring()();
}

uint64_t OutputPublisherMonitor.stopMonitoring()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  if (*(v0 + 16))
  {

    AnyCancellable.cancel()();

    v6 = *(v0 + 16);
  }

  *(v0 + 16) = 0;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  outlined assign with take of Any?(v5, v1 + v8, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Publishers.PrefetchStrategy();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMR);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - v16;
  v26 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E695BD20], v7, v15);
  (*(v3 + 104))(v6, *MEMORY[0x1E695BD40], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AnyPublisher<PhotogrammetrySession.Output, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMR);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  swift_allocObject();
  v18 = v25;
  swift_weakInit();
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<PhotogrammetrySession.Output, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMR);
  v19 = v23;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v17, v19);
  v21 = *(v18 + 16);
  *(v18 + 16) = v20;
}

uint64_t closure #1 in OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);
    v32 = v10;
    v30 = v15;

    v16 = type metadata accessor for PhotogrammetrySession.Output();
    v31 = &v27;
    v17 = *(v16 - 8);
    v28 = v8;
    v18 = v17;
    v19 = *(v17 + 64);
    v20 = MEMORY[0x1EEE9AC00](v16);
    (*(v18 + 16))(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16, v20);
    v21 = *(v18 + 80);
    v29 = v9;
    v22 = (v21 + 24) & ~v21;
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    (*(v18 + 32))(v23 + v22, &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    aBlock[4] = partial apply for closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_21;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v25 = v28;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v30;
    MEMORY[0x1C68F3CA0](0, v13, v25, v24);
    _Block_release(v24);

    (*(v5 + 8))(v25, v4);
    (*(v32 + 8))(v13, v29);
  }

  return result;
}

uint64_t closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);

    if (v4)
    {
      v4(a2);
      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
    }
  }

  return result;
}

void OutputPublisherMonitor.publishOutputMessage(internalOutput:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v115 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v115 - v12;
  v14 = type metadata accessor for PhotogrammetrySession.Request(0);
  v125 = *(v14 - 8);
  v126 = v14;
  v15 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v115 - v19);
  v123 = type metadata accessor for PhotogrammetrySession.Output(0);
  v21 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PhotogrammetrySession.Output();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v28, a1, v23, v26);
  v29 = (*(v24 + 88))(v28, v23);
  if (MEMORY[0x1E6998310] && v29 == *MEMORY[0x1E6998310])
  {
    (*(v24 + 96))(v28, v23);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC5ErrorOtMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC5ErrorOtMR) + 48);
    v31 = type metadata accessor for PhotogrammetrySession.Request();
    v126 = &v115;
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    v34 = MEMORY[0x1EEE9AC00](v31);
    v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 32))(v36, v28, v31, v34);
    v37 = type metadata accessor for PhotogrammetrySession.Error();
    v38 = *(v37 - 8);
    v39 = *(v38 + 64);
    v40 = MEMORY[0x1EEE9AC00](v37);
    v42 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 32))(v42, v28 + v30, v37, v40);
    lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
    v43 = swift_allocError();
    (*(v38 + 16))(v44, v42, v37);
    OutputPublisherMonitor.handleRequestError(internalRequest:error:)(v36, v43);
    (*(v38 + 8))(v42, v37);
    (*(v32 + 8))(v36, v31);

    return;
  }

  if (MEMORY[0x1E6998330] && v29 == *MEMORY[0x1E6998330])
  {
    (*(v24 + 96))(v28, v23);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
    v46 = type metadata accessor for PhotogrammetrySession.Request();
    v126 = &v115;
    v47 = *(v46 - 8);
    v48 = *(v47 + 64);
    v49 = MEMORY[0x1EEE9AC00](v46);
    v51 = &v115 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 32))(v51, v28, v46, v49);
    v52 = type metadata accessor for PhotogrammetrySession.Result();
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    v55 = MEMORY[0x1EEE9AC00](v52);
    v57 = &v115 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 32))(v57, v28 + v45, v52, v55);
    OutputPublisherMonitor.handleRequestComplete(internalRequest:internalResult:)(v51, v57);
    (*(v53 + 8))(v57, v52);
    (*(v47 + 8))(v51, v46);
    return;
  }

  if (MEMORY[0x1E6998338] && v29 == *MEMORY[0x1E6998338])
  {
    (*(v24 + 96))(v28, v23);
    v58 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR) + 48));
    v59 = type metadata accessor for PhotogrammetrySession.Request();
    v122 = &v115;
    v60 = *(v59 - 8);
    v61 = *(v60 + 64);
    v62 = MEMORY[0x1EEE9AC00](v59);
    v63 = &v115 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 32))(v63, v28, v59, v62);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v65 = *(Strong + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

      PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(&v115 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

      v67 = v125;
      v66 = v126;
      v68 = (*(v125 + 48))(v13, 1, v126);
      if (v68 != 1)
      {
        outlined init with take of PhotogrammetrySession.Request(v13, v20, type metadata accessor for PhotogrammetrySession.Request);
LABEL_34:
        v94 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
        if (v94)
        {
          v95 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
          v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR) + 48);
          v97 = v124;
          outlined init with copy of PhotogrammetrySession.Request(v20, v124, type metadata accessor for PhotogrammetrySession.Request);
          *(v97 + v96) = v58;
          swift_storeEnumTagMultiPayload();

          v94(v97);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v94);
          outlined destroy of PhotogrammetrySession.Request(v97, type metadata accessor for PhotogrammetrySession.Output);
        }

        outlined destroy of PhotogrammetrySession.Request(v20, type metadata accessor for PhotogrammetrySession.Request);
        (*(v60 + 8))(v63, v59);
        return;
      }
    }

    else
    {
      v67 = v125;
      v66 = v126;
      v68 = (*(v125 + 56))(v13, 1, 1, v126);
    }

    v92 = MEMORY[0x1EEE9AC00](v68);
    v93 = &v115 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v93, v63, v59, v92);
    PhotogrammetrySession.Request.init(_:)(v93, v20);
    if ((*(v67 + 48))(v13, 1, v66) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
    }

    goto LABEL_34;
  }

  if (MEMORY[0x1E6998350] && v29 == *MEMORY[0x1E6998350])
  {
    (*(v24 + 96))(v28, v23);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoV8progresstMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoV8progresstMR) + 48);
    v70 = type metadata accessor for PhotogrammetrySession.Request();
    v120 = &v115;
    v71 = *(*(v70 - 8) + 64);
    v72 = MEMORY[0x1EEE9AC00](v70);
    v119 = v73;
    v74 = *(v73 + 32);
    v122 = v75;
    v74(&v115 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v72);
    v76 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    v118 = &v115;
    v77 = *(v76 - 8);
    v78 = *(v77 + 64);
    v79 = MEMORY[0x1EEE9AC00](v76);
    v80 = *(v77 + 32);
    v116 = &v115 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    v117 = v81;
    v80(v79);
    v82 = swift_weakLoadStrong();
    v121 = &v115 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v82)
    {
      v83 = *(v82 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

      PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(&v115 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

      v85 = v125;
      v84 = v126;
      v86 = (*(v125 + 48))(v10, 1, v126);
      if (v86 != 1)
      {
        outlined init with take of PhotogrammetrySession.Request(v10, v17, type metadata accessor for PhotogrammetrySession.Request);
        v87 = v119;
LABEL_45:
        v103 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
        v104 = v116;
        v105 = v117;
        if (v103)
        {
          v106 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
          v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMR) + 48);
          v107 = v124;
          v108 = outlined init with copy of PhotogrammetrySession.Request(v17, v124, type metadata accessor for PhotogrammetrySession.Request);
          v109 = MEMORY[0x1EEE9AC00](v108);
          v110 = &v115 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v77 + 16))(v110, v104, v105, v109);

          PhotogrammetrySession.Output.ProgressInfo.init(_:)(v110, v107 + v126);
          swift_storeEnumTagMultiPayload();
          v103(v107);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v103);
          outlined destroy of PhotogrammetrySession.Request(v107, type metadata accessor for PhotogrammetrySession.Output);
        }

        outlined destroy of PhotogrammetrySession.Request(v17, type metadata accessor for PhotogrammetrySession.Request);
        (*(v77 + 8))(v104, v105);
        (*(v87 + 8))(v121, v122);
        return;
      }
    }

    else
    {
      v85 = v125;
      v84 = v126;
      v86 = (*(v125 + 56))(v10, 1, 1, v126);
    }

    v99 = MEMORY[0x1EEE9AC00](v86);
    v100 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
    v101 = v84;
    v102 = &v115 - v100;
    v87 = v119;
    (*(v119 + 16))(&v115 - v100, v121, v122, v99);
    PhotogrammetrySession.Request.init(_:)(v102, v17);
    if ((*(v85 + 48))(v10, 1, v101) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
    }

    goto LABEL_45;
  }

  if (MEMORY[0x1E6998320] && v29 == *MEMORY[0x1E6998320])
  {
    (*(v24 + 96))(v28, v23);
    OutputPublisherMonitor.handleInvalidSample(id:reason:)(*v28, v28[1], v28[2]);

    return;
  }

  if (MEMORY[0x1E6998328] && v29 == *MEMORY[0x1E6998328])
  {
    (*(v24 + 96))(v28, v23);
    OutputPublisherMonitor.handleSkippedSample(id:)(*v28);
    return;
  }

  if (MEMORY[0x1E6998318] && v29 == *MEMORY[0x1E6998318])
  {
    v88 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v88)
    {
      return;
    }

    v89 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v90 = v124;
    goto LABEL_41;
  }

  if (MEMORY[0x1E6998360] && v29 == *MEMORY[0x1E6998360])
  {
    v88 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v88)
    {
      return;
    }

    v91 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v90 = v124;
    goto LABEL_41;
  }

  if (MEMORY[0x1E6998358] && v29 == *MEMORY[0x1E6998358])
  {
    v88 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v88)
    {
      return;
    }

    v98 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v90 = v124;
LABEL_41:
    swift_storeEnumTagMultiPayload();

    v88(v90);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v88);
    outlined destroy of PhotogrammetrySession.Request(v90, type metadata accessor for PhotogrammetrySession.Output);
    return;
  }

  if (MEMORY[0x1E6998340] && v29 == *MEMORY[0x1E6998340])
  {
    v111 = type metadata accessor for TaskPriority();
    (*(*(v111 - 8) + 56))(v6, 1, 1, v111);
    v112 = swift_allocObject();
    v112[2] = 0;
    v112[3] = 0;
    v112[4] = v1;

    v113 = &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleProcessingComplete();
  }

  else
  {
    if (!MEMORY[0x1E6998348] || v29 != *MEMORY[0x1E6998348])
    {
      v127 = 0;
      v128 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      MEMORY[0x1C68F3410](0xD00000000000002ELL, 0x80000001C18E83E0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v114 = type metadata accessor for TaskPriority();
    (*(*(v114 - 8) + 56))(v6, 1, 1, v114);
    v112 = swift_allocObject();
    v112[2] = 0;
    v112[3] = 0;
    v112[4] = v1;

    v113 = &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleProcessingCancelled();
  }

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, v113, v112);
}

uint64_t PhotogrammetrySession.Request.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Request();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (MEMORY[0x1E69983A8] && v15 == *MEMORY[0x1E69983A8])
  {
    v66 = a2;
    v70 = a1;
    (*(v10 + 96))(v14, v9);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v72 = v8;
    v73 = v5;
    v19 = *(v5 + 32);
    v74 = v4;
    v19(v8, v14, v4);
    v20 = type metadata accessor for PhotogrammetrySession.Request.Detail();
    v69 = &v56;
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x1EEE9AC00](v20);
    v65 = v24;
    v25 = *(v21 + 32);
    v71 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v26;
    v25(v23);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    v68 = &v56;
    v28 = *(*(v27 - 8) + 64);
    MEMORY[0x1EEE9AC00](v27 - 8);
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(&v14[v18], &v56 - v29, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    v76 = 1;
    v30 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
    v60 = &v56;
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x1EEE9AC00](v30);
    v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v35);
    v67 = &v56 - v29;
    outlined init with copy of [String : String](&v56 - v29, &v56 - v29, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    if ((*(v31 + 48))(&v56 - v29, 1, v30) == 1)
    {
      outlined destroy of BodyTrackingComponent?(&v56 - v29, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v61 = 0u;
      v57 = v76;
      v59 = 0u;
      v58 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
    }

    else
    {
      (*(v31 + 32))(v34, &v56 - v29, v30);
      PhotogrammetrySession.Request.Geometry.orientedBoundsTransform.getter();
      computeOrientedBoundingBox(for:)(v75);
      v63 = v75[1];
      v64 = v75[0];
      v62 = v75[2];
      PhotogrammetrySession.Request.Geometry.rootTransform.getter();
      REMakeSRTFromMatrix();
      v61 = v37;
      v59 = v38;
      v58 = v39;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      (*(v31 + 8))(v34, v30);
      LOBYTE(v75[0]) = 0;
      v57 = 0;
    }

    v40 = v56;
    v41 = v66;
    v42 = (*(v73 + 16))();
    v66 = &v56;
    v43 = v65;
    v44 = MEMORY[0x1EEE9AC00](v42);
    v45 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = *(v21 + 16);
    v47 = v46(v45, v71, v40, v44);
    v60 = &v56;
    v48 = MEMORY[0x1EEE9AC00](v47);
    v46(v45, v45, v40, v48);
    v49 = (*(v21 + 88))(v45, v40);
    if (MEMORY[0x1E6998398] && v49 == *MEMORY[0x1E6998398])
    {
      v50 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
      (*(v10 + 8))(v70, v9);
      v51 = *(v21 + 8);
      v51(v45, v40);
      outlined destroy of BodyTrackingComponent?(v67, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v51(v71, v40);
      (*(v73 + 8))(v72, v74);
      v52 = v59;
      *v50 = v61;
      *(v50 + 1) = v52;
      v54 = v63;
      v53 = v64;
      *(v50 + 2) = v58;
      *(v50 + 3) = v53;
      v55 = v62;
      *(v50 + 4) = v54;
      *(v50 + 5) = v55;
      v50[96] = v57;
      type metadata accessor for PhotogrammetrySession.Request(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (MEMORY[0x1E6998388] && v15 == *MEMORY[0x1E6998388] || MEMORY[0x1E69983A0] && v15 == *MEMORY[0x1E69983A0] || MEMORY[0x1E6998390] && v15 == *MEMORY[0x1E6998390])
  {
    (*(v10 + 8))(a1, v9);
    type metadata accessor for PhotogrammetrySession.Request(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PhotogrammetrySession.Output.ProgressInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PhotogrammetrySession.Output.ProgressInfo.estimatedRemainingTime.getter();
  v23 = v5 & 1;
  v6 = type metadata accessor for PhotogrammetrySession.ProcessStage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMd, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  PhotogrammetrySession.Output.ProgressInfo.processStage.getter();
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    v14 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    (*(*(v14 - 8) + 8))(a1, v14);
    result = outlined destroy of BodyTrackingComponent?(v13, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMd, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMR);
    v16 = 6;
LABEL_22:
    v21 = v23;
    *a2 = v4;
    *(a2 + 8) = v21;
    *(a2 + 9) = v16;
    return result;
  }

  v17 = (*(v7 + 32))(&v22 - v9, v13, v6);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v7 + 16))(&v22 - v9, &v22 - v9, v6, v18);
  v19 = (*(v7 + 88))(&v22 - v9, v6);
  if (MEMORY[0x1E6998290] && v19 == *MEMORY[0x1E6998290])
  {
    v16 = 0;
LABEL_21:
    v20 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    (*(*(v20 - 8) + 8))(a1, v20);
    result = (*(v7 + 8))(&v22 - v9, v6);
    goto LABEL_22;
  }

  if (MEMORY[0x1E6998298] && v19 == *MEMORY[0x1E6998298])
  {
    v16 = 1;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982B0] && v19 == *MEMORY[0x1E69982B0])
  {
    v16 = 2;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982A0] && v19 == *MEMORY[0x1E69982A0])
  {
    v16 = 3;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982A8] && v19 == *MEMORY[0x1E69982A8])
  {
    v16 = 4;
    goto LABEL_21;
  }

  if (MEMORY[0x1E6998288] && v19 == *MEMORY[0x1E6998288])
  {
    v16 = 5;
    goto LABEL_21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OutputPublisherMonitor.handleInvalidSample(id:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PhotogrammetrySession.Output(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v22 = a3;
    v13 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples;
    v14 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v13) = v14;
    v16 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      *(v12 + v13) = v14;
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    }

    *(v14 + 2) = v18 + 1;
    *&v14[8 * v18 + 32] = a1;
    *(v12 + v13) = v14;

    a2 = v16;
    a3 = v22;
  }

  v19 = *(v3 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v19)
  {
    v20 = *(v3 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
    swift_storeEnumTagMultiPayload();
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v19);

    v19(v10);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v19);
    return outlined destroy of PhotogrammetrySession.Request(v10, type metadata accessor for PhotogrammetrySession.Output);
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleSkippedSample(id:)(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples;
    v10 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *(v8 + v9) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = a1;
    *(v8 + v9) = v10;
  }

  v14 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    *v6 = a1;
    swift_storeEnumTagMultiPayload();

    v14(v6);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v14);
    return outlined destroy of PhotogrammetrySession.Request(v6, type metadata accessor for PhotogrammetrySession.Output);
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleRequestError(internalRequest:error:)(uint64_t a1, void *a2)
{
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v64 - v6;
  v7 = type metadata accessor for Date();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v64 - v11;
  v66 = type metadata accessor for PhotogrammetrySession.Output(0);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for PhotogrammetrySession.Request(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v2;
  v67 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_session;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = *(Strong + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    v27 = a1;
    PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1, v18);

    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      outlined init with take of PhotogrammetrySession.Request(v18, v23, type metadata accessor for PhotogrammetrySession.Request);
      v28 = v24;
      goto LABEL_7;
    }
  }

  else
  {
    v27 = a1;
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  v29 = type metadata accessor for PhotogrammetrySession.Request();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v27, v31);
  PhotogrammetrySession.Request.init(_:)(v33, v23);
  v28 = v24;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  }

LABEL_7:
  v35 = *(v28 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v36 = v71;
  if (v35)
  {
    v37 = *(v28 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48);
    outlined init with copy of PhotogrammetrySession.Request(v23, v14, type metadata accessor for PhotogrammetrySession.Request);
    *&v14[v38] = v36;
    swift_storeEnumTagMultiPayload();
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v35);
    v39 = v36;
    v35(v14);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v35);
    outlined destroy of PhotogrammetrySession.Request(v14, type metadata accessor for PhotogrammetrySession.Output);
  }

  v40 = v27;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, logger);
  v42 = v36;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    v47 = v36;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_1C1358000, v43, v44, "requestError: %{public}@", v45, 0xCu);
    outlined destroy of BodyTrackingComponent?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v46, -1, -1);
    MEMORY[0x1C6902A30](v45, -1, -1);
  }

  v49 = swift_weakLoadStrong();
  v51 = v69;
  v50 = v70;
  if (v49)
  {
    v52 = *(v49 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    v53 = v68;
    PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(v40, v68);

    if ((*(v51 + 48))(v53, 1, v50) != 1)
    {
      v54 = v64;
      (*(v51 + 32))(v64, v53, v50);
      v55 = v65;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v51 + 8);
      v58(v55, v50);
      v58(v54, v50);
      v59 = 0;
      v60 = v57;
      goto LABEL_18;
    }
  }

  else
  {
    v53 = v68;
    (*(v69 + 56))(v68, 1, 1, v70);
  }

  outlined destroy of BodyTrackingComponent?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = 0;
  v59 = 1;
LABEL_18:
  OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(v23, 0, v36, v60, v59);
  v61 = swift_weakLoadStrong();
  if (v61)
  {
    v62 = *(v61 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(v40);
  }

  return outlined destroy of PhotogrammetrySession.Request(v23, type metadata accessor for PhotogrammetrySession.Request);
}

uint64_t OutputPublisherMonitor.handleRequestComplete(internalRequest:internalResult:)(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v85 - v6;
  v7 = type metadata accessor for Date();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v85 - v11;
  v91 = type metadata accessor for PhotogrammetrySession.Output(0);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotogrammetrySession.Result(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v94 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for PhotogrammetrySession.Request(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v85 - v30);
  v98 = v2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = *(Strong + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    v34 = a1;
    PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1, v23);

    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      outlined init with take of PhotogrammetrySession.Request(v23, v31, type metadata accessor for PhotogrammetrySession.Request);
      v35 = v94;
      goto LABEL_7;
    }
  }

  else
  {
    v34 = a1;
    (*(v25 + 56))(v23, 1, 1, v24);
  }

  v36 = type metadata accessor for PhotogrammetrySession.Request();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v34, v38);
  PhotogrammetrySession.Request.init(_:)(v40, v31);
  v42 = (*(v25 + 48))(v23, 1, v24);
  v35 = v94;
  if (v42 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v23, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  }

LABEL_7:
  outlined init with copy of PhotogrammetrySession.Request(v31, v28, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = type metadata accessor for PhotogrammetrySession.Request();
    v44 = *(v43 - 8);
    v45 = *(v44 + 64);
    v46 = MEMORY[0x1EEE9AC00](v43);
    v48 = &v85 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v34;
    (*(v44 + 16))(v48, v34, v43, v46);
    v50 = (*(v44 + 88))(v48, v43);
    if (MEMORY[0x1E69983A8] && v50 == *MEMORY[0x1E69983A8])
    {
      (*(v44 + 96))(v48, v43);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
      v52 = *(v51 + 48);
      v53 = *(v51 + 64);
      v54 = v86;
      v55 = v87;
      v56 = v88;
      (*(v87 + 32))(v86, v48, v88);
      outlined destroy of BodyTrackingComponent?(&v48[v53], &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v57 = type metadata accessor for PhotogrammetrySession.Request.Detail();
      (*(*(v57 - 8) + 8))(&v48[v52], v57);
      OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(v54, v31);
      (*(v55 + 8))(v54, v56);
      v58 = v96;
      goto LABEL_16;
    }

    (*(v44 + 8))(v48, v43);
  }

  else
  {
    outlined destroy of PhotogrammetrySession.Request(v28, type metadata accessor for PhotogrammetrySession.Request);
    v49 = v34;
  }

  v59 = v98;
  v58 = v96;
  v60 = swift_weakLoadStrong();
  v61 = type metadata accessor for PhotogrammetrySession.Result();
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v85 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v93, v63);
  PhotogrammetrySession.Result.init(session:internalResult:)(v60, v65, v35);
  v67 = *(v59 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v67)
  {
    v68 = *(v59 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
    v70 = v92;
    outlined init with copy of PhotogrammetrySession.Request(v31, v92, type metadata accessor for PhotogrammetrySession.Request);
    outlined init with copy of PhotogrammetrySession.Request(v35, v70 + v69, type metadata accessor for PhotogrammetrySession.Result);
    swift_storeEnumTagMultiPayload();

    v67(v70);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v67);
    outlined destroy of PhotogrammetrySession.Request(v70, type metadata accessor for PhotogrammetrySession.Output);
  }

  outlined destroy of PhotogrammetrySession.Request(v35, type metadata accessor for PhotogrammetrySession.Result);
LABEL_16:
  v71 = swift_weakLoadStrong();
  v72 = v97;
  if (v71)
  {
    v73 = *(v71 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    v74 = v95;
    PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(v49, v95);

    if ((*(v58 + 48))(v74, 1, v72) != 1)
    {
      v75 = v89;
      (*(v58 + 32))(v89, v74, v72);
      v76 = v90;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v78 = v77;
      v79 = *(v58 + 8);
      v79(v76, v72);
      v79(v75, v72);
      v80 = 0;
      v81 = v78;
      goto LABEL_21;
    }
  }

  else
  {
    v74 = v95;
    (*(v58 + 56))(v95, 1, 1, v97);
  }

  outlined destroy of BodyTrackingComponent?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v81 = 0;
  v80 = 1;
LABEL_21:
  OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(v31, 1, 0, v81, v80);
  v82 = swift_weakLoadStrong();
  if (v82)
  {
    v83 = *(v82 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);

    PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(v49);
  }

  return outlined destroy of PhotogrammetrySession.Request(v31, type metadata accessor for PhotogrammetrySession.Request);
}

uint64_t PhotogrammetrySession.Result.init(session:internalResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for PhotogrammetrySession.Result();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v11, a2, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (MEMORY[0x1E6998380] && v12 == *MEMORY[0x1E6998380])
  {
    (*(v7 + 8))(a2, v6);

    (*(v7 + 96))(v11, v6);
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 32))(a3, v11, v13);
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (MEMORY[0x1E6998378] && v12 == *MEMORY[0x1E6998378])
  {
    (*(v7 + 96))(v11, v6);
    v14 = *v11;
    v15 = v11[1];
    v16 = v11[2];
    v17 = v11[3];
    computeOrientedBoundingBox(for:)(&v40);
    v37 = v41;
    v38 = v42;
    simd_matrix4x4(v40);
    REAABBTransform();
    v37 = v19;
    v38 = v18;

    (*(v7 + 8))(a2, v6);
    *a3 = v38;
    a3[1] = v37;
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  v39 = a1;
  if (MEMORY[0x1E6998368] && v12 == *MEMORY[0x1E6998368])
  {
    (*(v7 + 96))(v11, v6);
    v21 = type metadata accessor for PhotogrammetrySession.PointCloud();
    *&v38 = &v37;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    v24 = MEMORY[0x1EEE9AC00](v21);
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = (*(v22 + 32))(&v37 - v25, v11, v21, v24);
    *&v37 = &v37;
    v27 = MEMORY[0x1EEE9AC00](v26);
    (*(v22 + 16))(&v37 - v25, &v37 - v25, v21, v27);
    PhotogrammetrySession.PointCloud.init(_:)(&v37 - v25, &v40);

    (*(v7 + 8))(a2, v6);
    (*(v22 + 8))(&v37 - v25, v21);
    *a3 = v40.i64[0];
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *&v38 = a3;
    if (MEMORY[0x1E6998370] && v12 == *MEMORY[0x1E6998370])
    {
      (*(v7 + 96))(v11, v6);
      v28 = type metadata accessor for PhotogrammetrySession.Poses();
      *&v37 = &v37;
      v29 = *(v28 - 8);
      v30 = *(v29 + 64);
      v31 = MEMORY[0x1EEE9AC00](v28);
      v32 = &v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = (*(v29 + 32))(v32, v11, v28, v31);
      v34 = MEMORY[0x1EEE9AC00](v33);
      (*(v29 + 16))(v32, v32, v28, v34);
      PhotogrammetrySession.Poses.init(poses:)(v32, &v40);
      if (v39)
      {

        PhotogrammetrySessionImpl.addImageMappingDictionary(into:)(&v40);
      }

      (*(v7 + 8))(a2, v6);
      (*(v29 + 8))(v32, v28);
      v35 = v41;
      v36 = v38;
      *v38 = v40;
      *(v36 + 16) = v35;
      type metadata accessor for PhotogrammetrySession.Result(0);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v53 = *(v2 - 8);
  v50 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v39 = v4;
  v5 = *(v4 - 8);
  v49 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v54 = &v39 - v10;
  v12 = type metadata accessor for UUID();
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v44 = &v39 - v16;
  UUID.init()();
  v47 = type metadata accessor for TaskPriority();
  v18 = *(v47 - 8);
  v46 = *(v18 + 56);
  v48 = v18 + 56;
  v46(v11, 1, 1, v47);
  (*(v5 + 16))(v7, v51, v4);
  outlined init with copy of PhotogrammetrySession.Request(v52, v55, type metadata accessor for PhotogrammetrySession.Request);
  v19 = v13;
  v52 = *(v13 + 16);
  v52(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v12);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = (v49 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v53 + 80) + v21 + 8) & ~*(v53 + 80);
  v23 = *(v19 + 80);
  v45 = v19;
  v24 = (v50 + v23 + v22) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v5 + 32))(v25 + v20, v40, v39);
  v26 = v55;
  *(v25 + v21) = v56;
  outlined init with take of PhotogrammetrySession.Request(v26, v25 + v22, type metadata accessor for PhotogrammetrySession.Request);
  v27 = *(v19 + 32);
  v28 = v25 + v24;
  v29 = v41;
  v30 = v42;
  v27(v28, v42, v41);

  v31 = v54;
  v32 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v25);
  v46(v31, 1, 1, v47);
  v33 = v44;
  v34 = v29;
  v52(v30, v44, v29);
  v35 = (v23 + 40) & ~v23;
  v36 = (v43 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v56;
  v27(v37 + v35, v30, v34);
  *(v37 + v36) = v32;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v37);

  return (*(v45 + 8))(v33, v34);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[14] = v10;
  v11 = *(v10 - 8);
  v7[15] = v11;
  v12 = *(v11 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)()
{
  v29 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v5, logger);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v28);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1C1358000, v7, v26, "Loading model from url: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1C6902A30](v27, -1, -1);
    MEMORY[0x1C6902A30](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[16];
  v21 = v0[14];
  v22 = v0[8];
  type metadata accessor for ModelEntity();
  v6(v20, v22, v21);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  v24 = v0[16];

  return Entity.init(contentsOf:withName:)(v24, 0, 0);
}

{
  v1 = v0[18];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "The model is successfully loaded!", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  if (static Task<>.isCancelled.getter())
  {
    v5 = v0[18];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[20];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C1358000, v6, v7, "Task for model loading was canceled!", v10, 2u);
      MEMORY[0x1C6902A30](v10, -1, -1);
    }
  }

  else
  {
    v11 = v0[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage;
    v12 = *v11;
    v13 = v0[20];
    if (*v11)
    {
      v14 = v0[12];
      v15 = v0[13];
      v16 = v0[10];
      v17 = *(v11 + 8);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
      outlined init with copy of PhotogrammetrySession.Request(v16, v15, type metadata accessor for PhotogrammetrySession.Request);
      *(v15 + v18) = v13;
      type metadata accessor for PhotogrammetrySession.Result(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12);

      v12(v15);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12);

      outlined destroy of PhotogrammetrySession.Request(v15, type metadata accessor for PhotogrammetrySession.Output);
    }

    else
    {
      v19 = v0[20];
    }
  }

  v20 = v0[9];
  v21 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v0[22] = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v22 = *(v20 + v21);
  v0[23] = v22;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v22, 0);
}

{
  v1 = *(v0 + 184);
  OutputPublisherMonitor.Tasks.removeTask(ID:)(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (v2 == 1)
  {
    v4 = *(v0[9] + v0[22]);
    v0[24] = v4;

    return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v4, 0);
  }

  else
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(v0 + 192);
  swift_beginAccess();
  *(v0 + 200) = *(*(v1 + 112) + 16);

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

{
  if (!v0[25])
  {
    v1 = v0[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete;
    v2 = *v1;
    if (*v1)
    {
      v3 = *(v1 + 8);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
    }
  }

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[18];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[21];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C1358000, v2, v3, "Task for model loading was canceled!", v6, 2u);
      MEMORY[0x1C6902A30](v6, -1, -1);
    }
  }

  else
  {
    v7 = v0[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage;
    v8 = *v7;
    v9 = v0[21];
    if (*v7)
    {
      v10 = v0[12];
      v11 = v0[13];
      v12 = v0[10];
      v13 = *(v7 + 8);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48);
      outlined init with copy of PhotogrammetrySession.Request(v12, v11, type metadata accessor for PhotogrammetrySession.Request);
      *(v11 + v14) = v9;
      swift_storeEnumTagMultiPayload();
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
      v15 = v9;
      v8(v11);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);

      outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySession.Output);
    }

    else
    {
    }
  }

  v16 = v0[9];
  v17 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v0[22] = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v18 = *(v16 + v17);
  v0[23] = v18;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v18, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  }

  else
  {
    v5 = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

uint64_t closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v1, 0);
}

{
  v1 = v0[5];
  OutputPublisherMonitor.Tasks.addTask(ID:task:)(v0[3], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingComplete()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Got processingComplete from the internal publisher...", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  v0[10] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingComplete(), v6, 0);
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(*(v1 + 112) + 16);

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingComplete(), 0, 0);
}

{
  if (v0[11])
  {
    v1 = v0[9];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C1358000, v2, v3, "Waiting for internal tasks to finish...", v4, 2u);
      MEMORY[0x1C6902A30](v4, -1, -1);
    }

    v5 = v0[8];

    v6 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
    swift_beginAccess();
    v7 = *(v5 + v6);
    os_unfair_lock_lock((v7 + 20));
    *(v7 + 16) = 1;
    os_unfair_lock_unlock((v7 + 20));
    swift_endAccess();
  }

  else
  {
    v8 = v0[8] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete;
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);

      v9(v11);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), 0, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingCancelled()()
{
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
    _os_log_impl(&dword_1C1358000, v2, v3, "Got processingCancelled from the internal publisher...", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), v6, 0);
}

{
  v1 = *(v0 + 40);
  OutputPublisherMonitor.Tasks.clear()();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    swift_storeEnumTagMultiPayload();

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
    outlined destroy of PhotogrammetrySession.Request(v4, type metadata accessor for PhotogrammetrySession.Output);
    v1 = v0[2];
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *(v1 + 48);

    v6(v8);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6);
  }

  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

void OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(uint64_t a1, char a2, void *a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotogrammetrySession.Request(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Request(a1, v18, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PhotogrammetrySession.Request(v18, type metadata accessor for PhotogrammetrySession.Request);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C1358000, v20, v21, "Not logging the Request to analytics since not .modelFile.", v22, 2u);
      MEMORY[0x1C6902A30](v22, -1, -1);
    }
  }

  else
  {
    v30[1] = v5;
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 8))(v18, v23);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C1358000, v25, v26, "Logging the .modelFile Request analytics...", v27, 2u);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    if (a5)
    {
      v28 = -1.0;
    }

    else
    {
      v28 = *&a4;
    }

    OutputPublisherMonitor.sessionID.getter(v14);
    outlined init with copy of PhotogrammetrySession.Request(a1, &v14[v11[5]], type metadata accessor for PhotogrammetrySession.Request);
    v14[v11[7]] = a2 & 1;
    *&v14[v11[8]] = a3;
    *&v14[v11[9]] = v28;
    v29 = a3;
    specialized AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(v14);
    outlined destroy of PhotogrammetrySession.Request(v14, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  }
}

uint64_t OutputPublisherMonitor.Tasks.addTask(ID:task:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  (*(v7 + 16))(v10, a1, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a2;
    v15 = v14;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v15 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v28);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C1358000, v12, v13, "Adding a task: %{public}s", v15, 0xCu);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v20, -1, -1);
    v21 = v15;
    a2 = v26;
    MEMORY[0x1C6902A30](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();

  v22 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v27;
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.Tasks.removeTask(ID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C1358000, v8, v9, "Removing a task: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1C6902A30](v12, -1, -1);
    v17 = v11;
    a1 = v19;
    MEMORY[0x1C6902A30](v17, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();
}

uint64_t OutputPublisherMonitor.Tasks.clear()()
{
  v1 = v0;
  v54 = type metadata accessor for UUID();
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v50 = v7;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56 = v16;
      *v15 = 136446210;
      swift_beginAccess();
      v55 = *(*(v1 + 112) + 16);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v56);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1C1358000, v12, v13, "Clearing tasks - number of scheduled tasks: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1C6902A30](v16, -1, -1);
      v20 = v15;
      v7 = v50;
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    swift_beginAccess();
    v21 = *(v1 + 112);
    v22 = *(v21 + 64);
    v45 = v21 + 64;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v43 = v1;
    v44 = (v23 + 63) >> 6;
    v46 = v52 + 32;
    v47 = v52 + 16;
    v53 = (v52 + 8);
    v51 = v21;

    v26 = 0;
    v48 = v10;
    if (v25)
    {
      break;
    }

LABEL_8:
    if (v44 <= v26 + 1)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = v44;
    }

    v28 = v27 - 1;
    while (1)
    {
      v1 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v1 >= v44)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
        (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
        v25 = 0;
        goto LABEL_16;
      }

      v25 = *(v45 + 8 * v1);
      ++v26;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v1 = v26;
LABEL_15:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v1 << 6);
    v31 = v51;
    v32 = v52;
    v33 = v49;
    v34 = v54;
    (*(v52 + 16))(v49, *(v51 + 48) + *(v52 + 72) * v30, v54);
    v35 = *(*(v31 + 56) + 8 * v30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
    v37 = *(v36 + 48);
    v38 = *(v32 + 32);
    v7 = v50;
    v38(v50, v33, v34);
    *&v7[v37] = v35;
    (*(*(v36 - 8) + 56))(v7, 0, 1, v36);

    v28 = v1;
    v10 = v48;
LABEL_16:
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, v10, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMR);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
    if ((*(*(v39 - 8) + 48))(v10, 1, v39) == 1)
    {
      break;
    }

    MEMORY[0x1C68F3910](*&v10[*(v39 + 48)], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

    (*v53)(v10, v54);
    v26 = v28;
    if (!v25)
    {
      goto LABEL_8;
    }
  }

  v41 = *(v43 + 112);
  *(v43 + 112) = MEMORY[0x1E69E7CC8];
}

uint64_t OutputPublisherMonitor.Tasks.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *OutputPublisherMonitor.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[3]);
  v3 = v0[6];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[5]);
  v4 = v0[8];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[7]);
  outlined destroy of BodyTrackingComponent?(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  swift_weakDestroy();
  outlined destroy of BodyTrackingComponent?(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput));

  v6 = *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage));
  v7 = *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived);

  v8 = *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete));
  v9 = *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);

  return v0;
}

uint64_t OutputPublisherMonitor.__deallocating_deinit()
{
  OutputPublisherMonitor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for OutputPublisherMonitor()
{
  type metadata accessor for AsyncStream<PhotogrammetrySession.Output>?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<PhotogrammetrySession.Output>?()
{
  if (!lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>?);
    }
  }
}

uint64_t type metadata completion function for PhotogrammetrySessionImpl.RequestMap.Entry()
{
  result = type metadata accessor for PhotogrammetrySession.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhotogrammetrySession.Request();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State);
  }

  return result;
}

uint64_t protocol witness for AsyncOutputIteratorProtocol.next() in conformance AsyncOutputIterator(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

float computeOrientedBoundingBox(for:)@<S0>(_OWORD *a1@<X8>)
{
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v10 = v4;
    v11 = v3;
    v9 = v2;
    swift_once();
    v2 = v9;
    v4 = v10;
    v3 = v11;
  }

  v5 = vmuls_lane_f32(0.5, v2, 2);
  v6 = vmul_f32(*v2.f32, 0x3F0000003F000000);
  *&v7 = vsub_f32(*&v4, v6);
  *(&v7 + 2) = *(&v4 + 2) - v5;
  HIDWORD(v7) = 0;
  *&v4 = vadd_f32(*&v4, v6);
  result = *(&v4 + 2) + v5;
  *(&v4 + 2) = *(&v4 + 2) + v5;
  HIDWORD(v4) = 0;
  *a1 = v3;
  a1[1] = v7;
  a1[2] = v4;
  return result;
}

uint64_t PhotogrammetrySession.PointCloud.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = PhotogrammetrySession.PointCloud.points.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = a1;
    v31 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v39;
    v7 = type metadata accessor for PhotogrammetrySession.PointCloud.Point();
    v8 = v7;
    v9 = *(v7 - 8);
    v10 = *(v9 + 16);
    v35 = v9 + 16;
    v36 = v10;
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v29 = v4;
    v12 = v4 + v11;
    v13 = *(v9 + 64);
    v33 = *(v9 + 72);
    v34 = v13;
    v32 = (v9 + 8);
    do
    {
      v38 = &v29;
      v14 = v34;
      v15 = MEMORY[0x1EEE9AC00](v7);
      v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v36;
      v18 = (v36)(v16, v12, v8, v15);
      v19 = MEMORY[0x1EEE9AC00](v18);
      v17(v16, v16, v8, v19);
      PhotogrammetrySession.PointCloud.Point.position.getter();
      v37 = v20;
      v21 = PhotogrammetrySession.PointCloud.Point.color.getter();
      v22 = *v32;
      (*v32)(v16, v8);
      v7 = v22(v16, v8);
      v39 = v6;
      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v6 = v39;
      }

      *(v6 + 16) = v24 + 1;
      v25 = v6 + 32 * v24;
      *(v25 + 32) = v37;
      *(v25 + 48) = v21;
      v12 += v33;
      --v5;
    }

    while (v5);
    v26 = type metadata accessor for PhotogrammetrySession.PointCloud();
    (*(*(v26 - 8) + 8))(v30, v26);

    a2 = v31;
  }

  else
  {

    v28 = type metadata accessor for PhotogrammetrySession.PointCloud();
    result = (*(*(v28 - 8) + 8))(a1, v28);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
  return result;
}

uint64_t PhotogrammetrySession.Poses.init(poses:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v156 = a2;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So13simd_float4x4aSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v195 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation21PhotogrammetrySessionC4PoseVTt0g5Tf4g_n(v3);
  v157 = a1;
  v5 = PhotogrammetrySession.Poses.posesBySample.getter();
  v7 = v5;
  v8 = 0;
  v9 = v5 + 64;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  *&v6 = 134218242;
  v159 = v6;
  *&v6 = 134349056;
  v158 = v6;
  *&v6 = 134217984;
  v154 = v6;
  *&v6 = 134349314;
  v155 = v6;
  v164 = v13;
  v160 = v5;
LABEL_4:
  v14 = v8;
  while (v12)
  {
    v8 = v14;
LABEL_11:
    v15 = __clz(__rbit64(v12)) | (v8 << 6);
    v16 = *(*(v7 + 48) + 8 * v15);
    v17 = *(v7 + 56) + 80 * v15;
    v18 = *v17;
    v169 = *(v17 + 16);
    v170 = v18;
    v19 = *(v17 + 32);
    v167 = *(v17 + 48);
    v168 = v19;
    v20 = *(v17 + 64);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v166 = __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    LODWORD(v165) = v20;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v163 = v4;
      v26 = v20;
      v27 = v25;
      v161 = swift_slowAlloc();
      *&v177 = v161;
      *v27 = v159;
      *(v27 + 4) = v16;
      *(v27 + 12) = 2080;
      v186 = v170;
      v187 = v169;
      v188 = v168;
      v189 = v167;
      LOBYTE(v190) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
      v28 = String.init<A>(describing:)();
      v162 = v12;
      v30 = v9;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v177);
      v12 = v162;

      *(v27 + 14) = v31;
      v9 = v30;
      v4 = v163;
      _os_log_impl(&dword_1C1358000, v22, v23, "Caching sampleID=%ld pose=%s.", v27, 0x16u);
      v32 = v161;
      __swift_destroy_boxed_opaque_existential_1(v161);
      v33 = v32;
      v7 = v160;
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v4;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    isa = v4[2].isa;
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(isa, v38);
    v40 = isa + v38;
    if (v39)
    {
      goto LABEL_57;
    }

    v41 = v36;
    if (v4[3].isa >= v40)
    {
      v43 = 0uLL;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = v16;
        v60 = v35;
        specialized _NativeDictionary.copy()();
        v43 = 0uLL;
        v35 = v60;
        v16 = v59;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_59;
      }

      v43 = 0uLL;
    }

    v12 &= v12 - 1;
    v4 = v194;
    if (v41)
    {
      v44 = v194[7].isa + 80 * v35;
      v45 = v169;
      *v44 = v170;
      *(v44 + 16) = v45;
      v46 = v167;
      *(v44 + 32) = v168;
      *(v44 + 48) = v46;
      v47 = v165;
      *(v44 + 64) = v165;
      if ((v47 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v194[(v35 >> 6) + 8].isa = (v194[(v35 >> 6) + 8].isa | (1 << v35));
      *(v4[6].isa + v35) = v16;
      v48 = v4[7].isa + 80 * v35;
      v49 = v169;
      *v48 = v170;
      *(v48 + 16) = v49;
      v50 = v167;
      *(v48 + 32) = v168;
      *(v48 + 48) = v50;
      v51 = v165;
      *(v48 + 64) = v165;
      v52 = v4[2].isa;
      v39 = __OFADD__(v52, 1);
      v53 = (v52 + 1);
      if (v39)
      {
        goto LABEL_58;
      }

      v4[2].isa = v53;
      if ((v51 & 1) == 0)
      {
LABEL_28:
        v189 = v43;
        v190 = v43;
        v188 = v43;
        v191 = 1;
        v192 = v43;
        v193 = v43;
        REMakeSRTFromMatrix();
        if (one-time initialization token for identity != -1)
        {
          v151 = v62;
          v165 = v61;
          swift_once();
          v61 = v165;
          v62 = v151;
        }

        HIDWORD(v62) = HIDWORD(v152);
        v186 = v62;
        v187 = v61;
        v151 = v62;
        v185 = 0uLL;
        v63 = PhotogrammetrySession.Poses.intrinsicsBySample.getter();
        v64 = *(v63 + 16);
        v150 = v9;
        v153 = v16;
        if (v64 && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v66 & 1) != 0))
        {
          v67 = *(v63 + 56) + (v65 << 6);
          v68 = *v67;
          *&v152 = *(v67 + 8);
          v69 = *(v67 + 16);
          *&v165 = *(v67 + 24);
          v70 = *(v67 + 40);
          v162 = *(v67 + 32);
          LODWORD(v161) = *(v67 + 48);

          v71 = Logger.logObject.getter();
          LODWORD(v145) = static os_log_type_t.debug.getter();
          v163 = v71;
          v72 = os_log_type_enabled(v71, v145);
          v147 = v69;
          v148 = v68;
          v146 = v70;
          if (v72)
          {
            v73 = swift_slowAlloc();
            v74 = v165;
            v75 = v73;
            v144 = swift_slowAlloc();
            *&v171 = v144;
            *v75 = v159;
            *(v75 + 4) = v153;
            *(v75 + 12) = 2080;
            *&v177 = v68;
            *(&v177 + 1) = v152;
            *&v178 = v69;
            *(&v178 + 1) = v74;
            *&v179 = v162;
            *(&v179 + 1) = v70;
            LOBYTE(v180) = v161;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float3x3aSgMd, &_sSo13simd_float3x3aSgMR);
            v76 = String.init<A>(describing:)();
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v171);

            *(v75 + 14) = v78;
            v79 = v163;
            _os_log_impl(&dword_1C1358000, v163, v145, "Got estimated intrinsics sampleID=%ld  intrinsics=%s", v75, 0x16u);
            v80 = v144;
            __swift_destroy_boxed_opaque_existential_1(v144);
            MEMORY[0x1C6902A30](v80, -1, -1);
            MEMORY[0x1C6902A30](v75, -1, -1);

            v81 = v74;
          }

          else
          {

            v81 = v165;
          }
        }

        else
        {

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = v154;
            *(v84 + 4) = v153;
            _os_log_impl(&dword_1C1358000, v82, v83, "Couldn't find estimated intrinsics matching sampleID=%ld", v84, 0xCu);
            MEMORY[0x1C6902A30](v84, -1, -1);
          }

          v147 = 0;
          v148 = 0;
          *&v152 = 0;
          v81 = 0;
          v162 = 0;
          v146 = 0;
          LODWORD(v161) = 1;
        }

        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
        v145 = &v139;
        v86 = *(v85 - 8);
        v87 = *(v86 + 64);
        MEMORY[0x1EEE9AC00](v85 - 8);
        v144 = (&v139 - v88);
        v89 = PhotogrammetrySession.Poses.lensDistortionDataBySample.getter();
        v90 = *(v89 + 16);
        *&v165 = v81;
        if (v90 && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v153), (v92 & 1) != 0))
        {
          v163 = v4;
          v93 = v144;
          outlined init with copy of [String : String](*(v89 + 56) + *(v86 + 72) * v91, v144, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);

          v94 = type metadata accessor for LensDistortionData();
          v143 = &v139;
          v95 = *(v94 - 8);
          v96 = *(v95 + 64);
          MEMORY[0x1EEE9AC00](v94);
          v141 = &v139 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
          v139 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
          v140 = &v139;
          MEMORY[0x1EEE9AC00](v97);
          v98 = &v139 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
          outlined init with copy of [String : String](v93, v98, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
          v142 = v95;
          if ((*(v95 + 48))(v98, 1, v94) == 1)
          {
            outlined destroy of BodyTrackingComponent?(v93, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
            outlined destroy of BodyTrackingComponent?(v98, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
            v7 = v160;
            v4 = v163;
            goto LABEL_42;
          }

          v114 = v141;
          v115 = v142;
          v116 = (*(v142 + 32))(v141, v98, v94);
          v117 = MEMORY[0x1EEE9AC00](v116);
          v118 = &v139 - v139;
          (*(v115 + 16))(&v139 - v139, v114, v94, v117);
          LensDistortionData.center.getter();
          v120 = v119;
          v121 = LensDistortionData.radialLookupTable.getter();
          v124 = *(v115 + 8);
          v123 = v115 + 8;
          v122 = v124;
          (v124)(v118, v94);
          swift_beginAccess();
          *&v185 = v120;
          *(&v185 + 1) = v121;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v142 = v123;
            v129 = v128;
            *&v171 = v128;
            *v127 = v159;
            *(v127 + 4) = v153;
            *(v127 + 12) = 2080;
            v177 = v185;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18LensDistortionDataVSgMd, &_s17RealityFoundation18LensDistortionDataVSgMR);
            v130 = String.init<A>(describing:)();
            v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v171);
            v140 = v122;
            v133 = v132;

            *(v127 + 14) = v133;
            _os_log_impl(&dword_1C1358000, v125, v126, "Got estimated lens distortion data sampleID=%ld  lensDistortionData=%s", v127, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v129);
            MEMORY[0x1C6902A30](v129, -1, -1);
            MEMORY[0x1C6902A30](v127, -1, -1);

            (v140)(v141, v94);
          }

          else
          {

            (v122)(v141, v94);
          }

          outlined destroy of BodyTrackingComponent?(v144, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
          v7 = v160;
          v100 = v147;
          v99 = v148;
          v101 = v152;
          v4 = v163;
        }

        else
        {

LABEL_42:
          v100 = v147;
          v99 = v148;
          v101 = v152;
        }

        swift_beginAccess();
        v102 = v185;
        *(&v176[1] + 8) = 0u;
        *(v176 + 8) = 0u;

        REMakeSRTFromMatrix();
        HIDWORD(v103) = HIDWORD(v149);
        v171 = v103;
        v172 = v104;
        v170 = v103;
        *&v173 = v99;
        *(&v173 + 1) = v101;
        *&v174 = v100;
        *(&v174 + 1) = v165;
        *&v175 = v162;
        *(&v175 + 1) = v146;
        LOBYTE(v176[0]) = v161;
        if (*(&v102 + 1))
        {
          v177 = v102;
          *(&v178 + 1) = &type metadata for LensDistortionData;
        }

        else
        {
          v177 = 0u;
          v178 = 0u;
        }

        outlined assign with take of Any?(&v177, v176 + 8, &_sypSgMd, &_sypSgMR);
        v181 = v175;
        v182 = v176[0];
        v183 = v176[1];
        v184 = *&v176[2];
        v177 = v171;
        v178 = v172;
        v179 = v173;
        v180 = v174;
        swift_beginAccess();
        outlined assign with take of PhotogrammetrySession.Pose(&v177, &v186);

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v171 = v108;
          *v107 = v155;
          *(v107 + 4) = v153;
          *(v107 + 12) = 2082;
          outlined init with copy of PhotogrammetrySession.Pose(&v186, &v177);
          v109 = String.init<A>(describing:)();
          v163 = v4;
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v171);
          v4 = v163;

          *(v107 + 14) = v111;
          _os_log_impl(&dword_1C1358000, v105, v106, "Adding posesBySample[%{public}ld] = %{public}s", v107, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v108);
          MEMORY[0x1C6902A30](v108, -1, -1);
          v112 = v107;
          v113 = v153;
          MEMORY[0x1C6902A30](v112, -1, -1);

          v9 = v150;
          v13 = v164;
        }

        else
        {

          v9 = v150;
          v13 = v164;
          v113 = v153;
        }

        outlined init with copy of PhotogrammetrySession.Pose(&v186, &v177);
        specialized Dictionary.subscript.setter(&v177, v113);
        outlined destroy of PhotogrammetrySession.Pose(&v186);
        v149 = v170;
        v152 = v151;
        goto LABEL_4;
      }
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v16;
      v58 = v56;
      *v56 = v158;
      *(v56 + 4) = v57;
      _os_log_impl(&dword_1C1358000, v54, v55, "Poses: sampleID=%{public}ld was unable to be registered.  Not returning a pose.", v56, 0xCu);
      MEMORY[0x1C6902A30](v58, -1, -1);
    }

    v14 = v8;
    v13 = v164;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {

      v134 = v195;
      v135 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation3URLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v136 = type metadata accessor for PhotogrammetrySession.Poses();
      result = (*(*(v136 - 8) + 8))(v157, v136);
      v138 = v156;
      *v156 = v134;
      v138[1] = v135;
      v138[2] = v4;
      return result;
    }

    v12 = *(v9 + 8 * v8);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 12) >= *(v12 - 12))
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          v32 = *(v12 + 10);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *(v12 - 6);
          *(v12 + 1) = v20;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *(v13 + 10) = v32;
          *(v13 + 3) = v23;
          *(v13 + 4) = v24;
          *(v13 + 2) = v22;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = &v8[16 * v96];
        v5 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v97), (*a3 + 32 * *v98), (*a3 + 32 * v99), v9);
        if (v94)
        {
        }

        if (v99 < v5)
        {
          goto LABEL_134;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_135;
        }

        *v97 = v5;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_136;
        }

        v96 = *v95 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 32 * v7);
      v11 = (*a3 + 32 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 5;
        v15 = v11 + 5;
        do
        {
          v17 = v15[4];
          v15 += 4;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[3] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_24;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_24:
      if (v13)
      {
LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_139;
        }

        if (v9 < v7)
        {
          v19 = 32 * v7 - 32;
          v20 = 32 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = (v25 + v20);
              v27 = (v25 + v19);
              v28 = *(v25 + v20);
              v29 = *(v25 + v20 + 8);
              v30 = *(v25 + v20 + 24);
              v31 = *(v25 + v20 + 28);
              if (v20 != v19 || v26 >= v27 + 2)
              {
                v23 = v27[1];
                *v26 = *v27;
                v26[1] = v23;
              }

              v24 = v25 + v19;
              *v24 = v28;
              *(v24 + 8) = v29;
              *(v24 + 24) = v30;
              *(v24 + 28) = v31;
            }

            ++v22;
            v19 -= 32;
            v20 += 32;
          }

          while (v22 < v21);
        }
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        v33 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_140;
        }

        if (v33 >= v32)
        {
          v33 = a3[1];
        }

        if (v33 < v9)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v47 = v5;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_147;
    }

    if (v49)
    {
      v5 = v47;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_78:
          if (v57)
          {
            goto LABEL_125;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_128;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_132;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_92:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_99:
        v9 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v91 = *&v8[16 * v9 + 32];
        v92 = *&v8[16 * v53 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v53 + 32]), (*a3 + 32 * v92), v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v9];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = specialized Array.remove(at:)(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_123;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_124;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_126;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_129;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v5 = v47;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_109;
    }
  }

  v101 = v9;
  v34 = *a3;
  v35 = *a3 + 32 * v7 + 28;
  v36 = (v9 - v7);
  v104 = v33;
LABEL_46:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 28);
    v40 = *(v38 - 60) == *(v38 - 28) && *(v38 - 52) == *(v38 - 20);
    if (v40 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_45:
      ++v7;
      v35 += 32;
      --v36;
      if (v7 != v104)
      {
        goto LABEL_46;
      }

      v7 = v104;
      v9 = v101;
      goto LABEL_57;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 - 60);
    v41 = *(v38 - 44);
    *(v38 - 32) = *v38;
    v38 -= 32;
    v43 = *(v38 + 4);
    v44 = *(v38 + 28);
    v45 = *(v38 + 12);
    *v39 = v42;
    v39[1] = v41;
    *(v38 - 28) = v43;
    *(v38 - 20) = v45;
    *(v38 - 4) = v44;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

{
  v94 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v8 = *v94;
    if (!*v94)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_140:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (*v87 << 6)), (*a3 + (*v89 << 6)), (*a3 + (v90 << 6)), v8);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_132;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_133;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_134;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + (v6 << 6);
      result = *(v9 + 8);
      v10 = (*a3 + (v8 << 6));
      if (result == v10[1] && *(v9 + 16) == v10[2])
      {
        v12 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = result;
      }

      v6 = (v8 + 2);
      if ((v8 + 2) < v5)
      {
        v13 = v10 + 18;
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 9) && *v13 == *(v13 - 8))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 8;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_137;
        }

        if (v8 < v6)
        {
          v15 = (v6 << 6) - 64;
          v16 = v8 << 6;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_143;
              }

              v23 = (v22 + v16);
              v24 = (v22 + v15);
              v96 = *v23;
              v97 = v23[1];
              *v98 = v23[2];
              *&v98[9] = *(v23 + 41);
              if (v16 != v15 || v23 >= v24 + 4)
              {
                v19 = *v24;
                v20 = v24[1];
                v21 = v24[3];
                v23[2] = v24[2];
                v23[3] = v21;
                *v23 = v19;
                v23[1] = v20;
              }

              *v24 = v96;
              v24[1] = v97;
              v24[2] = *v98;
              *(v24 + 41) = *&v98[9];
            }

            ++v18;
            v15 -= 64;
            v16 += 64;
          }

          while (v18 < v17);
        }
      }
    }

    v25 = a3[1];
    if (v6 < v25)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_136;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_138;
        }

        if (&v8[a4] >= v25)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = &v8[a4];
        }

        if (v26 < v8)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v6 != v26)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v6 < v8)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 2);
    v39 = *(v7 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v41;
    v42 = &v7[16 * v40];
    *(v42 + 4) = v8;
    *(v42 + 5) = v6;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_145;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 4);
          v46 = *(v7 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_77:
          if (v48)
          {
            goto LABEL_123;
          }

          v61 = &v7[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_126;
          }

          v67 = &v7[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_130;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v71 = &v7[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_91:
        if (v66)
        {
          goto LABEL_125;
        }

        v74 = &v7[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_128;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_98:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v8 = *&v7[16 * v82 + 32];
        v83 = *&v7[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v8 << 6)), (*a3 + (*&v7[16 * v44 + 32] << 6)), (*a3 + (v83 << 6)), v43);
        if (v4)
        {
        }

        if (v83 < v8)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v82 >= *(v7 + 2))
        {
          goto LABEL_120;
        }

        v84 = &v7[16 * v82];
        *(v84 + 4) = v8;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v7 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v7[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_121;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_122;
      }

      v56 = &v7[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_124;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_127;
      }

      if (v60 >= v52)
      {
        v78 = &v7[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_131;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_108;
    }
  }

  v27 = *a3;
  v92 = v8;
  v28 = &v8[-v6];
  v29 = *a3 + (v6 << 6);
LABEL_46:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v30 + 1) == *(v30 - 7) && *(v30 + 2) == *(v30 - 6);
    if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_45:
      ++v6;
      --v28;
      v29 += 64;
      if (v6 != v26)
      {
        goto LABEL_46;
      }

      v6 = v26;
      v8 = v92;
      goto LABEL_57;
    }

    if (!v27)
    {
      break;
    }

    v33 = v30 - 4;
    v34 = v30[1];
    *v99 = v30[2];
    *&v99[9] = *(v30 + 41);
    v35 = *v30;
    v36 = *(v30 - 3);
    *v30 = *(v30 - 4);
    v30[1] = v36;
    v37 = *(v30 - 1);
    v30[2] = *(v30 - 2);
    v30[3] = v37;
    *(v33 + 41) = *&v99[9];
    v33[1] = v34;
    v33[2] = *v99;
    v30 -= 4;
    *v33 = v35;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v82), (*a3 + 96 * *v84), (*a3 + 96 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 48);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 48);
      v13 = v8 + 2;
      v14 = (v11 + 144);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[24];
        v14 += 24;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 96 * v6 - 96;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v94 = *(v21 + v10 + 32);
            v96 = *(v21 + v10 + 48);
            v98 = *(v21 + v10 + 64);
            v100 = *(v21 + v10 + 80);
            v90 = *(v21 + v10);
            v92 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x60uLL);
            *(v20 + 32) = v94;
            *(v20 + 48) = v96;
            *(v20 + 64) = v98;
            *(v20 + 80) = v100;
            *v20 = v90;
            *(v20 + 16) = v92;
          }

          ++v19;
          v17 -= 96;
          v10 += 96;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v75), (*a3 + 96 * *v77), (*a3 + 96 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 96 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 48) >= *(v26 - 48))
    {
LABEL_29:
      ++v6;
      v23 += 96;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 96;
    v95 = *(v26 + 32);
    v97 = *(v26 + 48);
    v99 = *(v26 + 64);
    v101 = *(v26 + 80);
    v91 = *v26;
    v93 = *(v26 + 16);
    v28 = *(v26 - 48);
    *(v26 + 32) = *(v26 - 64);
    *(v26 + 48) = v28;
    v29 = *(v26 - 16);
    *(v26 + 64) = *(v26 - 32);
    *(v26 + 80) = v29;
    v30 = *(v26 - 80);
    *v26 = *(v26 - 96);
    *(v26 + 16) = v30;
    *(v27 + 32) = v95;
    *(v27 + 48) = v97;
    *(v27 + 64) = v99;
    *(v27 + 80) = v101;
    v26 -= 96;
    *v27 = v91;
    *(v27 + 16) = v93;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}