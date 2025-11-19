uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with take of _InnerAppExtensionIdentity(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id protocol witness for _InnerAppExtensionIdentity.bundleIdentifier.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  result = [*v0 bundleIdentifier];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of _InnerAppExtensionIdentity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _InnerAppExtensionIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id _EXLegacyLog()
{
  if (_EXLegacyLog_onceToken != -1)
  {
    _EXLegacyLog_cold_1();
  }

  v1 = _EXLegacyLog_log;

  return v1;
}

objc_class *EXGetExtensionClass()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = _EXLegacyLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = NSStringFromClass(v0);
    v5 = 136446466;
    v6 = "Class EXGetExtensionClass(void)";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1847D1000, v1, OS_LOG_TYPE_DEFAULT, "%{public}s returning %{public}@", &v5, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (v3 && (v4 = [a1 extensionPointRecord], v5 = objc_msgSend(v4, sel_extensionPointType), v4, v5 != 1))
  {
    v27 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(v27);
  }

  else
  {
    v6 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C2850), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
        result = v29;
        if (v29)
        {
          return result;
        }
      }
    }

    else
    {
    }

    v11 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001848C2C00), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      v15 = swift_dynamicCast();
      v16 = v28;
      if (!v15)
      {
        v16 = 0;
      }
    }

    else
    {

      v16 = 0;
    }

    v30 = v16;

    result = v30;
    if (!v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BA260;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1848BA260;
      v20 = [a1 extensionPointRecord];
      v21 = [v20 identifier];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v19 + 32) = v22;
      *(v19 + 40) = v24;
      isa = Array._bridgeToObjectiveC()().super.isa;

      *(inited + 48) = isa;
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);

      result = v26;
      if (!v26)
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [v1 extensionPointRecord];
  v4 = [v3 SDKDictionary];

  v5 = [v2 ditionaryFromPropertyList_];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  switch(v3)
  {
    case 0u:
      return 0;
    case 2u:
      return 1;
    case 1u:
      v5 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
      if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6880), (v7 & 1) != 0))
      {
        v8 = *(*(v5 + 56) + 8 * v6);
        swift_unknownObjectRetain();

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 BOOLValue];
          swift_unknownObjectRelease();
          return v10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v11 = *(specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter(a1) + 16);

      return v11 == 0;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v16, v31);
        *&v30 = v18;
        *(&v30 + 1) = v19;
        v28 = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v20 = v30;
        outlined init with take of Any(v29, &v26);

        swift_dynamicCast();
        v21 = v27;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v20, *(&v20 + 1));
        if (v22)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v20;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v20;
          *(v2[7] + 8 * result) = v21;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSypGGMd, &_sSDySSSDySSypGGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        outlined init with take of Any(&v27, v29);
        outlined init with take of Any(v29, v30);
        outlined init with take of Any(v30, &v28);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Any(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = outlined init with take of Any(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t AppExtensionIdentity.RecordIdentity.attributes.getter(void *a1)
{
  v1 = [a1 infoDictionary];
  v2 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C6980);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t specialized _InnerAppExtensionIdentity.requiresHostToBeContainerApp.getter(void *a1)
{
  v2 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v4 & 1) == 0))
  {

    goto LABEL_6;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }

  v6 = v30;
LABEL_7:
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870), (v8 & 1) == 0))
  {

LABEL_13:
    v10 = [a1 extensionPointRecord];
    v11 = [v10 extensionPointType];

    if (v11)
    {
      v12 = [a1 extensionPointRecord];
      v13 = [v12 extensionPointType];

      if (v13 != 1)
      {
        v14 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
        if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0), (v16 & 1) != 0))
        {
          v17 = *(*(v14 + 56) + 8 * v15);
          swift_unknownObjectRetain();
        }

        else
        {
          v17 = 0;
        }

        v18 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(v17, 0, 0);
        v20 = v19;
        outlined consume of _ScopeRestriction(v18, v19);
        if (!v20)
        {
          return 1;
        }
      }
    }

    v21 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
        v25 = v30;
        if (!*(v30 + 16))
        {
          goto LABEL_30;
        }

LABEL_27:
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870);
        if (v27)
        {
          v28 = *(*(v25 + 56) + 8 * v26);
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {
            return v30;
          }

          return 0;
        }

LABEL_30:

        return 0;
      }
    }

    else
    {
    }

    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v25 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0 || (v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  return 1;
}

id @nonobjc LSBundleRecord.__allocating_init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for NSDictionary(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of _InnerAppExtensionIdentity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id _EXExtensionIdentity.init(applicationExtensionRecord:)(uint64_t a1)
{
  v7 = &type metadata for AppExtensionIdentity.RecordIdentity;
  v8 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *&v6 = a1;
  v1 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  outlined init with take of _InnerAppExtensionIdentity(&v6, v5);
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v3 = v1;
  outlined assign with take of _InnerAppExtensionIdentity?(v5, v1 + v2);
  swift_endAccess();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void specialized closure #1 in closure #1 in _EXDiscoveryController.identities(matching:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v192 = a4;
  v222 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v190 = *(v7 - 8);
  v191 = v7;
  v8 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0x8000000000000000;
  if (!a2[OBJC_IVAR____EXQuery_includePostprocessing])
  {
    v11 = 0;
  }

  if (a2[OBJC_IVAR____EXQuery_includeUpdatingApps])
  {
    v11 |= 0x2000000000000000uLL;
  }

  if (a2[OBJC_IVAR____EXQuery_allowsDuplicates])
  {
    v12 = v11 | 0x10;
  }

  else
  {
    v12 = v11;
  }

  v189 = [objc_opt_self() enumeratorWithExtensionPointRecord:a1 options:v12];
  NSEnumerator.makeIterator()();
  v13 = OBJC_IVAR____EXQuery_inner;
  v201 = OBJC_IVAR____EXQuery_excludeLockedApps;
  v194 = OBJC_IVAR____EXQuery_resultType;
  v182 = OBJC_IVAR____EXExtensionAvailability_unelectedCount;
  v181 = OBJC_IVAR____EXExtensionAvailability_disabledCount;
  v186 = OBJC_IVAR____EXExtensionAvailability_enabledCount;
  v184 = OBJC_IVAR____EXQuery_excludeDisabled;
  v188 = OBJC_IVAR____EXQuery_predicate;
  swift_beginAccess();
  swift_beginAccess();
  v204 = v10;
  NSFastEnumerationIterator.next()();
  if (!v221)
  {
LABEL_125:
    (*(v190 + 8))(v204, v191);

    v179 = *MEMORY[0x1E69E9840];
    return;
  }

  v197 = 0;
  *&v14 = 138543362;
  v195 = v14;
  *&v14 = 67109376;
  v187 = v14;
  *&v14 = 136446210;
  v180 = v14;
  *&v14 = 138543618;
  v183 = v14;
  v198 = a3;
  v202 = v13;
  v203 = a2;
  while (1)
  {
    outlined init with take of Any(&v220, &v217);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v15 = v215;
    outlined init with copy of _InnerAppExtensionIdentity(&a2[v13], &v217);
    v16 = v218;
    v17 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, v218);
    v18 = (*(v17 + 8))(v16, v17);
    if (!v19)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v217);
      outlined init with copy of _InnerAppExtensionIdentity(&a2[v13], &v217);
      v28 = v218;
      v29 = v219;
      __swift_project_boxed_opaque_existential_1(&v217, v218);
      v30 = (*(v29 + 40))(v28, v29);
      __swift_destroy_boxed_opaque_existential_0Tm(&v217);
      v31 = [v15 extensionPointRecord];
      v32 = [v31 platform];

      if ((v30 + 1) <= 1)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (v32 != v30)
      {

        goto LABEL_12;
      }

      goto LABEL_23;
    }

    v20 = v18;
    v21 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(&v217);
    v22 = v15;
    v23 = [v15 extensionPointRecord];
    v24 = [v23 identifier];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v20 == v25 && v21 == v27)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    outlined init with copy of _InnerAppExtensionIdentity(&a2[v13], &v217);
    v34 = v218;
    v35 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, v218);
    v30 = (*(v35 + 40))(v34, v35);
    __swift_destroy_boxed_opaque_existential_0Tm(&v217);
    v15 = v22;
    v36 = [v22 extensionPointRecord];
    v32 = [v36 platform];

    if ((v30 + 1) >= 2)
    {
      goto LABEL_22;
    }

LABEL_23:
    v37 = [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord_];
    v38 = *a3;
    if ((*a3 & 0xC000000000000001) != 0)
    {
      if (v38 < 0)
      {
        v39 = *a3;
      }

      v40 = *a3;

      v41 = v37;
      v42 = __CocoaSet.contains(_:)();

      if (v42)
      {
        goto LABEL_27;
      }
    }

    else if (*(v38 + 16))
    {
      v54 = v15;
      type metadata accessor for _EXExtensionIdentity();
      v55 = *(v38 + 40);

      v56 = NSObject._rawHashValue(seed:)(v55);
      v57 = -1 << *(v38 + 32);
      v58 = v56 & ~v57;
      if ((*(v38 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
      {
        v59 = ~v57;
        while (1)
        {
          v60 = *(*(v38 + 48) + 8 * v58);
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          if (((*(v38 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        a3 = v198;
        a2 = v203;
        v15 = v54;
LABEL_27:
        if (one-time initialization token for discovery != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.discovery);
        v44 = v37;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = v15;
          v49 = swift_slowAlloc();
          *v47 = v195;
          *(v47 + 4) = v44;
          *v49 = v44;
          v50 = v44;
          v51 = v46;
          v52 = v45;
          v53 = "Extension has already been evaluated: %{public}@";
LABEL_43:
          _os_log_impl(&dword_1847D1000, v52, v51, v53, v47, 0xCu);
          outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          MEMORY[0x1865F56C0](v49, -1, -1);
          MEMORY[0x1865F56C0](v47, -1, -1);

          goto LABEL_11;
        }

LABEL_50:

        goto LABEL_11;
      }

LABEL_36:

      a3 = v198;
      a2 = v203;
      v15 = v54;
    }

    if (a2[v201] == 1 && [v15 appProtectionLocked])
    {
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.discovery);
      v44 = v37;
      v45 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v63))
      {
        v47 = swift_slowAlloc();
        v48 = v15;
        v49 = swift_slowAlloc();
        *v47 = v195;
        *(v47 + 4) = v44;
        *v49 = v44;
        v50 = v44;
        v51 = v63;
        v52 = v45;
        v53 = "Skipping because extension is locked: %{public}@";
        goto LABEL_43;
      }

      goto LABEL_50;
    }

    v64 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    outlined init with copy of _InnerAppExtensionIdentity?(v37 + v64, &v215);
    if (!v216)
    {
      goto LABEL_128;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v215, &v217);
    v65 = v218;
    v66 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, v218);
    (*(v66 + 224))(v65, v66);
    if (v67)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v217);
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.discovery);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      v71 = os_log_type_enabled(v69, v70);
      a2 = v203;
      if (v71)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1847D1000, v69, v70, "Extension points with app group scope must be enumerated using AppExtensionPoint.Monitor.", v72, 2u);
        MEMORY[0x1865F56C0](v72, -1, -1);
      }

      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v217);
    [v37 targetsSystemExtensionPoint];
    outlined init with copy of _InnerAppExtensionIdentity?(v37 + v64, &v215);
    if (!v216)
    {
      goto LABEL_129;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v215, &v217);
    v73 = v218;
    v74 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, v218);
    LODWORD(v196) = (*(v74 + 408))(v73, v74);
    __swift_destroy_boxed_opaque_existential_0Tm(&v217);
    outlined init with copy of _InnerAppExtensionIdentity(&v203[v202], v212);
    v75 = v213;
    v76 = v214;
    __swift_project_boxed_opaque_existential_1(v212, v213);
    v77 = (*(v76 + 32))(v75, v76);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    __swift_destroy_boxed_opaque_existential_0Tm(v212);
    *&v206 = v77;
    *(&v206 + 1) = v79;
    v207 = v81;
    v208 = v83;
    v84 = _EXAuditTokenForCurrentProcess();
    v85 = v84[1];
    v205[0] = *v84;
    v205[1] = v85;
    v86 = v197;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    v199 = __swift_project_value_buffer(v87, static Logger.discovery);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = v187;
      swift_beginAccess();
      PID = _EXAuditTokenGetPID(v205);
      swift_endAccess();
      *(v90 + 4) = PID;
      *(v90 + 8) = 1024;
      swift_beginAccess();
      v92 = _EXAuditTokenGetPID(&v206);
      swift_endAccess();
      *(v90 + 10) = v92;
      _os_log_impl(&dword_1847D1000, v88, v89, "Process %d discovering extensions for process %d", v90, 0xEu);
      MEMORY[0x1865F56C0](v90, -1, -1);
    }

    v211 = 0;
    v93 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    swift_beginAccess();
    v94 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v206, *(&v206 + 1), v207, v208);
    if (v86)
    {
      v95 = v86;
      v96 = v203;
      v97 = v203;
      v98 = v86;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v185 = v15;
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = v183;
        *(v101 + 4) = v97;
        *v102 = v96;
        *(v101 + 12) = 2114;
        v103 = v97;
        v104 = v95;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 14) = v105;
        v102[1] = v105;
        _os_log_impl(&dword_1847D1000, v99, v100, "Unable to resolve host app record for query: %{public}@ error: %{public}@", v101, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v102, -1, -1);
        MEMORY[0x1865F56C0](v101, -1, -1);

        v106 = 0;
        v200 = 0;
        if (v196)
        {
          v196 = v37;
          v197 = 0;
          LODWORD(v193) = 1;
          v15 = v185;
          goto LABEL_100;
        }

        v197 = 0;
        v15 = v185;
      }

      else
      {

        v106 = 0;
        v200 = 0;
        if (v196)
        {
          v196 = v37;
          v197 = 0;
LABEL_99:
          LODWORD(v193) = 1;
          goto LABEL_100;
        }

        v197 = 0;
      }
    }

    else
    {
      v107 = v94;
      objc_opt_self();
      v108 = swift_dynamicCastObjCClass();
      if (!v108)
      {
      }

      swift_beginAccess();
      v211 = v108;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      v111 = os_log_type_enabled(v109, v110);
      v200 = v108;
      v197 = 0;
      if (v111)
      {
        v112 = swift_slowAlloc();
        v193 = v93;
        v113 = v15;
        v114 = v112;
        v115 = swift_slowAlloc();
        v212[0] = v115;
        *v114 = v180;
        *&v209 = v108;
        v185 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LSApplicationRecordCSgMd, &_sSo19LSApplicationRecordCSgMR);
        v116 = String.init<A>(describing:)();
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v212);
        v108 = v200;

        *(v114 + 4) = v118;
        _os_log_impl(&dword_1847D1000, v109, v110, "Resolved host app record: %{public}s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x1865F56C0](v115, -1, -1);
        v119 = v114;
        v15 = v113;
        MEMORY[0x1865F56C0](v119, -1, -1);

        v120 = v185;
      }

      else
      {

        v120 = v108;
      }

      v121 = [v37 containingBundleRecord];
      if (v121)
      {
        v122 = v121;
        v123 = v15;
        v124 = v120;
        if (v108)
        {
          v125 = v124;
          v106 = static NSObject.== infix(_:_:)();
        }

        else
        {

          v106 = 0;
        }

        v15 = v123;
        if (v196)
        {
LABEL_98:
          v196 = v37;
          goto LABEL_99;
        }
      }

      else if (v108)
      {
        v106 = 0;
        if (v196)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v178 = v120;
        v106 = 1;
        if (v196)
        {
          goto LABEL_98;
        }
      }
    }

    LODWORD(v193) = 0;
    v126 = *&v203[v194];
    if (v126 != 1)
    {
      v127 = 0;
      if (!v126)
      {
        goto LABEL_80;
      }

      goto LABEL_105;
    }

    v196 = v37;
LABEL_100:
    v140 = v106;
    v141 = v15;
    outlined init with copy of _InnerAppExtensionIdentity?(v196 + v64, &v209);
    if (!v210)
    {
      goto LABEL_130;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v209, v212);
    v142 = v213;
    v143 = v214;
    __swift_project_boxed_opaque_existential_1(v212, v213);
    v144 = *(v143 + 432);
    v145 = v200;
    v146 = v200;
    v147 = v144(v145, v142, v143);

    __swift_destroy_boxed_opaque_existential_0Tm(v212);
    v106 = v140;
    if ((v140 & ((v147 & 3) == 0)) != 0)
    {
      v127 = v147 | 2;
    }

    else
    {
      v127 = v147;
    }

    v15 = v141;
    v37 = v196;
    if (!*&v203[v194])
    {
LABEL_80:
      v128 = AuditToken.canHostOrDiscoverAnyExtension.getter(v206, *(&v206 + 1), v207, v208);
      if (v193 & 1) != 0 || (v203[v184])
      {
        a3 = v198;
        if ((v128 & 1) == 0)
        {
          if ((v127 & 2) == 0)
          {

LABEL_124:
            v13 = v202;
            a2 = v203;
            goto LABEL_12;
          }

LABEL_86:
          if ([v37 requiresHostToBeContainerApp])
          {
            v129 = v106;
            v130 = v37;
            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v131, v132))
            {
              v133 = v15;
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              *v134 = v183;
              *(v134 + 4) = v130;
              *v135 = v130;
              *(v134 + 12) = 1024;
              *(v134 + 14) = v129 & 1;
              v136 = v130;
              _os_log_impl(&dword_1847D1000, v131, v132, "Extension: %{public}@ must be contained in host app. hostIsContainer: %{BOOL}d", v134, 0x12u);
              outlined destroy of NSObject?(v135, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
              v137 = v135;
              a3 = v198;
              MEMORY[0x1865F56C0](v137, -1, -1);
              v138 = v134;
              v15 = v133;
              MEMORY[0x1865F56C0](v138, -1, -1);
            }

            if ((v129 & 1) == 0)
            {

              goto LABEL_124;
            }
          }
        }
      }

      else
      {
        a3 = v198;
        if ((v128 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      a2 = v203;
      v139 = *&v203[v188];
      if (v139 && ([v139 evaluateWithObject_] & 1) == 0 && *&a2[v188])
      {
      }

      else
      {
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v209, v37);
        swift_endAccess();
      }

LABEL_11:
      v13 = v202;
      goto LABEL_12;
    }

LABEL_105:
    if ((v127 & 2) != 0)
    {
      v162 = v37;
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();

      v165 = os_log_type_enabled(v163, v164);
      a3 = v198;
      if (v165)
      {
        v166 = swift_slowAlloc();
        v167 = v15;
        v168 = swift_slowAlloc();
        *v166 = v195;
        *(v166 + 4) = v162;
        *v168 = v162;
        v169 = v162;
        _os_log_impl(&dword_1847D1000, v163, v164, "Extension %{public}@ is enabled", v166, 0xCu);
        outlined destroy of NSObject?(v168, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        v170 = v168;
        v15 = v167;
        MEMORY[0x1865F56C0](v170, -1, -1);
        MEMORY[0x1865F56C0](v166, -1, -1);
        v162 = v163;
        v163 = v169;
      }

      v13 = v202;
      a2 = v203;

      v157 = v192;
      v158 = v186;
      v171 = *(v192 + v186);
      v160 = __OFADD__(v171, 1);
      v161 = v171 + 1;
      if (v160)
      {
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
      }
    }

    else
    {
      v148 = v37;
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();

      v151 = os_log_type_enabled(v149, v150);
      a3 = v198;
      if (v127)
      {
        if (v151)
        {
          v172 = swift_slowAlloc();
          v173 = v15;
          v174 = swift_slowAlloc();
          *v172 = v195;
          *(v172 + 4) = v148;
          *v174 = v148;
          v175 = v148;
          _os_log_impl(&dword_1847D1000, v149, v150, "Extension %{public}@ is disabled", v172, 0xCu);
          outlined destroy of NSObject?(v174, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          v176 = v174;
          v15 = v173;
          MEMORY[0x1865F56C0](v176, -1, -1);
          MEMORY[0x1865F56C0](v172, -1, -1);
          v148 = v149;
          v149 = v175;
        }

        v13 = v202;
        a2 = v203;

        v157 = v192;
        v158 = v181;
        v177 = *(v192 + v181);
        v160 = __OFADD__(v177, 1);
        v161 = v177 + 1;
        if (v160)
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v151)
        {
          v152 = swift_slowAlloc();
          v153 = v15;
          v154 = swift_slowAlloc();
          *v152 = v195;
          *(v152 + 4) = v148;
          *v154 = v148;
          v155 = v148;
          _os_log_impl(&dword_1847D1000, v149, v150, "Extension %{public}@ is unelected", v152, 0xCu);
          outlined destroy of NSObject?(v154, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          v156 = v154;
          v15 = v153;
          MEMORY[0x1865F56C0](v156, -1, -1);
          MEMORY[0x1865F56C0](v152, -1, -1);
          v148 = v149;
          v149 = v155;
        }

        v13 = v202;
        a2 = v203;

        v157 = v192;
        v158 = v182;
        v159 = *(v192 + v182);
        v160 = __OFADD__(v159, 1);
        v161 = v159 + 1;
        if (v160)
        {
          goto LABEL_126;
        }
      }
    }

    *(v157 + v158) = v161;

LABEL_12:
    NSFastEnumerationIterator.next()();
    if (!v221)
    {
      goto LABEL_125;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t AuditToken.canHostOrDiscoverAnyExtension.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v4 = MEMORY[0x1865F36D0](0xD000000000000033, 0x80000001848C2B50);
  type metadata accessor for NSNumber();
  swift_getObjCClassFromMetadata();
  v5 = _EXAuditTokenGetEntitlementValue(&v11, v4);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast() && (v10 & 1) != 0)
  {
    result = 1;
  }

  else
  {
    v7 = MEMORY[0x1865F36D0](0xD000000000000031, 0x80000001848C2B90);
    v8 = _EXAuditTokenGetEntitlementValue(&v11, v7);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    result = (swift_dynamicCast() & v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

id _EXAuditTokenGetEntitlementValue(__int128 *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = objc_autoreleasePoolPush();
    [v4 UTF8String];
    v9 = *a1;
    v10 = a1[1];
    v7 = xpc_copy_entitlement_for_token();
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

uint64_t _sIg_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

BOOL protocol witness for _InnerAppExtensionIdentity.targetsSystemExtensionPoint.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = [*v0 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (!v3)
  {
    return 1;
  }

  v4 = [v1 extensionPointRecord];
  v5 = [v4 extensionPointType];

  return v5 == 1;
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

uint64_t AppExtensionProcess.Configuration.onInterruption.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void static _AppExtensionProcess.make(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for _AppExtensionProcess.Configuration(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EXHostConfiguration();
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(a1, v8, type metadata accessor for _AppExtensionProcess.Configuration);
  v9 = _EXHostConfiguration.__allocating_init(_:)(v8);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXHostConfiguration, off_1E6E4D218);
  if ([v9 isKindOfClass_])
  {
    v10 = objc_opt_self();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    aBlock[4] = partial apply for closure #1 in static _AppExtensionProcess.make(with:completion:);
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _EXExtensionProcess?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_11;
    v13 = _Block_copy(aBlock);

    [v10 extensionProcessWithConfiguration:v11 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    v14 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t sub_1847D6B54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with copy of AppExtensionProcess._InstanceIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _EXHostConfiguration.__allocating_init(_:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = v37 - v4 + 16;
  outlined init with copy of _InnerAppExtensionIdentity(a1, v38);
  v6 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v38, v37);
  v7 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v8 = v6;
  outlined assign with take of AppExtensionIdentity?(v37, v6 + v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = objc_allocWithZone(v1);
  v11 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration());
  v12 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v9, 0);

  swift_getObjectType();
  v13 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x30);
  v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  v15 = *(a1 + 48);
  v16 = &v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v17 = *&v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v18 = *&v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  *v16 = *(a1 + 40);
  *(v16 + 1) = v15;
  v19 = v12;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);

  v20 = *(a1 + 56);
  if (!v20)
  {
    goto LABEL_4;
  }

  type metadata accessor for _EXExtensionInstanceIdentifier();
  if ([v20 isKindOfClass_])
  {
    v21 = swift_dynamicCastClassUnconditional();
    v22 = *&v19[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    *&v19[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = v21;

LABEL_4:
    v23 = *&v19[OBJC_IVAR____EXHostConfiguration_preferredLanguages];
    *&v19[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = *(a1 + 64);

    v24 = *(a1 + 88);
    v25 = &v19[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
    v26 = *&v19[OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8];
    *v25 = *(a1 + 80);
    *(v25 + 1) = v24;

    v27 = *&v19[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables];
    *&v19[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = *(a1 + 72);

    v28 = *(a1 + 96);
    v29 = *&v19[OBJC_IVAR____EXHostConfiguration_launchPersona];
    *&v19[OBJC_IVAR____EXHostConfiguration_launchPersona] = v28;
    v30 = v28;

    v31 = *&v19[OBJC_IVAR____EXHostConfiguration_assertionAttributes];
    *&v19[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = *(a1 + 104);

    v19[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = *(a1 + 112);
    v32 = type metadata accessor for _AppExtensionProcess.Configuration(0);
    outlined init with copy of NWApplicationID?(a1 + *(v32 + 52), v5);
    outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for _AppExtensionProcess.Configuration);
    v33 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v5, &v19[v33], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();
    return v19;
  }

  v35 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of NWApplicationID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppExtensionProcess.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized static RBSDomainAttribute.defaultExtensionAttributes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1848BDC90;
  v1 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
  v2 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C6480);
  v3 = objc_opt_self();
  v4 = [v3 attributeWithDomain:v1 name:v2];

  *(v0 + 32) = v4;
  v5 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
  v6 = MEMORY[0x1865F36D0](0x654D656C646E6148, 0xED00006567617373);
  v7 = [v3 attributeWithDomain:v5 name:v6];

  *(v0 + 40) = v7;
  return v0;
}

uint64_t type metadata accessor for _EXHostConfiguration()
{
  result = type metadata singleton initialization cache for _EXHostConfiguration;
  if (!type metadata singleton initialization cache for _EXHostConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized _EXHostConfiguration.init(with:instanceIdentifier:)(void *a1, void *a2)
{
  v5 = OBJC_IVAR____EXHostConfiguration__extensionIdentity;
  *&v2[OBJC_IVAR____EXHostConfiguration__extensionIdentity] = 0;
  v6 = &v2[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____EXHostConfiguration_instanceIdentifier;
  *&v2[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  v8 = &v2[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_launchPersona] = 0;
  v9 = OBJC_IVAR____EXHostConfiguration_assertionAttributes;
  *&v2[v9] = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v2[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = 0;
  v10 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
  v11 = type metadata accessor for NWApplicationID();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = *&v2[v5];
  *&v2[v5] = a1;
  v13 = a1;

  v14 = *&v2[v7];
  *&v2[v7] = a2;
  v15 = a2;

  v17.receiver = v2;
  v17.super_class = type metadata accessor for _EXHostConfiguration();
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t outlined assign with take of AppExtensionIdentity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AppExtensionPoint.Monitor(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for _EXExtensionInstanceIdentifier()
{
  result = type metadata singleton initialization cache for _EXExtensionInstanceIdentifier;
  if (!type metadata singleton initialization cache for _EXExtensionInstanceIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for _EXExtensionIdentity()
{
  result = lazy cache variable for type metadata for _EXExtensionIdentity;
  if (!lazy cache variable for type metadata for _EXExtensionIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _EXExtensionIdentity);
  }

  return result;
}

uint64_t _AppExtensionIdentity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _EXExtensionIdentity();
  if ([a1 isKindOfClass_])
  {
    v4 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    outlined init with copy of _InnerAppExtensionIdentity?(a1 + v4, &v7);
    if (v8)
    {

      return outlined init with take of _InnerAppExtensionIdentity(&v7, a2);
    }

    __break(1u);
  }

  v6 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

__n128 _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = MEMORY[0x1E69E7CC8];
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  *(a4 + 112) = 0;
  v8 = *(type metadata accessor for _AppExtensionProcess.Configuration(0) + 52);
  v9 = type metadata accessor for NWApplicationID();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  result = *a1;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t _EXExtensionIdentity.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  outlined init with copy of UUID?(a1, v18, &_sypSgMd, &_sypSgMR);
  if (!v19)
  {
    outlined destroy of NSObject?(v18, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for _EXExtensionIdentity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v17[1];
  v12 = [v1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v11 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static UUID.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  return v14 & 1;
}

uint64_t specialized _EXLaunchConfiguration.__allocating_init(_:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25[-v5];
  v7 = *&a1[OBJC_IVAR____EXHostConfiguration__extensionIdentity];
  if (v7)
  {
    v8 = objc_allocWithZone(type metadata accessor for _EXLaunchConfiguration(0));
    v9 = _EXLaunchConfiguration.init(extensionIdentity:)(v7);
    v10 = *&a1[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    v11 = *&v9[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
    *&v9[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = v10;
    v12 = v9;
    v13 = v10;

    v14 = *&v12[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages];
    *&v12[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = *&a1[OBJC_IVAR____EXHostConfiguration_preferredLanguages];

    v15 = *&a1[OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8];
    v16 = &v12[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
    v17 = *&v12[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8];
    *v16 = *&a1[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
    *(v16 + 1) = v15;

    v18 = *&v12[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables];
    *&v12[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = *&a1[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables];

    v19 = *&a1[OBJC_IVAR____EXHostConfiguration_launchPersona];
    v20 = *&v12[OBJC_IVAR____EXLaunchConfiguration_launchPersona];
    *&v12[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = v19;
    v21 = v19;

    v22 = *&v12[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
    *&v12[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes] = *&a1[OBJC_IVAR____EXHostConfiguration_assertionAttributes];

    v23 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined init with copy of UUID?(&a1[v23], v6, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);

    v24 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v6, &v12[v24], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _EXLaunchConfiguration.init(extensionIdentity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = 0;
  *&v1[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = 0;
  v3 = &v1[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = 0;
  v4 = OBJC_IVAR____EXLaunchConfiguration_assertionAttributes;
  *&v1[v4] = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v5 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v6 = type metadata accessor for NWApplicationID();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _EXLaunchConfiguration(0);
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _EXLaunchConfiguration.hash.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = *(v0 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (v6)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v7 = one-time initialization token for _defaultInstanceIdentifier;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {

      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    }

    else
    {
      v11 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
      v12 = type metadata accessor for UUID();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v5, &v8[v11], v12);

      (*(v13 + 56))(v5, 0, 1, v12);
    }

    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v10 = Optional<A>.hashValue.getter();
    outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v10 = Int.hashValue.getter();
  }

  v14 = *(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v15 = NSObject.hashValue.getter();

  return v15 ^ v10;
}

Class @objc _EXExtensionIdentity.uniqueIdentifier.getter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v7, &v13, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v14)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 56))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v6, v2);

    return v11.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for _InnerAppExtensionIdentity.uniqueIdentifier.getter in conformance AppExtensionIdentity.RecordIdentity(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

uint64_t specialized static _EXExtensionProcess.extensionProcess(configuration:)(void *a1)
{
  type metadata accessor for _EXHostConfiguration();
  if ([a1 isKindOfClass_])
  {
    v3 = a1;
    v4 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v3);
    if (one-time initialization token for sharedInstance != -1)
    {
      swift_once();
    }

    v5 = _EXExtensionProcessMannger.process(configuration:)(v4);
    if (!v1)
    {
      v21 = v5;
      v3 = [objc_allocWithZone(_EXExtensionProcess) initWithProcessHandle:v5 configuration:v3];

      v4 = v21;
LABEL_13:

      return v3;
    }

    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.general);
    v7 = v3;
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v3 = 136446466;
    v12 = *&v7[OBJC_IVAR____EXHostConfiguration__extensionIdentity];
    if (v12)
    {
      v13 = v12;

      v14 = [v13 bundleIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

      *(v3 + 4) = v18;
      *(v3 + 6) = 2114;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 14) = v20;
      *v11 = v20;
      _os_log_impl(&dword_1847D1000, v9, v10, "Failed to create extensionProcess for extension '%{public}s' error: %{public}@", v3, 0x16u);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1865F56C0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1865F56C0](v23, -1, -1);
      MEMORY[0x1865F56C0](v3, -1, -1);

LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    __break(1u);
  }

  [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char **_EXExtensionProcessMannger.process(configuration:)(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMapLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMap);
  v6 = &selRef_initWithIdentifier_platform_error_;
  v7 = [v5 objectForKey_];
  v8 = v7;
  os_unfair_lock_unlock(v4 + 4);
  if (v8)
  {

    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.launch);
    v6 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v6;
      *v13 = v7;
      v6 = v6;
      _os_log_impl(&dword_1847D1000, v10, v11, "Existing process %{public}@ is valid, returning it.", v12, 0xCu);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    goto LABEL_31;
  }

  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.launch);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v5;
    v20 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v20 = a1;
    v21 = v15;
    _os_log_impl(&dword_1847D1000, v16, v17, "Launching process with config: %{public}@", v18, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    v22 = v20;
    v5 = v19;
    v6 = &selRef_initWithIdentifier_platform_error_;
    MEMORY[0x1865F56C0](v22, -1, -1);
    MEMORY[0x1865F56C0](v18, -1, -1);
  }

  v23 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*&v15[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] launchesViaExtensionKitService])
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v24 = _EXServiceClient.launch(with:)(v15);
    if (!v2)
    {
LABEL_19:
      v10 = v24;
      os_unfair_lock_lock(v4 + 4);
      v25 = [v5 objectForKey_];
      if (v25)
      {
        v26 = v25;
        v27 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
        os_unfair_lock_lock((*&v25[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock] + 16));
        v28 = *&v26[OBJC_IVAR____EXExtensionProcessHandle_assertion];
        if (v28)
        {
          v29 = [v28 isValid];
          os_unfair_lock_unlock((*&v26[v27] + 16));
          if (v29)
          {
            v30 = v26;
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              *v33 = 138543362;
              *(v33 + 4) = v30;
              *v34 = v26;
              v35 = v30;
              _os_log_impl(&dword_1847D1000, v31, v32, "New process was created in a race and is valid, returning existing process: %{public}@", v33, 0xCu);
              outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
              MEMORY[0x1865F56C0](v34, -1, -1);
              MEMORY[0x1865F56C0](v33, -1, -1);
            }

LABEL_30:
            v6 = v30;
            os_unfair_lock_unlock(v4 + 4);

LABEL_31:
            v43 = v8;

            return v6;
          }
        }

        else
        {
          os_unfair_lock_unlock((*&v26[v27] + 16));
        }
      }

      v36 = v5;
      v37 = v10;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      log = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        *(v40 + 4) = v37;
        *v41 = v10;
        v42 = v37;
        _os_log_impl(&dword_1847D1000, log, v39, "Created new process %{public}@.", v40, 0xCu);
        outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v41, -1, -1);
        MEMORY[0x1865F56C0](v40, -1, -1);
      }

      swift_unknownObjectWeakAssign();
      v30 = v37;
      [v36 setObject:v30 forKey:v15];
      goto LABEL_30;
    }
  }

  else if (![*&v15[v23] requiresNetworkAttribution] || (specialized _EXExtensionProcessMannger.applyNetworkApplicationID(to:)(v15), !v2))
  {
    [objc_opt_self() auditTokenForCurrentProcess];
    v24 = specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(v15, v46, v47, v48, v49);
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  return v6;
}

uint64_t _EXExtensionInstanceIdentifier.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of NSObject?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXExtensionInstanceIdentifier();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v4 == v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = static UUID.== infix(_:_:)();
  }

  return v2 & 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter()
{
  if (specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter())
  {
    return 1;
  }

  v1 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6A80), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AA0);
  if (v3)
  {
    v8 = *(*(v1 + 56) + 8 * v2);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      if (v7)
      {
        return 1;
      }
    }
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6A80);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v1 + 56) + 8 * v5);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.groupIdentifier.getter(void *a1)
{
  v1 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
  if (!*(v1 + 16))
  {
    goto LABEL_18;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AE0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x6369767265535845, 0xED00006570795465), (v7 & 1) == 0))
  {

    goto LABEL_11;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_12;
  }

  v10 = v25;
  v9 = v26;
  if (v25 == 0x656C646E7542 && v26 == 0xE600000000000000)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v11._countAndFlagsBits = 0x3A70756F7247, v11._object = 0xE600000000000000, !String.hasPrefix(_:)(v11)))
  {
LABEL_17:

LABEL_18:

    return 0;
  }

  v12 = String.count.getter();
  v13 = specialized Collection.dropFirst(_:)(v12, v10, v9);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1865F3760](v13, v15, v17, v19);
  v22 = v21;

  if (v20 == v25 && v22 == v26)
  {

    return v25;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t _EXServiceClient.launch(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = _EXServiceClient.launchConnection.getter();
  v28 = partial apply for closure #1 in _EXServiceClient.launch(with:);
  v29 = v2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v27 = &block_descriptor_209;
  v5 = _Block_copy(&aBlock);

  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation24_EXLaunchServiceProtocol_pMd, &_s19ExtensionFoundation24_EXLaunchServiceProtocol_pMR);
  if (swift_dynamicCast())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;
    v28 = partial apply for closure #2 in _EXServiceClient.launch(with:);
    v29 = v8;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed (@guaranteed _EXExtensionProcessHandle?, @guaranteed NSError?) -> ();
    v27 = &block_descriptor_218;
    v9 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v24 prepareWithLaunchConfiguration:a1 reply:v9];
    _Block_release(v9);
    swift_beginAccess();
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = *&v10[OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle];
      v12 = v10;
      [v11 auditToken];
      v23 = aBlock;
      v13 = v26;
      v14 = v27;
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v28 = partial apply for closure #3 in _EXServiceClient.launch(with:);
      v29 = v15;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v26 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v27 = &block_descriptor_224;
      v16 = _Block_copy(&aBlock);
      v17 = v12;

      aBlock = v23;
      v26 = v13;
      v27 = v14;
      [v24 invalidateLaunchAssertionsForExtensionAuditToken:&aBlock reply:v16];
      _Block_release(v16);

      swift_unknownObjectRelease_n();

      return v17;
    }

    swift_beginAccess();
    if (*v3)
    {
      v21 = *v3;
      v22 = _convertErrorToNSError(_:)();
    }

    else
    {
      v22 = 0;
    }

    [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_willThrow();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_beginAccess();
    if (*v3)
    {
      v19 = *v3;
      v20 = _convertErrorToNSError(_:)();
    }

    else
    {
      v20 = 0;
    }

    [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_willThrow();
  }
}

uint64_t sub_1847D978C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id _EXServiceClient.launchConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &aBlock - v3;
  v5 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = OBJC_IVAR____EXServiceClient__launchConnection;
  v7 = *(v0 + OBJC_IVAR____EXServiceClient__launchConnection);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(v5 + 4);
    return v8;
  }

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 1, 1, v10);
  v12 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v4, v10);
  }

  v14 = MEMORY[0x1865F36D0](0x68636E75614CLL, 0xE600000000000000);
  v15 = [objc_opt_self() endpointForServiceName:v12 oneshot:isa service:v14 instance:0];

  if (!v15)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.general);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v28 + 12) = 2082;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x68636E75614CLL, 0xE600000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v29, -1, -1);
      MEMORY[0x1865F56C0](v28, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v16 = objc_opt_self();
  v34 = destructiveProjectEnumData for Platform;
  v35 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v33 = &block_descriptor_227;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 NSXPCConnectionWithEndpoint:v15 configurator:v17];
  _Block_release(v17);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for launchServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v18 setRemoteObjectInterface_];
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #2 in _EXServiceClient.launchConnection.getter;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_231;
  v20 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #3 in _EXServiceClient.launchConnection.getter;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_235;
  v22 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v0 + v6);
  *(v0 + v6) = v18;
  v24 = v18;

  [v24 activate];
LABEL_14:
  os_unfair_lock_unlock(v5 + 4);
  return v24;
}

uint64_t sub_1847D9DCC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  outlined init with copy of UUID?(a1, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    UUID.init()();
    (*(v8 + 32))(&v1[OBJC_IVAR____EXExtensionInstanceIdentifier_identifier], v12, v7);
  }

  else
  {
    v15 = *(v8 + 32);
    v15(v14, v6, v7);
    v15(&v1[OBJC_IVAR____EXExtensionInstanceIdentifier_identifier], v14, v7);
  }

  v16 = type metadata accessor for _EXExtensionInstanceIdentifier();
  v19.receiver = v1;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  outlined destroy of NSObject?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v17;
}

unint64_t type metadata accessor for RBSDomainAttribute()
{
  result = lazy cache variable for type metadata for RBSDomainAttribute;
  if (!lazy cache variable for type metadata for RBSDomainAttribute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSDomainAttribute);
  }

  return result;
}

uint64_t sub_1847DA3C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t specialized static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _extensionProcessBackgroundQueue != -1)
  {
    swift_once();
  }

  v19[1] = static _EXExtensionProcess._extensionProcessBackgroundQueue;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = partial apply for closure #1 in static _EXExtensionProcess.extensionProcess(configuration:completionHandler:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1865F3C00](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1847DA6F8()
{
  v1 = *(v0 + 24);

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

void closure #1 in static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(void (*a1)(id, void), uint64_t a2, void *a3)
{
  v4 = specialized static _EXExtensionProcess.extensionProcess(configuration:)(a3);
  a1(v4, 0);
}

BOOL _EXLaunchConfiguration.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v6, &_sypSgMd, &_sypSgMR);
  if (!v7)
  {
    outlined destroy of NSObject?(v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXLaunchConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0 || (v5, v5 != v1))
  {
LABEL_6:
    outlined init with copy of UUID?(a1, v6, &_sypSgMd, &_sypSgMR);
    if (v7)
    {
      type metadata accessor for _EXLaunchConfiguration(0);
      if (swift_dynamicCast())
      {
        v3 = _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(v5);

        return v3;
      }
    }

    else
    {
      outlined destroy of NSObject?(v6, &_sypSgMd, &_sypSgMR);
    }

    return 0;
  }

  return 1;
}

BOOL _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v18 = *(a1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v19 = *(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v20 = v18;
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v22 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = one-time initialization token for _defaultInstanceIdentifier;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {

LABEL_7:
    v25 = v43;
    v26 = *(v43 + 56);
    v26(v17, 1, 1, v3);
    goto LABEL_9;
  }

  v27 = v43;
  (*(v43 + 16))(v17, v24 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v3);

  v25 = v27;
  v26 = *(v27 + 56);
  v26(v17, 0, 1, v3);
LABEL_9:
  v28 = *(a1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (v28)
  {
    v29 = one-time initialization token for _defaultInstanceIdentifier;
    v30 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v31 = 1;
    }

    else
    {
      (*(v25 + 16))(v15, v30 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v3);
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
  }

  v26(v15, v31, 1, v3);
  v32 = *(v42 + 48);
  outlined init with copy of UUID?(v17, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(v15, &v8[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = *(v25 + 48);
  if (v33(v8, 1, v3) != 1)
  {
    v34 = v41;
    outlined init with copy of UUID?(v8, v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v33(&v8[v32], 1, v3) != 1)
    {
      v36 = v40;
      (*(v25 + 32))(v40, &v8[v32], v3);
      lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v37 = v34;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v25 + 8);
      v39(v36, v3);
      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v39(v37, v3);
      outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v38 & 1) != 0;
    }

    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v25 + 8))(v34, v3);
LABEL_22:
    outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v33(&v8[v32], 1, v3) != 1)
  {
    goto LABEL_22;
  }

  outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AA0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AA0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

Swift::Void __swiftcall _EXLaunchConfiguration.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for NWApplicationID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v60 - v10;
  v11 = *(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v12 = MEMORY[0x1865F36D0](0x6F69736E65747865, 0xE90000000000006ELL);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  v14 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3550);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
    v17 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);

    v18 = MEMORY[0x1865F36D0](v16, v15);
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C35E0);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages))
  {
    v20 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);

    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  v22 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C35A0);
  [(objc_class *)with.super.isa encodeObject:v21.super.isa forKey:v22];
  swift_unknownObjectRelease();

  v23 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = MEMORY[0x1865F36D0](0xD00000000000001ELL, 0x80000001848C35C0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v25];

  v26 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  v27 = MEMORY[0x1865F36D0](0x655068636E75616CLL, 0xED0000616E6F7372);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v65 = v1;
  v28 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  if (v28 >> 62)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v67 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v29 < 0)
    {
      __break(1u);
      return;
    }

    v60 = v7;
    v61 = v4;
    v62 = with.super.isa;
    v63 = v3;
    v30 = 0;
    v66 = v28 & 0xC000000000000001;
    do
    {
      if (v66)
      {
        v37 = MEMORY[0x1865F3F40](v30, v28);
      }

      else
      {
        v37 = *(v28 + 8 * v30 + 32);
      }

      v38 = v37;
      v39 = type metadata accessor for _EXDomainAttribute();
      v40 = objc_allocWithZone(v39);
      v41 = &v40[OBJC_IVAR____EXDomainAttribute_sourceEnvironment];
      *v41 = 0;
      v41[1] = 0;
      v42 = [v38 domain];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = &v40[OBJC_IVAR____EXDomainAttribute_domain];
      *v46 = v43;
      v46[1] = v45;
      v47 = [v38 name];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = &v40[OBJC_IVAR____EXDomainAttribute_name];
      *v51 = v48;
      v51[1] = v50;
      v52 = [v38 sourceEnvironment];
      if (v52)
      {
        v31 = v52;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      ++v30;
      v35 = v41[1];
      *v41 = v32;
      v41[1] = v34;

      v68.receiver = v40;
      v68.super_class = v39;
      objc_msgSendSuper2(&v68, sel_init);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v67 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v29 != v30);

    with.super.isa = v62;
    v3 = v63;
    v7 = v60;
    v4 = v61;
  }

  type metadata accessor for _EXDomainAttribute();
  v53 = Array._bridgeToObjectiveC()().super.isa;

  v54 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C3610);
  [(objc_class *)with.super.isa encodeObject:v53 forKey:v54];

  v55 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v56 = v65;
  swift_beginAccess();
  v57 = v56 + v55;
  v58 = v64;
  outlined init with copy of UUID?(v57, v64, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  if ((*(v4 + 48))(v58, 1, v3))
  {
    outlined destroy of NSObject?(v58, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  }

  else
  {
    (*(v4 + 16))(v7, v58, v3);
    outlined destroy of NSObject?(v58, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v59._countAndFlagsBits = 0xD000000000000014;
    v59._object = 0x80000001848C3650;
    NWApplicationID.encode(with:forKey:)(with, v59);
    (*(v4 + 8))(v7, v3);
  }
}

void specialized _InnerAppExtensionIdentity.encode(to:)(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UUID();
  v7 = *(v96 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a2;
  if ((specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(a2) & 1) != 0 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0) && (v12 = [v11 connection]) != 0)
  {
    v13 = v12;
    [v12 auditToken];
    v14 = v100;
    v15 = v101;
    v17 = v102;
    v16 = v103;

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    v92 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v14, v15, v17, v16);
    objc_opt_self();
    v93 = swift_dynamicCastObjCClass();
    v18 = v93;
    if (!v93)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = [a2 extensionPointRecord];
  v20 = [v19 identifier];

  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x1865F36D0](v21);
  }

  v22 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C3400);
  [a1 encodeObject:v20 forKey:v22];

  v23 = [a2 extensionPointRecord];
  [v23 extensionPointType];

  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v25 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3E70);
  [a1 encodeObject:isa forKey:v25];

  v26 = [a2 bundleIdentifier];
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = v26;
  v95 = v18;
  v28 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C4450);
  [a1 encodeObject:v27 forKey:v28];

  v29 = [a2 bundleVersion];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE100000000000000;
    v31 = 49;
  }

  v34 = MEMORY[0x1865F36D0](v31, v33);

  v35 = MEMORY[0x1865F36D0](0x6556656C646E7562, 0xED00006E6F697372);
  [a1 encodeObject:v34 forKey:v35];

  v36 = [a2 containingBundleRecord];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 persistentIdentifier];

    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    v42 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v39, v41);
    v43 = MEMORY[0x1865F36D0](0xD000000000000020, 0x80000001848C6DB0);
    [a1 encodeObject:v42 forKey:v43];
  }

  v44 = [a2 platform];
  if ((v44 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
  [a1 encodeInt32:v45 forKey:v46];

  v47 = [a2 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v96);
  v49 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C5DC0);
  [a1 encodeObject:v48 forKey:v49];

  v50 = [a2 localizedName];
  if (!v50)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = MEMORY[0x1865F36D0](v51);
  }

  v52 = MEMORY[0x1865F36D0](0x657A696C61636F6CLL, 0xED0000656D614E64);
  [a1 encodeObject:v50 forKey:v52];

  v53 = [a2 containingBundleRecord];
  if (v53 && (v54 = v53, v55 = [v53 developerType], v54, v55 != 1))
  {
    v57 = 0;
    v56 = 0xE000000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
    v57 = 0x656C707041;
  }

  v58 = MEMORY[0x1865F36D0](v57, v56);

  v59 = MEMORY[0x1865F36D0](0x65706F6C65766564, 0xED0000656D614E72);
  [a1 encodeObject:v58 forKey:v59];

  v60 = [a2 URL];
  v61 = v97;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v62);
  v64 = v63;
  (*(v98 + 8))(v61, v99);
  v65 = MEMORY[0x1865F36D0](7107189, 0xE300000000000000);
  [a1 encodeObject:v64 forKey:v65];

  protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  v66 = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = MEMORY[0x1865F36D0](0x69746369446B6473, 0xED00007972616E6FLL);
  [a1 encodeObject:v66 forKey:v67];

  AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a2);
  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C60D0);
  [a1 encodeObject:v68 forKey:v69];

  AppExtensionIdentity.RecordIdentity.attributes.getter(a2);
  v70 = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = MEMORY[0x1865F36D0](0x7475626972747461, 0xEA00000000007365);
  [a1 encodeObject:v70 forKey:v71];

  protocol witness for _InnerAppExtensionIdentity.entitlements.getter in conformance AppExtensionIdentity.RecordIdentity();
  v72 = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = MEMORY[0x1865F36D0](0x6D656C7469746E65, 0xEC00000073746E65);
  [a1 encodeObject:v72 forKey:v73];

  v74 = [objc_opt_self() sharedInstance];
  v75 = v95;
  v76 = AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(v95, a2);
  v77 = MEMORY[0x1865F36D0](v76);

  [v74 userElectionForExtensionKey_];

  v78 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v79 = MEMORY[0x1865F36D0](0x63656C4572657375, 0xEC0000006E6F6974);
  [a1 encodeObject:v78 forKey:v79];

  AppExtensionIdentity.RecordIdentity.defaultUserElection.getter(a2);
  v80 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v81 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C6110);
  [a1 encodeObject:v80 forKey:v81];

  v82 = [a2 containingBundleRecord];
  if (v82)
  {
    v83 = v82;
    v84 = [v82 developerType];

    v85 = v84 == 1;
  }

  else
  {
    v85 = 1;
  }

  v86 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C6D90);
  [a1 encodeBool:v85 forKey:v86];

  v87 = [a2 extensionPointRecord];
  LODWORD(v86) = [v87 extensionPointType];

  if (v86)
  {
    v88 = [a2 extensionPointRecord];
    v89 = [v88 extensionPointType];

    v90 = v89 == 1;
  }

  else
  {
    v90 = 1;
  }

  v91 = MEMORY[0x1865F36D0](0xD00000000000001BLL, 0x80000001848C5F40);
  [a1 encodeBool:v90 forKey:v91];
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

id AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(id a1, void *a2)
{
  if (specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(a2))
  {
    v4 = [a2 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (v5 && (v6 = [a2 extensionPointRecord], v7 = objc_msgSend(v6, sel_extensionPointType), v6, v7 != 1))
    {
      v12 = [a2 extensionPointRecord];
      a1 = [v12 parentAppRecord];
    }

    else
    {
      v8 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_1848BE160;
    if (a1)
    {
      v15 = [a1 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v14[4] = v17;
      v14[5] = v19;
      v22 = [a1 teamIdentifier];
      if (v22)
      {
        v23 = v22;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v24;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
    }

    v14[6] = v20;
    v14[7] = v21;
    v25 = [a2 extensionPointRecord];
    v26 = [v25 identifier];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v14[8] = v27;
    v14[9] = v29;
    v30 = [a2 bundleIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v14[10] = v32;
    v14[11] = v34;
    v35 = [a2 teamIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v14[12] = v37;
    v14[13] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v40 = BidirectionalCollection<>.joined(separator:)();

    return v40;
  }

  else
  {
    result = [a2 bundleIdentifier];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
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

uint64_t _EXLaunchConfiguration.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(28);

  v2 = [*(v0 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1865F37A0](v3, v5);

  MEMORY[0x1865F37A0](0x636E6174736E6920, 0xEE00203A44492065);
  v6 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMd, &_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1865F37A0](v7);

  return 0x4449656C646E7562;
}

unint64_t AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(void *a1)
{
  v1 = [a1 infoDictionary];
  v2 = MEMORY[0x1865F36D0](0x736E65747845534ELL, 0xEB000000006E6F69);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t protocol witness for _InnerAppExtensionIdentity.entitlements.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [v1 entitlements];
  v4 = [v2 ditionaryFromPropertyList_];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  return v6;
}

id specialized _EXLaunchConfiguration.init(coder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - v6;
  v7 = OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = 0;
  v8 = OBJC_IVAR____EXLaunchConfiguration_preferredLanguages;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = 0;
  v9 = &v2[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____EXLaunchConfiguration_launchPersona;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = 0;
  v12 = OBJC_IVAR____EXLaunchConfiguration_assertionAttributes;
  v13 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v64 = v12;
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v15 = type metadata accessor for NWApplicationID();
  v16 = *(*(v15 - 8) + 56);
  v65 = v14;
  v16(&v2[v14], 1, 1, v15);
  type metadata accessor for _EXExtensionIdentity();
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_34;
  }

  *&v2[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] = result;
  type metadata accessor for _EXExtensionInstanceIdentifier();
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  v19 = *&v2[v7];
  *&v2[v7] = v18;

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v67 = a1;
  v20 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v20)
  {
    v72 = 0;
    v73 = 0;
    v21 = v20;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v23 = v72;
    v22 = v73;
    if (!v73)
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = *(v9 + 1);
  *v9 = v23;
  *(v9 + 1) = v22;

  v25 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v25)
  {
    v72 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v26 = swift_dynamicCast();
    v27 = v70;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *&v2[v8];
  *&v2[v8] = v27;

  v29 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v29 && (v72 = v29, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo8NSStringCABGMd, &_sSDySo8NSStringCABGMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR), (swift_dynamicCast() & 1) != 0))
  {
    v30 = v70;
  }

  else
  {
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v31 = *&v2[v10];
  *&v2[v10] = v30;

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXPersona, off_1E6E4D230);
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  v33 = *&v2[v11];
  *&v2[v11] = v32;

  type metadata accessor for _EXDomainAttribute();
  v34 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (!v34)
  {
    v57 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
LABEL_32:
    v58 = *&v2[v64];
    *&v2[v64] = v57;

    v59 = v66;
    static NWApplicationID.decode(from:forKey:)(v66);
    v60 = v65;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v59, &v2[v60], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();
    v61 = type metadata accessor for _EXLaunchConfiguration(0);
    v71.receiver = v2;
    v71.super_class = v61;
    return objc_msgSendSuper2(&v71, sel_init);
  }

  v35 = v34;
  if (v34 >> 62)
  {
    v36 = __CocoaSet.count.getter();
    if (v36)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_31:

    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

LABEL_19:
  v72 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v63 = v2;
    v37 = 0;
    v68 = v35 & 0xC000000000000001;
    v69 = v35;
    do
    {
      if (v68)
      {
        v46 = MEMORY[0x1865F3F40](v37, v35);
      }

      else
      {
        v46 = *(v35 + 8 * v37 + 32);
      }

      v47 = v46;
      v48 = *&v46[OBJC_IVAR____EXDomainAttribute_sourceEnvironment + 8];
      if (v48)
      {
        v49 = *&v46[OBJC_IVAR____EXDomainAttribute_sourceEnvironment];
        v51 = *&v46[OBJC_IVAR____EXDomainAttribute_domain];
        v50 = *&v46[OBJC_IVAR____EXDomainAttribute_domain + 8];
        v53 = *&v46[OBJC_IVAR____EXDomainAttribute_name];
        v52 = *&v46[OBJC_IVAR____EXDomainAttribute_name + 8];
        v54 = *&v46[OBJC_IVAR____EXDomainAttribute_sourceEnvironment + 8];

        v55 = MEMORY[0x1865F36D0](v51, v50);

        v42 = MEMORY[0x1865F36D0](v53, v52);

        v43 = MEMORY[0x1865F36D0](v49, v48);

        v56 = [objc_opt_self() attributeWithDomain:v55 name:v42 sourceEnvironment:v43];
      }

      else
      {
        v38 = *&v46[OBJC_IVAR____EXDomainAttribute_domain];
        v39 = *&v46[OBJC_IVAR____EXDomainAttribute_domain + 8];
        v40 = *&v46[OBJC_IVAR____EXDomainAttribute_name];
        v41 = *&v46[OBJC_IVAR____EXDomainAttribute_name + 8];

        v42 = MEMORY[0x1865F36D0](v38, v39);

        v43 = MEMORY[0x1865F36D0](v40, v41);

        v44 = [objc_opt_self() attributeWithDomain:v42 name:v43];
      }

      ++v37;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v45 = *(v72 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v35 = v69;
    }

    while (v36 != v37);

    v57 = v72;
    v2 = v63;
    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id _EXExtensionIdentity.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____EXExtensionIdentity__inner;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = [objc_opt_self() sharedDatabaseContext];
  v6 = [v5 canAccess];

  if (v6)
  {
    v12 = &type metadata for AppExtensionIdentity.RecordIdentity;
    v13 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
    v11[0] = specialized AppExtensionIdentity.RecordIdentity.init(coder:)(a1);
  }

  else
  {
    v12 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
    v13 = &protocol witness table for AppExtensionIdentity.ValueIdentity;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    AppExtensionIdentity.ValueIdentity.init(coder:)(a1, boxed_opaque_existential_1);
  }

  swift_beginAccess();
  outlined assign with take of _InnerAppExtensionIdentity?(v11, v4);
  swift_endAccess();
  v10.receiver = v2;
  v10.super_class = _EXExtensionIdentity;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id @nonobjc LSApplicationExtensionRecord.init(uuid:)(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v5 = [v2 initWithUUID:isa error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _AppExtensionIdentity.bundleIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t AppExtensionIdentity.RecordIdentity.defaultUserElection.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 extensionPointRecord];
  v4 = [v3 SDKDictionary];

  v5 = [v2 ditionaryFromPropertyList_];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C6B00), (v9 & 1) == 0))
  {

    goto LABEL_9;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v21;
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 <= 0xFF)
  {
    if (v21 == 1)
    {
      return v12;
    }

LABEL_10:
    v13 = [a1 extensionPointRecord];
    v14 = [v13 extensionPointType];

    if (v14 == 1)
    {
      return 1;
    }

    v15 = [a1 containingBundleRecord];
    if (v15)
    {
      v16 = v15;
      objc_opt_self();
      if (swift_dynamicCastObjCClass() && (v17 = [a1 extensionPointRecord], v18 = objc_msgSend(v17, sel_parentAppRecord), v17, v18))
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          return 1;
        }

        else
        {
          return v12;
        }
      }

      else
      {
      }
    }

    return v12;
  }

  __break(1u);
  return result;
}

void _EXDomainAttribute.encode(with:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____EXDomainAttribute_domain);
  v4 = *(v1 + OBJC_IVAR____EXDomainAttribute_domain + 8);

  v5 = MEMORY[0x1865F36D0](v3, v4);

  v6 = MEMORY[0x1865F36D0](0x6E69616D6F64, 0xE600000000000000);
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXDomainAttribute_name);
  v8 = *(v1 + OBJC_IVAR____EXDomainAttribute_name + 8);

  v9 = MEMORY[0x1865F36D0](v7, v8);

  v10 = MEMORY[0x1865F36D0](1701667182, 0xE400000000000000);
  [a1 encodeObject:v9 forKey:v10];

  v11 = (v1 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment);
  v12 = *(v1 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment + 8);
  if (v12)
  {
    v13 = *v11;

    v14 = MEMORY[0x1865F36D0](v13, v12);

    v15 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C4520);
    [a1 encodeObject:v14 forKey:v15];
  }
}

uint64_t specialized AppExtensionIdentity.RecordIdentity.init(coder:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v12 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 16))(v8, v10, v3);
    v13 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v14 = @nonobjc LSApplicationExtensionRecord.init(uuid:)(v8);
    v15 = v14;
    if (v1)
    {
    }

    else if (v14)
    {
      (*(v4 + 8))(v10, v3);

      return v15;
    }

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v27 = a1;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v16 = result;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = objc_allocWithZone(MEMORY[0x1E69635D0]);
      v21 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v17, v19);
      v22 = objc_opt_self();
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v25 = 0xD00000000000001ALL;
      v26 = 0x80000001848C6E40;
      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F37A0](v23);

      v24 = MEMORY[0x1865F36D0](v25, v26);

      [v22 _EX_errorWithCode_description_];

      swift_willThrow();
      (*(v4 + 8))(v10, v3);
      if (v21)
      {
      }

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _EXDomainAttribute.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *v4 = 0;
  v4[1] = 0;
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = NSCoder.decodeObject<A>(of:forKey:)();
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v7)
  {
LABEL_5:
    v8 = v7;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

LABEL_6:

  v9 = v4[1];

  type metadata accessor for _EXDomainAttribute();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t static NWApplicationID.decode(from:forKey:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for JSONDecoder();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v7 = type metadata accessor for NWApplicationID();
    v8 = v3;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v9, v11);

    v13 = *(*(v7 - 8) + 56);
    v14 = a1;
    v15 = 0;
    v16 = v7;
  }

  else
  {
    v12 = type metadata accessor for NWApplicationID();
    v13 = *(*(v12 - 8) + 56);
    v16 = v12;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void specialized Service.prepare(withLaunchConfiguration:reply:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.launch);
  v7 = a1;
  v34 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v34;
    *v11 = v7;
    v11[1] = v5;
    v12 = v7;
    v13 = v34;
    _os_log_impl(&dword_1847D1000, v8, v9, "Preparing extension %{public}@ for host: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v11, -1, -1);
    MEMORY[0x1865F56C0](v10, -1, -1);
  }

  [v34 auditToken];
  v14 = specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(v7, aBlock, v36, v37, v38);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1847D1000, v15, v16, "launched extension process: %{public}@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  (*(a2 + 16))(a2, v14, 0);
  v20 = *&v14[OBJC_IVAR____EXExtensionProcessHandle_assertion];
  if (v20)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v21 = v20;
    v22 = static OS_dispatch_queue.main.getter();
    a2 = swift_allocObject();
    *(a2 + 16) = v14;
    *(a2 + 24) = v34;
    *(a2 + 32) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in Service.prepare(withLaunchConfiguration:reply:);
    *(v23 + 24) = a2;
    v39 = _sIg_Ieg_TRTA_0;
    v40 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed () -> ();
    v38 = &block_descriptor_39;
    v24 = _Block_copy(&aBlock);
    v25 = v34;
    v26 = v14;
    v27 = v21;

    dispatch_sync(v22, v24);

    _Block_release(v24);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_18:
    _Block_release(a2);
    __break(1u);
    return;
  }

  v28 = v14;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v14;
    v33 = v28;
    _os_log_impl(&dword_1847D1000, v29, v30, "No assertion taken during launch of %@", v31, 0xCu);
    outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v32, -1, -1);
    MEMORY[0x1865F56C0](v31, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1847DEF2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v122 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  *v119.val = static AuditToken.current;
  *&v119.val[4] = *&qword_1EA872A30;
  atoken.val[0] = a2;
  atoken.val[1] = v10;
  atoken.val[2] = v7;
  atoken.val[3] = v11;
  atoken.val[4] = a4;
  atoken.val[5] = v12;
  atoken.val[6] = a5;
  atoken.val[7] = v13;
  v115 = v13;
  v14 = audit_token_to_pid(&atoken);
  atoken = v119;
  v113 = v7;
  v114 = v12;
  v112 = a2;
  if (v14 != audit_token_to_pid(&atoken))
  {
    goto LABEL_7;
  }

  atoken.val[0] = a2;
  atoken.val[1] = v10;
  atoken.val[2] = v7;
  atoken.val[3] = v11;
  atoken.val[4] = a4;
  atoken.val[5] = v12;
  atoken.val[6] = a5;
  atoken.val[7] = v115;
  v15 = audit_token_to_pidversion(&atoken);
  atoken = v119;
  if (v15 == audit_token_to_pidversion(&atoken))
  {
    v16 = specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(a1, a2, v7, a4, a5);
    if (v5)
    {
      goto LABEL_25;
    }

    v17 = v16;
    v109 = a5;
    v110 = v11;
  }

  else
  {
LABEL_7:
    v18 = specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(a1, a2, v7, a4, a5);
    if (v5)
    {
      goto LABEL_25;
    }

    v17 = v18;
    v19 = type metadata accessor for _EXLaunchConfiguration(0);
    *atoken.val = 0;
    if (![v19 configureLaunchContext:v17 error:&atoken])
    {
      v27 = *atoken.val;
      v28 = _convertNSErrorToError(_:)();

      v7 = v28;
      swift_willThrow();

      goto LABEL_25;
    }

    v109 = a5;
    v110 = v11;
    v20 = *atoken.val;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69C7598]) initWithContext_];
  v22 = [v21 executeRequest];
  v23 = a1;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  v7 = specialized _EXExtensionProcessHandle.__allocating_init(launchConfiguration:response:)(v23, v24);
  v108 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*&v23[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] launchesViaExtensionKitService])
  {
    v29 = MEMORY[0x1E69E7CC0];
    v118 = MEMORY[0x1E69E7CC0];
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v104 = v7;
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.general);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v25;
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      atoken.val[0] = v112;
      atoken.val[1] = v10;
      atoken.val[2] = v113;
      atoken.val[3] = v110;
      atoken.val[4] = a4;
      atoken.val[5] = v114;
      atoken.val[6] = v109;
      atoken.val[7] = v115;
      *(v34 + 4) = audit_token_to_pid(&atoken);
      _os_log_impl(&dword_1847D1000, v31, v32, "Adding extension service sandbox extension for host pid %{public}d", v34, 8u);
      v35 = v34;
      v25 = v33;
      MEMORY[0x1865F56C0](v35, -1, -1);
    }

    v103 = v26;
    v105 = v21;

    v107 = v25;
    v36 = [*&v25[v108] serviceName];
    v37 = objc_allocWithZone(_EXSandboxExtension);
    v38 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C1EB0);
    atoken.val[0] = v112;
    atoken.val[1] = v10;
    atoken.val[2] = v113;
    atoken.val[3] = v110;
    atoken.val[4] = a4;
    atoken.val[5] = v114;
    atoken.val[6] = v109;
    atoken.val[7] = v115;
    v39 = [v37 initWithExtensionClass:v38 machServiceName:v36 process:&atoken];

    v40 = v39;
    MEMORY[0x1865F38A0]();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v100 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v102 = v40;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v41 = v118;
    v42 = [v17 extensionOverlay];
    if (v42)
    {
      v43 = v42;
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x6976726553435058, 0xEA00000000006563), (v46 & 1) != 0))
      {
        outlined init with copy of Any(*(v44 + 56) + 32 * v45, &v120);

        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
        if (swift_dynamicCast())
        {
          *v120.val = 0xD000000000000016;
          *&v120.val[2] = 0x80000001848C1EE0;
          v47 = [v117 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();

          if (v47)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(&v120, 0, sizeof(v120));
          }

          v7 = v104;
          atoken = v120;
          if (*&v120.val[6])
          {
            if (swift_dynamicCast())
            {
              v95 = *v120.val;
              v96 = [*v120.val allKeys];

              v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v98 = specialized _arrayConditionalCast<A, B>(_:)(v97);

              if (v98)
              {
                v50 = v98;
              }

              else
              {
                v50 = v29;
              }

              goto LABEL_30;
            }

LABEL_29:
            v50 = MEMORY[0x1E69E7CC0];
LABEL_30:
            v51 = *(v50 + 16);
            if (v51)
            {
              v101 = v17;
              v52 = (v50 + 40);
              v53 = v109;
              v106 = v10;
              do
              {
                v111 = v51;
                v54 = v10;
                v56 = *(v52 - 1);
                v55 = *v52;

                v57 = Logger.logObject.getter();
                v58 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v57, v58))
                {
                  v59 = swift_slowAlloc();
                  v60 = swift_slowAlloc();
                  *v120.val = v60;
                  *v59 = 136446466;
                  *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, &v120);
                  *(v59 + 12) = 1026;
                  v61 = v112;
                  atoken.val[0] = v112;
                  atoken.val[1] = v54;
                  v62 = v56;
                  v63 = v113;
                  atoken.val[2] = v113;
                  atoken.val[3] = v110;
                  atoken.val[4] = a4;
                  atoken.val[5] = v114;
                  atoken.val[6] = v109;
                  atoken.val[7] = v115;
                  *(v59 + 14) = audit_token_to_pid(&atoken);
                  _os_log_impl(&dword_1847D1000, v57, v58, "Adding '%{public}s'subservice sandbox extension for host pid %{public}d", v59, 0x12u);
                  __swift_destroy_boxed_opaque_existential_0Tm(v60);
                  v64 = v60;
                  v53 = v109;
                  MEMORY[0x1865F56C0](v64, -1, -1);
                  MEMORY[0x1865F56C0](v59, -1, -1);
                }

                else
                {

                  v65 = v56;
                  v61 = v112;
                  v63 = v113;
                  v62 = v65;
                }

                v66 = [*&v107[v108] bundleIdentifier];
                v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v69 = v68;

                *atoken.val = v67;
                *&atoken.val[2] = v69;
                MEMORY[0x1865F37A0](46, 0xE100000000000000);
                MEMORY[0x1865F37A0](v62, v55);

                v70 = *atoken.val;
                v71 = *&atoken.val[2];
                v72 = objc_allocWithZone(_EXSandboxExtension);
                v73 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C1EB0);
                v74 = MEMORY[0x1865F36D0](v70, v71);

                atoken.val[0] = v61;
                LODWORD(v10) = v106;
                atoken.val[1] = v106;
                atoken.val[2] = v63;
                atoken.val[3] = v110;
                atoken.val[4] = a4;
                atoken.val[5] = v114;
                atoken.val[6] = v53;
                atoken.val[7] = v115;
                v75 = [v72 initWithExtensionClass:v73 machServiceName:v74 process:&atoken];

                v76 = v75;
                MEMORY[0x1865F38A0]();
                if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v77 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v52 += 2;
                v51 = v111 - 1;
              }

              while (v111 != 1);
              v41 = v118;
              v17 = v101;
              v7 = v104;
            }

            v78 = *&v7[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions];
            *&v7[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions] = v41;

            v21 = v105;
            v26 = v103;
            v25 = v107;
            goto LABEL_40;
          }

LABEL_28:
          outlined destroy of NSObject?(&atoken, &_sypSgMd, &_sypSgMR);
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    memset(&atoken, 0, sizeof(atoken));
    v7 = v104;
    goto LABEL_28;
  }

LABEL_40:
  v79 = *&v25[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
  if (v79 >> 62)
  {
    if (v79 < 0)
    {
      v99 = *&v25[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
    }

    v80 = __CocoaSet.count.getter();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80 < 1)
  {
    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logger.launch);
    v82 = v25;
    v93 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v7;
      v86 = swift_slowAlloc();
      *v84 = 138543362;
      *(v84 + 4) = v82;
      *v86 = v82;
      v87 = v82;
      _os_log_impl(&dword_1847D1000, v93, v83, "Assertion not taken, empty assertion attributes specified by launch configuration %{public}@.", v84, 0xCu);
      outlined destroy of NSObject?(v86, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      v88 = v86;
      v7 = v85;
      MEMORY[0x1865F56C0](v88, -1, -1);
      MEMORY[0x1865F56C0](v84, -1, -1);
    }

    v94 = v21;
    v21 = v17;
  }

  else
  {
    v89 = _EXExtensionProcessHandle._acquireAsertion()();
    v90 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
    os_unfair_lock_lock((*&v7[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock] + 16));
    v91 = *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertion];
    *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertion] = v89;
    v92 = v89;

    *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount] = 1;
    os_unfair_lock_unlock((*&v7[v90] + 16));
    v93 = v17;
    v94 = v26;
    v26 = v92;
  }

LABEL_25:
  v48 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v156 = HIDWORD(a4);
  v157 = HIDWORD(a5);
  v142 = type metadata accessor for URL();
  v141 = *(v142 - 8);
  v12 = *(v141 + 64);
  v13 = MEMORY[0x1EEE9AC00](v142);
  v140 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v154 = &v137 - v18;
  v150 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v19 = *(*(v150 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v150);
  v149 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v137 - v22;
  v155 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v146 = *(v155 - 8);
  v23 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v152 = (&v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for UUID();
  v159 = *(v25 - 1);
  v160 = v25;
  v26 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v148 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v151 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v144 = &v137 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v137 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v137 - v37;
  v158 = a1;
  v145 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  v39 = *&a1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity];
  atoken.val[0] = a2;
  atoken.val[1] = v10;
  atoken.val[2] = a3;
  atoken.val[3] = v11;
  atoken.val[4] = a4;
  atoken.val[5] = v156;
  atoken.val[6] = a5;
  atoken.val[7] = v157;
  v40 = audit_token_to_pid(&atoken);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v41 = v165;
  v42 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(a2, a3, a4, a5);
  if (v41)
  {

    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  v44 = [objc_opt_self() identifierWithPid_];
  if (!v44)
  {
    v50 = objc_opt_self();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865F37A0](0xD000000000000032, 0x80000001848C1F00);
    LODWORD(v161) = v40;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865F37A0](v51);

    v52 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v50 _EX_errorWithCode_description_];

    swift_willThrow();
    return v50;
  }

  v45 = v44;
  v138 = 0;
  v46 = *&v158[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
  v165 = v38;
  v157 = v43;
  v153 = v39;
  LODWORD(v156) = v40;
  if (v46)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v47 = one-time initialization token for _defaultInstanceIdentifier;
    v48 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v49 = 1;
    }

    else
    {
      (*(v159 + 16))(v38, v48 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v160);
      v49 = 0;
    }
  }

  else
  {
    v49 = 1;
  }

  v53 = v159;
  v54 = v160;
  v55 = *(v159 + 56);
  v56 = v165;
  v55(v165, v49, 1, v160);
  outlined init with copy of UUID?(v56, v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  LODWORD(v56) = (*(v53 + 48))(v36, 1, v54);
  outlined destroy of NSObject?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57 = v56 == 1;
  v58 = v45;
  v59 = v158;
  v60 = v156;
  if (v57 && [*&v145[v158] requiresMultiInstance])
  {
    v139 = v45;
    if (one-time initialization token for _defaultInstanceIdentifier != -1)
    {
      swift_once();
    }

    v61 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
    v62 = v165;
    outlined destroy of NSObject?(v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v63 = v61 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
    v64 = v144;
    v65 = v160;
    (*(v159 + 16))(v144, v63, v160);
    v55(v64, 0, 1, v65);
    outlined init with take of UUID?(v64, v62);
    v58 = v139;
  }

  v66 = [v59 rbsProcessIdentityWithHost_];
  if (!v66)
  {
    v50 = objc_opt_self();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *atoken.val = 0xD000000000000027;
    *&atoken.val[2] = 0x80000001848C1F40;
    v95 = [v59 description];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    MEMORY[0x1865F37A0](v96, v98);

    v99 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v50 _EX_errorWithCode_description_];

    swift_willThrow();
    outlined destroy of NSObject?(v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v50;
  }

  v67 = v66;
  v68 = objc_opt_self();
  v145 = v67;
  v69 = [v68 contextWithIdentity_];
  [v69 setHostPid_];
  *atoken.val = 0;
  *&atoken.val[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  *atoken.val = 0xD000000000000014;
  *&atoken.val[2] = 0x80000001848C1F70;
  v70 = v153;
  v71 = [v153 bundleIdentifier];
  v72 = v60;
  v73 = v59;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  MEMORY[0x1865F37A0](v74, v76);

  MEMORY[0x1865F37A0](40, 0xE100000000000000);
  v77 = [v70 uniqueIdentifier];
  v78 = v148;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID();
  v79 = v160;
  v80 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v80);

  (*(v159 + 8))(v78, v79);
  MEMORY[0x1865F37A0](0x736F6820726F6620, 0xEA00000000002074);
  LODWORD(v161) = v72;
  v81 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v81);

  v82 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

  v160 = v69;
  [v69 setExplanation_];

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v83 = *(v155 + 28);
  v84 = type metadata accessor for NWApplicationID();
  v85 = v152;
  (*(*(v84 - 8) + 56))(v152 + v83, 1, 1, v84);
  v86 = *&v73[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables];

  v87 = *&v73[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8];
  *v85 = *&v73[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  v85[1] = v87;
  v88 = *&v73[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages];
  v85[2] = v86;
  v85[3] = v88;
  v89 = *&v73[OBJC_IVAR____EXLaunchConfiguration_launchPersona];
  v139 = v58;
  if (v89)
  {

    v90 = [v89 personaUniqueString];
    v91 = v157;
    if (v90)
    {
      v92 = v90;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
    }

    else
    {
      v89 = 0;
      v94 = 0;
    }
  }

  else
  {

    v94 = 0;
    v91 = v157;
  }

  v101 = v154;
  v100 = v155;
  v102 = (v85 + *(v155 + 32));
  *v102 = v89;
  v102[1] = v94;
  v103 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v70 + v103, &v161, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  v105 = v150;
  v106 = v149;
  if (v162)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v161, &atoken);
    outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v85, v101);
    (*(v146 + 56))(v101, 0, 1, v100);
    v107 = v151;
    outlined init with copy of UUID?(v165, v151, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v108 = (v106 + v105[9]);
    *v108 = 0;
    v108[1] = 0;
    v109 = (v106 + v105[10]);
    *v109 = 0;
    v109[1] = 0;
    v110 = (v106 + v105[11]);
    *v110 = 0;
    v110[1] = 0;
    v111 = (v106 + v105[12]);
    *v111 = 0;
    v111[1] = 0;
    *(v106 + v105[13]) = 0;
    v112 = v105[14];
    *(v106 + v112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v106 + v105[15]) = 0;
    v50 = *&atoken.val[6];
    v113 = v164;
    __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
    v114 = v147;
    v115 = v138;
    _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v50, v113, v147);
    v159 = v115;
    if (v115)
    {

      outlined destroy of NSObject?(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v154, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      outlined destroy of NSObject?(v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&atoken);

      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v85, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    }

    else
    {
      v116 = v140;
      URL.absoluteURL.getter();
      v117 = *(v141 + 8);
      v118 = v114;
      v119 = v142;
      v117(v118, v142);
      v120 = URL.path(percentEncoded:)(0);
      v117(v116, v119);
      *(v106 + v105[8]) = v120;
      outlined init with copy of _InnerAppExtensionIdentity(&atoken, v106);
      v121 = v154;
      outlined init with copy of UUID?(v154, v106 + v105[5], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v122 = v151;
      outlined init with copy of UUID?(v151, v106 + v105[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v123 = *&atoken.val[6];
      v124 = v164;
      __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
      v125 = _InnerAppExtensionIdentity.serviceName.getter(v123, v124);
      v127 = v126;
      outlined destroy of NSObject?(v122, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v121, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v128 = (v106 + v105[7]);
      *v128 = v125;
      v128[1] = v127;
      v129 = v143;
      outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v106, v143);
      __swift_destroy_boxed_opaque_existential_0Tm(&atoken);
      v130 = MEMORY[0x1865F36D0](*(v129 + v105[8]), *(v129 + v105[8] + 8));
      v50 = v160;
      [v160 _setOverrideExecutablePath_];

      _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v50 setArguments_];

      v132 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v132);

      v133 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v50 _setAdditionalEnvironment_];

      _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter();
      v134 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v50 setExtensionOverlay_];

      v135 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v135);
      v136 = Set._bridgeToObjectiveC()().super.isa;

      [v50 setManagedEndpointLaunchIdentifiers_];

      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v129, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
      outlined destroy of NSObject?(v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v152, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    }

    return v50;
  }

  __break(1u);
  return result;
}

id _EXLaunchConfiguration.rbsProcessIdentity(withHost:)(uint64_t a1)
{
  v2 = v1;
  v95 = a1;
  v3 = type metadata accessor for URL();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v87 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v87 - v16;
  v17 = type metadata accessor for JSONEncoder.OutputFormatting();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v93 = v10;
  v94 = v9;
  v25 = *(v10 + 56);
  v96 = &v87 - v26;
  v25();
  v27 = _EXLaunchConfiguration.hostConfiguration.getter();
  v28 = *&v27[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
  v29 = v28;

  if (v28)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    if (one-time initialization token for _defaultInstanceIdentifier != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
    }

    else
    {
      v30 = v96;
      outlined destroy of NSObject?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31 = v94;
      (*(v93 + 16))(v30, v29 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v94);

      (v25)(v30, 0, 1, v31);
    }
  }

  v32 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*(v2 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) targetsSystemExtensionPoint])
  {
    v33 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
    *v22 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
    v22[1] = v33;
    v34 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);
    v22[2] = *(v2 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);
    v22[3] = v34;
    v35 = *(v2 + v32);

    v36 = [v35 bundleIdentifier];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v22[4] = v37;
    v22[5] = v39;
    v40 = *(v19 + 32);
    v41 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined init with copy of UUID?(v2 + v41, v22 + v40, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v42 = type metadata accessor for JSONEncoder();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.sortedKeys.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment, type metadata accessor for RBSProcessIdentity.Attachment);
    v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v47 = v46;
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v22, type metadata accessor for RBSProcessIdentity.Attachment);

    v48 = [*(v2 + v32) bundleIdentifier];
    if (!v48)
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = MEMORY[0x1865F36D0](v49);
    }

    v50 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
    if (!v50 || (v51 = [v50 personaUniqueString]) == 0)
    {
      v51 = 0;
    }

    isa = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
    if (isa)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v53 = one-time initialization token for _defaultInstanceIdentifier;
      v54 = isa;
      if (v53 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {

        isa = 0;
      }

      else
      {
        v75 = v93;
        v74 = v94;
        v76 = v89;
        (*(v93 + 16))(v89, v54 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v94);

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v75 + 8))(v76, v74);
      }
    }

    v77 = objc_opt_self();
    v78 = Data._bridgeToObjectiveC()().super.isa;
    v79 = [v77 extensionIdentityForBundleIdentifier:v48 persona:v51 instanceUUID:isa hostIdentifier:v95 validationToken:v78];
    outlined consume of Data._Representation(v45, v47);
  }

  else
  {
    v55 = [*(v2 + v32) containingBundleRecord];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v90;
      v58 = v91;
      v60 = v92;
      (*(v91 + 32))(v90, v7, v92);
      v62 = [*(v2 + v32) bundleIdentifier];
      if (!v62)
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = MEMORY[0x1865F36D0](v63);
      }

      URL._bridgeToObjectiveC()(v61);
      v65 = v64;
      v66 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
      if (v66)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v67 = one-time initialization token for _defaultInstanceIdentifier;
        v68 = v66;
        if (v67 != -1)
        {
          swift_once();
        }

        if (static NSObject.== infix(_:_:)())
        {

          v66 = 0;
        }

        else
        {
          v81 = v93;
          v80 = v94;
          v82 = v88;
          (*(v93 + 16))(v88, v68 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v94);

          v66 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v81 + 8))(v82, v80);
        }
      }

      v79 = [objc_opt_self() externalExtensionIdentityForExtensionKitIdentifier:v62 bundledURL:v65 hostIdentifier:v95 UUID:v66];

      (*(v58 + 8))(v59, v60);
    }

    else
    {
      v69 = [*(v2 + v32) bundleIdentifier];
      if (!v69)
      {
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = MEMORY[0x1865F36D0](v70);
      }

      v71 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
      if (v71)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v72 = one-time initialization token for _defaultInstanceIdentifier;
        v73 = v71;
        if (v72 != -1)
        {
          swift_once();
        }

        if (static NSObject.== infix(_:_:)())
        {

          v71 = 0;
        }

        else
        {
          v84 = v93;
          v83 = v94;
          v85 = v87;
          (*(v93 + 16))(v87, v73 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v94);

          v71 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v84 + 8))(v85, v83);
        }
      }

      v79 = [objc_opt_self() externalExtensionIdentityForExtensionKitIdentifier:v69 hostIdentifier:v95 UUID:v71];
    }
  }

  outlined destroy of NSObject?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v79;
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke(uint64_t a1)
{
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400;
  v6[3] = &unk_1E6E4DE80;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v4 _safelyEndUsingRequestWithPKUUID:v3 processAssertion:v5 continuation:v6];
}

id _sharedSafePluginQueue()
{
  if (_sharedSafePluginQueue_onceToken != -1)
  {
    _sharedSafePluginQueue_cold_1();
  }

  v1 = _sharedSafePluginQueue_q;

  return v1;
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXLegacyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_1(a1);
  }

  if (v3)
  {
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_2(a1, v3);
    }
  }

  v6 = *(a1 + 48);
  v7 = objc_opt_self();
  [*(a1 + 40) invalidate];
}

Swift::Void __swiftcall QueryController.resume()()
{
  if (one-time initialization token for discovery != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.discovery);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41[0] = v6;
    *v5 = 136446210;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v41);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1847D1000, v3, v4, "Resuming Query observer: '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 preferInProcessDiscovery];

  if (v11)
  {
    v39 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries;
    v0 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries];
    if (v0 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1865F3F40](v13, v0);
        }

        else
        {
          if (v13 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v14 = *(v0 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v17 = static _EXDiscoveryController.shared;
        type metadata accessor for _EXQuery();
        if (![v15 isKindOfClass_])
        {
          break;
        }

        v18 = v15;
        specialized _EXDiscoveryController.add(activeQueryObserver:query:)(v2, v18, v17);

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_22;
        }
      }

      v38 = [objc_opt_self() _EX_parameterError];
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
LABEL_22:

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v27 = *&v2[v39];

      v29 = _EXDiscoveryController.identities(matching:)(v28);

      v30 = *&v29[OBJC_IVAR____EXQueryResult_identities];

      if (!v30)
      {
        if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v30 = v37;
        }

        else
        {
          v30 = MEMORY[0x1E69E7CD0];
        }
      }

      v31 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
      v32 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock];

      os_unfair_lock_lock(v32 + 4);

      if (*&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions])
      {
        v33 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions];
      }

      else
      {
        v33 = MEMORY[0x1E69E7CD0];
      }

      v34 = *&v2[v31];

      os_unfair_lock_unlock(v34 + 4);

      v35 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
      _EXQueryResultUpdate.init(currentExtensions:updatedExtensions:)(v33, v30);
      v40 = v36;
      QueryController.resultDidUpdate(_:)(v36);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = static _EXServiceClient.shared;
    v41[3] = type metadata accessor for QueryController();
    v42 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController);
    v41[0] = v2;
    v20 = *(v19 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
    MEMORY[0x1EEE9AC00](v42);
    v21 = v2;
    os_unfair_lock_lock(v20 + 4);
    partial apply for closure #1 in _EXServiceClient.add(queryObserver:)(v22);
    os_unfair_lock_unlock(v20 + 4);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v23 = *&v21[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries];
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v25 = v21;

    _EXServiceClient.fetchExtensions(with:completion:)(v26, partial apply for closure #1 in QueryController.resume(), v24);
  }
}

uint64_t sub_1847E22C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t one-time initialization function for discovery(uint64_t a1)
{
  return one-time initialization function for general(a1, static Logger.discovery);
}

{
  return one-time initialization function for general(a1, 0x7265766F63736964, 0xE900000000000079, &static OS_os_log.discovery);
}

id _EXQuery.init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  active_platform = dyld_get_active_platform();
  v5 = _EXAuditTokenForCurrentProcess();
  v6 = v5[1];
  v19 = *v5;
  v20 = v6;
  v7 = type metadata accessor for _EXQuery();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v8[OBJC_IVAR____EXQuery_predicate] = 0;
  v8[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v9 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 queryAllowsDuplicates];

  v8[v9] = v11;
  v8[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *v22 = active_platform;
  *&v22[4] = v19;
  *&v22[20] = v20;
  v23[0] = a1;
  v23[1] = a2;
  v24 = active_platform;
  v25 = v19;
  v26 = v20;
  outlined init with copy of _EXQuery.ValuesQuery(&v21, v18);
  outlined destroy of _EXQuery.ValuesQuery(v23);
  v12 = &v8[OBJC_IVAR____EXQuery_inner];
  v12[3] = &type metadata for _EXQuery.ValuesQuery;
  v12[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v13 = swift_allocObject();
  *v12 = v13;
  v14 = *v22;
  *(v13 + 16) = v21;
  *(v13 + 32) = v14;
  *(v13 + 48) = *&v22[16];
  *(v13 + 64) = *&v22[32];
  v17.receiver = v8;
  v17.super_class = v7;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t _EXAuditTokenForCurrentProcess()
{
  if (_EXAuditTokenForCurrentProcess_once != -1)
  {
    _EXAuditTokenForCurrentProcess_cold_1();
  }

  return _EXAuditTokenForCurrentProcess_result;
}

uint64_t type metadata accessor for QueryController()
{
  result = type metadata singleton initialization cache for QueryController;
  if (!type metadata singleton initialization cache for QueryController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id QueryController.init(queries:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  UUID.init()();
  v11 = &v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  *v11 = 1;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *&v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions] = 0;
  *&v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__unelectedCount] = 0;
  v12 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v1[v12] = v13;
  v23 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_notificationQueue;
  v22[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8090], v26);
  *&v1[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:

    v20 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries] = v20;
    Controller = type metadata accessor for QueryController();
    v27.receiver = v2;
    v27.super_class = Controller;
    return objc_msgSendSuper2(&v27, sel_init);
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1865F3F40](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      [v17 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for _EXQuery();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v29 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v16);

    v20 = v29;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

char *_EXQueryController.init(queries:delegate:)(unint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for QueryController());
  *&v2[OBJC_IVAR____EXQueryController_innerController] = QueryController.init(queries:)(a1);
  v17.receiver = v2;
  v17.super_class = type metadata accessor for _EXQueryController();
  v5 = objc_msgSendSuper2(&v17, sel_init);
  v6 = *&v5[OBJC_IVAR____EXQueryController_innerController];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v10 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v11 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 8];
  v12 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 16];
  v13 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 24];
  *v9 = partial apply for closure #1 in _EXQueryController.init(queries:delegate:);
  v9[1] = v7;
  v9[2] = partial apply for closure #2 in _EXQueryController.init(queries:delegate:);
  v9[3] = v8;
  v14 = v5;
  v15 = v6;
  outlined consume of QueryController.Callbacks?(v10, v11, v12);

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1847E32A0()
{
  MEMORY[0x1865F57F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata completion function for QueryController()
{
  result = type metadata accessor for UUID();
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

void type metadata accessor for _EXQueryResultType(uint64_t a1, unint64_t *a2)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

void _EXQuery.copy(with:)(void *a1@<X8>)
{
  v3 = type metadata accessor for _EXQuery();
  v4 = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v1 + v5, v10);
  v6 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4[v6]);
  outlined init with take of _InnerAppExtensionIdentity(v10, &v4[v6]);
  swift_endAccess();
  *&v4[OBJC_IVAR____EXQuery_resultType] = *(v1 + OBJC_IVAR____EXQuery_resultType);
  v4[OBJC_IVAR____EXQuery_allowsDuplicates] = *(v1 + OBJC_IVAR____EXQuery_allowsDuplicates);
  v4[OBJC_IVAR____EXQuery_includePostprocessing] = *(v1 + OBJC_IVAR____EXQuery_includePostprocessing);
  v4[OBJC_IVAR____EXQuery_includeUpdatingApps] = *(v1 + OBJC_IVAR____EXQuery_includeUpdatingApps);
  v4[OBJC_IVAR____EXQuery_excludeLockedApps] = *(v1 + OBJC_IVAR____EXQuery_excludeLockedApps);
  v4[OBJC_IVAR____EXQuery_excludeDisabled] = *(v1 + OBJC_IVAR____EXQuery_excludeDisabled);
  v7 = *(v1 + OBJC_IVAR____EXQuery_predicate);
  v8 = *&v4[OBJC_IVAR____EXQuery_predicate];
  *&v4[OBJC_IVAR____EXQuery_predicate] = v7;
  v9 = v7;

  a1[3] = v3;
  *a1 = v4;
}

uint64_t specialized static QueryController.execute(queries:)(unint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 preferInProcessDiscovery];

  if (v3)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = _EXDiscoveryController.identities(matching:)(a1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = _EXServiceClient.extensions(with:)(a1);
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____EXQueryResult_identities);
  if (v6)
  {
    v7 = v6;
  }

  else if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v7 = v10;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v8 = specialized _copyCollectionToContiguousArray<A>(_:)(v7);

  return v8;
}

uint64_t _EXDiscoveryController.identities(matching:)(char *a1)
{
  v2 = v1;
  v51 = MEMORY[0x1E69E7CD0];
  v4 = &selRef_setService_;
  v5 = [objc_allocWithZone(type metadata accessor for _EXExtensionAvailability()) init];
  if (specialized static _EXDiscoveryController.canRun(query:)(a1))
  {
    v6 = *&v1[OBJC_IVAR____EXDiscoveryController_queryQueue];
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = v5;
    v7[4] = &v51;
    v8 = swift_allocObject();
    v9 = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
    *(v8 + 16) = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
    *(v8 + 24) = v7;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v10 = _Block_copy(aBlock);
    v11 = a1;
    v12 = v5;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      v13 = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = &selRef_setService_;
  if (one-time initialization token for discovery != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.discovery);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v19, -1, -1);
    MEMORY[0x1865F56C0](v18, -1, -1);
  }

  v13 = 0;
  v4 = v9;
LABEL_8:
  v21 = *&a1[OBJC_IVAR____EXQuery_resultType];
  if (v21 == 1)
  {
    v22 = type metadata accessor for _EXQueryResult();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____EXQueryResult_identities] = 0;
    *&v23[OBJC_IVAR____EXQueryResult_availablility] = v5;
    v50.receiver = v23;
    v50.super_class = v22;
    v24 = objc_msgSendSuper2(&v50, v4[490]);
LABEL_16:

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    return v24;
  }

  if (!v21)
  {
    v47 = v5;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.discovery);
    v26 = a1;
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v30 = 138543874;
      *(v30 + 4) = v27;
      *(v30 + 12) = 2114;
      *(v30 + 14) = v26;
      *v31 = v27;
      v31[1] = v26;
      *(v30 + 22) = 2082;
      swift_beginAccess();
      v45 = v29;
      type metadata accessor for _EXExtensionIdentity();
      lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
      v32 = v13;
      v33 = v26;
      v34 = v27;

      v35 = Set.description.getter();
      v37 = v36;

      v38 = v35;
      v4 = &selRef_setService_;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, aBlock);
      v13 = v32;

      *(v30 + 24) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x1865F56C0](v46, -1, -1);
      MEMORY[0x1865F56C0](v30, -1, -1);
    }

    swift_beginAccess();
    v40 = v51;
    v41 = type metadata accessor for _EXQueryResult();
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR____EXQueryResult_identities] = v40;
    *&v42[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v49.receiver = v42;
    v49.super_class = v41;
    v43 = v4[490];

    v24 = objc_msgSendSuper2(&v49, v43);

    goto LABEL_16;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1847E3FF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t specialized static _EXDiscoveryController.canRun(query:)(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v36);
  v3 = v37;
  v4 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  *&v33 = v5;
  *(&v33 + 1) = v7;
  v34 = v9;
  v35 = v11;
  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v36);
  v12 = v37;
  v13 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  if (!v16)
  {
    goto LABEL_16;
  }

  if (AuditToken.canHostOrDiscoverAnyExtension.getter(v5, v7, v9, v11))
  {
LABEL_15:

LABEL_16:
    result = 1;
    goto LABEL_28;
  }

  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v36);
  v17 = v37;
  v18 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v19 = (*(v18 + 64))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  if (v19 >> 62)
  {
    goto LABEL_19;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    while (1)
    {
      v21 = 0;
      while (1)
      {
        if (v20 == v21)
        {

          goto LABEL_27;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1865F3F40](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = specialized closure #1 in static _EXDiscoveryController.canRun(query:)(v22, v14, v16, &v33);

        ++v21;
        if (v24)
        {

          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      if (!__CocoaSet.count.getter())
      {
        break;
      }

      v20 = __CocoaSet.count.getter();
    }
  }

  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.discovery);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136446210;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v36);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1847D1000, v27, v28, "Failed to get LSExtensionPointRecord for extension point identifier '%{public}s'", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1865F56C0](v30, -1, -1);
    MEMORY[0x1865F56C0](v29, -1, -1);
  }

  else
  {
  }

LABEL_27:
  result = 0;
LABEL_28:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _EXQuery.ValuesQuery.extensionPointRecords.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v7 = v0[1];
  if (v7)
  {
    v9._countAndFlagsBits = 0x6C7070612E6D6F63;
    v9._object = 0xEA00000000002E65;
    v10 = *v0;
    v11 = v0[1];
    v79 = String.hasPrefix(_:)(v9);
  }

  else
  {
    v79 = 1;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v12 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
  v78 = v3;
  v27 = v12;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v26 = v28;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.discovery);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v74 = 0;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = v8;
      v35 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v26;
      *v35 = v26;
      v36 = v26;
      _os_log_impl(&dword_1847D1000, v30, v31, "Resolved host app record for value query: %@", v33, 0xCu);
      outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      v37 = v35;
      v8 = v34;
      MEMORY[0x1865F56C0](v37, -1, -1);
      MEMORY[0x1865F56C0](v33, -1, -1);
    }
  }

  else
  {

    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.discovery);
    outlined init with copy of _EXQuery.ValuesQuery(v1, v83);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    outlined destroy of _EXQuery.ValuesQuery(v1);
    v16 = os_log_type_enabled(v14, v15);
    v74 = 0;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v77 = v7;
      v19 = v8;
      v20 = v18;
      v83[0] = v18;
      *v17 = 136446210;
      v21 = _EXQuery.ValuesQuery.description.getter();
      v23 = v2;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v83);

      *(v17 + 4) = v24;
      v2 = v23;
      _os_log_impl(&dword_1847D1000, v14, v15, "Unable to resolve host app record for value query: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v25 = v20;
      v8 = v19;
      v7 = v77;
      MEMORY[0x1865F56C0](v25, -1, -1);
      MEMORY[0x1865F56C0](v17, -1, -1);
    }

    v26 = 0;
  }

  v82 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    if (v26)
    {
      v51 = one-time initialization token for discovery;
      v52 = v26;
      if (v51 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.discovery);
      v54 = v52;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138543362;
        *(v57 + 4) = v54;
        *v58 = v26;
        v59 = v54;
        _os_log_impl(&dword_1847D1000, v55, v56, "Enumerating all available extensions for host: %{public}@", v57, 0xCu);
        outlined destroy of NSObject?(v58, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v58, -1, -1);
        MEMORY[0x1865F56C0](v57, -1, -1);
      }

      v60 = [objc_opt_self() enumeratorWithParentApplicationRecord_];
      v61 = [v60 allObjects];
      v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = specialized _arrayForceCast<A, B>(_:)(v62);

      specialized Array.append<A>(contentsOf:)(v63);
    }

    return v82;
  }

  v76 = v2;
  v38 = objc_opt_self();
  v39 = MEMORY[0x1865F36D0](v8, v7);
  v40 = [v38 enumeratorForExtensionPointIdentifier_];

  v75 = v40;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v84)
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v26;
    goto LABEL_44;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v42 = v26;
  do
  {
    v77 = v41;
    while (1)
    {
      outlined init with take of Any(v83, &v81);
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
      swift_dynamicCast();
      v43 = v80;
      if (v79)
      {
        break;
      }

      v45 = [v80 parentAppRecord];
      if (v45)
      {
        v46 = v45;
        if (v26)
        {
          type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
          v47 = v26;
          v48 = static NSObject.== infix(_:_:)();

          v42 = v26;
          if (v48)
          {
            break;
          }
        }

        else
        {

          v42 = 0;
        }
      }

      else
      {
        v42 = v26;
        if (!v26)
        {
          break;
        }
      }

LABEL_21:

      NSFastEnumerationIterator.next()();
      if (!v84)
      {
        v41 = v77;
        goto LABEL_44;
      }
    }

    v44 = *(v1 + 16);
    if ((v44 + 1) >= 2 && [v43 platform] != v44)
    {
      goto LABEL_21;
    }

    v49 = v43;
    MEMORY[0x1865F38A0]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v41 = v82;
    NSFastEnumerationIterator.next()();
  }

  while (v84);
LABEL_44:
  (*(v78 + 8))(v6, v76);
  if (v41 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_49;
    }

LABEL_46:
  }

  else
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

LABEL_49:
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.discovery);
    outlined init with copy of _EXQuery.ValuesQuery(v1, v83);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    outlined destroy of _EXQuery.ValuesQuery(v1);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v67 = 136446210;
      v69 = _EXQuery.ValuesQuery.description.getter();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v83);

      *(v67 + 4) = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x1865F56C0](v68, -1, -1);
      MEMORY[0x1865F56C0](v67, -1, -1);
    }
  }

  return v82;
}

uint64_t protocol witness for InnerQuery.hostAuditToken.getter in conformance _EXQuery.ValuesQuery()
{
  result = *(v0 + 20);
  v2 = *(v0 + 28);
  v3 = *(v0 + 36);
  v4 = *(v0 + 44);
  return result;
}

uint64_t protocol witness for InnerQuery.extensionPointIdentifier.getter in conformance _EXQuery.ValuesQuery()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t protocol witness for InnerQuery.extensionPointRecords.getter in conformance _EXQuery.ValuesQuery()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 12);
  return _EXQuery.ValuesQuery.extensionPointRecords.getter();
}

id _EXDiscoveryController.identities(matching:)(unint64_t a1)
{
  v14 = MEMORY[0x1E69E7CD0];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v10 = MEMORY[0x1E69E7CD0];
LABEL_16:
    v11 = type metadata accessor for _EXQueryResult();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____EXQueryResult_identities] = v10;
    *&v12[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v13.receiver = v12;
    v13.super_class = v11;
    return objc_msgSendSuper2(&v13, sel_init);
  }

LABEL_14:
  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1865F3F40](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = _EXDiscoveryController.identities(matching:)(v4);
    result = *&v7[OBJC_IVAR____EXQueryResult_identities];
    if (!result)
    {
      break;
    }

    specialized Set.formUnion<A>(_:)(v9);

    ++v3;
    if (v6 == v2)
    {
      v10 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in _EXDiscoveryController.identities(matching:)(char *a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CD0];
  v4 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(&a1[v4], v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = (*(v6 + 64))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_beginAccess();
    specialized Set.formUnion<A>(_:)(v15);
    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1865F3F40](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      specialized closure #1 in closure #1 in _EXDiscoveryController.identities(matching:)(v10, a1, &v15, a2);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t specialized closure #1 in static _EXDiscoveryController.canRun(query:)(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v7 = [a1 SDKDictionary];
  v8 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C27B0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [v7 objectForKey:v8 ofClass:ObjCClassFromMetadata];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v11 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyp_Tt1g5(&v62, 0, 0);
  if (v12 < 2)
  {
    v56 = v11;
    v57 = v12;
    v13._countAndFlagsBits = 0x6C7070612E6D6F63;
    v13._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v13))
    {
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.discovery);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_21;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v62 = v18;
      *v17 = 136446210;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
      _os_log_impl(&dword_1847D1000, v15, v16, "Skipping host app record lookup for system extension point: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865F56C0](v18, -1, -1);
      v19 = v17;
    }

    else
    {
      v25 = [a1 parentAppRecord];
      if (v25)
      {
LABEL_22:
        if ([a1 extensionPointType] && objc_msgSend(a1, sel_extensionPointType) != 1)
        {
          v33 = MEMORY[0x1E69E7CC8];
          goto LABEL_40;
        }

        v30 = [a1 SDKDictionary];
        v31 = MEMORY[0x1865F36D0](0xD00000000000001ALL, 0x80000001848C2850);
        v32 = [v30 objectForKey:v31 ofClass:ObjCClassFromMetadata];

        if (v32)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v62 = v60;
        v63 = v61;
        if (*(&v61 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if (swift_dynamicCast())
          {
            goto LABEL_37;
          }
        }

        else
        {
          outlined destroy of NSObject?(&v62, &_sypSgMd, &_sypSgMR);
        }

        v34 = [a1 SDKDictionary];
        v35 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C2C00);
        v36 = [v34 objectForKey:v35 ofClass:ObjCClassFromMetadata];

        if (v36)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v62 = v60;
        v63 = v61;
        if (*(&v61 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if (swift_dynamicCast())
          {
LABEL_37:
            v33 = v59;
            goto LABEL_40;
          }
        }

        else
        {
          outlined destroy of NSObject?(&v62, &_sypSgMd, &_sypSgMR);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
        inited = swift_initStackObject();
        v55 = xmmword_1848BA260;
        *(inited + 16) = xmmword_1848BA260;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1848BA260;
        *(v39 + 32) = a2;
        *(v39 + 40) = a3;

        isa = Array._bridgeToObjectiveC()().super.isa;

        *(inited + 48) = isa;
        v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);
LABEL_40:
        v41 = [a1 _EX_parentAppRecord];
        v42 = v25 == 0;
        if (v41)
        {
          v43 = v41;
          if (v25)
          {
            type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
            v44 = v25;
            v42 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v42 = 0;
          }
        }

        if ([a1 extensionPointType] == 2 && (v42 & 1) != 0)
        {
          outlined consume of _ScopeRestriction(v56, v57);

          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.discovery);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v46, v47))
          {
            goto LABEL_58;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v62 = v49;
          *v48 = 136446210;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
          v50 = "Extension point '%{public}s' is declared by the Host, allowing discovery.";
        }

        else
        {
          v51 = *(v33 + 16);
          outlined consume of _ScopeRestriction(v56, v57);
          if (v51)
          {
            specialized _dictionaryUpCast<A, B, C, D>(_:)(v33);

            v52 = Dictionary._bridgeToObjectiveC()().super.isa;

            swift_beginAccess();
            HasRequiredEntitlements = _EXAuditTokenHasRequiredEntitlements(a4, v52, 0);
            swift_endAccess();

            return HasRequiredEntitlements;
          }

          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static Logger.discovery);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v46, v47))
          {
            goto LABEL_58;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v62 = v49;
          *v48 = 136446210;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
          v50 = "Extension point '%{public}s' requires no entitlements.";
        }

        _os_log_impl(&dword_1847D1000, v46, v47, v50, v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1865F56C0](v49, -1, -1);
        MEMORY[0x1865F56C0](v48, -1, -1);
LABEL_58:

        return 1;
      }

      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.discovery);

      v15 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v15, v27))
      {
LABEL_21:

        v25 = 0;
        goto LABEL_22;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v62 = v29;
      *v28 = 136446210;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
      _os_log_impl(&dword_1847D1000, v15, v27, "Extension point:  %{public}s has no parent app.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1865F56C0](v29, -1, -1);
      v19 = v28;
    }

    MEMORY[0x1865F56C0](v19, -1, -1);
    goto LABEL_21;
  }

  outlined consume of _ScopeRestriction(v11, v12);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.discovery);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1847D1000, v21, v22, "Extension points with app group scope must be enumerated using AppExtensionPoint.Monitor.", v23, 2u);
    MEMORY[0x1865F56C0](v23, -1, -1);
  }

  return 0;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _EXAuditTokenHasRequiredEntitlements(__int128 *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 _EX_arrayForKey:@"com.apple.extensionkit.host.extension-point-identifiers"];
  v7 = [v6 firstObject];

  if ([v5 count] == 1 && v7)
  {
    objc_opt_class();
    v8 = _EXAuditTokenGetEntitlementValue(a1, @"com.apple.extensionkit.host.extension-point-identifiers");
    v9 = [v8 containsObject:v7];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = a3;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          objc_opt_class();
          v16 = _EXAuditTokenGetEntitlementValue(a1, v14);
          if (([v16 isEqual:v15] & 1) == 0)
          {
            v17 = _EXDefaultLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              _EXAuditTokenHasRequiredEntitlements_cold_1(v14, v16, v17);
            }

            v9 = 0;
            goto LABEL_16;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v9 = 1;
LABEL_16:
      a3 = v21;
    }

    else
    {
      v9 = 1;
    }
  }

  if (a3 && (v9 & 1) == 0)
  {
    v18 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v18;
    *a3 = [MEMORY[0x1E696ABC0] _EX_hostIsLackingRequiredEntitlementErrorWithHostPID:audit_token_to_pid(&atoken) requiredEntitlements:v5];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

char *_EXQuery.init(extensionPointIdentifier:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active_platform = dyld_get_active_platform();
  v6 = _EXAuditTokenForCurrentProcess();
  v7 = v6[1];
  v22 = *v6;
  v23 = v7;
  v8 = type metadata accessor for _EXQuery();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v9[OBJC_IVAR____EXQuery_predicate] = 0;
  v9[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v10 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 queryAllowsDuplicates];

  v9[v10] = v12;
  v9[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *v25 = active_platform;
  *&v25[4] = v22;
  *&v25[20] = v23;
  v26[0] = a1;
  v26[1] = a2;
  v27 = active_platform;
  v28 = v22;
  v29 = v23;
  outlined init with copy of _EXQuery.ValuesQuery(&v24, v21);
  outlined destroy of _EXQuery.ValuesQuery(v26);
  v13 = &v9[OBJC_IVAR____EXQuery_inner];
  v13[3] = &type metadata for _EXQuery.ValuesQuery;
  v13[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v14 = swift_allocObject();
  *v13 = v14;
  v15 = *v25;
  *(v14 + 16) = v24;
  *(v14 + 32) = v15;
  *(v14 + 48) = *&v25[16];
  *(v14 + 64) = *&v25[32];
  v20.receiver = v9;
  v20.super_class = v8;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v17 = *&v16[OBJC_IVAR____EXQuery_predicate];
  *&v16[OBJC_IVAR____EXQuery_predicate] = a3;

  return v16;
}

id _EXQuery.init()()
{
  *&v0[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v0[OBJC_IVAR____EXQuery_predicate] = 0;
  v0[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v1 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 queryAllowsDuplicates];

  v0[v1] = v3;
  v0[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v0[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v0[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  v4 = _EXAuditTokenForCurrentProcess();
  v5 = v4[1];
  v12 = *v4;
  v13 = v5;
  v14 = 0uLL;
  *v15 = 0;
  *&v15[4] = v12;
  *&v15[20] = v5;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v18 = v12;
  v19 = v5;
  outlined init with copy of _EXQuery.ValuesQuery(&v14, v11);
  outlined destroy of _EXQuery.ValuesQuery(v16);
  v6 = &v0[OBJC_IVAR____EXQuery_inner];
  v6[3] = &type metadata for _EXQuery.ValuesQuery;
  v6[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v7 = swift_allocObject();
  *v6 = v7;
  v8 = *v15;
  *(v7 + 16) = v14;
  *(v7 + 32) = v8;
  *(v7 + 48) = *&v15[16];
  *(v7 + 64) = *&v15[32];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _EXQuery();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1847E6434()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *_EXQueryController.init(queries:)(unint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for QueryController());
  *&v2[OBJC_IVAR____EXQueryController_innerController] = QueryController.init(queries:)(a1);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for _EXQueryController();
  v5 = objc_msgSendSuper2(&v16, sel_init);
  v6 = *&v5[OBJC_IVAR____EXQueryController_innerController];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v10 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v11 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 8];
  v12 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 16];
  v13 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 24];
  *v9 = partial apply for closure #1 in _EXQueryController.init(queries:);
  *(v9 + 1) = v7;
  *(v9 + 2) = partial apply for closure #2 in _EXQueryController.init(queries:);
  *(v9 + 3) = v8;
  v14 = v6;
  outlined consume of QueryController.Callbacks?(v10, v11, v12);

  return v5;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for _EXDiscoveryController()) init];
  static _EXDiscoveryController.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for LocalLSDatabaseObserver()) init];
  static LocalLSDatabaseObserver.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for Service()) init];
  static Service.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for _EXServiceClient()) init];
  static _EXServiceClient.shared = result;
  return result;
}

char *_EXDiscoveryController.init()()
{
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v0[OBJC_IVAR____EXDiscoveryController_activeQueries] = MEMORY[0x1E69E7CC8];
  v9 = OBJC_IVAR____EXDiscoveryController_observer;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x1E6963670]) init];
  v10 = &v0[OBJC_IVAR____EXDiscoveryController_settingsStoreToken];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR____EXDiscoveryController_activeQueriesLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v0[v11] = v12;
  v17 = OBJC_IVAR____EXDiscoveryController_queryQueue;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v18);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = type metadata accessor for _EXDiscoveryController();
  v19.receiver = v0;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  [*&v14[OBJC_IVAR____EXDiscoveryController_observer] setDelegate_];
  return v14;
}

uint64_t outlined consume of QueryController.Callbacks?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(result);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(a3);
  }

  return result;
}

uint64_t one-time initialization function for general(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2, Swift::Int a3)
{
  v26 = a1;
  v29 = a2;
  v30 = a3;
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  swift_getObjectType();
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  v27 = a2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v6 + 32);
  v16 = v14 & ~v15;
  if ((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    while (1)
    {
      v28 = *(*(v6 + 48) + 16 * v16);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *v26 = *(*(v6 + 48) + 16 * v16);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v25;
    v19 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *v18;
    v21 = swift_unknownObjectRetain();
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, a3, v16, isUniquelyReferenced_nonNull_native);
    *v18 = v28;
    v22 = v26;
    *v26 = a2;
    *(v22 + 1) = a3;
    return 1;
  }
}

uint64_t protocol witness for Identifiable.id.getter in conformance QueryController@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v27 = result;
  v28 = a2;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  swift_getObjectType();
  v12 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25[0] = v25;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v25 - v16;
  v25[1] = v7;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  result = Hasher._finalize()();
  v18 = -1 << *(v10 + 32);
  a3 = result & ~v18;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v19 = ~v18;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    do
    {
      v26 = *(*(v10 + 48) + 16 * a3);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v19;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v7;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized _EXDiscoveryController.add(activeQueryObserver:query:)(void *a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *&v8[v17];
      }

      v20 = *&v8[v17];

      v21 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v21 = *(v18 + 16);
    }

    v30 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v30)
    {
      type metadata accessor for _EXActiveQuery();
      v31 = swift_allocObject();
      v31[2] = v9;
      v31[3] = v8;
      v32 = MEMORY[0x1E69E7CD0];
      v31[4] = MEMORY[0x1E69E7CD0];
      v31[5] = v32;
      v31[6] = v32;
      swift_beginAccess();
      v33 = *&v8[v17];
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 >= 0)
        {
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v34 = v8;
        v35 = v9;

        v36 = __CocoaSet.count.getter();
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v33, v36 + 1);
      }

      else
      {
        v37 = v8;
        v38 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v63;
      swift_endAccess();
      v40 = v9;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v61 = v16;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_1847D1000, v41, v42, "New active query %{public}@'", v43, 0xCu);
        outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v44, -1, -1);
        v46 = v43;
        v16 = v61;
        MEMORY[0x1865F56C0](v46, -1, -1);
      }
    }

    swift_beginAccess();
    v47 = a1;
    specialized Set._Variant.insert(_:)(&v63, v47, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v48 = v47;
    specialized Set._Variant.insert(_:)(&v63, v48, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v21 <= 0)
    {
      v49 = v8;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138543362;
        *(v52 + 4) = v49;
        *v53 = v49;
        v54 = v49;
        _os_log_impl(&dword_1847D1000, v50, v51, "%{public}@ LS database observing started.", v52, 0xCu);
        outlined destroy of NSObject?(v53, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v53, -1, -1);
        MEMORY[0x1865F56C0](v52, -1, -1);
      }

      v55 = [objc_opt_self() sharedInstance];
      v56 = swift_allocObject();
      *(v56 + 16) = v49;
      aBlock[4] = closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:)partial apply;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_32;
      v57 = _Block_copy(aBlock);
      v58 = v49;

      v59 = [v55 addChangeObserver_];
      _Block_release(v57);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v60 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v58[v60]);
      swift_endAccess();
      [*&v58[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.discovery);
    v23 = a3;
    v24 = a2;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v23;
      v27[1] = v24;
      v28 = v23;
      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v27, -1, -1);
      MEMORY[0x1865F56C0](v26, -1, -1);
    }
  }
}

{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(lazy protocol witness table cache variable for type _EXConnectionActiveQueryObserver and conformance _EXConnectionActiveQueryObserver, type metadata accessor for _EXConnectionActiveQueryObserver);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *&v8[v17];
      }

      v20 = *&v8[v17];

      v21 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v21 = *(v18 + 16);
    }

    v30 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v30)
    {
      type metadata accessor for _EXActiveQuery();
      v31 = swift_allocObject();
      v31[2] = v9;
      v31[3] = v8;
      v32 = MEMORY[0x1E69E7CD0];
      v31[4] = MEMORY[0x1E69E7CD0];
      v31[5] = v32;
      v31[6] = v32;
      swift_beginAccess();
      v33 = *&v8[v17];
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 >= 0)
        {
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v34 = v8;
        v35 = v9;

        v36 = __CocoaSet.count.getter();
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v33, v36 + 1);
      }

      else
      {
        v37 = v8;
        v38 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v63;
      swift_endAccess();
      v40 = v9;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v61 = v16;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_1847D1000, v41, v42, "New active query %{public}@'", v43, 0xCu);
        outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v44, -1, -1);
        v46 = v43;
        v16 = v61;
        MEMORY[0x1865F56C0](v46, -1, -1);
      }
    }

    swift_beginAccess();
    v47 = a1;
    specialized Set._Variant.insert(_:)(&v63, v47, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v48 = v47;
    specialized Set._Variant.insert(_:)(&v63, v48, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v21 <= 0)
    {
      v49 = v8;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138543362;
        *(v52 + 4) = v49;
        *v53 = v49;
        v54 = v49;
        _os_log_impl(&dword_1847D1000, v50, v51, "%{public}@ LS database observing started.", v52, 0xCu);
        outlined destroy of NSObject?(v53, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v53, -1, -1);
        MEMORY[0x1865F56C0](v52, -1, -1);
      }

      v55 = [objc_opt_self() sharedInstance];
      v56 = swift_allocObject();
      *(v56 + 16) = v49;
      aBlock[4] = closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:)partial apply;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_39_0;
      v57 = _Block_copy(aBlock);
      v58 = v49;

      v59 = [v55 addChangeObserver_];
      _Block_release(v57);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v60 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v58[v60]);
      swift_endAccess();
      [*&v58[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.discovery);
    v23 = a3;
    v24 = a2;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v23;
      v27[1] = v24;
      v28 = v23;
      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v27, -1, -1);
      MEMORY[0x1865F56C0](v26, -1, -1);
    }
  }
}

uint64_t sub_1847E7A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t instantiation function for generic protocol witness table for QueryController(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance NSObject, type metadata accessor for QueryController);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for _EXActiveQuery();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1865F42C0](v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v44 = *(v23 + 9);
      v45 = *(v23 + 8);
      v43 = *(v23 + 10);
      v25 = *(v23 + 11);
      v26 = *(v5 + 56) + 40 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      v41 = *(v26 + 16);
      v42 = *(v26 + 32);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      specialized Set.hash(into:)(v46, v24);
      Hasher._combine(_:)(v45);
      Hasher._combine(_:)(v44);
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v45;
      *(v17 + 9) = v44;
      *(v17 + 10) = v43;
      *(v17 + 11) = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v27;
      *(v18 + 8) = v28;
      *(v18 + 16) = v41;
      *(v18 + 32) = v42;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v40)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v37 = v22[1];
      v38 = *v22;
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v24 = v23;
      }

      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      *atoken.val = v38;
      *&atoken.val[4] = v37;
      v26 = audit_token_to_pid(&atoken);
      Hasher._combine(_:)(v26);
      *atoken.val = v38;
      *&atoken.val[4] = v37;
      v27 = audit_token_to_pidversion(&atoken);
      Hasher._combine(_:)(v27);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v38;
      v17[1] = v37;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}