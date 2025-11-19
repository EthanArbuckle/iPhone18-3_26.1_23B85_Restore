uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    outlined init with copy of Any(*(a3 + 56) + 32 * v13, v22);
    v20[0] = v15;
    v20[1] = v16;
    outlined init with copy of Any(v22, &v21);
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = specialized Sequence<>.starts<A>(with:)();
    outlined destroy of BodyTrackingComponent?(v20, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v22);

    if ((v15 & 1) == 0)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v19 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    outlined init with copy of Any(*(a3 + 56) + 32 * v13, v22);
    v20[0] = v15;
    v20[1] = v16;
    outlined init with copy of Any(v22, &v21);
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = specialized Sequence<>.starts<A>(with:)();
    outlined destroy of BodyTrackingComponent?(v20, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v22);

    if (v15)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n171_s10RealityKit19EnvironmentResourceC06importD8Internal33_55E864D8785BE4AB70755CF3CF8A6C56LL10contentsOf7optionsAC10Foundation3URLV_SDySSypGSgtKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

uint64_t specialized EnvironmentResource.__allocating_init(coreIBLAsset:coreSkyboxAsset:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 24) = a2;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (a2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v4;
}

uint64_t specialized static EnvironmentResource.CreateOptions.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 1);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    result = 0;
    if ((v6 & 0xFF00) != 0x400)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v8 == 5)
  {
    result = 0;
    if ((v6 & 0xFF00) != 0x500)
    {
      return result;
    }

LABEL_13:
    if (((v3 ^ *(a2 + 2)) & 1) == 0)
    {
      if (v5)
      {
        if ((a2[8] & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v4 == *(a2 + 1))
        {
          v12 = *(a2 + 16);
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          return 0;
        }
      }

      return 1;
    }

    return result;
  }

  if ((v6 & 0xFE00) == 0x400)
  {
    return 0;
  }

  result = 0;
  v10 = (v6 ^ v2);
  if (v8 == v6 >> 8 && v10 == 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized static EnvironmentResource.areEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_3:
  swift_beginAccess();
  v6 = *(a1 + 24);
  swift_beginAccess();
  v7 = *(a2 + 24);
  v8 = v7 == 0;
  if (v7)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v6)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

uint64_t specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v15 = MEMORY[0x1C68F3280](a1, a2);
  v16 = [v13 pathForResource:v15 ofType:0];

  if (a4)
  {
    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v17;
    }

    v32 = MEMORY[0x1C68F3280](a1, a2);
    v33 = MEMORY[0x1C68F3280](0x6C62696572, 0xE500000000000000);
    v34 = [v13 pathForResource:v32 ofType:v33];

    if (!v34)
    {

      return 0;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_16:
    return v17;
  }

  v40 = v8;
  if (v16 || (v18 = MEMORY[0x1C68F3280](a1, a2), v19 = MEMORY[0x1C68F3280](0x786F62796B73, 0xE600000000000000), v16 = [v13 pathForResource:v18 ofType:v19], v18, v19, v16))
  {
    v20 = v9;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = v9;
    v17 = 0;
    v22 = 0;
  }

  v23 = MEMORY[0x1C68F3280](a1, a2);
  v24 = [v13 pathForResource:v23 ofType:0];

  if (!v24)
  {
    v25 = MEMORY[0x1C68F3280](a1, a2);
    v26 = MEMORY[0x1C68F3280](0x6C62696572, 0xE500000000000000);
    v24 = [v13 pathForResource:v25 ofType:v26];

    if (!v24)
    {
      if (v22)
      {
        goto LABEL_13;
      }

      v28 = 0;
      goto LABEL_25;
    }
  }

  v27 = v20;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v40;
  if (v22)
  {
LABEL_13:

    goto LABEL_16;
  }

  if (!v30)
  {
LABEL_25:

    return v28;
  }

  Logger.init(subsystem:category:)();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1C1358000, v36, v37, "Using .reibl files is not supported publicly in RealityKit anymore. Please use EnvironmentResource.loadAllowREIbl to load .reibl files for internal useage.", v38, 2u);
    MEMORY[0x1C6902A30](v38, -1, -1);
  }

  (*(v27 + 8))(v12, v31);
  return v28;
}

uint64_t specialized static EnvironmentResource.loadCompiledResource(from:)()
{
  v56 = *MEMORY[0x1E69E9840];
  if (URL.pathExtension.getter() == 0x657974696C616572 && v1 == 0xEA0000000000766ELL)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v11 = URL.pathExtension.getter();
      v16 = v15;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 3;
      swift_willThrow();
LABEL_15:
      v24 = *MEMORY[0x1E69E9840];
      return v11;
    }
  }

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v51);
  memset(v45, 0, sizeof(v45));
  v44 = 0u;
  v43 = 0u;
  v41 = 0u;
  v42 = 0u;
  v46 = 1;
  v47 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  LOBYTE(v40) = 2;
  v4 = v52;
  v5 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v5 + 32))(v4, v5);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v39 = 0;
  v7 = v52;
  v8 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v8 + 32))(v7, v8);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = RERealityFileMountFileAtURL();

  if (!v12)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v39);
    if (!v0)
    {
      _StringGuts.grow(_:)(34);

      *&v37 = 0xD00000000000001FLL;
      *(&v37 + 1) = 0x80000001C18E1F00;
      v22 = URL.path.getter();
      MEMORY[0x1C68F3410](v22);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v11 = 0xD00000000000001FLL;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v23 = 0xD00000000000001FLL;
      *(v23 + 8) = 0x80000001C18E1F00;
      *(v23 + 16) = 4;
      swift_willThrow();
    }

    goto LABEL_14;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v12, v51, ServiceLocatorForLegacyAPIWorkaround, &v40, &v54);
  if (v0)
  {
    v13 = v52;
    v14 = v53;
    v11 = __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v14 + 32))(v13, v14);
    RERealityFileUnmount();
LABEL_14:
    outlined destroy of __REAssetBundle.LoadOptions(&v40);
    __swift_destroy_boxed_opaque_existential_1(v51);
    goto LABEL_15;
  }

  v18 = v52;
  v19 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v19 + 32))(v18, v19);
  RERealityFileUnmount();
  outlined destroy of __REAssetBundle.LoadOptions(&v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v11 = v55;
  if (v55 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (v20 < 2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 < 2)
    {
LABEL_13:
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 4;
      swift_willThrow();
      outlined destroy of __REAssetBundle(&v54);
      goto LABEL_15;
    }
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      if (v26 != 1)
      {
        v27 = *(v11 + 32);
        v28 = *(v11 + 40);

        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v27 = MEMORY[0x1C68F41F0](0, v11);
  v28 = MEMORY[0x1C68F41F0](1, v11);
LABEL_21:
  v29 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v29 + 120, &v40);
  v30 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  (*(*(&v30 + 1) + 32))(v30, *(&v30 + 1));
  v31 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v31 + 40, &v37);
  if (v38)
  {
    outlined init with take of ForceEffectBase(&v37, v51);
    v32 = v52;
    v33 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v33 + 24))(v32, v33);
    v34 = *(v27 + 16);
    REAssetManagerPostLoadProcessImageBasedLightAsset();
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v35 = *(v27 + 16);
    v36 = *(v28 + 16);
    type metadata accessor for EnvironmentResource();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    *(v11 + 16) = v35;
    swift_beginAccess();
    *(v11 + 24) = v36;
    RERetain();
    REAssetSetSwiftObject();
    RERetain();
    REAssetSetSwiftObject();

    outlined destroy of __REAssetBundle(&v54);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t specialized static EnvironmentResource.getCubeMapData(coreTexture:options:source:)(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextureType = RETextureAssetDataGetTextureType();
  if (TextureType != 2)
  {
    if (TextureType == 5)
    {
      v42 = v5;
      v10 = *MEMORY[0x1E6998DF8];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a2 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
        v15 = v14;

        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v45 = 0u;
      v46 = 0u;
      outlined destroy of BodyTrackingComponent?(&v45, &_sypSgMd, &_sypSgMR);
      v26 = *MEMORY[0x1E6998E00];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a2 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
        v30 = v29;

        if (v30)
        {
LABEL_14:
          outlined init with copy of Any(*(a2 + 56) + 32 * v13, &v45);
          outlined destroy of BodyTrackingComponent?(&v45, &_sypSgMd, &_sypSgMR);
          Logger.init(subsystem:category:)();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v33 = 138412546;
            *(v33 + 4) = v10;
            *(v33 + 12) = 2112;
            v35 = v10;
            v36 = *MEMORY[0x1E6998E00];
            *(v33 + 14) = *MEMORY[0x1E6998E00];
            *v34 = v35;
            v34[1] = v36;
            v37 = v35;
            v38 = v36;
            _os_log_impl(&dword_1C1358000, v31, v32, "Options %@ and %@ only apply when creating a cube map from a 2D lat/long texture source. They are not applicable for cube map sources and will be ignored.", v33, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v34, -1, -1);
            MEMORY[0x1C6902A30](v33, -1, -1);
          }

          (*(v42 + 8))(v8, v4);
          goto LABEL_19;
        }
      }

      else
      {
      }

      v45 = 0u;
      v46 = 0u;
      outlined destroy of BodyTrackingComponent?(&v45, &_sypSgMd, &_sypSgMR);
LABEL_19:
      RERetain();
      goto LABEL_23;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 7;
LABEL_22:
    swift_willThrow();
    goto LABEL_23;
  }

  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v16 + 40, &v43);
  if (v44)
  {
    outlined init with take of ForceEffectBase(&v43, &v45);
    v18 = *(&v46 + 1);
    v19 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    (*(v19 + 24))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    *&v43 = 0;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a1 = RECreateCubeTextureDataFromLatLong();

    if (a1)
    {
LABEL_23:
      v40 = *MEMORY[0x1E69E9840];
      return a1;
    }

    a1 = v43;
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    type metadata accessor for URL();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v21);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v22 = *(&v45 + 1);
    if (a1)
    {
      v23 = a1;

      v22 = 0;
      v24 = 5;
    }

    else
    {
      a1 = v45;
      v24 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v39 = a1;
    *(v39 + 8) = v22;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = v24;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(uint64_t a1, uint64_t a2))()
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = partial apply for closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
  if (!a2)
  {
    return v6;
  }

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v7 + 40, &v27);
  if (v28)
  {
    outlined init with take of ForceEffectBase(&v27, v29);
    v9 = v30;
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v10 + 24))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
    SkyboxTexture = REIBLAssetGetSkyboxTexture();
    if (SkyboxTexture)
    {
      v12 = SkyboxTexture;
      type metadata accessor for TextureResource();
      v13 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(v12, a2);
      if (v2)
      {
        goto LABEL_10;
      }

      v15 = v13;
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    type metadata accessor for TextureResource();
    SpecularTexture = REIBLAssetGetSpecularTexture();
    v18 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(SpecularTexture, a2);
    if (!v2)
    {
      v20 = v18;
      v21 = v19;
      DiffuseTexture = REIBLAssetGetDiffuseTexture();
      v23 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(DiffuseTexture, a2);
      v25 = v24;
      v26 = swift_allocObject();
      v26[2] = v15;
      v26[3] = v16;
      v26[4] = v20;
      v26[5] = v21;
      v26[6] = v23;
      v26[7] = v25;
      v26[8] = partial apply for closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
      v26[9] = v5;
      return partial apply for specialized closure #2 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
    }

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15);
LABEL_10:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(uint64_t a1, Class isa, uint64_t a3))()
{
  v4 = v3;
  v30 = *MEMORY[0x1E69E9840];
  v7 = specialized static __ServiceLocator.shared.getter();
  v29 = 0;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, v26);
  v8 = v27;
  v9 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v10 = *(v9 + 32);

  v10(v8, v9);
  swift_beginAccess();
  outlined init with copy of __RenderService?(v7 + 40, &v21);
  if (!v22)
  {
    __break(1u);
  }

  outlined init with take of ForceEffectBase(&v21, v23);
  v11 = v24;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v12 + 24))(v11, v12);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v13 = REAssetManagerImageBasedLightCreateWithCubeMapNullableAsync();

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (!v13)
  {
    v4 = v29;
    if (v29)
    {
      v15 = v29;
      v16 = 0;
      v17 = 5;
    }

    else
    {
      v16 = 0x80000001C18E98C0;
      v17 = 6;
      v4 = 0xD000000000000052;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v18 = v4;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v17;
    swift_willThrow();
    goto LABEL_11;
  }

  v14 = specialized static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(v13, a3);
  if (v3)
  {
LABEL_11:
    RERelease();

    goto LABEL_12;
  }

  v4 = v14;
  RERelease();

LABEL_12:
  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

unint64_t *specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x1E69E9840];
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 16);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  RETextureImportOperationCreateWithURL();

  RETextureImportOperationSetSemantic();
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v41 = v10;
  v11 = *MEMORY[0x1E6998F18];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = &v41;
  specialized Dictionary._Variant.removeValue(forKey:)(v12, v14, &v47);

  if (v48)
  {
    outlined init with take of Any(&v47, &v44);
    outlined init with copy of Any(&v44, &v47);
    if (!swift_dynamicCast())
    {

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError();
      swift_allocError();
      *v22 = v15;
      v22[1] = v21;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v44);
      goto LABEL_19;
    }

    v15 = v43;
    v16 = MEMORY[0x1C68F3280](v42, v43);

    RETextureImportOperationSetColorSpaceName();

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v47, &_sypSgMd, &_sypSgMR);
  }

  v42 = 0;
  AssetData = RETextureImportOperationCreateAssetData();
  if (!AssetData)
  {

    v23 = v42;
    if (v42)
    {
      type metadata accessor for CFErrorRef(0);
      v15 = v24;
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v25 = v23;
    }

    else
    {
      v15 = URL.absoluteString.getter();
      v33 = v32;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v34 = v15;
      *(v34 + 8) = v33;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = 2;
    }

    swift_willThrow();
    goto LABEL_19;
  }

  v18 = AssetData;
  if (v42)
  {
  }

  v19 = v41;

  specialized static EnvironmentResource.getCubeMapData(coreTexture:options:source:)(v18, v19);
  if (v3)
  {
    swift_bridgeObjectRelease_n();
    RERelease();
LABEL_19:
    RERelease();
    goto LABEL_20;
  }

  v26 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v26 + 120, &v44);
  v27 = v45;
  v28 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  (*(v28 + 32))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  v30 = specialized _NativeDictionary.filter(_:)(v19, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  v31 = specialized _NativeDictionary.filter(_:)(v19, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

  v35 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, v31, v30);

  v15 = (v35)(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v40 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v15;
  *(inited + 56) = v40;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  RERelease();
  RERelease();
LABEL_20:
  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v51 = a4;
  v53 = type metadata accessor for URL();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50[-v12];
  v52 = v7;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = a3;
  v16 = MEMORY[0x1C68F3280](a1, a2);
  v17 = a2;
  object = MEMORY[0x1C68F3280](0x657974696C616572, 0xEA0000000000766ELL);
  v19 = [v14 URLForResource:v16 withExtension:object];

  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = v52;
    v21 = v53;
    (*(v52 + 32))(v13, v10, v53);
    if (URL.pathExtension.getter() == 0x657974696C616572 && v22 == 0xEA0000000000766ELL)
    {

      v25 = v62;
    }

    else
    {
      object = v22;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = v62;
      if ((v24 & 1) == 0)
      {
        object = v62;
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(v13, v26);
        if (!object)
        {
          object = v27;
        }

LABEL_28:
        (*(v20 + 8))(v13, v21);
        return object;
      }
    }

    v46 = specialized static EnvironmentResource.loadCompiledResource(from:)();
    if (!v25)
    {
      object = v46;
    }

    goto LABEL_28;
  }

  v28 = v14;
  specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(a1, v17, v14, v51 & 1);
  v30 = v29;

  if (!v30)
  {
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v47 = a1;
    *(v47 + 8) = v17;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
LABEL_24:
    swift_willThrow();

    return object;
  }

  v31 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v31 + 120, v59);
  v32 = v60;
  v33 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  (*(v33 + 32))(v32, v33);
  v34 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v34 + 40, &v54);
  if (v55)
  {
    outlined init with take of ForceEffectBase(&v54, v56);
    v36 = v57;
    v37 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    (*(v37 + 24))(v36, v37);
    object = String.utf8CString.getter();

    v38 = REAssetManagerImageBasedLightMemoryAssetCreateFromReiblFileAsync();

    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v59);
    if (v38)
    {
      RERetain();
      RERelease();
      REAssetHandleLoadNow();
      if (REAssetHandleLoadFailed())
      {
        v39 = REAssetCopyDescription();
        v40 = String.init(_:)(v39);
        object = v40._object;
        FailedMessage = REAssetHandleCopyLoadFailedMessage();
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
        swift_allocError();
        *v45 = v40;
        *(v45 + 16) = v42;
        *(v45 + 24) = v44;
        *(v45 + 32) = 1;
        swift_willThrow();

        RERelease();
      }

      else
      {
        SkyboxTexture = REIBLAssetGetSkyboxTexture();
        type metadata accessor for EnvironmentResource();
        object = swift_allocObject();
        object[3] = 0;
        object[2] = v38;
        swift_beginAccess();
        object[3] = SkyboxTexture;
        RERetain();
        REAssetSetSwiftObject();
        if (SkyboxTexture)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        RERelease();
      }

      return object;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v48 = a1;
    *(v48 + 8) = v17;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 2;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t specialized static EnvironmentResource.validate(cubeTexture:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (RETextureAssetGetSemantic() - 3 >= 2)
  {
    lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    result = RETextureAssetGetTextureType();
    if (result == 5)
    {
      return result;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 7;
  }

  return swift_willThrow();
}

uint64_t specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a3;
  v34 = *(a3 + 8);
  v76 = *(a3 + 16);
  v32 = *(a3 + 28);
  v9 = *(a3 + 24);
  if (URL.pathExtension.getter() == 0x657974696C616572 && v10 == 0xEA0000000000766ELL)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v28 = URL.pathExtension.getter();
      v30 = v29;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v30;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 3;
      return swift_willThrow();
    }
  }

  result = specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(a1, a4);
  if (!v4)
  {
    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C18BB5B0;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = result;
      v16 = MEMORY[0x1E69E6B70];
      v55 = MEMORY[0x1E69E6B70];
      *&v53 = v14;
      outlined init with copy of Any(&v53, v35);
      swift_dynamicCast();
      v17 = v74[0];
      __swift_destroy_boxed_opaque_existential_1(&v53);
      RERetain();
      type metadata accessor for __REAsset();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v15 + 32) = v18;
      result = swift_beginAccess();
      v19 = *(v13 + 24);
      if (v19)
      {
        v20 = v9 | (v32 << 32);
        v75[3] = v16;
        v75[0] = v19;
        outlined init with copy of Any(v75, &v53);
        swift_dynamicCast();
        v21 = v35[0];
        __swift_destroy_boxed_opaque_existential_1(v75);
        RERetain();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v15 + 40) = v22;
        v23 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __REAssetService(v23 + 120, &v53);
        outlined init with copy of __REAssetService(&v53, v35);
        v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v15, v35, v24, 0, v74);
        __swift_destroy_boxed_opaque_existential_1(&v53);
        v73 = 0;
        v72 = 1;
        v71 = 1;
        v25 = v76;
        outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v8, v34);
        outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(0, 5uLL);
        v26 = v73;
        LOBYTE(v23) = v72;
        LOBYTE(v53) = 2;
        *(&v53 + 1) = 1;
        v54 = v73;
        v55 = 0;
        v56 = 1;
        v57 = 0;
        v58 = v72;
        v59 = v8;
        v60 = v34;
        v61 = v25;
        v27 = HIDWORD(v20);
        v63 = BYTE4(v20);
        v33 = v20;
        v62 = v20;
        LOBYTE(v20) = v71;
        v64 = 0;
        v65 = v71;
        v66 = 0;
        v67 = 0u;
        v68 = 0u;
        v69 = 1;
        v70 = 3;
        __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, &v53);

        outlined destroy of __REAssetBundle(v74);
        LOBYTE(v35[0]) = 2;
        v35[1] = 1;
        v36 = v26;
        v37 = 0;
        v38 = 1;
        v39 = 0;
        v40 = v23;
        v41 = v8;
        v42 = v34;
        v43 = v25;
        v45 = v27;
        v44 = v33;
        v46 = 0;
        v47 = v20;
        v48 = 0;
        v49 = 0u;
        v50 = 0u;
        v51 = 1;
        v52 = 3;
        return outlined destroy of __REAssetBundle.ExportOptions(v35);
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

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in EnvironmentResource.init(cube:options:)()
{
  v1 = *(v0 + 16);
  RERetain();
  return v1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnvironmentResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit19EnvironmentResourceC9LoadError33_55E864D8785BE4AB70755CF3CF8A6C56LLO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t getEnumTagSinglePayload for EnvironmentResource.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EnvironmentResource.LoadError(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(a1, a2, v8, v2 + v6, v7);
}

void partial apply for doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for EnvironmentResource.OptionError(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.OptionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t static Reverb.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    if (v3 == 10)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

void Reverb.Preset.init(core:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 > 204)
  {
    if (a1 <= 206)
    {
      if (a1 == 205)
      {
        *a2 = 5;
      }

      else
      {
        *a2 = 6;
      }

      return;
    }

    switch(a1)
    {
      case 207:
        *a2 = 8;
        return;
      case 208:
        *a2 = 7;
        return;
      case 209:
        *a2 = 9;
        return;
    }
  }

  else
  {
    if (a1 > 201)
    {
      if (a1 == 202)
      {
        *a2 = 2;
      }

      else if (a1 == 203)
      {
        *a2 = 3;
      }

      else
      {
        *a2 = 4;
      }

      return;
    }

    if (a1 == 101)
    {
      *a2 = 0;
      return;
    }

    if (a1 == 201)
    {
      *a2 = 1;
      return;
    }
  }

  v13[9] = v2;
  v13[10] = v3;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.audio);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    type metadata accessor for REAudioReverbPreset(0);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C1358000, v6, v7, "Unknown REAudioReverbPreset case: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  *a2 = 10;
}

uint64_t Reverb.Preset.core.getter()
{
  v1 = *v0;
  if (v1 < 0xA)
  {
    return qword_1C18BBC58[v1];
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.audio);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C1358000, v4, v5, "Unknown reverb preset case: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1C6902A30](v7, -1, -1);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  return 100;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Reverb.Kind(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t Reverb.hash(into:)()
{
  v1 = *v0;
  if (v1 == 10)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](1);
  }

  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int Reverb.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 10)
  {
    MEMORY[0x1C68F4C10](1);
    v2 = v1;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int Reverb.Preset.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Reverb and conformance Reverb()
{
  result = lazy protocol witness table cache variable for type Reverb and conformance Reverb;
  if (!lazy protocol witness table cache variable for type Reverb and conformance Reverb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb and conformance Reverb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Preset and conformance Reverb.Preset()
{
  result = lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset;
  if (!lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Reverb.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xA;
  v9 = v7 - 10;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Reverb.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Reverb.Kind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Reverb.Kind(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Kind and conformance Reverb.Kind()
{
  result = lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind;
  if (!lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind()
{
  result = lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind;
  if (!lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind);
  }

  return result;
}

Swift::Void __swiftcall Entity.deleteCollisionComponents()()
{
  v1 = v0;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(0, 0, 0, 0, v0);

  v2 = *(v0 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_15:
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v1 + 16);
      if (v3 >= REEntityGetChildCount())
      {
        break;
      }

      v5 = *(v1 + 16);
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_21;
      }

      v7 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_20;
        }

        v8 = specialized static Entity.entityInfoType(_:)();
        if (v8)
        {
          v9 = (*(v8 + 232))();
          v10 = *(v9 + 16);

          MEMORY[0x1C68F9740](v10, 0);
          *(v9 + 16) = v7;
          MEMORY[0x1C68F9740](v7, v9);
        }

        else
        {
          makeEntity(for:)(v7);
        }
      }

      v11 = *(v1 + 16);
      if (v3 >= REEntityGetChildCount())
      {
        goto LABEL_19;
      }

      ++v3;
      Entity.deleteCollisionComponents()();

      v12 = *(v1 + 16);
      if (v3 >= REEntityGetChildCount())
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

Swift::Void __swiftcall Entity.generateCollisionShapes(recursive:static:)(Swift::Bool recursive, Swift::Bool a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  REEntityGetComponent();
  v7 = *(v2 + 16);

  Component = REEntityGetComponent();

  if (!Component)
  {
    v9 = *(v3 + 16);

    v10 = REEntityGetComponent();

    if (!v10)
    {
      goto LABEL_4;
    }
  }

  v11 = *(v3 + 16);

  v12 = REEntityGetComponent();

  if (!v12)
  {
    Entity.generateCollisionShape(isStatic:)(a2);
    if (!recursive)
    {
      return;
    }
  }

  else
  {
LABEL_4:
    if (!recursive)
    {
      return;
    }
  }

  v13 = *(v3 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_18:
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v15 = *(v3 + 16);
      if (v14 >= REEntityGetChildCount())
      {
        break;
      }

      v16 = *(v3 + 16);
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_26;
      }

      v18 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_25;
        }

        v19 = specialized static Entity.entityInfoType(_:)();
        if (v19)
        {
          v20 = (*(v19 + 232))();
          v21 = *(v20 + 16);

          MEMORY[0x1C68F9740](v21, 0);
          *(v20 + 16) = v18;
          MEMORY[0x1C68F9740](v18, v20);
        }

        else
        {
          makeEntity(for:)(v18);
        }
      }

      v22 = *(v3 + 16);
      if (v14 >= REEntityGetChildCount())
      {
        goto LABEL_24;
      }

      ++v14;
      Entity.generateCollisionShapes(recursive:static:)(1, a2);

      v23 = *(v3 + 16);
      if (v14 >= REEntityGetChildCount())
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

Swift::Void __swiftcall Entity.generateCollisionShape(isStatic:)(Swift::Bool isStatic)
{
  v2 = v1;
  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v1, v1);
  v4 = *(v1 + 16);
  REEntityComputeMeshBounds();
  if ((REAABBIsEmpty() & 1) == 0)
  {
    REAABBExtents();
    if (v7 < 0.0001 && v5 < 0.0001 && v6 < 0.0001)
    {
      v12 = specialized static ShapeResource.generateSphere(radius:)();
    }

    else
    {
      specialized static ShapeResource.generateBox(size:)();
      REAABBCenter();
      v11 = v10;
      if (one-time initialization token for identity != -1)
      {
        v16 = v10;
        swift_once();
        v11 = v16;
      }

      v12 = ShapeResource.offsetBy(rotation:translation:)(static simd_quatf.identity, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1898160;
    *(v13 + 32) = v12;
    v14 = one-time initialization token for default;

    if (v14 != -1)
    {
      swift_once();
    }

    if (isStatic)
    {
      v15 = 0x100000000;
    }

    else
    {
      v15 = 0;
    }

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v13, v15, static CollisionFilter.default, 0, v2);
  }
}

uint64_t static Scene.fromCore(_:)(uint64_t a1)
{
  v2 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v2)
  {

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v4 = swift_allocObject();
    Scene.init(coreScene:)(a1);
    return v4;
  }
}

uint64_t one-time initialization function for pickingEmitter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  AssetHandle = REAssetManagerCreateAssetHandle();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (AssetHandle)
  {
    v9 = MEMORY[0x1E69E6B70];
    v8[0] = AssetHandle;
    outlined init with copy of Any(v8, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v8);
    RERetain();
    type metadata accessor for __REAsset();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    type metadata accessor for __RERenderGraphEmitter();
    result = swift_allocObject();
    *(result + 16) = v5;
    pickingEmitter = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t pickingEmitter.getter()
{
  if (one-time initialization token for pickingEmitter != -1)
  {
    swift_once();
  }
}

uint64_t Scene.name.getter()
{
  v1 = *(v0 + 16);
  RESceneGetName();

  return String.init(cString:)();
}

uint64_t key path setter for Scene.__audioListener : Scene(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return Scene.__audioListener.didset();
}

uint64_t Scene.__audioListener.didset()
{
  swift_beginAccess();
  active = *(v0 + 72);
  if (!active)
  {
    active = Scene.internalActiveCamera.getter();
  }

  v2 = *(v0 + 80);
  *(v0 + 80) = active;

  Scene.internalAudioListener.didset(v2);
}

uint64_t Scene.__audioListener.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t Scene.__audioListener.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;

  active = *(v1 + 72);
  if (!active)
  {
    active = Scene.internalActiveCamera.getter();
  }

  v5 = *(v1 + 80);
  *(v1 + 80) = active;

  Scene.internalAudioListener.didset(v5);
}

uint64_t (*Scene.__audioListener.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Scene.__audioListener.modify;
}

uint64_t Scene.__audioListener.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (*(v5 + 72))
    {
      active = *(v5 + 72);
    }

    else
    {
      active = Scene.internalActiveCamera.getter();
      v5 = *(a1 + 24);
    }

    v7 = *(v5 + 80);
    *(v5 + 80) = active;

    Scene.internalAudioListener.didset(v7);
  }

  return result;
}

uint64_t Scene.internalAudioListener.didset(uint64_t result)
{
  v2 = *(v1 + 80);
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_11;
  }

  v3 = result;
  if (v2)
  {
    if (*(result + 16) == *(v2 + 16))
    {
      return result;
    }
  }

  else
  {
    v4 = *(result + 16);
  }

  REListenerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REListenerComponentSetSystemListener();
    v5 = *(v3 + 16);
    REListenerComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  v2 = *(v1 + 80);
  if (v2)
  {
LABEL_11:
    v6 = *(v2 + 16);

    REListenerComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    REListenerComponentSetSystemListener();
  }

  return result;
}

AUAudioUnit_optional __swiftcall Scene.__addPostProcessingAudioEffect(_:)(AudioComponentDescription a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  if (REServiceLocatorGetAudioService())
  {
    inserted = REAudioServiceInsertPostProcessingEffect();

    v5 = inserted;
  }

  else
  {
    v5 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

uint64_t key path setter for Scene.defaultCamera : Scene(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
}

uint64_t Scene.defaultCamera.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t Scene.defaultCamera.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t Scene.internalActiveCamera.getter()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    result = closure #1 in Scene.internalActiveCamera.getter(54, v0);
    if (!result)
    {
      result = closure #1 in Scene.internalActiveCamera.getter(55, v0);
      if (!result)
      {
        result = closure #1 in Scene.internalActiveCamera.getter(56, v0);
        if (!result)
        {
          swift_beginAccess();
          if (!v0[9])
          {
            swift_beginAccess();
            v2 = v0[10];
            v0[10] = v0[11];
            swift_retain_n();
            Scene.internalAudioListener.didset(v2);
          }

          swift_beginAccess();
          v3 = v0[11];
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in Scene.internalActiveCamera.getter(uint64_t a1, void *a2)
{
  v3 = a2[2];
  ComponentsOfType = RESceneGetComponentsOfType();
  if (v5 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = ComponentsOfType;
  swift_beginAccess();
  while (1)
  {
    v8 = *v7;
    Entity = REComponentGetEntity();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v10 = swift_dynamicCastClassUnconditional();
LABEL_46:
      v45 = v10;
      goto LABEL_47;
    }

    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        goto LABEL_23;
      }
    }

    swift_endAccess();
    v15 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = static SceneManager.customComponentTypeObjectIdToHandles;
    v57 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v20 = *(v17 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_66;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v57;
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v26 = v57;
        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_70;
      }

      v19 = v24;
      v26 = v57;
      if ((v23 & 1) == 0)
      {
LABEL_17:
        v26[(v19 >> 6) + 8] |= 1 << v19;
        *(v26[6] + 8 * v19) = &type metadata for __EntityInfoComponent;
        *(v26[7] + 8 * v19) = v15;
        v27 = v26[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_67;
        }

        v26[2] = v29;
        goto LABEL_22;
      }
    }

    *(v26[7] + 8 * v19) = v15;
LABEL_22:
    static SceneManager.customComponentTypeObjectIdToHandles = v26;
LABEL_23:
    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_45;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_45;
    }

    v31 = *Object;
    if (*(Object + 8))
    {
      v32 = 1;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (v32)
    {
      v33 = *(Object + 8);
    }

    else
    {
      v34 = *v31;
      v35 = String.init(utf8String:)();
      if (v36)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE000000000000000;
      }

      v31 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v34 == 42, v37, v38);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v31;
    }

    if (!v31)
    {
      goto LABEL_69;
    }

    v39 = String.init(utf8String:)();
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = MEMORY[0x1C68F3280](v39, v41);

    v43 = NSClassFromString(v42);

    if (!v43 || (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v44 = swift_dynamicCastMetatype()) == 0))
    {
LABEL_45:
      v10 = makeEntity(for:)(Entity);
      goto LABEL_46;
    }

    v45 = (*(v44 + 232))();
    v46 = *(v45 + 16);

    MEMORY[0x1C68F9740](v46, 0);
    *(v45 + 16) = Entity;
    MEMORY[0x1C68F9740](Entity, v45);

LABEL_47:
    v47 = *(v45 + 16);
    if ((REEntityIsActive() & 1) == 0)
    {
      goto LABEL_4;
    }

    v48 = a2[11];
    if (v48)
    {
      if (*(v45 + 16) == *(v48 + 16))
      {
        goto LABEL_4;
      }
    }

    if (!REEntityGetComponent())
    {
      break;
    }

    IsAuthoritative = RENetworkComponentIsAuthoritative();
    ShouldAlwaysMigrate = RENetworkComponentShouldAlwaysMigrate();
    v51 = RENetworkComponentGuid();
    IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
    v53 = 0x10000;
    if (!IsOwnershipLocked)
    {
      v53 = 0;
    }

    v54 = 256;
    if (!ShouldAlwaysMigrate)
    {
      v54 = 0;
    }

    outlined consume of SynchronizationComponent?(v51, v53 | v54 | IsAuthoritative, 0, 1);
    if (IsAuthoritative)
    {
      goto LABEL_61;
    }

LABEL_4:

    ++v7;
    if (!--v6)
    {
      return 0;
    }
  }

  outlined consume of SynchronizationComponent?(0, 0, 0, 2);
LABEL_61:
  swift_beginAccess();
  if (!a2[9])
  {
    v55 = a2[10];
    a2[10] = v45;

    Scene.internalAudioListener.didset(v55);
  }

  return v45;
}

uint64_t Scene.anchors.setter(uint64_t a1)
{
  v2 = *(*a1 + 16);

  if (v2 != *(v1 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Scene.anchors.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Scene.removeAnchor(_:)(uint64_t *a1)
{
  v2 = *a1;

  specialized Scene.AnchorCollection.remove(_:)(a1, &v4);
}

uint64_t Scene.eventService.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of EventService?(v1 + 120, &v9);
  if (v10)
  {
    return outlined init with take of ForceEffectBase(&v9, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v9, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  v4 = *(v1 + 16);
  EventBus = RESceneGetEventBus();
  v6 = type metadata accessor for REEventBus();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC8];
  *(v7 + 16) = EventBus;
  *(v7 + 24) = v8;
  RERetain();
  REEventBusSetSwiftObject();
  a1[3] = v6;
  a1[4] = &protocol witness table for REEventBus;
  *a1 = v7;
  outlined init with copy of __REAssetService(a1, &v9);
  swift_beginAccess();
  outlined assign with take of Any?(&v9, v1 + 120, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  return swift_endAccess();
}

uint64_t Scene.engineEventService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RESceneGetECSManagerNullable();
  if (result && (ServiceLocator = REECSManagerGetServiceLocator(), (result = MEMORY[0x1C68FE240](ServiceLocator)) != 0))
  {
    SwiftObject = REEngineGetSwiftObject();
    if (SwiftObject)
    {
      v7 = SwiftObject;

      result = swift_beginAccess();
      v8 = *(v7 + 40);
      if (v8)
      {
        v9 = *(v8 + 32);
        *(a1 + 24) = type metadata accessor for REEventBus();
        *(a1 + 32) = &protocol witness table for REEventBus;

        *a1 = v9;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      EventBus = REEngineGetEventBus();
      v11 = type metadata accessor for REEventBus();
      v12 = swift_allocObject();
      v13 = MEMORY[0x1E69E7CC8];
      *(v12 + 16) = EventBus;
      *(v12 + 24) = v13;
      RERetain();
      REEventBusSetSwiftObject();
      v14 = *(v1 + 160);
      *(v1 + 160) = v12;

      *(a1 + 24) = v11;
      *(a1 + 32) = &protocol witness table for REEventBus;
      *a1 = v12;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t static Scene.pixelCastRequests.getter()
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Scene.pixelCastRequests.setter(void *a1)
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Scene.pixelCastRequests = a1;
}

uint64_t (*static Scene.pixelCastRequests.modify())()
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKSimulationSceneCoordinator.shared.modify;
}

uint64_t key path getter for static Scene.pixelCastRequests : Scene.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static Scene.pixelCastRequests;
}

uint64_t key path setter for static Scene.pixelCastRequests : Scene.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for pixelCastRequests;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Scene.pixelCastRequests = v1;
}

uint64_t Scene.__allocating_init(name:addSystemsCallback:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  String.utf8CString.getter();

  v4 = RESceneCreate();

  a3(v4);
  type metadata accessor for Scene();
  v5 = swift_allocObject();
  Scene.init(coreScene:)(v4);

  RERelease();
  MEMORY[0x1C68FE0C0](v4, 1);
  Scene.addDefaultCamera()();
  Scene.addAudioMixer()();
  swift_beginAccess();
  v6 = *(v5 + 72);
  *(v5 + 72) = 0;

  active = *(v5 + 72);
  if (!active)
  {
    active = Scene.internalActiveCamera.getter();
  }

  v8 = *(v5 + 80);
  *(v5 + 80) = active;

  Scene.internalAudioListener.didset(v8);

  return v5;
}

uint64_t Scene.applyReverbPreset(_:)()
{
  v1 = v0;
  v2 = *(v0 + 104);
  if (v2)
  {
    goto LABEL_3;
  }

  type metadata accessor for Entity();
  swift_allocObject();
  v3 = Entity.init()();
  Entity.name.setter();
  Entity.turnIntoNinja()();
  v4 = *(v3 + 16);
  REReverbComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = *(v1 + 16);
  v6 = *(v3 + 16);
  RESceneAddEntity();
  REReverbComponentSetPriority();
  v7 = *(v1 + 104);
  *(v1 + 104) = v3;

  v2 = *(v1 + 104);
  if (v2)
  {
LABEL_3:
    v9 = *(v2 + 16);

    REReverbComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REReverbComponentSetReverbPreset();
    }
  }

  return result;
}

Swift::Void __swiftcall Scene.setReverbPresetPriority(_:)(Swift::UInt16 a1)
{
  v2 = v1;
  v3 = *(v1 + 104);
  if (v3)
  {
    goto LABEL_3;
  }

  type metadata accessor for Entity();
  swift_allocObject();
  v4 = Entity.init()();
  Entity.name.setter();
  Entity.turnIntoNinja()();
  v5 = *(v4 + 16);
  REReverbComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v6 = *(v2 + 16);
  v7 = *(v4 + 16);
  RESceneAddEntity();
  REReverbComponentSetPriority();
  v8 = *(v2 + 104);
  *(v2 + 104) = v4;

  v3 = *(v2 + 104);
  if (v3)
  {
LABEL_3:
    v9 = *(v3 + 16);

    REReverbComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REReverbComponentSetPriority();
    }
  }
}

Swift::Void __swiftcall Scene.addDefaultCamera()()
{
  v1 = v0;
  type metadata accessor for Entity();
  swift_allocObject();
  v2 = Entity.init()();
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;

  Entity.name.setter();

  v4 = *(v1 + 88);
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v1 + 88);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v6, v22);
  if ((v24 & 1) == 0)
  {
    v10 = v22[2];
    v9 = v22[3];
    v8 = v22[0];
    v7 = v22[1];
    *&v11 = v22[4];
    HIDWORD(v11) = v23;
    goto LABEL_6;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = *(&static Transform.identity + 1);
    v8 = static Transform.identity;
    v9 = *(&xmmword_1EBEB2BB0 + 1);
    v10 = xmmword_1EBEB2BB0;
    v11 = xmmword_1EBEB2BC0;
LABEL_6:
    DWORD2(v11) = 2.0;
    v25[0] = v8;
    v25[1] = v7;
    v25[2] = v10;
    v25[3] = v9;
    v26 = v11;
    v27 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v25);
    v12 = *(v4 + 16);

    v13 = *(v4 + 16);

    if (v12 == v13)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v14 = *(v1 + 88);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = *(v1 + 88);

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0x7F8000003C23D70ALL, 0x142700000, v14);

  v16 = *(v1 + 88);
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v16 + 16);
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentSetRenderOrder();
  v18 = *(v1 + 88);
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = *(v18 + 16);
  REAnchorComponentGetComponentType();
  REEntityAddComponentByClass();
  if (!*(v1 + 88))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v1 + 88);

  Entity.turnIntoNinja()();

  if (*(v1 + 88))
  {

    Scene.AnchorCollection.appendNinja(_:)(v21);

    return;
  }

LABEL_20:
  __break(1u);
}

Swift::Void __swiftcall Scene.addAudioMixer()()
{
  if (!*(v0 + 96))
  {
    v1 = v0;
    type metadata accessor for Entity();
    swift_allocObject();
    v2 = Entity.init()();
    Entity.name.setter();
    Entity.turnIntoNinja()();
    v3 = *(v2 + 16);
    REAudioMixerComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v4 = *(v1 + 16);
    v5 = *(v2 + 16);
    RESceneAddEntity();
    v6 = *(v1 + 96);
    *(v1 + 96) = v2;
  }
}

Swift::Void __swiftcall Scene.addAudioReverb()()
{
  if (!*(v0 + 104))
  {
    v1 = v0;
    type metadata accessor for Entity();
    swift_allocObject();
    v2 = Entity.init()();
    Entity.name.setter();
    Entity.turnIntoNinja()();
    v3 = *(v2 + 16);
    REReverbComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v4 = *(v1 + 16);
    v5 = *(v2 + 16);
    RESceneAddEntity();
    REReverbComponentSetPriority();
    v6 = *(v1 + 104);
    *(v1 + 104) = v2;
  }
}

uint64_t static Scene.__testInit(name:)()
{

  return specialized Scene.__allocating_init(name:)();
}

uint64_t Scene.init(coreScene:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  swift_unknownObjectWeakInit();
  *(v1 + 104) = 0;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  swift_weakInit();
  *(v1 + 232) = 0;
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  RERetain();
  *(v1 + 16) = a1;
  RESceneSetSwiftObject();
  return v1;
}

void *Scene.deinit()
{
  v1 = v0[2];
  RESceneSetSwiftObject();
  v2 = v0[2];
  RERelease();
  swift_beginAccess();
  if (v0[6])
  {
    outlined init with copy of __REAssetService((v0 + 3), v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  swift_beginAccess();
  if (v0[28])
  {
    v3 = v0[29];
    v4 = v0[28];
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 56);
    swift_unknownObjectRetain();
    v6(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  outlined destroy of BodyTrackingComponent?((v0 + 3), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of WeakSessionAR((v0 + 8));
  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  v11 = v0[13];

  swift_weakDestroy();
  outlined destroy of BodyTrackingComponent?((v0 + 15), &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  v12 = v0[20];

  outlined destroy of BodyTrackingComponent?((v0 + 21), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v13 = v0[26];
  swift_unknownObjectRelease();
  v14 = v0[28];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Scene.__deallocating_deinit()
{
  Scene.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Scene.enableCollisions(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7;
  swift_beginAccess();
  if (*(v1 + 48))
  {
    outlined init with copy of __REAssetService(v1 + 24, v25);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  if (a1)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v9 = swift_allocObject();
    swift_weakInit();
    Scene.eventService.getter(v25);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    type metadata accessor for RECollisionDidStartEventEx(0);
    EventService.publisher<A>(for:on:)(v12, v23, v10, v12, v11);
    v13 = v22[1];
    v14 = v22[2];
    v15 = v22[3];
    __swift_destroy_boxed_opaque_existential_1(v25);
    v25[0] = v13;
    v25[1] = v14;
    v25[2] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStartEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    Publisher.compactMap<A>(_:)();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMR);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    (*(v5 + 32))(&v19[*(*v19 + *MEMORY[0x1E695BEE8] + 16)], v8, v4);
    v25[0] = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in Scene.enableCollisions(_:);
    *(v20 + 24) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<CollisionEvents.Began> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR);
    v21 = Publisher<>.sink(receiveValue:)();

    v26 = type metadata accessor for AnyCancellable();
    v27 = MEMORY[0x1E695BF08];

    v25[0] = v21;
    outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Any?(v25, v2 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    swift_endAccess();
  }
}

uint64_t closure #1 in Scene.enableCollisions(_:)(__int128 *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v27 = a1[4];
  v11 = a1[1];
  v23 = *a1;
  v24 = v11;
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v26;
  *(v14 + 64) = v25;
  *(v14 + 80) = v15;
  *(v14 + 96) = v27;
  v16 = v24;
  *(v14 + 32) = v23;
  *(v14 + 48) = v16;
  aBlock[4] = partial apply for closure #1 in closure #1 in Scene.enableCollisions(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v17 = _Block_copy(aBlock);
  outlined init with copy of CollisionEvents.Began(&v23, v21);

  static DispatchQoS.unspecified.getter();
  v21[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v9, v5, v17);
  _Block_release(v17);

  (*(v20 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v19);
}

uint64_t closure #1 in closure #1 in Scene.enableCollisions(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    if (swift_dynamicCastClass())
    {
      v8 = *a2;

      Entity.__interactionIdentifier.getter(v6);
      v9 = type metadata accessor for UUID();
      if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
      {
        swift_unknownObjectRelease();

        return outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1C1898160;
        *(v10 + 32) = a2[1];

        v11 = Entity.__tags.getter();
        type metadata accessor for __RKEntityCollisionTrigger();
        v12 = swift_allocObject();
        *(v12 + 24) = 0;
        swift_beginAccess();
        *(v12 + 24) = v8;
        *(v12 + 32) = v10;
        *(v12 + 40) = v11;
        *(v12 + 16) = 0;
        *(v12 + 18) = 0;
        __RKEntityInteractionManager.__performInteractions(matching:on:)(v12, 0);

        swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t Scene.findEntity(named:)()
{
  v1 = *(v0 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v4 = specialized static Entity.entityInfoType(_:)();
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = EntityByName;
        MEMORY[0x1C68F9740](EntityByName, v5);

        return v5;
      }

      else
      {
        return makeEntity(for:)(EntityByName);
      }
    }
  }

  return result;
}

uint64_t Scene.findEntity(id:)()
{
  v1 = *(v0 + 16);
  result = RESceneFindEntity();
  if (result)
  {
    v3 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      return swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
      }

      else
      {
        v4 = specialized static Entity.entityInfoType(_:)();
        if (v4)
        {
          v5 = (*(v4 + 232))();
          v6 = *(v5 + 16);

          MEMORY[0x1C68F9740](v6, 0);
          *(v5 + 16) = v3;
          MEMORY[0x1C68F9740](v3, v5);

          return v5;
        }

        else
        {
          return makeEntity(for:)(v3);
        }
      }
    }
  }

  return result;
}

uint64_t Scene.__interactionService.getter()
{
  if (v0[26])
  {
    v1 = v0[27];
    v2 = v0[26];
  }

  else
  {
    v3 = v0[2];
    type metadata accessor for __RKEntityInteractionManager();
    swift_allocObject();
    v4 = v0;
    v2 = __RKEntityInteractionManager.init(sceneRef:)(v3);
    v5 = v4[26];
    v4[26] = v2;
    v4[27] = &protocol witness table for __RKEntityInteractionManager;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t Scene.synchronizationService.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  return swift_unknownObjectRetain();
}

uint64_t Scene.synchronizationService.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 224);
  v7 = *(v3 + 232);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  if (!v6)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  v9 = *(v7 + 56);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  if (*(v3 + 224))
  {
LABEL_3:
    v10 = *(v3 + 232);
    v11 = swift_getObjectType();
    v12 = *(v10 + 48);
    swift_unknownObjectRetain();
    v12(v11, v10);
    swift_unknownObjectRelease();
  }

LABEL_4:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*Scene.synchronizationService.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 224);
  swift_unknownObjectRetain();
  return Scene.synchronizationService.modify;
}

void Scene.synchronizationService.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 3;
  v5 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    Scene.synchronizationService.setter(v6, v5);
    v7 = *v3;
    swift_unknownObjectRelease();
  }

  else
  {
    Scene.synchronizationService.setter(*v3, v2[4]);
  }

  free(v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Scene.containsChangeSceneActions()()
{
  v65 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v56 = *(v65 - 8);
  v1 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Data.Deallocator();
  v8 = *(v50 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    v12 = *(static __RKEntityInteractionsComponent.registration + 3);
    v13 = closure #1 in Scene.entitiesWithInteractions()(v0);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v16 = 0;
      v58 = type metadata accessor for Scene();
      v59 = v14 & 0xC000000000000001;
      v53 = v14 & 0xFFFFFFFFFFFFFF8;
      v52 = v14 + 32;
      v49 = *MEMORY[0x1E6969010];
      v48 = (v8 + 13);
      v47 = (v8 + 1);
      v57 = i;
      v54 = v14;
      v55 = v11;
      while (1)
      {
        if (v59)
        {
          v8 = MEMORY[0x1C68F41F0](v16, v14);
          v17 = __OFADD__(v16++, 1);
          if (v17)
          {
            break;
          }

          goto LABEL_11;
        }

        if (v16 >= *(v53 + 16))
        {
          goto LABEL_37;
        }

        v8 = *(v52 + 8 * v16);

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          break;
        }

LABEL_11:
        v62 = v8;
        if (!static __RKEntityInteractionsComponent.registration)
        {
          goto LABEL_20;
        }

        v18 = *(static __RKEntityInteractionsComponent.registration + 3);
        v19 = v8[2];
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_20;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_20;
        }

        v21 = *(Object + 16);
        if (v21)
        {
          v22 = *(Object + 16);

          v23 = v21[2];
          if (v23)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }

        v24 = *Object;
        if (*Object)
        {
          v61 = v16;
          v25 = strlen(v24);
          (*v48)(v11, v49, v50);
          Data.Deallocator._deallocator.getter();
          if (v25)
          {
            v26 = type metadata accessor for __DataStorage();
            v27 = *(v26 + 48);
            v28 = *(v26 + 52);
            swift_allocObject();

            v29 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
            v30 = __DataStorage._capacity.modify();
            *v31 |= 0x8000000000000000;
            v30(&v64, 0);
            v25 = specialized Data._Representation.init(_:count:)(v29, v25);
            v33 = v32;
          }

          else
          {
            v39 = Data.Deallocator._deallocator.getter();
            v39(v24, 0);

            v33 = 0xC000000000000000;
          }

          (*v47)(v11, v50);
          v40 = type metadata accessor for JSONDecoder();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
          lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
          v43 = v51;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (v43)
          {

            outlined consume of Data._Representation(v25, v33);

            v51 = 0;
            v21 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v51 = 0;

            outlined consume of Data._Representation(v25, v33);
            v21 = v64;
          }

          i = v57;
          v16 = v61;
          v23 = v21[2];
          if (v23)
          {
LABEL_21:
            v61 = v16;
            v64 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
            v8 = v64;
            v34 = *(v56 + 80);
            v60 = v21;
            v35 = v21 + ((v34 + 32) & ~v34);
            v36 = *(v56 + 72);
            do
            {
              _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(v35, v3, type metadata accessor for __RKEntityInteractionSpecification);
              _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(&v3[*(v65 + 20)], v7, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v3, type metadata accessor for __RKEntityInteractionSpecification);
              v64 = v8;
              v38 = v8[2];
              v37 = v8[3];
              if (v38 >= v37 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
                v8 = v64;
              }

              v8[2] = v38 + 1;
              outlined init with take of __RKEntityActionSpecification(v7, v8 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v38);
              v35 += v36;
              --v23;
            }

            while (v23);

            v14 = v54;
            v11 = v55;
            i = v57;
            v16 = v61;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_20:
          v21 = MEMORY[0x1E69E7CC0];
          v23 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v23)
          {
            goto LABEL_21;
          }
        }

LABEL_31:

        v8 = MEMORY[0x1E69E7CC0];
LABEL_32:
        LOBYTE(v0) = static Scene.containsChangeSceneActions(_:)(v8);

        if ((v0 & 1) != 0 || v16 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    LOBYTE(v0) = 0;
LABEL_40:
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v44 = xmmword_1C18BBCB0;
    *(v44 + 16) = 0;
    swift_willThrow();
  }

  return v0 & 1;
}

uint64_t static Scene.containsChangeSceneActions(_:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(v8, v6, type metadata accessor for __RKEntityActionSpecification);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 6)
    {
      break;
    }

    v10 = static Scene.containsChangeSceneActions(_:)(*(v6 + 1));

    if (v10)
    {
      return 1;
    }

LABEL_4:
    v8 += v9;
    if (!--v7)
    {
      return 0;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v6, type metadata accessor for __RKEntityActionSpecification);
    goto LABEL_4;
  }

  _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v6, type metadata accessor for __RKEntityActionSpecification);
  return 1;
}

uint64_t closure #1 in Scene.entitiesWithInteractions()(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = RESceneGetComponentsOfCustomType();
  if (v3 < 0)
  {
    goto LABEL_37;
  }

  v4 = result;
  v5 = v3;
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    while (1)
    {
      v6 = *v4;
      Entity = REComponentGetEntity();
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = static SceneManager.customComponentTypeObjectIdToHandles;
        if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v10 & 1) != 0))
        {
          v11 = *(*(v8 + 56) + 8 * v9);
        }

        else
        {
          swift_endAccess();
          v12 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v31;
        }

        swift_endAccess();
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_32;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_32;
        }

        v15 = *Object;
        if (*(Object + 8) || !v15)
        {
          v21 = *(Object + 8);
        }

        else
        {
          v16 = *v15;
          v17 = String.init(utf8String:)();
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0xE000000000000000;
          }

          v15 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v16 == 42, v19, v20);

          type metadata accessor for IntrospectionDataCleanupHelper();
          result = swift_allocObject();
          *(result + 16) = v15;
        }

        if (!v15)
        {
          goto LABEL_38;
        }

        v22 = String.init(utf8String:)();
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0xE000000000000000;
        }

        v25 = MEMORY[0x1C68F3280](v22, v24);

        v26 = NSClassFromString(v25);

        if (!v26)
        {
          goto LABEL_32;
        }

        swift_getObjCClassMetadata();
        type metadata accessor for Entity();
        v27 = swift_dynamicCastMetatype();
        if (v27)
        {
          v28 = (*(v27 + 232))();
          v29 = *(v28 + 16);

          MEMORY[0x1C68F9740](v29, 0);
          *(v28 + 16) = Entity;
          MEMORY[0x1C68F9740](Entity, v28);
        }

        else
        {
LABEL_32:
          makeEntity(for:)(Entity);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = *(v32 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v4;
      if (!--v5)
      {
        return v32;
      }
    }
  }

  return result;
}

uint64_t static Scene.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v2)
  {

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v4 = swift_allocObject();
    Scene.init(coreScene:)(v1);
    return v4;
  }
}

Swift::Int Scene.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t Scene.id.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Identifiable.id.getter in conformance Scene(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t specialized Scene.addAnchor(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;

  specialized Scene.AnchorCollection.append(_:)(a1, &v4);
}

uint64_t specialized Scene.__allocating_init(name:)()
{
  String.utf8CString.getter();

  v0 = RESceneCreate();

  RESceneAddDefaultSystems();
  type metadata accessor for Scene();
  v1 = swift_allocObject();
  Scene.init(coreScene:)(v0);

  RERelease();
  MEMORY[0x1C68FE0C0](v0, 1);
  Scene.addDefaultCamera()();
  Scene.addAudioMixer()();
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;

  active = *(v1 + 72);
  if (!active)
  {
    active = Scene.internalActiveCamera.getter();
  }

  v4 = *(v1 + 80);
  *(v1 + 80) = active;

  Scene.internalAudioListener.didset(v4);

  return v1;
}

uint64_t partial apply for specialized closure #3 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  return v2(v10);
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of EventService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AcousticModelComponent.mesh.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AcousticModelComponent.absorptionMaterials.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AcousticModelComponent.scatteringMaterials.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AcousticModelComponent.soundReductionMaterials.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t AcousticModelComponent.init(mesh:absorptionMaterials:scatteringMaterials:soundReductionMaterials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void AcousticModelComponent.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
}

uint64_t static AcousticModelComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  MeshAsset = REAcousticMeshComponentGetMeshAsset();
  if (MeshAsset)
  {
    v4 = MeshAsset;
    type metadata accessor for AcousticMeshResource();
    v5 = swift_allocObject();
    RERetain();
    v60 = v5;
    *(v5 + 16) = v4;
  }

  else
  {
    v60 = 0;
  }

  v57 = REAcousticMeshComponentCopyAllAbsorptionIdentifiers();
  v58 = REAcousticMeshComponentCopyAllAbsorptionFrequencies();
  v59 = REAcousticMeshComponentCopyAllAbsorptionCoefficients();
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v57, v58, v59);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v76 = MEMORY[0x1E69E7CC0];
    v9 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    result = v9;
    v11 = 0;
    v12 = v76;
    v13 = v9 + 32;
    v62 = v7;
    v65 = v9;
    while (v11 < *(result + 16))
    {
      v14 = v12;
      outlined init with copy of [String : String](v13, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v15 = v70;
      v16 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v17 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v18 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v12 = v14;
      v76 = v14;
      v19 = *(v14 + 16);
      v20 = *(v12 + 24);
      if (v19 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1);
        v12 = v76;
      }

      ++v11;
      *(v12 + 16) = v19 + 1;
      v21 = (v12 + 32 * v19);
      v21[4] = v15;
      v21[5] = v16;
      v21[6] = v17;
      v21[7] = v18;
      v13 += 96;
      result = v65;
      if (v62 == v11)
      {
        v56 = v12;

        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v22 = REAcousticMeshComponentCopyAllScatteringIdentifiers();
  v23 = REAcousticMeshComponentCopyAllScatteringCoefficients();
  v53 = REAcousticMeshComponentCopyAllScatteringFrequencies();
  v54 = v22;
  v55 = v23;
  v24 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v22, v53, v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v76 = v8;
    v26 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    result = v26;
    v27 = 0;
    v28 = v76;
    v29 = v26 + 32;
    v63 = v25;
    v66 = v26;
    while (v27 < *(result + 16))
    {
      outlined init with copy of [String : String](v29, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v31 = v70;
      v30 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v32 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v33 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v76 = v28;
      v34 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v34 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1);
        v28 = v76;
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      v36 = (v28 + 32 * v34);
      v36[4] = v31;
      v36[5] = v30;
      v36[6] = v32;
      v36[7] = v33;
      v29 += 96;
      result = v66;
      if (v63 == v27)
      {

        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v37 = REAcousticMeshComponentCopyAllSoundReductionIdentifiers();
  v38 = REAcousticMeshComponentCopyAllSoundReductionIndices();
  v39 = REAcousticMeshComponentCopyAllSoundReductionFrequencies();
  v67 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v37, v39, v38);
  v40 = *(v67 + 16);
  if (v40)
  {
    v51 = v39;
    v52 = v38;
    v76 = v8;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = 0;
    v42 = v76;
    v43 = v67 + 32;
    v64 = v40;
    while (v41 < *(v67 + 16))
    {
      outlined init with copy of [String : String](v43, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v44 = v70;
      v45 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v46 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v47 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      result = outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v76 = v42;
      v49 = *(v42 + 16);
      v48 = *(v42 + 24);
      if (v49 >= v48 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v42 = v76;
      }

      ++v41;
      *(v42 + 16) = v49 + 1;
      v50 = (v42 + 32 * v49);
      v50[4] = v44;
      v50[5] = v45;
      v50[6] = v46;
      v50[7] = v47;
      v43 += 96;
      if (v64 == v41)
      {

        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_28:
  *a2 = v60;
  a2[1] = v56;
  a2[2] = v28;
  a2[3] = v42;
  return result;
}

uint64_t AcousticModelComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[1];
  v4 = v1[2];
  if (*v1)
  {
    v5 = *(*v1 + 16);
  }

  v6 = v1[3];
  v7 = *a1;
  REAcousticMeshComponentSetMeshAsset();
  REAcousticMeshComponentClearAllMaterials();
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = (v3 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x1C68F3280](v10, v11);
      v15 = *(v12 + 16);
      REAcousticMeshComponentAddAbsorptionCoefficients();

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  v16 = *(v4 + 16);
  if (v16)
  {
    v17 = (v4 + 56);
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = MEMORY[0x1C68F3280](v18, v19);
      v23 = *(v20 + 16);
      REAcousticMeshComponentAddScatteringCoefficients();

      v17 += 4;
      --v16;
    }

    while (v16);
  }

  v24 = *(v6 + 16);
  if (v24)
  {
    v25 = (v6 + 56);
    do
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;

      v30 = MEMORY[0x1C68F3280](v26, v27);
      v31 = *(v28 + 16);
      REAcousticMeshComponentAddSoundReductionIndices();

      v25 += 4;
      --v24;
    }

    while (v24);
  }

  return RENetworkMarkComponentDirty();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(void *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMR);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v42 - v9;
  v11 = [a1 count];
  v12 = [a2 count];
  v13 = a3;
  v14 = [a3 count];
  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  v76 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  v17 = v76;
  NSArray.makeIterator()();
  v43 = v6;
  v18 = *(v6 + 52);
  v46 = v10;
  v19 = &v10[v18];
  v20 = a2;
  v21 = v13;
  NSArray.makeIterator()();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVySo7NSArrayCAF_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAF_GMR);
  v45 = *(v22 + 52);
  NSArray.makeIterator()();

  v23 = *(v22 + 56);
  v19[v23] = 0;
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v42 = v23;
    v44 = v19;
    if (!v16)
    {
LABEL_16:
      type metadata accessor for NSFastEnumerationIterator();
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
      dispatch thunk of IteratorProtocol.next()();
      if (*(&v61 + 1))
      {
        while (1)
        {
          outlined init with take of Any(&v60, &v47);
          dispatch thunk of IteratorProtocol.next()();
          if (!v54)
          {
            v38 = &v53;
            goto LABEL_25;
          }

          outlined init with take of Any(&v53, v55);
          dispatch thunk of IteratorProtocol.next()();
          if (!v52)
          {
            break;
          }

          outlined init with take of Any(&v51, &v53);
          outlined init with take of Any(v55, &v56);
          outlined init with take of Any(&v53, &v58);
          v60 = v56;
          v61 = v57;
          v62 = v58;
          v63 = v59;
          outlined init with take of Any(&v47, &v64);
          v68 = v62;
          v69 = v63;
          v66 = v60;
          v67 = v61;
          v70 = v64;
          v71 = v65;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          v75 = v63;
          outlined init with copy of Any(&v72, &v60);
          outlined init with copy of Any(&v74, &v62);
          outlined init with copy of Any(&v70, &v64);
          outlined init with copy of [String : String](&v60, &v56, &_syp_yptMd, &_syp_yptMR);
          outlined init with take of Any(&v56, &v66);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v50 = v63;
          outlined init with take of Any(&v49, &v68);
          __swift_destroy_boxed_opaque_existential_1(&v47);
          __swift_destroy_boxed_opaque_existential_1(&v58);
          outlined destroy of BodyTrackingComponent?(&v70, &_syp_yp_ypttMd, &_syp_yp_ypttMR);
          v76 = v17;
          v32 = *(v17 + 16);
          v31 = *(v17 + 24);
          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v17 = v76;
          }

          *(v17 + 16) = v32 + 1;
          v33 = (v17 + 96 * v32);
          v34 = v65;
          v33[2] = v64;
          v33[3] = v34;
          v35 = v66;
          v36 = v67;
          v37 = v69;
          v33[6] = v68;
          v33[7] = v37;
          v33[4] = v35;
          v33[5] = v36;
          dispatch thunk of IteratorProtocol.next()();
          v19 = v44;
          if (!*(&v61 + 1))
          {
            goto LABEL_22;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v55);
        v38 = &v51;
LABEL_25:
        outlined destroy of BodyTrackingComponent?(v38, &_sypSgMd, &_sypSgMR);
        v19[v42] = 1;
        __swift_destroy_boxed_opaque_existential_1(&v47);
      }

      else
      {
LABEL_22:
        outlined destroy of BodyTrackingComponent?(&v60, &_sypSgMd, &_sypSgMR);
      }

      v39 = v46;
      v46[*(v43 + 56)] = 1;
      outlined destroy of BodyTrackingComponent?(v39, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMR);
      return v17;
    }

    type metadata accessor for NSFastEnumerationIterator();
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if (!*(&v61 + 1))
      {
        break;
      }

      outlined init with take of Any(&v60, &v47);
      dispatch thunk of IteratorProtocol.next()();
      if (!v54)
      {
        goto LABEL_29;
      }

      outlined init with take of Any(&v53, v55);
      dispatch thunk of IteratorProtocol.next()();
      if (!v52)
      {
        __swift_destroy_boxed_opaque_existential_1(v55);
        v41 = &v51;
        goto LABEL_31;
      }

      outlined init with take of Any(&v51, &v53);
      outlined init with take of Any(v55, &v56);
      outlined init with take of Any(&v53, &v58);
      v60 = v56;
      v61 = v57;
      v62 = v58;
      v63 = v59;
      outlined init with take of Any(&v47, &v64);
      v66 = v60;
      v67 = v61;
      v68 = v62;
      v69 = v63;
      outlined init with copy of Any(&v66, &v60);
      outlined init with copy of Any(&v68, &v62);
      outlined init with copy of Any(&v64, &v70);
      outlined init with copy of [String : String](&v60, &v56, &_syp_yptMd, &_syp_yptMR);
      outlined init with take of Any(&v56, &v72);
      v47 = v60;
      v48 = v61;
      v49 = v62;
      v50 = v63;
      outlined init with take of Any(&v49, &v74);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      outlined destroy of BodyTrackingComponent?(&v64, &_syp_yp_ypttMd, &_syp_yp_ypttMR);
      v76 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v17 = v76;
      }

      *(v17 + 16) = v25 + 1;
      v26 = (v17 + 96 * v25);
      v27 = v71;
      v26[2] = v70;
      v26[3] = v27;
      v28 = v72;
      v29 = v73;
      v30 = v75;
      v26[6] = v74;
      v26[7] = v30;
      v26[4] = v28;
      v26[5] = v29;
      --v16;
      v19 = v44;
      if (!v16)
      {
        goto LABEL_16;
      }
    }
  }

  outlined destroy of BodyTrackingComponent?(&v60, &_sypSgMd, &_sypSgMR);
  __break(1u);
LABEL_29:
  v41 = &v53;
LABEL_31:
  outlined destroy of BodyTrackingComponent?(v41, &_sypSgMd, &_sypSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(&v47);
  __break(1u);
  return result;
}

uint64_t toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 count];
  v30 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  v9 = v30;
  result = NSArray.makeIterator()();
  if (v8 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v24 = v3;
  v11 = MEMORY[0x1E69E7CA0];
  if (v8)
  {
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v29)
      {
        goto LABEL_14;
      }

      outlined init with copy of Any(v28, &v26);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v12 = v11;
      swift_dynamicCast();
      v13 = v25;
      [v25 floatValue];
      v15 = v14;

      __swift_destroy_boxed_opaque_existential_1(v28);
      v30 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v17 + 1;
      *(v9 + 4 * v17 + 32) = v15;
      --v8;
      v11 = v12;
    }

    while (v8);
  }

  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
  dispatch thunk of IteratorProtocol.next()();
  while (v27)
  {
    outlined init with take of Any(&v26, v28);
    outlined init with copy of Any(v28, &v26);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    swift_dynamicCast();
    v18 = v25;
    [v25 floatValue];
    v20 = v19;

    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v9;
    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v9 = v30;
    }

    *(v9 + 16) = v22 + 1;
    *(v9 + 4 * v22 + 32) = v20;
    dispatch thunk of IteratorProtocol.next()();
  }

  (*(v24 + 8))(v7, v2);
  outlined destroy of BodyTrackingComponent?(&v26, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t AcousticModelComponent.AbsorptionMaterial.init(frequencies:absorptionCoefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  result = (*(v7 + 8))(v10, v6);
  *a3 = v11;
  a3[1] = v13;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

uint64_t AudioMixGroupsComponent._proto_fadeMixGroup(named:to:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = specialized Dictionary.subscript.modify(v10, a1, a2);
  if (*(v4 + 48))
  {
    v6 = v4;
    v7 = Duration.components.getter();
    Duration.components.getter();
    *(v6 + 8) = a3;
    *(v6 + 16) = 0;
    *(v6 + 24) = v8 * 1.0e-18 + v7;
    *(v6 + 32) = 0;
  }

  return (v5)(v10, 0);
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return IKRig.JointCollection.subscript.modify;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x200uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[61] = a3;
  v10[62] = v4;
  v10[60] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 73) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[63] = v13;
  if (v19)
  {
    memmove(v11 + 20, (*(*v5 + 56) + 80 * v13), 0x49uLL);
  }

  else
  {
    *(v11 + 217) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 240;
  v4 = *(*a1 + 208);
  *(v2 + 272) = *(*a1 + 192);
  *(v2 + 288) = v4;
  *(v3 + 57) = *(v2 + 217);
  v5 = *(v2 + 176);
  *(v2 + 240) = *(v2 + 160);
  *(v2 + 256) = v5;
  v6 = *(v2 + 288);
  v7 = *(v2 + 73);
  if (a2)
  {
    if (v6)
    {
      v9 = *(v2 + 496);
      v8 = *(v2 + 504);
      if ((*(v2 + 73) & 1) == 0)
      {
        v10 = *(v2 + 480);
        v11 = *(v2 + 488);
        v12 = *v9;
        v13 = *(v2 + 208);
        *(v2 + 32) = *(v2 + 192);
        *(v2 + 48) = v13;
        *(v2 + 57) = *(v2 + 217);
        v14 = *(v2 + 176);
        *v2 = *(v2 + 160);
        *(v2 + 16) = v14;
        v15 = v11;
        v16 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v8, v10, v15, v16, v12);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v6)
  {
    v9 = *(v2 + 496);
    v8 = *(v2 + 504);
    if ((*(v2 + 73) & 1) == 0)
    {
      v10 = *(v2 + 480);
      v19 = *(v2 + 488);
      v12 = *v9;
      v20 = *(v2 + 208);
      *(v2 + 112) = *(v2 + 192);
      *(v2 + 128) = v20;
      *(v2 + 137) = *(v2 + 217);
      v21 = *(v2 + 176);
      *(v2 + 80) = *(v2 + 160);
      *(v2 + 96) = v21;
      v16 = (v2 + 80);
      v15 = v19;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v9 + 56) + 80 * v8), (v2 + 160), 0x49uLL);
    goto LABEL_12;
  }

  if (*(v2 + 73))
  {
    v17 = *(v2 + 504);
    v18 = **(v2 + 496);
    outlined destroy of String(*(v18 + 48) + 16 * v17);
    specialized _NativeDictionary._delete(at:)(v17, v18);
  }

LABEL_12:
  v22 = *(v2 + 208);
  *(v2 + 352) = *(v2 + 192);
  *(v2 + 368) = v22;
  *(v2 + 377) = *(v2 + 217);
  v23 = *(v2 + 176);
  *(v2 + 320) = *(v2 + 160);
  *(v2 + 336) = v23;
  outlined init with copy of AudioMixGroup?(v3, v2 + 400);
  outlined destroy of AudioMixGroup?(v2 + 320);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of AudioMixGroup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AudioMixGroupVSgMd, &_s17RealityFoundation13AudioMixGroupVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioMixGroup?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AudioMixGroupVSgMd, &_s17RealityFoundation13AudioMixGroupVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SPRect3D.init(_:)@<D0>(uint64_t a1@<X8>)
{
  REAABBCenter();
  v11 = vcvtq_f64_f32(v2);
  v12 = COERCE_UNSIGNED_INT64(v3);
  SPSize3DMakeWithVector(&v11, &v17);
  REAABBExtents();
  v11 = vcvtq_f64_f32(v5);
  v12 = COERCE_UNSIGNED_INT64(v4);
  SPSize3DMakeWithVector(&v11, &v16);
  SPRect3DMakeAtCenter(&v17, &v16, &v11);
  result = v11.n128_f64[0];
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v11;
  *(a1 + 16) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 32) = v8;
  return result;
}

float64x2_t SPRect3DMakeAtCenter@<Q0>(SPPoint3D *a1@<X0>, SPSize3D *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *&a2->width;
  v3 = *&a2->vector.f64[2];
  __asm { FMOV            V4.2D, #-0.5 }

  v10 = *&vaddq_f64(*&a1->vector.f64[2], vmulq_f64(v3, _Q4));
  result = vaddq_f64(*&a1->x, vmulq_f64(*&a2->width, _Q4));
  *a3 = result;
  *(a3 + 16) = v10;
  *(a3 + 32) = v4;
  *(a3 + 48) = v3.f64[0];
  return result;
}

__n128 BoundingBox.init(_:)(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v15.origin.z = a1[2];
  z = v15.origin.z;
  v15.origin.vector.f64[3] = v4;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.depth = v7;
  v15.size.vector.f64[3] = v8;
  v15.size.width = v5;
  v15.size.height = v6;
  SPRect3DGetMinimum(&v15, &v13);
  *&v9 = vcvt_f32_f64(v13);
  *&v10 = v14;
  *(&v9 + 1) = v10;
  v12 = v9;
  v15.origin.z = z;
  v15.origin.vector.f64[3] = v4;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.depth = v7;
  v15.size.vector.f64[3] = v8;
  v15.size.width = v5;
  v15.size.height = v6;
  SPRect3DGetMaximum(&v15, &v13);
  return v12;
}

float64x2_t SPRect3DGetMinimum@<Q0>(SPRect3D *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&vaddq_f64(*&a1->origin.vector.f64[2], vminnmq_f64(*&a1->size.depth, 0));
  result = vaddq_f64(*&a1->origin.x, vminnmq_f64(*&a1->size.width, 0));
  *a2 = result;
  *(a2 + 16) = v2;
  return result;
}

float64x2_t SPRect3DGetMaximum@<Q0>(SPRect3D *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&vaddq_f64(*&a1->origin.vector.f64[2], vmaxnmq_f64(*&a1->size.depth, 0));
  result = vaddq_f64(*&a1->origin.x, vmaxnmq_f64(*&a1->size.width, 0));
  *a2 = result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t VFXParameterType.isMatching(type:)()
{
  v1 = *v0;
  if (swift_dynamicCastMetatype())
  {
    return v1 == 0;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 1;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 2;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 3;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 4;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 5;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 6;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 7;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 8;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 9;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 10;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 11;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v1 == 12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      return v1 == 13;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        return v1 == 14;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        if (swift_dynamicCastMetatype())
        {
          return v1 == 15;
        }

        else
        {
          type metadata accessor for simd_float3x3(0);
          if (swift_dynamicCastMetatype())
          {
            return v1 == 16;
          }

          else
          {
            type metadata accessor for simd_float4x4(0);
            if (swift_dynamicCastMetatype())
            {
              return v1 == 17;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
              if (swift_dynamicCastMetatype())
              {
                return v1 == 18;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
                if (swift_dynamicCastMetatype())
                {
                  return v1 == 19;
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
                  if (swift_dynamicCastMetatype())
                  {
                    return v1 == 20;
                  }

                  else
                  {
                    type metadata accessor for simd_double3x3(0);
                    if (swift_dynamicCastMetatype())
                    {
                      return v1 == 21;
                    }

                    else
                    {
                      type metadata accessor for simd_double4x4(0);
                      if (swift_dynamicCastMetatype())
                      {
                        return v1 == 22;
                      }

                      else
                      {
                        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
                        result = swift_dynamicCastMetatype();
                        if (!result)
                        {
                          return result;
                        }

                        return (v1 & 0xFE) == 24;
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

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

RealityFoundation::VFXParameterSemantic_optional __swiftcall VFXParameterSemantic.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RealityFoundation::VFXParameterType_optional __swiftcall VFXParameterType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 9;
  switch(rawValue)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 3:
      v2 = 3;
      goto LABEL_23;
    case 4:
      v2 = 4;
      goto LABEL_23;
    case 5:
      v2 = 5;
      goto LABEL_23;
    case 6:
      v2 = 6;
      goto LABEL_23;
    case 7:
      v2 = 7;
      goto LABEL_23;
    case 8:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 9:
LABEL_24:
      *v1 = v3;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    default:
      *v1 = 27;
      break;
  }

  return rawValue;
}

unint64_t VFXResource.LoadError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    _StringGuts.grow(_:)(32);

    v8 = 0xD000000000000019;
    MEMORY[0x1C68F3410](v1, v2);
    MEMORY[0x1C68F3410](2112034, 0xE300000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v8 = 0xD000000000000023;
    MEMORY[0x1C68F3410](v1, v2);
    v5 = 0x6E7562206E692022;
    v6 = 0xEB00000000656C64;
  }

  MEMORY[0x1C68F3410](v5, v6);
  return v8;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance VFXResource.LoadError()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return VFXResource.LoadError.errorDescription.getter();
}

id static VFXResource.systemNames.getter()
{
  result = REVFXAssetEnumerateBuiltInAssets();
  if (result)
  {
    v1 = result;
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static VFXResource.load(systemName:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v14 = MEMORY[0x1C68F3280](a1, a2, v11);
  v15 = REVFXGetLibraryURLForSystemName();

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v13, v9, v5);
    v16 = specialized static VFXResource.load(contentsOf:withName:)();
    if (!v2)
    {
      a2 = v16;
    }

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = REVFXAssetGetBuiltInEffectsBundle();
    a2 = specialized static VFXResource.load(named:in:)(a1, a2, v17);
  }

  return a2;
}

uint64_t static VFXResource.loadAsync(systemName:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = MEMORY[0x1C68F3280](a1, a2, v10);
  v14 = REVFXGetLibraryURLForSystemName();

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v12, v8, v4);
    v15 = specialized static VFXResource.loadAsync(contentsOf:withName:)(v12);
    (*(v5 + 8))(v12, v4);
  }

  else
  {
    v16 = REVFXAssetGetBuiltInEffectsBundle();
    v15 = specialized static VFXResource.loadAsync(named:in:)(a1, a2, v16);
  }

  return v15;
}

void closure #1 in static VFXResource.loadAsync(named:in:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v37 = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, &aBlock);
  v13 = v45;
  v12 = v46;
  __swift_project_boxed_opaque_existential_1(&aBlock, v45);
  v14 = *(v12 + 4);

  v15 = v12;
  v16 = a6;
  v14(v13, v15);
  v17 = MEMORY[0x1C68F3280](a5, a6);
  v18 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v19 = REAssetManagerAssetHandleCreateWithBundleResource();

  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v19)
  {
    outlined init with copy of __REAssetService(a3 + 120, &aBlock);
    outlined init with copy of __REAssetService(a3 + 120, v38);
    v21 = v39;
    v22 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    LOBYTE(v21) = (*(v22 + 7))(v21, v22);
    v23 = v45;
    v24 = v46;
    __swift_project_boxed_opaque_existential_1(&aBlock, v45);
    (*(v24 + 4))(v23, v24);
    AssetRequest = REAssetManagerCreateAssetRequest();
    Request = type metadata accessor for __AssetLoadRequest();
    v27 = swift_allocObject();
    *(v27 + 16) = AssetRequest;
    if (v21)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = swift_allocObject();
    v28[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v28[3] = v11;
    v28[4] = v20;
    v28[5] = a5;
    v28[6] = v16;
    v28[7] = v27;
    v46 = partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(named:in:);
    v47 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v45 = &block_descriptor_81;
    v29 = _Block_copy(&aBlock);
    v30 = _Block_copy(v29);
    v31 = *(v27 + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v40 = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v41 = v32;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v39 = &block_descriptor_88_0;
    v33 = _Block_copy(v38);
    swift_retain_n();

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v33);
    _Block_release(v29);

    v34 = *(v27 + 16);
    REAssetLoadRequestAddAsset();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v45 = Request;
      aBlock = v27;

      LoadRequestDependencies.add(_:)(&aBlock);

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
    }

    RERelease();
  }

  else
  {

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v35 = swift_allocError();
    *v36 = a5;
    *(v36 + 8) = a6;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    aBlock = v35;
    LOBYTE(v43) = 1;

    v37(&aBlock);
  }
}

void specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(named:in:)(char a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    type metadata accessor for VFXResource();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v10, 0);
  }

  else
  {

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v17 = swift_allocError();
    *v18 = a5;
    *(v18 + 8) = a6;
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    *(v18 + 32) = 1;
    a2(v17, 1);
  }

  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_91;
  v19 = _Block_copy(aBlock);
  v20 = _Block_copy(v19);
  v21 = *(a7 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v24[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v24[5] = v22;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v24[3] = &block_descriptor_98;
  v23 = _Block_copy(v24);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v23);
  _Block_release(v19);
}

void closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = type metadata accessor for URL();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = v11;
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  Request = a1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, &aBlock);
  v13 = v55;
  v14 = v56;
  __swift_project_boxed_opaque_existential_1(&aBlock, v55);
  v15 = *(v14 + 4);

  v15(v13, v14);
  v46 = 0x6170656372756F73;
  v47 = 0xEB000000003A6874;
  v16 = URL.path.getter();
  MEMORY[0x1C68F3410](v16);

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (AssetHandle)
  {
    outlined init with copy of __REAssetService(a3 + 120, &aBlock);
    outlined init with copy of __REAssetService(a3 + 120, &v46);
    v18 = v49;
    v19 = v50;
    __swift_project_boxed_opaque_existential_1(&v46, v49);
    LOBYTE(v18) = (*(v19 + 7))(v18, v19);
    v20 = v55;
    v21 = v56;
    __swift_project_boxed_opaque_existential_1(&aBlock, v55);
    (*(v21 + 4))(v20, v21);
    AssetRequest = REAssetManagerCreateAssetRequest();
    Request = type metadata accessor for __AssetLoadRequest();
    v23 = swift_allocObject();
    *(v23 + 16) = AssetRequest;
    if (v18)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v25 = v43;
    v24 = v44;
    (*(v9 + 16))(v43, a4, v44);
    v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v27 = (v42 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    *(v28 + 3) = v12;
    *(v28 + 4) = AssetHandle;
    (*(v9 + 32))(&v28[v26], v25, v24);
    *&v28[v27] = v23;
    v56 = partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:);
    v57 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v55 = &block_descriptor_47;
    v29 = _Block_copy(&aBlock);
    v30 = _Block_copy(v29);
    v31 = *(v23 + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v50 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
    v51 = v32;
    v46 = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v49 = &block_descriptor_53;
    v33 = _Block_copy(&v46);
    swift_retain_n();

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v33);
    _Block_release(v29);

    v34 = *(v23 + 16);
    REAssetLoadRequestAddAsset();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v55 = Request;
      aBlock = v23;

      LoadRequestDependencies.add(_:)(&aBlock);

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
    }

    RERelease();
  }

  else
  {

    v35 = URL.path.getter();
    v37 = v36;
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v38 = swift_allocError();
    *v39 = v35;
    *(v39 + 8) = v37;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    aBlock = v38;
    LOBYTE(v53) = 1;
    Request(&aBlock);
  }
}

void specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(char a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    type metadata accessor for VFXResource();
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v9, 0);
  }

  else
  {
    v10 = URL.path.getter();
    v12 = v11;
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v17 = swift_allocError();
    *v18 = v10;
    *(v18 + 8) = v12;
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    *(v18 + 32) = 1;
    a2(v17, 1);
  }

  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_56;
  v19 = _Block_copy(aBlock);
  v20 = _Block_copy(v19);
  v21 = *(a6 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v24[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v24[5] = v22;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v24[3] = &block_descriptor_63;
  v23 = _Block_copy(v24);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v23);
  _Block_release(v19);
}

uint64_t protocol witness for VFXParameter.bindingName.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t protocol witness for VFXParameter.userManual.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t protocol witness for VFXParameter.enumName.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t VFXResource.parameters.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 16);
  v12 = partial apply for closure #1 in VFXResource.parameters.getter;
  v13 = v1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ();
  v11 = &block_descriptor_30;
  v3 = _Block_copy(&v8);

  REVFXAssetEnumerateParameterInfosWithEnum();
  _Block_release(v3);
  v4 = *(v0 + 16);
  v12 = partial apply for closure #2 in VFXResource.parameters.getter;
  v13 = v1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  v11 = &block_descriptor_3;
  v5 = _Block_copy(&v8);

  REVFXAssetEnumerateClientTextures();
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v1 + 16);

  return v6;
}

void closure #1 in VFXResource.parameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, Swift::Int rawValue, Swift::Int a8, double a9, double a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  VFXParameterType.init(rawValue:)(rawValue);
  v21 = v47;
  if (v47 == 27 || (VFXParameterSemantic.init(rawValue:)(a8), v47 == 12))
  {
    v22 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v47 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v47);
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v47);
      *(v23 + 22) = 2048;
      *(v23 + 24) = rawValue;
      _os_log_impl(&dword_1C1358000, log, v22, "[VFX] Parameter %s.%s with unknown type %ld", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v32 = v47;
    v33 = specialized _arrayConditionalCast<A, B>(_:)(a14);
    swift_beginAccess();
    v25 = *(a15 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a15 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      *(a15 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
      *(a15 + 16) = v25;
    }

    *&v40 = a1;
    *(&v40 + 1) = a2;
    *&v41 = a3;
    *(&v41 + 1) = a4;
    *&v42 = a5;
    *(&v42 + 1) = a6;
    LOBYTE(v43) = v21;
    BYTE1(v43) = v32;
    *(&v43 + 1) = a9;
    *&v44 = a10;
    *(&v44 + 1) = a11;
    v45 = a12;
    *&v46 = a13;
    *(&v46 + 1) = v33;
    v49 = &type metadata for VFXResource.VFXParameterImpl;
    v50 = &protocol witness table for VFXResource.VFXParameterImpl;
    v29 = swift_allocObject();
    *&v47 = v29;
    v29[5] = v44;
    v29[6] = a12;
    v29[7] = v46;
    v30 = v41;
    v29[1] = v40;
    v29[2] = v30;
    v31 = v43;
    v29[3] = v42;
    v29[4] = v31;
    v25[2] = v28 + 1;
    outlined init with take of ForceEffectBase(&v47, &v25[5 * v28 + 4]);
    *&v47 = a1;
    *(&v47 + 1) = a2;
    v48 = a3;
    v49 = a4;
    v50 = a5;
    v51 = a6;
    v52 = v21;
    v53 = v32;
    v54 = v62;
    v55 = v63;
    v56 = a9;
    v57 = a10;
    v58 = a11;
    v59 = a12;
    v60 = a13;
    v61 = v33;
    outlined init with copy of VFXResource.VFXParameterImpl(&v40, v39);
    *(a15 + 16) = v25;
    swift_endAccess();
    outlined destroy of VFXResource.VFXParameterImpl(&v47);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ()(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 40);
  v28 = *(a1 + 32);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28(v11, v13, v27, v15, v26, v17, a7, a8, a2, a3, v18, v20, v21, v23, v24);
}

uint64_t closure #2 in VFXResource.parameters.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(a3 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v13 = &type metadata for VFXResource.VFXParameterImpl;
  v14 = &protocol witness table for VFXResource.VFXParameterImpl;
  v10 = swift_allocObject();
  *&v12 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0xE000000000000000;
  *(v10 + 64) = 1818;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0xE000000000000000;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 104) = 0;
  v6[2] = v9 + 1;
  outlined init with take of ForceEffectBase(&v12, &v6[5 * v9 + 4]);
  *(a3 + 16) = v6;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t VFXResource.parameter(named:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  v12 = *(v5 + 16);
  if (a4)
  {
    a4 = MEMORY[0x1C68F3280](a3, a4);
  }

  v13 = MEMORY[0x1C68F3280](a1, a2);
  v16[4] = partial apply for closure #1 in VFXResource.parameter(named:owner:);
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ();
  v16[3] = &block_descriptor_9_0;
  v14 = _Block_copy(v16);

  REVFXAssetFindParameterInfoWithEnum();
  _Block_release(v14);

  swift_beginAccess();
  outlined init with copy of VFXParameter?(v11 + 16, a5);
}

void closure #1 in VFXResource.parameter(named:owner:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, Swift::Int rawValue, Swift::Int a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  VFXParameterType.init(rawValue:)(rawValue);
  v22 = v34[0];
  if (LOBYTE(v34[0]) == 27 || (VFXParameterSemantic.init(rawValue:)(a8), v23 = v34[0], LOBYTE(v34[0]) == 12))
  {
    v24 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315650;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v34);
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v34);
      *(v25 + 22) = 2048;
      *(v25 + 24) = rawValue;
      _os_log_impl(&dword_1C1358000, log, v24, "[VFX] Parameter %s.%s with unknown type %ld", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v26, -1, -1);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = specialized _arrayConditionalCast<A, B>(_:)(a15);
    v34[3] = &type metadata for VFXResource.VFXParameterImpl;
    v34[4] = &protocol witness table for VFXResource.VFXParameterImpl;
    v28 = swift_allocObject();
    v34[0] = v28;
    *(v28 + 16) = a1;
    *(v28 + 24) = a2;
    *(v28 + 32) = a3;
    *(v28 + 40) = a4;
    *(v28 + 48) = a5;
    *(v28 + 56) = a6;
    *(v28 + 64) = v22;
    *(v28 + 65) = v23;
    *(v28 + 72) = a9;
    *(v28 + 80) = a10;
    *(v28 + 88) = a11;
    *(v28 + 96) = a12;
    *(v28 + 104) = a13;
    *(v28 + 112) = a14;
    *(v28 + 120) = v27;
    swift_beginAccess();

    outlined assign with take of VFXParameter?(v34, a16 + 16);
  }
}

uint64_t VFXResource.deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t VFXResource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized static VFXResource.load(contentsOf:withName:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v3 = *(v2 + 32);

  v3(v1, v2);
  v4 = URL.path.getter();
  MEMORY[0x1C68F3410](v4);

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (AssetHandle)
  {
    REAssetHandleLoadNow();
    type metadata accessor for VFXResource();
    v6 = swift_allocObject();
    *(v6 + 16) = AssetHandle;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
  }

  else
  {
    v7 = URL.path.getter();
    v6 = v8;
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = v6;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    swift_willThrow();
  }

  return v6;
}

void *specialized static VFXResource.load(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = a3;
  v54 = v14;
  v16 = [v14 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = URL.pathExtension.getter();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v13, v5);
  if (v17 == 0x617262696C786676 && v19 == 0xEA00000000007972)
  {

    v23 = a1;
    v24 = v50;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = a1;
    v24 = v50;
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v25 = MEMORY[0x1C68F3280](v23, v24);
  v26 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v27 = [v54 URLForResource:v25 withExtension:v26];

  if (v27)
  {
    v28 = v47;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v48;
    (*(v6 + 32))(v48, v28, v5);
    v30 = v49;
    v31 = specialized static VFXResource.load(contentsOf:withName:)();
    if (!v30)
    {
      v28 = v31;
    }

    v20(v29, v5);

    return v28;
  }

LABEL_15:
  v32 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v32 + 120, v51);
  v33 = v52;
  v34 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v35 = *(v34 + 32);

  v35(v33, v34);
  v28 = MEMORY[0x1C68F3280](v23, v24);
  v36 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v37 = v24;
  v38 = v54;
  v39 = REAssetManagerAssetHandleCreateWithBundleResource();

  __swift_destroy_boxed_opaque_existential_1(v51);
  if (v39)
  {
    REAssetHandleLoadNow();
    if (!REAssetHandleLoadFailed())
    {
      type metadata accessor for VFXResource();
      v28 = swift_allocObject();
      v28[2] = v39;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();

      return v28;
    }

    v40 = v37;

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v44 = v23;
    *(v44 + 8) = v40;
    *(v44 + 16) = v28;
    *(v44 + 24) = v43;
    *(v44 + 32) = 1;
    swift_willThrow();
    RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v45 = v23;
    *(v45 + 8) = v37;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    swift_willThrow();
  }

  return v28;
}

uint64_t specialized static VFXResource.loadAsync(contentsOf:withName:)(void *a1)
{
  v31 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v11;

  *v8 = v12;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v12)
  {
    type metadata accessor for LoadRequestDependencies();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E7CC0];
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v15 + 24) = v17;
    swift_beginAccess();
    *(v15 + 16) = v16;
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v2 + 16))(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v1);
    v19 = *(v2 + 80);
    v31 = v13;
    v20 = (v19 + 24) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v9;
    (*(v2 + 32))(v21 + v20, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    *(v21 + ((v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMR);
    v23 = swift_allocObject();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v23 + 24) = 0;
    *(v23 + 32) = -1;
    *(v22 + 16) = v23;
    v25 = swift_allocObject();
    v25[2] = partial apply for closure #1 in static VFXResource.loadAsync(contentsOf:withName:);
    v25[3] = v21;
    v25[4] = v23;
    v25[5] = v15;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMR);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = Future.init(_:)();

    *(v22 + 24) = v29;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static VFXResource.loadAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v60 = a2;
  v61 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = a3;
  v62 = v18;
  v20 = [v18 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = URL.pathExtension.getter();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v17, v8);
  if (v21 == 0x617262696C786676 && v23 == 0xEA00000000007972)
  {

    v27 = v60;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v60;
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v28 = MEMORY[0x1C68F3280](v61, v27);
  v29 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v30 = [v62 URLForResource:v28 withExtension:v29];

  if (v30)
  {
    v31 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v31, v8);
    v32 = specialized static VFXResource.loadAsync(contentsOf:withName:)(v14);

    v24(v14, v8);
    return v32;
  }

LABEL_13:
  v34 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v35 = *(v34 + 24);
  swift_unownedRetainStrong();
  v36 = *(v35 + 32);

  v37 = v36;

  *v7 = v37;
  v39 = v58;
  v38 = v59;
  (*(v58 + 104))(v7, *MEMORY[0x1E69E8020], v59);
  v40 = v37;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  result = (*(v39 + 8))(v7, v38);
  if (v35)
  {
    type metadata accessor for LoadRequestDependencies();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E7CC0];
    *(v41 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v41 + 24) = v43;
    swift_beginAccess();
    *(v41 + 16) = v42;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v46 = v61;
    v47 = v62;
    v45[2] = v34;
    v45[3] = v47;
    v45[4] = v46;
    v45[5] = v27;
    v45[6] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMR);
    v48 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMR);
    v49 = swift_allocObject();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v49 + 16) = v50;
    *(v49 + 24) = 0;
    *(v49 + 32) = -1;
    *(v48 + 16) = v49;
    v51 = swift_allocObject();
    v51[2] = partial apply for closure #1 in static VFXResource.loadAsync(named:in:);
    v51[3] = v45;
    v51[4] = v49;
    v51[5] = v41;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMR);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();

    v55 = v47;

    v56 = Future.init(_:)();

    result = v48;
    *(v48 + 24) = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of VFXParameter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXParameter_pSgMd, &_s17RealityFoundation12VFXParameter_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VFXParameterSemantic and conformance VFXParameterSemantic()
{
  result = lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic;
  if (!lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic;
  if (!lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VFXParameterType and conformance VFXParameterType()
{
  result = lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType;
  if (!lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType;
  if (!lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXParameterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXParameterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined assign with take of VFXParameter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXParameter_pSgMd, &_s17RealityFoundation12VFXParameter_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(a1, a2, v8, v2 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError()
{
  result = lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError;
  if (!lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError);
  }

  return result;
}

void partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t getEnumTagSinglePayload for VFXResource.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for VFXResource.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXResource.VFXParameterImpl(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VFXResource.VFXParameterImpl(uint64_t result, int a2, int a3)
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

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGImageSourceRef.monoImage(index:)(Swift::Int index)
{
  v5 = CGImageSourceRef.monoImageInternal(index:)(index);
  if (!v3)
  {
    v1 = v5;
    if (specialized CGImageSourceRef.maybeRAW(image:)(v5))
    {
      v7 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v1);

      return v7;
    }

    else if (CGImageSourceRef.isISO22028Part5HDRImage(cgImage:eyeIndex:)(v1, index))
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImageSource:v2 index:index options:0];
      v10 = CIImage.tonemapToHeadroom(_:)(1.0);

      if (v10)
      {
        [v10 extent];
        v11 = [v8 createCGImage:v10 fromRect:?];
        if (v11)
        {
          v12 = v11;

          return v12;
        }

        if (one-time initialization token for ImageLogger != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, ImageLogger);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1C1358000, v19, v20, "unable to render back to CGImage for ISO 22028-5 image", v21, 2u);
          MEMORY[0x1C6902A30](v21, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
        swift_allocError();
        *v22 = 0;
        swift_willThrow();

        v1 = v8;
        v8 = v10;
      }

      else
      {
        if (one-time initialization token for ImageLogger != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        __swift_project_value_buffer(v13, ImageLogger);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1C1358000, v14, v15, "unable to make CIImage for ISO 22028-5 image", v16, 2u);
          MEMORY[0x1C6902A30](v16, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
        swift_allocError();
        *v17 = 0;
        swift_willThrow();
      }
    }
  }

  return v1;
}

void one-time initialization function for itur2100PQSpace(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

CIImage_optional __swiftcall CIImage.tonemapToHeadroom(_:)(Swift::Float a1)
{
  v2 = v1;
  [v1 contentHeadroom];
  if (vabds_f32(v4, a1) <= 0.00000011921)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, ImageLogger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
      *(v34 + 12) = 2048;
      *(v34 + 14) = a1;
      _os_log_impl(&dword_1C1358000, v32, v33, "%s CIImage already has headroom %f, no need to convert.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1C6902A30](v35, -1, -1);
      MEMORY[0x1C6902A30](v34, -1, -1);
    }

    v36 = v2;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, ImageLogger);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v42 = v10;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
      *(v9 + 12) = 2048;
      [v6 contentHeadroom];
      *(v9 + 14) = v11;
      *(v9 + 22) = 2048;
      *(v9 + 24) = a1;
      _os_log_impl(&dword_1C1358000, v7, v8, "%s tonemapping %f to %f.", v9, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C6902A30](v10, -1, -1);
      MEMORY[0x1C6902A30](v9, -1, -1);
    }

    v12 = [objc_opt_self() toneMapHeadroomFilter];
    [v12 setInputImage_];
    *&v13 = a1;
    [v12 setTargetHeadroom_];
    [v6 contentHeadroom];
    [v12 setSourceHeadroom_];
    v14 = [v12 outputImage];
    if (v14)
    {
      v2 = v14;
      [v12 setInputImage_];
      v15 = v6;
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42 = v21;
        *v19 = 136315650;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
        *(v19 + 12) = 2112;
        v22 = [v15 colorSpace];
        if (!v22 || (v23 = v22, v24 = CGColorSpaceCopyName(v22), v23, (v25 = v24) == 0))
        {
          v25 = MEMORY[0x1C68F3280](1701736270, 0xE400000000000000);
        }

        *(v19 + 14) = v25;
        *v20 = v25;
        *(v19 + 22) = 2112;
        v26 = [v16 colorSpace];
        if (!v26 || (v27 = v26, v28 = CGColorSpaceCopyName(v26), v27, !v28))
        {
          v28 = MEMORY[0x1C68F3280](1701736270, 0xE400000000000000);
        }

        *(v19 + 24) = v28;
        v20[1] = v28;
        _os_log_impl(&dword_1C1358000, v17, v18, "%s tonemap source colorspace: %@ target colorspace: %@", v19, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1C6902A30](v21, -1, -1);
        MEMORY[0x1C6902A30](v19, -1, -1);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
        *(v39 + 12) = 2048;
        *(v39 + 14) = a1;
        _os_log_impl(&dword_1C1358000, v37, v38, "%s %f returned nil image", v39, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1C6902A30](v40, -1, -1);
        MEMORY[0x1C6902A30](v39, -1, -1);
      }

      v2 = 0;
    }
  }

  v41 = v2;
  result.value._priv = v29;
  result.value.super.isa = v41;
  result.is_nil = v30;
  return result;
}

Swift::Bool __swiftcall CGImageSourceRef.isISO22028Part5HDRImage(cgImage:eyeIndex:)(CGImageRef cgImage, Swift::Int eyeIndex)
{
  v4 = CGImageGetColorSpace(cgImage);
  if (v4)
  {
    v5 = v4;
    if (!MEMORY[0x1C68F4F90]())
    {
      goto LABEL_9;
    }

    v6 = one-time initialization token for itur2100PQSpace;
    v5 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = CFEqual(v5, static ColorSpaceHelper.itur2100PQSpace);

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D278]);
    if (v8)
    {
      v9 = v8;

      v5 = v9;
LABEL_9:

      LOBYTE(v4) = 0;
      return v4;
    }

    v10 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D268]);

    v5 = v10;
    if (v10)
    {
      goto LABEL_9;
    }

    LOBYTE(v4) = 1;
  }

  return v4;
}

CGImageRef __swiftcall CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(Swift::Int eyeIndex, CGImageRef cgImage)
{
  v38 = cgImage;
  v4 = CGImageGetColorSpace(cgImage);
  if (v4)
  {
    v5 = v4;
    if (!MEMORY[0x1C68F4F90]())
    {
      goto LABEL_9;
    }

    v6 = one-time initialization token for itur2100PQSpace;
    v5 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = CFEqual(v5, static ColorSpaceHelper.itur2100PQSpace);

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D278]);
    if (v8)
    {
      v9 = v8;

      v5 = v9;
LABEL_9:

      goto LABEL_10;
    }

    v10 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D268]);

    v5 = v10;
    if (v10)
    {
      goto LABEL_9;
    }

    v12 = v2;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, ImageLogger);
    v38 = v38;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218496;
      *(v16 + 4) = eyeIndex;
      *(v16 + 12) = 2048;
      *(v16 + 14) = CGImageGetWidth(v38);
      *(v16 + 22) = 2048;
      *(v16 + 24) = CGImageGetHeight(v38);

      _os_log_impl(&dword_1C1358000, v14, v15, "CGImage tonemappedImage(eyeIndex:%ld): w=%ld h=%ld", v16, 0x20u);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }

    else
    {

      v14 = v38;
    }

    v17 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMd, &_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v19 = *MEMORY[0x1E695F838];
    *(inited + 32) = *MEMORY[0x1E695F838];
    v20 = one-time initialization token for displayP3Space;
    v21 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = static ColorSpaceHelper.displayP3Space;
    type metadata accessor for CGColorSpaceRef(0);
    *(inited + 64) = v23;
    *(inited + 40) = v22;
    v24 = v22;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo15CIContextOptiona_yptMd, &_sSo15CIContextOptiona_yptMR);
    v25 = objc_allocWithZone(MEMORY[0x1E695F620]);
    type metadata accessor for CIContextOption(0);
    lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v25 initWithOptions_];

    v28 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImageSource:v17 index:eyeIndex options:0];
    v29 = CIImage.tonemapToHeadroom(_:)(1.0);

    if (v29)
    {
      [v29 extent];
      v30 = [v27 createCGImage:v29 fromRect:?];
      if (v30)
      {
        v31 = v30;

        return v31;
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = eyeIndex;
        _os_log_impl(&dword_1C1358000, v35, v36, "CGImage tonemappedImage(eyeIndex:%ld) to render back to CGImage failed, returning HDR image", v37, 0xCu);
        MEMORY[0x1C6902A30](v37, -1, -1);
      }
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = eyeIndex;
        _os_log_impl(&dword_1C1358000, v32, v33, "CGImage tonemappedImage(eyeIndex:%ld) failed to make CIImage, returning HDR image", v34, 0xCu);
        MEMORY[0x1C6902A30](v34, -1, -1);
      }
    }
  }

LABEL_10:

  return v38;
}

void CGImageSourceRef.spatialImages(metadata:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 336);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, v2, 0);
  if (ImageAtIndex)
  {
    v5 = ImageAtIndex;
    v6 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v2, ImageAtIndex);

    v7 = CGImageSourceCreateImageAtIndex(v1, v3, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v3, v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C18BB5B0;
      *(v10 + 32) = v6;
      *(v10 + 40) = v9;
    }

    else
    {
      lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 170) = *a2;
  return MEMORY[0x1EEE6DFA0](CGImageSourceRef.spatialTextures(metadata:options:), 0, 0);
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  v3 = *(v1 + 336);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(*(v0 + 72), v2, 0);
  *(v0 + 80) = ImageAtIndex;
  if (ImageAtIndex)
  {
    v5 = ImageAtIndex;
    v6 = *(v0 + 170);
    v7 = *(v0 + 72);
    v8 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v2, ImageAtIndex);
    *(v0 + 88) = v8;
    type metadata accessor for CGImageRef(0);
    lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, type metadata accessor for CGImageRef);
    if (static _CFObject.== infix(_:_:)())
    {
      v9 = *(v0 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
      v10 = swift_allocObject();
      *(v0 + 96) = v10;
      *(v10 + 16) = xmmword_1C1897FC0;
      *(v10 + 32) = v9;
      *(v10 + 40) = v2;
      *(v10 + 48) = v9;
      *(v10 + 56) = v3;
      type metadata accessor for TextureResource();
      *(v0 + 165) = 83886594;
      *(v0 + 169) = v6;
      v11 = v9;
      v12 = swift_task_alloc();
      *(v0 + 104) = v12;
      *v12 = v0;
      v12[1] = CGImageSourceRef.spatialTextures(metadata:options:);

      return static TextureResource.texture2DArray(slices:named:options:)(v10, 1, 0, 0, v0 + 165);
    }

    v15 = CGImageSourceCreateImageAtIndex(*(v0 + 72), v3, 0);
    *(v0 + 120) = v15;
    if (v15)
    {
      v16 = *(v0 + 72);
      v17 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v3, v15);
      *(v0 + 128) = v17;
      type metadata accessor for TextureResource();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v18 = swift_allocObject();
      *(v0 + 136) = v18;
      *(v18 + 16) = xmmword_1C18BB5B0;
      *(v18 + 32) = v8;
      *(v18 + 40) = v17;
      *(v0 + 160) = 83886594;
      *(v0 + 164) = v6;
      v19 = v8;
      v20 = v17;
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      *v21 = v0;
      v21[1] = CGImageSourceRef.spatialTextures(metadata:options:);

      return static TextureResource.texture2DArray(slices:named:options:)(v18, 0, 0, v0 + 160);
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4(v2);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 152);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[13];
  v9 = *v2;
  v4[14] = v1;

  v6 = v4[12];

  if (v1)
  {
    v7 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v7 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[18];
  v9 = *v2;
  v4[19] = v1;

  v6 = v4[17];

  if (v1)
  {
    v7 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v7 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  CGImageSourceRef.spatialImages(metadata:)(a1);
  v7 = 83886594;
  v8 = v2;
  v4 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v3, 0, 0, 0, &v7, 3) + 2);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  return v5;
}

CGImageRef CGImageSourceRef.monoImageInternal(index:)(size_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 32) = MEMORY[0x1C68F3280](0xD000000000000029, 0x80000001C18E9CD0);
  v5 = *MEMORY[0x1E695E4D0];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
  *(inited + 40) = v5;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, a1, v7.super.isa);
  if (!ImageAtIndex)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, ImageLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C1358000, v10, v11, "unable to load monoscopic image", v12, 2u);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return ImageAtIndex;
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 154) = *a2;
  return MEMORY[0x1EEE6DFA0](CGImageSourceRef.monoTexture(index:options:), 0, 0);
}

uint64_t CGImageSourceRef.monoTexture(index:options:)()
{
  v1 = *(v0 + 154);
  v2 = *(v0 + 72);
  v3 = CGImageSourceRef.monoImageInternal(index:)(*(v0 + 64));
  *(v0 + 80) = v3;
  v4 = v3;
  if (specialized CGImageSourceRef.maybeRAW(image:)(v3))
  {
    v5 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v4);
    *(v0 + 88) = v5;
    v12 = v5;
    type metadata accessor for TextureResource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v0 + 96) = v13;
    *(v13 + 16) = xmmword_1C1898160;
    *(v13 + 32) = v12;
    *(v0 + 149) = 83886594;
    *(v0 + 153) = v1;
    v14 = v12;
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = CGImageSourceRef.monoTexture(index:options:);

    return static TextureResource.texture2DArray(slices:named:options:)(v13, 0, 0, v0 + 149);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    type metadata accessor for TextureResource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
    v8 = swift_allocObject();
    *(v0 + 120) = v8;
    *(v8 + 16) = xmmword_1C1887600;
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    *(v0 + 144) = 83886594;
    *(v0 + 148) = v1;
    v9 = v7;
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = CGImageSourceRef.monoTexture(index:options:);

    return static TextureResource.texture2DArray(slices:named:options:)(v8, 1, 0, 0, v0 + 144);
  }
}

{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[13];
  v9 = *v2;
  v4[14] = v1;

  v6 = v4[12];

  if (v1)
  {
    v7 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v7 = CGImageSourceRef.monoTexture(index:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[16];
  v9 = *v2;
  v4[17] = v1;

  v6 = v4[15];

  if (v1)
  {
    v7 = CGImageSourceRef.monoTexture(index:options:);
  }

  else
  {
    v7 = CGImageSourceRef.monoTexture(index:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(size_t a1, char *a2)
{
  v4 = *a2;
  v5 = CGImageSourceRef.monoImageInternal(index:)(a1);
  if (specialized CGImageSourceRef.maybeRAW(image:)(v5))
  {
    v8 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1898160;
    *(v9 + 32) = v8;
    v16 = 83886594;
    v17 = v4;
    v10 = v8;
    v13 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v9, 0, 0, 0, &v16, 3) + 2);
    type metadata accessor for TextureResource();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    return v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1887600;
    *(v6 + 32) = v2;
    *(v6 + 40) = a1;
    v16 = 83886594;
    v17 = v4;
    v7 = v2;
    v11 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v6, 1, 0, 0, &v16, 3) + 2);
    type metadata accessor for TextureResource();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    return v12;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageSourceSpatialImagesError(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = *a1;
  v4 = "onoscopic image.";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "onoscopic image.";
  }

  else
  {
    v6 = "Unable to load left eye image.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.RealityComposerPro";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "Unable to load left eye image.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.RealityComposerPro";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CGImageSourceSpatialImagesError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CGImageSourceSpatialImagesError()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGImageSourceSpatialImagesError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CGImageSourceSpatialImagesError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CGImageSourceSpatialImagesError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CGImageSourceSpatialImagesError(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = "onoscopic image.";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "Unable to load left eye image.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000020;
    v4 = "com.apple.RealityComposerPro";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError()
{
  result = lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError;
  if (!lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError;
  if (!lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError);
  }

  return result;
}

uint64_t specialized CGImageSourceRef.maybeRAW(image:)(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = CGImageGetBitsPerPixel(a1) >= 33 && (CGImageGetBitmapInfo(a1) & 0xF0000) == 0 && (CGImageGetBitmapInfo(a1) & 0xF00) == 0;
  v15 = CGImageGetUTType(a1);
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UTType.init(_:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      outlined destroy of BodyTrackingComponent?(v5, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      static UTType.rawImage.getter();
      v17 = UTType.conforms(to:)();

      v18 = *(v7 + 8);
      v18(v10, v6);
      v18(v13, v6);
      v14 &= v17;
    }
  }

  return v14 & 1;
}

uint64_t specialized CGImageSourceRef.drawBGRA8Image(image:index:)(CGImage *a1)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, ImageLogger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_1C1358000, v4, v5, "monoImage() using workaround for RAW image", v1, 2u);
    MEMORY[0x1C6902A30](v1, -1, -1);
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((Width - 0x2000000000000000) >> 62 == 3)
  {
    v1 = Height;
    v8 = 4 * Width;
    if (one-time initialization token for displayP3Space == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v21 = v8;
  swift_once();
  v8 = v21;
LABEL_7:
  v9 = CGBitmapContextCreate(0, Width, v1, 8uLL, v8, static ColorSpaceHelper.displayP3Space, 0x2002u);
  if (v9)
  {
    v10 = v9;
    if (CGContextRef.draw(_:in:by:options:)())
    {
      Image = CGBitmapContextCreateImage(v10);
      if (Image)
      {
        v12 = Image;

        return v12;
      }

      v16 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v12))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "monoImage() CGBitmapContext.makeImage() failed";
        goto LABEL_18;
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v12))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "monoImage() bitmap draw failed";
LABEL_18:
        _os_log_impl(&dword_1C1358000, v16, v12, v18, v17, 2u);
        MEMORY[0x1C6902A30](v17, -1, -1);
      }
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    return v12;
  }

  v13 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C1358000, v13, v12, "monoImage() CGContext creation failed", v14, 2u);
    MEMORY[0x1C6902A30](v14, -1, -1);
  }

  lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
  return v12;
}

uint64_t lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized CGImageSourceSpatialImagesError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CGImageSourceSpatialImagesError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t StateMachineCommandParameter.init(name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for StateMachineCommandParameter();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a3, a4);
}

uint64_t StateMachineCommandParameter.id.getter()
{
  v0 = sub_1C136CB78();

  return v0;
}

uint64_t protocol witness for StateMachineCommandParameterProtocol.name.getter in conformance StateMachineCommandParameter<A>()
{
  v0 = sub_1C136CB78();

  return v0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance StateMachineCommandParameter<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C136CB78();
  a1[1] = v2;
}

uint64_t type metadata completion function for StateMachineCommandParameter(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for StateMachineCommandParameter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for StateMachineCommandParameter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t SetEntityEnabledAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ActionEntityResolution();
}

uint64_t SetEntityEnabledAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = outlined consume of ActionEntityResolution();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

_BYTE *(*SetEntityEnabledAction.enabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 17);
  return SetEntityEnabledAction.enabled.modify;
}

__n128 SetEntityEnabledAction.init(targetEntity:isEnabled:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

__n128 SetEntityEnabledAction.init(targetEntity:enabled:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SetEntityEnabledAction.CodingKeys()
{
  if (*v0)
  {
    result = 0x656C62616E457369;
  }

  else
  {
    result = 0x6E45746567726174;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SetEntityEnabledAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SetEntityEnabledAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SetEntityEnabledAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetEntityEnabledAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMR);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v18 = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of ActionEntityResolution();
  lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of ActionEntityResolution();
  if (!v11)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v14 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

uint64_t SetEntityEnabledAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  v12 = v17;
  v19 = v18;
  LOBYTE(v16) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 17) = v13 & 1;
  outlined copy of ActionEntityResolution();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of ActionEntityResolution();
}

uint64_t getEnumTagSinglePayload for SetEntityEnabledAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for SetEntityEnabledAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void specialized SetEntityEnabledActionHandler.setEntityEnabled(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || (v1 = *(a1 + 8), v2 = *(a1 + 16), v3 = *(a1 + 24), v4 = *(a1 + 25), (Strong = swift_weakLoadStrong()) == 0))
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v18 = &type metadata for SetEntityEnabledAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SetEntityEnabledActionVmMd, &_s17RealityFoundation22SetEntityEnabledActionVmMR);
    v9 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v9);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v15);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    v6 = Strong;
    v15 = v1;
    v16 = v2;
    v17 = v3;
    outlined copy of ActionEntityResolution();
    v7 = ActionEntityResolution.resolve(from:)(v6);
    outlined consume of ActionEntityResolution();
    if (v7)
    {
      MEMORY[0x1C68F9730](*(v7 + 16), v4);
      v8 = *(v7 + 16);
      RENetworkMarkEntityMetadataDirty();
    }
  }
}

uint64_t InputTargetComponent.init(allowedInputTypes:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = &outlined read-only object #0 of InputTargetComponent.init(allowedInputTypes:);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(v4);
  *a2 = 1;
  *(a2 + 4) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t InputTargetComponent.allowedDirectInputTypes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

Swift::Int InputTargetComponent.DirectInputType.DirectInputOption.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t InputTargetComponent.DirectInputType.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(a1);

  *a2 = v3;
  return result;
}

uint64_t static InputTargetComponent.DirectInputType.directTouch.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.directTouch.getter);
  *a1 = result;
  return result;
}

uint64_t static InputTargetComponent.DirectInputType.directPinch.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.directPinch.getter);
  *a1 = result;
  return result;
}

uint64_t static InputTargetComponent.DirectInputType.all.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.all.getter);
  *a1 = result;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation19_Proto_MeshScope_v1O_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v86 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v89 = v8;
  v90 = result;
  v93 = a2 + 56;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = *(result + 48) + 32 * (v10 | (v3 << 6));
    v15 = *(v14 + 8);
    v99 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v2 + 40);
    Hasher.init(_seed:)();
    v101 = v17;
    v91 = v11;
    v92 = v3;
    if (!v17)
    {
      v19 = 1;
      goto LABEL_17;
    }

    if (v17 == 1)
    {
      v19 = 2;
LABEL_17:
      MEMORY[0x1C68F4C10](v19);

      String.hash(into:)();
      specialized Set.hash(into:)(v109, v16);
      goto LABEL_19;
    }

    MEMORY[0x1C68F4C10](0);
LABEL_19:
    v20 = Hasher._finalize()();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      v85 = v99;
LABEL_111:
      outlined consume of _Proto_MeshScope_v1(v85, v15, v16, v101);
      return 0;
    }

    v100 = ~v21;
    v23 = v17;
    v24 = v99;
    v102 = v16 + 56;
    v26 = v17 != 2 || (v15 | v99 | v16) != 0;
    v98 = v26;
    v97 = v15;
    while (1)
    {
      v27 = *(v2 + 48) + 32 * v22;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v103[0] = v29;
      v103[1] = v28;
      v103[2] = v30;
      v104 = v31;
      v105 = v24;
      v106 = v15;
      v107 = v16;
      v108 = v23;
      if (v31)
      {
        break;
      }

      if (v23)
      {
        v37 = v24;
        v38 = v15;
        v39 = v16;
      }

      else
      {
        v46 = v29 == v24 && v28 == v15;
        if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v30 == v16)
          {
            outlined copy of _Proto_MeshScope_v1(v24, v15, v16, 0);
            outlined copy of _Proto_MeshScope_v1(v29, v28, v16, 0);
LABEL_102:
            outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v103);
            v81 = v24;
            v82 = v15;
            v83 = v16;
            v84 = 0;
            goto LABEL_103;
          }

          if (*(v30 + 16) == *(v16 + 16))
          {
            v47 = 1 << *(v30 + 32);
            if (v47 < 64)
            {
              v48 = ~(-1 << v47);
            }

            else
            {
              v48 = -1;
            }

            v49 = v48 & *(v30 + 56);
            outlined copy of _Proto_MeshScope_v1(v29, v28, v30, 0);
            outlined copy of _Proto_MeshScope_v1(v24, v15, v16, 0);
            result = outlined copy of _Proto_MeshScope_v1(v29, v28, v30, 0);
            v50 = 0;
            v88 = (v47 + 63) >> 6;
            while (v49)
            {
              v68 = __clz(__rbit64(v49));
              v96 = (v49 - 1) & v49;
LABEL_89:
              v71 = (*(v30 + 48) + 16 * (v68 | (v50 << 6)));
              v72 = *v71;
              v73 = v71[1];
              v74 = *(v16 + 40);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v75 = Hasher._finalize()();
              v76 = -1 << *(v16 + 32);
              v77 = v75 & ~v76;
              if (((*(v102 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
              {
LABEL_97:

                v64 = v29;
                v65 = v28;
                v66 = v30;
                v67 = 0;
LABEL_98:
                outlined consume of _Proto_MeshScope_v1(v64, v65, v66, v67);
                v9 = v93;
                v2 = a2;
                v15 = v97;
                v24 = v99;
                goto LABEL_62;
              }

              v78 = ~v76;
              while (1)
              {
                v79 = (*(v16 + 48) + 16 * v77);
                v80 = *v79 == v72 && v79[1] == v73;
                if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v77 = (v77 + 1) & v78;
                if (((*(v102 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
                {
                  goto LABEL_97;
                }
              }

              v24 = v99;
              v49 = v96;
            }

            v69 = v50;
            while (1)
            {
              v50 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_116;
              }

              if (v50 >= v88)
              {
                outlined consume of _Proto_MeshScope_v1(v29, v28, v30, 0);
                v9 = v93;
                v2 = a2;
                v15 = v97;
                goto LABEL_102;
              }

              v70 = *(v30 + 56 + 8 * v50);
              ++v69;
              if (v70)
              {
                v68 = __clz(__rbit64(v70));
                v96 = (v70 - 1) & v70;
                goto LABEL_89;
              }
            }
          }
        }

        v37 = v24;
        v38 = v15;
        v39 = v16;
        LOBYTE(v23) = 0;
      }

      outlined copy of _Proto_MeshScope_v1(v37, v38, v39, v23);
      v40 = v29;
      v41 = v28;
      v42 = v30;
      LOBYTE(v23) = 0;
LABEL_61:
      outlined copy of _Proto_MeshScope_v1(v40, v41, v42, v23);
LABEL_62:
      outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v103);
      v22 = (v22 + 1) & v100;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        v85 = v24;
        goto LABEL_111;
      }

      v23 = v101;
    }

    if (v31 == 1)
    {
      if (v23 == 1)
      {
        v32 = v29 == v24 && v28 == v15;
        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v30 == v16)
          {
            outlined copy of _Proto_MeshScope_v1(v24, v15, v16, 1u);
            outlined copy of _Proto_MeshScope_v1(v29, v28, v16, 1u);
LABEL_100:
            outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v103);
            v81 = v24;
            v82 = v15;
            v83 = v16;
            v84 = 1;
LABEL_103:
            outlined consume of _Proto_MeshScope_v1(v81, v82, v83, v84);
            goto LABEL_104;
          }

          if (*(v30 + 16) == *(v16 + 16))
          {
            v33 = 1 << *(v30 + 32);
            if (v33 < 64)
            {
              v34 = ~(-1 << v33);
            }

            else
            {
              v34 = -1;
            }

            v35 = v34 & *(v30 + 56);
            outlined copy of _Proto_MeshScope_v1(v29, v28, v30, 1u);
            outlined copy of _Proto_MeshScope_v1(v24, v15, v16, 1u);
            result = outlined copy of _Proto_MeshScope_v1(v29, v28, v30, 1u);
            v36 = 0;
            v87 = (v33 + 63) >> 6;
            while (v35)
            {
              v51 = __clz(__rbit64(v35));
              v95 = (v35 - 1) & v35;
LABEL_72:
              v54 = (*(v30 + 48) + 16 * (v51 | (v36 << 6)));
              v55 = *v54;
              v56 = v54[1];
              v57 = *(v16 + 40);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v58 = Hasher._finalize()();
              v59 = -1 << *(v16 + 32);
              v60 = v58 & ~v59;
              if (((*(v102 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
LABEL_80:

                v64 = v29;
                v65 = v28;
                v66 = v30;
                v67 = 1;
                goto LABEL_98;
              }

              v61 = ~v59;
              while (1)
              {
                v62 = (*(v16 + 48) + 16 * v60);
                v63 = *v62 == v55 && v62[1] == v56;
                if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v60 = (v60 + 1) & v61;
                if (((*(v102 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_80;
                }
              }

              v24 = v99;
              v35 = v95;
            }

            v52 = v36;
            while (1)
            {
              v36 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                break;
              }

              if (v36 >= v87)
              {
                outlined consume of _Proto_MeshScope_v1(v29, v28, v30, 1u);
                v9 = v93;
                v2 = a2;
                v15 = v97;
                goto LABEL_100;
              }

              v53 = *(v30 + 56 + 8 * v36);
              ++v52;
              if (v53)
              {
                v51 = __clz(__rbit64(v53));
                v95 = (v53 - 1) & v53;
                goto LABEL_72;
              }
            }

            __break(1u);
            goto LABEL_115;
          }
        }

        v43 = v24;
        v44 = v15;
        v45 = v16;
        LOBYTE(v23) = 1;
      }

      else
      {
        v43 = v24;
        v44 = v15;
        v45 = v16;
      }

      outlined copy of _Proto_MeshScope_v1(v43, v44, v45, v23);
      v40 = v29;
      v41 = v28;
      v42 = v30;
      LOBYTE(v23) = 1;
      goto LABEL_61;
    }

    if (v98)
    {
      v40 = v24;
      v41 = v15;
      v42 = v16;
      goto LABEL_61;
    }

    outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v103);
LABEL_104:
    v8 = v89;
    result = v90;
    v7 = v91;
    v3 = v92;
    if (v91)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v86 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}