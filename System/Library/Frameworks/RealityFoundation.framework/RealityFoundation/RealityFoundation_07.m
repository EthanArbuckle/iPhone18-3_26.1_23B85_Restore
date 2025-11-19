unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

uint64_t specialized static __RealityFileURLResolver.weakShared.getter()
{
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v3 = (*(v2 + 32))(v1, v2);
  swift_beginAccess();
  v4 = static __RealityFileURLResolver.weakInstances;
  if (*(static __RealityFileURLResolver.weakInstances + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) != 0))
  {
    outlined init with copy of [String : String](v4[7] + 8 * v5, &v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    v10 = 0;
    Strong = swift_weakLoadStrong();
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
    swift_endAccess();
  }

  else
  {
    v9 = 0;
    v10 = 1;
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
    swift_endAccess();
    Strong = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return Strong;
}

uint64_t specialized static __RealityFileURLResolver.weakShared.setter(uint64_t a1)
{
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = (*(v4 + 32))(v3, v4);
  if (a1)
  {
    swift_weakInit();
    swift_weakAssign();
  }

  else
  {
    v7 = 0;
  }

  v8 = a1 == 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v7, v5);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v9);
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

id specialized closure #1 in __RealityFileURLResolver.registerRealityFileResolver()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String.init(cString:)();
  v14 = v13;
  if (a2)
  {
    v15 = v12;
    type metadata accessor for __REAssetManager();
    v16 = swift_allocObject();
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 2;
    *(v16 + 96) = 514;
    *(v16 + 88) = a2;
    v17 = one-time initialization token for instances;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = static __RealityFileURLResolver.instances;

    specialized AssetServiceScopedRegistry.instance(for:)(v16, v18);

    __RealityFileURLResolver.resolvedURL(for:)(v15, v14, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v20 = URL.path.getter();
      v22 = v21;
      v23 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
      v24 = MEMORY[0x1C68F3280](v20, v22);

      v25 = [v23 initWithString_];

      v26 = [v25 fileSystemRepresentation];

      (*(v8 + 8))(v11, v7);
      v27 = v25;
      return v26;
    }
  }

  else
  {

    return 0;
  }
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

uint64_t partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:)()
{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

uint64_t type metadata instantiation function for __RealityFileURLResolver.Weak()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t __RKEntityActionSpecification.init(decodeContext:)@<X0>(void **a1@<X0>, int64_t a2@<X8>)
{
  v3 = a1;
  v5 = *a1;
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x736E6F69746361, 0xE700000000000000, 0, *a1);
  v7 = v2;
  if (v2)
  {

    v8 = v3[2];

    v82 = v3[3];
    outlined destroy of BodyTrackingComponent?(&v82, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v81 = v3[4];
    outlined destroy of BodyTrackingComponent?(&v81, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v80 = v3[5];
    v9 = &v80;
    return outlined destroy of BodyTrackingComponent?(v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v61 = result;
  if (result >> 62)
  {
    goto LABEL_54;
  }

  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v59 = v5;
    v58 = a2;
    if (v10)
    {
      v11 = v61;
      if (v10 >= 1)
      {
        v12 = 0;
        v13 = MEMORY[0x1E69E7CC0];
        v68 = v3[1];
        v60 = v3;
        v62 = v10;
        while (1)
        {
          v14 = (v61 & 0xC000000000000001) != 0 ? MEMORY[0x1C68F41F0](v12, v11) : *(v11 + 8 * v12 + 32);
          v15 = v14;
          v16 = [v68 objectAtPath_];
          if (v16)
          {
            break;
          }

LABEL_10:
          if (v10 == ++v12)
          {
            goto LABEL_44;
          }
        }

        v17 = v16;
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {

LABEL_34:
          v10 = v62;
          goto LABEL_10;
        }

        v19 = v18;
        v63 = v15;
        v20 = v13;
        v21 = v7;
        v22 = v3[2];
        v23 = v3[3];
        v25 = v3[4];
        v24 = v3[5];
        v64 = v68;
        v65 = v22;

        v67 = v23;

        v66 = v25;
        v5 = v24;

        v3 = v17;
        v26 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 1, v19);
        if (v21)
        {

          v7 = MEMORY[0x1E69E7CC0];
          v13 = v20;
        }

        else
        {
          v41 = v27;
          v13 = v20;
          if (v27)
          {
            v42 = v26;
            v28 = v63;
            if (one-time initialization token for actionTypeToActionSpecificationsGenerator != -1)
            {
              swift_once();
            }

            v43 = static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator;
            if (*(static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator + 2) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41), (v45 & 1) != 0))
            {
              v46 = v44;

              v47 = v43[7] + 16 * v46;
              v49 = *v47;
              v48 = *(v47 + 8);
              v70[0] = v19;
              v70[1] = v64;
              v70[2] = v65;
              v70[3] = v67;
              v70[4] = v66;
              v70[5] = v5;

              v49(&v69, v70);

              v7 = v69;
            }

            else
            {
              static os_log_type_t.debug.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1C1887600;
              *(v50 + 56) = MEMORY[0x1E69E6158];
              *(v50 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v50 + 32) = v42;
              *(v50 + 40) = v41;
              type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
              v51 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              v7 = MEMORY[0x1E69E7CC0];
            }

LABEL_19:
            v29 = v7[2];
            a2 = v13[2];
            v30 = a2 + v29;
            if (__OFADD__(a2, v29))
            {
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              result = __CocoaSet.count.getter();
              v10 = result;
              continue;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v32 = v13[3] >> 1, v32 >= v30))
            {
              if (v7[2])
              {
LABEL_23:
                a2 = v13[2];
                v33 = v32 - a2;
                v34 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
                if (v33 < v29)
                {
                  goto LABEL_52;
                }

                v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
                v36 = *(v34 + 72);
                swift_arrayInitWithCopy();

                v7 = 0;
                if (v29)
                {
                  v37 = v13[2];
                  v38 = __OFADD__(v37, v29);
                  v39 = v37 + v29;
                  if (v38)
                  {
                    goto LABEL_53;
                  }

                  v13[2] = v39;
                }

LABEL_33:

                v3 = v60;
                v11 = v61;
                goto LABEL_34;
              }
            }

            else
            {
              if (a2 <= v30)
              {
                v40 = a2 + v29;
              }

              else
              {
                v40 = a2;
              }

              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v40, 1, v13);
              v32 = v13[3] >> 1;
              if (v7[2])
              {
                goto LABEL_23;
              }
            }

            v7 = 0;
            if (v29)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v7 = MEMORY[0x1E69E7CC0];
        }

        v28 = v63;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if (!v13[2])
      {

        lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError();
        swift_allocError();
        swift_willThrow();

        v56 = v3[2];

        v73 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v73, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v72 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v72, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v71 = v3[5];
        v9 = &v71;
        return outlined destroy of BodyTrackingComponent?(v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      v52 = MEMORY[0x1C68F3280](0x766973756C637865, 0xE900000000000065);
      v53 = [v59 property_];

      if (v53)
      {
        v54 = [v53 BOOLValue];

        v55 = v3[2];

        v76 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v76, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v75 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v75, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v74 = v3[5];
        outlined destroy of BodyTrackingComponent?(&v74, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      else
      {

        v57 = v3[2];

        v79 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v79, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v78 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v78, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v77 = v3[5];
        outlined destroy of BodyTrackingComponent?(&v77, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v54 = 0;
      }

      *v58 = 1;
      *(v58 + 8) = v13;
      *(v58 + 16) = v54;
      *(v58 + 24) = 1;
      *(v58 + 32) = 0;
      type metadata accessor for __RKEntityActionSpecification(0);
      return swift_storeEnumTagMultiPayload();
    }

    return result;
  }
}

uint64_t one-time initialization function for actionTypeToActionSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit29__RKEntityActionSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionTypeToActionSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator = v0;
  return result;
}

uint64_t static __RKEntityActionSpecification.generateGroupActionSpecifications(decodeContext:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v95 - v8;
  v10 = *a1;
  v114 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x73706F6F6CLL, 0xE500000000000000, 1, *a1);
  v11 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x436D726F66726570, 0xEC000000746E756FLL, 1, v10);
  v12 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, v10);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v99 = v11;
  v102 = v3;
  v15 = v13;
  v16._countAndFlagsBits = v12;
  v16._object = v15;
  v17 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityGroupActionOrderUSD.init(rawValue:), v16);

  if (v17)
  {
    if (v17 != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v101 = v2;
    v96 = v9;
    v97 = v7;
    v98 = 0;
  }

  else
  {
    v101 = v2;
    v96 = v9;
    v97 = v7;
    v98 = 1;
  }

  v18 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
  v19 = [v10 property_];

  if (!v19)
  {
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1C1897FD0;
    v78 = MEMORY[0x1E69E6158];
    *(v77 + 56) = MEMORY[0x1E69E6158];
    v79 = lazy protocol witness table accessor for type String and conformance String();
    *(v77 + 32) = 0xD000000000000012;
    *(v77 + 40) = 0x80000001C18DE9B0;
    *(v77 + 96) = v78;
    *(v77 + 104) = v79;
    *(v77 + 64) = v79;
    *(v77 + 72) = 0x736E6F69746361;
    *(v77 + 80) = 0xE700000000000000;
    v80 = [v10 path];
    v81 = [v80 stringValue];

    if (v81)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = (v77 + 112);
      *(v77 + 136) = v78;
      *(v77 + 144) = v79;
      if (v84)
      {
        *v85 = v82;
LABEL_49:
        *(v77 + 120) = v84;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v86 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v85 = (v77 + 112);
      *(v77 + 136) = v78;
      *(v77 + 144) = v79;
    }

    *v85 = 7104878;
    v84 = 0xE300000000000000;
    goto LABEL_49;
  }

  v111 = 0;
  v20 = v19;
  v21 = [v20 objectPathArray];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_53;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = &off_1C1887000;
  if (!v23)
  {
LABEL_54:
    v104 = MEMORY[0x1E69E7CC0];
LABEL_55:

    v87 = v104;
    if (v104[2])
    {
      v88 = v99;
      v89 = v96;
      *v96 = v98;
      if (v114)
      {
        v90 = 0;
      }

      else
      {
        v90 = v88;
      }

      *(v89 + 8) = v87;
      *(v89 + 16) = 0;
      *(v89 + 24) = v90;
      *(v89 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      v91 = v97;
      static __RKEntityActionSpecification.collapseAndReturnGroupActionSpecification(_:)(v89, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v92 = *(v102 + 72);
      v93 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1C1887600;
      outlined init with take of __RKEntityHideActionArguments(v91, v94 + v93, type metadata accessor for __RKEntityActionSpecification);
      outlined destroy of __RKEntityActionSpecification(v89, type metadata accessor for __RKEntityActionSpecification);
      return v94;
    }

    return MEMORY[0x1E69E7CC0];
  }

  while (v23 >= 1)
  {
    v25 = 0;
    v26 = v22 & 0xC000000000000001;
    v27 = *(a1 + 8);
    v28 = &property descriptor for UnlitMaterial.readsDepth;
    v95 = *(v24 + 96);
    v104 = MEMORY[0x1E69E7CC0];
    v100 = v27;
    v103 = v22;
    v105 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v29 = MEMORY[0x1C68F41F0](v25, v22);
      }

      else
      {
        v29 = *(v22 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = v27;
      v32 = [v31 v28[411]];
      v33 = v30;
      if (!v32)
      {

        goto LABEL_14;
      }

      v34 = v32;
      v112 = v33;
      v113 = v31;
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (!v35)
      {

        goto LABEL_14;
      }

      v36 = v35;
      v37 = v23;
      v38 = *(a1 + 24);
      v40 = *(a1 + 32);
      v39 = *(a1 + 40);
      v107 = *(a1 + 16);

      v110 = v38;

      v109 = v40;

      v108 = v39;

      v41 = v34;
      v42 = v111;
      v43 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 1, v36);
      v106 = v41;
      if (v42)
      {

        v42 = 0;
LABEL_22:
        v45 = MEMORY[0x1E69E7CC0];
        v23 = v37;
        goto LABEL_23;
      }

      v63 = v44;
      if (!v44)
      {
        goto LABEL_22;
      }

      if (one-time initialization token for actionTypeToActionSpecificationsGenerator != -1)
      {
        v76 = v43;
        swift_once();
        v43 = v76;
      }

      v64 = static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator;
      v23 = v37;
      if (*(static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator + 2) && (v65 = v43, v66 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v63), v43 = v65, (v67 & 1) != 0))
      {
        v68 = v66;

        v69 = v64[7] + 16 * v68;
        v71 = *v69;
        v70 = *(v69 + 8);
        v116[0] = v36;
        v116[1] = v113;
        v116[2] = v107;
        v116[3] = v110;
        v116[4] = v109;
        v116[5] = v108;

        v71(&v115, v116);
        v42 = 0;
        v28 = &property descriptor for UnlitMaterial.readsDepth;

        v45 = v115;
      }

      else
      {
        v73 = v43;
        LODWORD(v111) = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v74 = swift_allocObject();
        *(v74 + 16) = v95;
        *(v74 + 56) = MEMORY[0x1E69E6158];
        *(v74 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 32) = v73;
        *(v74 + 40) = v63;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v75 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v45 = MEMORY[0x1E69E7CC0];
      }

LABEL_23:
      v26 = v105;
      v46 = *(v45 + 16);
      v111 = v42;
      if (!v46)
      {

        v72 = v106;

        v22 = v103;
        goto LABEL_14;
      }

      v47 = v23;
      v48 = a1;
      a1 = v45;
      v49 = v28;
      v50 = v103;
      v51 = v104;
      v52 = v104[2];
      v22 = v52 + v46;
      if (__OFADD__(v52, v46))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v54 = v51[3] >> 1, v54 < v22))
      {
        if (v52 <= v22)
        {
          v55 = v52 + v46;
        }

        else
        {
          v55 = v52;
        }

        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v55, 1, v51);
        v54 = v51[3] >> 1;
      }

      v22 = a1;
      if (!*(a1 + 16))
      {
        goto LABEL_62;
      }

      v26 = v105;
      if (v54 - v51[2] < v46)
      {
        goto LABEL_51;
      }

      a1 = v48;
      v56 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v57 = *(v102 + 72);
      swift_arrayInitWithCopy();

      v58 = v51[2];
      v59 = __OFADD__(v58, v46);
      v60 = v58 + v46;
      v61 = v100;
      if (v59)
      {
        goto LABEL_52;
      }

      v23 = v47;
      v104 = v51;
      v51[2] = v60;

      v62 = v106;

      v22 = v50;
      v28 = v49;
      v27 = v61;
LABEL_14:
      if (v23 == ++v25)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v23 = __CocoaSet.count.getter();
    v24 = &off_1C1887000;
    if (!v23)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_62:

  __break(1u);
  return result;
}

uint64_t static __RKEntityActionSpecification.collapseAndReturnGroupActionSpecification(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v3 = *(*(started - 1) + 64);
  MEMORY[0x1EEE9AC00](started);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for UUID();
  v76 = *(v79 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v71 - v15;
  v16 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  v22 = type metadata accessor for __RKEntityActionSpecification(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v71 - v28;
  outlined init with copy of __RKEntityActionSpecification(a1, &v71 - v28);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of __RKEntityActionSpecification(v29, type metadata accessor for __RKEntityActionSpecification);
    v34 = a1;
    return outlined init with copy of __RKEntityActionSpecification(v34, v80);
  }

  v30 = a1;
  v31 = *(v29 + 1);
  if (*(v31 + 16) != 1)
  {
    goto LABEL_13;
  }

  if (v29[32])
  {
    v32 = 1;
    v33 = v79;
    goto LABEL_8;
  }

  v32 = *(v29 + 3);
  v33 = v79;
  if (v32 < 1)
  {
LABEL_13:
    outlined init with copy of __RKEntityActionSpecification(v30, v80);
  }

LABEL_8:
  v79 = v32;
  v36 = v30;
  outlined init with copy of __RKEntityActionSpecification(v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 10)
      {

        v38 = v75;
        outlined init with take of __RKEntityHideActionArguments(v27, v75, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v39 = v76;
        v40 = v74;
        result = (*(v76 + 16))(v74, v38, v33);
        v41 = *(v38 + started[5]);
        v42 = v41 * v79;
        if ((v41 * v79) >> 64 == (v41 * v79) >> 63)
        {
          v43 = v33;
          v44 = started[7];
          LODWORD(v79) = *(v38 + started[6]);
          v45 = *(v38 + v44);
          v46 = started[9];
          v47 = *(v38 + started[8]);
          v48 = started[11];
          LODWORD(v73) = *(v38 + started[10]);
          v49 = *(v38 + v48);
          LODWORD(v78) = *(v38 + v46);
          v50 = started;
          outlined destroy of __RKEntityActionSpecification(v38, type metadata accessor for __RKEntityStartAnimateActionArguments);
          v51 = v50[14];
          v52 = *(v39 + 56);
          v53 = v80;
          v52(v80 + v51, 1, 1, v43);
          (*(v39 + 32))(v53, v40, v43);
          *(v53 + v50[5]) = v42;
          *(v53 + v50[6]) = v79;
          *(v53 + v50[10]) = v73;
          *(v53 + v50[8]) = v47;
          *(v53 + v50[7]) = v45;
          *(v53 + v50[11]) = v49;
          *(v53 + v50[9]) = v78;
          *(v53 + v50[12]) = 0;
          v54 = v53 + v50[13];
          *v54 = 0x3FF0000000000000;
          *(v54 + 8) = 0;
          outlined destroy of BodyTrackingComponent?(v53 + v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v52(v53 + v51, 1, 1, v43);
          return swift_storeEnumTagMultiPayload();
        }

        else
        {
          __break(1u);
        }

        return result;
      }

LABEL_21:

      outlined init with copy of __RKEntityActionSpecification(v36, v80);
      return outlined destroy of __RKEntityActionSpecification(v27, type metadata accessor for __RKEntityActionSpecification);
    }

    outlined init with take of __RKEntityHideActionArguments(v27, v10, type metadata accessor for __RKEntityAudioActionArguments);
    outlined destroy of __RKEntityActionSpecification(v10, type metadata accessor for __RKEntityAudioActionArguments);
    v34 = v36;
    return outlined init with copy of __RKEntityActionSpecification(v34, v80);
  }

  if (EnumCaseMultiPayload == 16)
  {
    v62 = v27;
    v63 = v72;
    outlined init with take of __RKEntityHideActionArguments(v62, v72, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    v64 = (v63 + *(v11 + 24));
    v65 = *v64;
    v66 = (v63 + *(v11 + 28));
    v67 = *v66;
    LOBYTE(v66) = *(v66 + 4);
    v84 = *(v64 + 4);
    v83 = v66;
    v68 = specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(v65 | (v84 << 32), v67 | (v66 << 32));

    if (v68 >= v79)
    {
      v68 = v79;
      v69 = v80;
    }

    else
    {
      v69 = v80;
      if ((~LODWORD(v68) & 0x7F800000) == 0 && (LODWORD(v68) & 0x7FFFFF) != 0)
      {
        v68 = v79;
      }
    }

    v70 = v73;
    static __RKEntityActionSpecification.copyOrbitActionArguments(_:multiplier:)(v63, v73, v68);
    outlined destroy of __RKEntityActionSpecification(v63, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    outlined init with take of __RKEntityHideActionArguments(v70, v69, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload != 19)
    {
      goto LABEL_21;
    }

    outlined init with take of __RKEntityHideActionArguments(v27, v21, type metadata accessor for __RKEntitySpinActionArguments);
    v55 = &v21[*(v16 + 20)];
    v56 = *v55;
    v57 = &v21[*(v16 + 24)];
    v58 = *v57;
    LOBYTE(v57) = v57[4];
    v82 = v55[4];
    v81 = v57;
    v59 = specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(v56 | (v82 << 32), v58 | (v57 << 32));

    if (v59 >= v79)
    {
      v59 = v79;
      v60 = v80;
      v61 = v78;
    }

    else
    {
      v60 = v80;
      v61 = v78;
      if ((~LODWORD(v59) & 0x7F800000) == 0 && (LODWORD(v59) & 0x7FFFFF) != 0)
      {
        v59 = v79;
      }
    }

    static __RKEntityActionSpecification.copySpinActionArguments(_:multiplier:)(v21, v61, v59);
    outlined destroy of __RKEntityActionSpecification(v21, type metadata accessor for __RKEntitySpinActionArguments);
    outlined init with take of __RKEntityHideActionArguments(v61, v60, type metadata accessor for __RKEntitySpinActionArguments);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t static __RKEntityActionSpecification.copySpinActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v12 = a1 + v11[5];
  v13 = *v12;
  v14 = *(v12 + 4);
  v15 = a1 + v11[6];
  v16 = *v15;
  v17 = *(v15 + 4);
  v18 = v11[7];
  v19 = *(a1 + v18);
  v20 = a1 + v11[8];
  if (*(v20 + 16))
  {
    v21 = 0;
    v22 = 0x3F80000000000000;
  }

  else
  {
    v22 = *v20;
    v21 = *(v20 + 8);
  }

  if (v17)
  {
    v16 = 1.0;
  }

  if (v14)
  {
    v13 = 1.0;
  }

  v23 = v13 * a3;
  v24 = v16 * a3;
  *(a2 + v18) = 2;
  result = (*(v7 + 32))(a2, v10, v6);
  if (v23 < 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v23;
  }

  v27 = a2 + v11[5];
  *v27 = v26;
  *(v27 + 4) = 0;
  if (v24 < 0.0)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v24;
  }

  v29 = a2 + v11[6];
  v30 = a2 + v11[8];
  *v29 = v28;
  *(v29 + 4) = 0;
  *(a2 + v18) = v19 & 1;
  *v30 = v22;
  *(v30 + 8) = v21;
  *(v30 + 16) = 0;
  return result;
}

uint64_t static __RKEntityActionSpecification.copyOrbitActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = v7[2];
  v14(&v40 - v12, a1, v6);
  v15 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v14(v11, a1 + v15[5], v6);
  v16 = a1 + v15[6];
  v17 = *v16;
  v18 = *(v16 + 4);
  v19 = a1 + v15[7];
  v20 = *v19;
  v21 = *(v19 + 4);
  v22 = a1 + v15[8];
  if (*(v22 + 16))
  {
    v41 = 0;
    v23 = 0x3F80000000000000;
  }

  else
  {
    v23 = *v22;
    v41 = *(a1 + v15[8] + 8);
  }

  v40 = v23;
  if (v21)
  {
    v20 = 1.0;
  }

  if (v18)
  {
    v17 = 1.0;
  }

  v24 = v15[10];
  v25 = *(a1 + v15[9]);
  v26 = *(a1 + v24);
  v27 = v17 * a3;
  v28 = v20 * a3;
  *(a2 + v24) = 2;
  v29 = v7[4];
  v29(a2, v13, v6);
  result = (v29)(a2 + v15[5], v11, v6);
  if (v27 < 0.0)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v27;
  }

  v32 = a2 + v15[6];
  v33 = a2 + v15[7];
  v34 = v15[9];
  v35 = a2 + v15[8];
  v36 = v15[11];
  v37 = a2 + v15[12];
  v38 = a2 + v15[13];
  *v32 = v31;
  *(v32 + 4) = 0;
  *v33 = v28;
  *(v33 + 4) = 0;
  v39 = v41;
  *v35 = v40;
  *(v35 + 8) = v39;
  *(v35 + 16) = 0;
  *(a2 + v34) = v25 & 1;
  *(a2 + v24) = v26 & 1;
  *(a2 + v36) = 0;
  *v37 = 0;
  *(v37 + 4) = 0;
  *v38 = 0;
  *(v38 + 4) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError);
  }

  return result;
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  v41 = type metadata accessor for __RKEntityActionSpecification(0);
  v44 = *(v41 - 8);
  v23 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v22, a1, v5);
  (*(v6 + 56))(v22, 0, 1, v5);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of [String : String](v22, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(v6 + 48);
  if (v25(v20, 1, v5) == 1)
  {
    v39 = v9;
    UUID.init(uuidString:)();
    result = v25(v17, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v27 = *(v6 + 32);
    v27(v39, v17, v5);
    if (v25(v20, 1, v5) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v28 = v47;
    v29 = v43;
    v30 = v39;
  }

  else
  {
    v27 = *(v6 + 32);
    v27(v9, v20, v5);
    v28 = v47;
    v29 = v43;
    v30 = v9;
  }

  v27(v12, v30, v5);
  v31 = v42;
  v32 = &v12[*(v42 + 20)];
  v33 = v46;
  *v32 = v45;
  *(v32 + 1) = v33;

  outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *&v12[*(v31 + 24)] = v40;
  outlined init with take of __RKEntityHideActionArguments(v12, v29, type metadata accessor for __RKEntityCustomActionArguments);
  swift_storeEnumTagMultiPayload();
  v34 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
    *v28 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v34);
    *v28 = v34;
  }

  v34[2] = v37 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v29, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(uint64_t a1, void **a2, uint64_t a3, int a4, float a5, float a6, __n128 a7)
{
  v48 = a4;
  v47 = a7;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  v9 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = type metadata accessor for __RKEntityActionSpecification(0);
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v15[2];
  v26(v21, v44, v14);
  v26(v19, v45, v14);
  v27 = v10[12];
  v13[v27] = 2;
  v28 = v15[4];
  v28(v13, v21, v14);
  v28(&v13[v10[7]], v19, v14);
  v29 = 1.0;
  if (a5 >= 0.0)
  {
    v29 = a5;
  }

  v30 = &v13[v10[8]];
  v31 = &v13[v10[9]];
  v32 = v10[11];
  v33 = &v13[v10[10]];
  v34 = v10[13];
  v35 = &v13[v10[14]];
  v36 = &v13[v10[15]];
  *v30 = v29;
  v30[4] = 0;
  *v31 = a6;
  v31[4] = 0;
  *v33 = v47;
  v33[1].n128_u8[0] = 0;
  v13[v32] = v48;
  v13[v27] = 0;
  v37 = v46;
  v13[v34] = 0;
  *v35 = 0;
  v35[4] = 0;
  *v36 = 0;
  v36[4] = 0;
  outlined init with take of __RKEntityHideActionArguments(v13, v25, type metadata accessor for __RKEntityOrbitEntityActionArguments);
  swift_storeEnumTagMultiPayload();
  v38 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    *v37 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v38);
    *v37 = v38;
  }

  v38[2] = v41 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v25, v38 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t __RKEntityMoveEase.init(decodeContext:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6570795465736165, 0xE800000000000000, 1, *a1);
  if (v2)
  {

    v7 = *(a1 + 16);

    v23 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v23, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v22 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v22, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v21 = *(a1 + 40);
    v8 = &v21;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  if (!v6._object || (v9 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v6), v9 == 4))
  {
    lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError();
    swift_allocError();
    swift_willThrow();

    v10 = *(a1 + 16);

    v20 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v20, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v19 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v19, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v18 = *(a1 + 40);
    v8 = &v18;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v12 = v9;

  v13 = *(a1 + 16);

  v17 = *(a1 + 24);
  outlined destroy of BodyTrackingComponent?(&v17, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v16 = *(a1 + 32);
  outlined destroy of BodyTrackingComponent?(&v16, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  v15 = *(a1 + 40);
  result = outlined destroy of BodyTrackingComponent?(&v15, &_sSDyS2SGMd, &_sSDyS2SGMR);
  if ((v12 - 1) >= 3u)
  {
    v14 = 0;
  }

  else
  {
    v14 = 6;
  }

  *a2 = v14;
  return result;
}

uint64_t __RKEntityMoveEaseType.init(decodeContext:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6570795465736165, 0xE800000000000000, 1, *a1);
  if (v2)
  {

    v7 = *(a1 + 16);

    v21 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v21, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v20 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v20, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v19 = *(a1 + 40);
    v8 = &v19;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  if (!v6._object || (v9 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v6), v9 == 4))
  {
    lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError();
    swift_allocError();
    swift_willThrow();

    v10 = *(a1 + 16);

    v18 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v18, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v17 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v17, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v16 = *(a1 + 40);
    v8 = &v16;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v12 = *(a1 + 16);

  v15 = *(a1 + 24);
  outlined destroy of BodyTrackingComponent?(&v15, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v14 = *(a1 + 32);
  outlined destroy of BodyTrackingComponent?(&v14, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  v13 = *(a1 + 40);
  result = outlined destroy of BodyTrackingComponent?(&v13, &_sSDyS2SGMd, &_sSDyS2SGMR);
  *a2 = 0x2010000u >> (8 * v9);
  return result;
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(uint64_t a1, void **a2, int a3, uint64_t a4)
{
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for __RKEntityActionSpecification(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(v14, a1, v15);
  v17(v10, a4, v15);
  v18 = *(v16 + 56);
  v18(v10, 0, 1, v15);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v20 = started[14];
  v18(&v14[v20], 1, 1, v15);
  *&v14[started[5]] = 1;
  v14[started[6]] = v28;
  v14[started[10]] = 0;
  *&v14[started[8]] = 0;
  *&v14[started[7]] = 0;
  *&v14[started[11]] = 1065353216;
  v14[started[9]] = 0;
  v14[started[12]] = 0;
  v21 = &v14[started[13]];
  *v21 = 0x3FF0000000000000;
  v21[8] = 0;
  outlined assign with take of UUID?(v10, &v14[v20]);
  swift_storeEnumTagMultiPayload();
  v22 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
    *a2 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v22);
    *a2 = v22;
  }

  v22[2] = v25 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v14, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(decodeContext:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x79546E6F69746F6DLL, 0xEA00000000006570, 1, *a1);
  if (v2)
  {

    v7 = *(a1 + 16);

    v25 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v25, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v24 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v24, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v23 = *(a1 + 40);
    result = outlined destroy of BodyTrackingComponent?(&v23, &_sSDyS2SGMd, &_sSDyS2SGMR);
    *a2 = 0;
  }

  else if (v6._object)
  {
    v9 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v6);
    if (v9 == 10)
    {
      lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError();
      swift_allocError();
      swift_willThrow();

      v10 = *(a1 + 16);

      v19 = *(a1 + 24);
      outlined destroy of BodyTrackingComponent?(&v19, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v18 = *(a1 + 32);
      outlined destroy of BodyTrackingComponent?(&v18, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v17 = *(a1 + 40);
      return outlined destroy of BodyTrackingComponent?(&v17, &_sSDyS2SGMd, &_sSDyS2SGMR);
    }

    else
    {
      v12 = v9;

      v13 = *(a1 + 16);

      v16 = *(a1 + 24);
      outlined destroy of BodyTrackingComponent?(&v16, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v15 = *(a1 + 32);
      outlined destroy of BodyTrackingComponent?(&v15, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v14 = *(a1 + 40);
      result = outlined destroy of BodyTrackingComponent?(&v14, &_sSDyS2SGMd, &_sSDyS2SGMR);
      *a2 = byte_1C189A612[v12];
    }
  }

  else
  {

    v11 = *(a1 + 16);

    v22 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v22, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v21 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v21, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v20 = *(a1 + 40);
    result = outlined destroy of BodyTrackingComponent?(&v20, &_sSDyS2SGMd, &_sSDyS2SGMR);
    *a2 = 0;
  }

  return result;
}

uint64_t specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(uint64_t a1)
{
  v2 = a1;
  if (*(a1 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v3 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C1887600;
    v6 = v2 + v5;
    *v6 = 0;
    *(v6 + 8) = a1;
    *(v6 + 16) = 0;
    *(v6 + 24) = 1;
    *(v6 + 32) = 0;
    swift_storeEnumTagMultiPayload();
  }

  return v2;
}

uint64_t specialized static __RKEntityActionSpecification.generateAudioActionSpecifications(decodeContext:)(void **a1)
{
  v192 = type metadata accessor for __RKEntityActionSpecification(0);
  v189 = *(v192 - 8);
  v2 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v162 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v162 - v12;
  v14 = type metadata accessor for UUID();
  v191 = *(v14 - 8);
  v15 = *(v191 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v162 - v19;
  v21 = *a1;
  v22 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, *a1);
  v25 = v23;
  v185 = a1;
  v26 = v191;
  v186 = v20;
  v182 = v18;
  v187 = v14;
  v188 = v13;
  v183 = v11;
  v184 = v8;
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27._countAndFlagsBits = v22;
  v27._object = v25;
  v28 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityAudioActionType.init(rawValue:), v27);

  if (v28 >= 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1852399975, 0xE400000000000000, 1, v21);
  v30 = v29;
  v31 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x646F4D6C61727561, 0xE900000000000065, 1, v21);
  if (!v32)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v33 = v32;
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  v35 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKAudioSpatialModeSelectionUSD.init(rawValue:), v34);

  if (v35 >= 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v171 = 0;
  v37 = v185[1];
  v36 = v185[2];
  v38 = v185[3];
  v201 = v185[4];
  v202 = v38;
  v200 = v185[5];
  v39 = v21;
  v40 = v37;
  v41 = v39;
  v42 = v40;
  v168 = v36;

  outlined init with copy of [String : String](&v202, v193, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v201, v193, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v200, v193, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v43 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v44 = [v39 property_];

  if (!v44)
  {
    v150 = v42;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_1C1897FD0;
    v152 = MEMORY[0x1E69E6158];
    *(v151 + 56) = MEMORY[0x1E69E6158];
    v153 = lazy protocol witness table accessor for type String and conformance String();
    *(v151 + 32) = 0xD000000000000012;
    *(v151 + 40) = 0x80000001C18DE9B0;
    *(v151 + 96) = v152;
    *(v151 + 104) = v153;
    *(v151 + 64) = v153;
    *(v151 + 72) = 0x6465746365666661;
    *(v151 + 80) = 0xEF737463656A624FLL;
    v154 = [v41 path];
    v155 = [v154 stringValue];

    if (v155)
    {
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158 = v157;

      v159 = (v151 + 112);
      *(v151 + 136) = v152;
      *(v151 + 144) = v153;
      if (v158)
      {
        *v159 = v156;
LABEL_69:
        *(v151 + 120) = v158;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v160 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_72;
      }
    }

    else
    {
      v159 = (v151 + 112);
      *(v151 + 136) = v152;
      *(v151 + 144) = v153;
    }

    *v159 = 7104878;
    v158 = 0xE300000000000000;
    goto LABEL_69;
  }

  v164 = v28;
  v45 = v44;
  v46 = [v45 objectPathArray];
  v177 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v47;
  if (v47 >> 62)
  {
    result = __CocoaSet.count.getter();
    v48 = v47;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

  result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_71:

LABEL_72:
    v149 = MEMORY[0x1E69E7CC0];
LABEL_73:

    outlined destroy of BodyTrackingComponent?(&v202, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v201, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v200, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v161 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v149);

    return v161;
  }

LABEL_10:
  v175 = v41;
  if (result >= 1)
  {
    v49 = 0;
    v163 = 0x10200u >> (8 * v35);
    v170 = v202;
    v166 = v200;
    v185 = (v48 & 0xC000000000000001);
    v173 = (v26 + 56);
    v169 = (v26 + 32);
    v172 = (v26 + 48);
    v162 = (v26 + 16);
    v167 = (v26 + 8);
    v176 = 0x80000001C18DE9B0;
    v165 = MEMORY[0x1E69E7CC0];
    v178 = xmmword_1C1897FC0;
    v181 = v48;
    v179 = result;
    v180 = v42;
    while (1)
    {
      v191 = v49;
      if (v185)
      {
        v54 = MEMORY[0x1C68F41F0](v49);
      }

      else
      {
        v54 = *(v48 + 8 * v49 + 32);
      }

      v55 = v54;
      v56 = [v42 objectAtPath_];
      if (!v56)
      {
        goto LABEL_13;
      }

      v57 = v56;
      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();

      if (!v58)
      {
        goto LABEL_13;
      }

      v59 = [v55 stringValue];
      if (v59)
      {
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v198 = v61;
        v199 = v63;
        v174 = v63;
        v196 = 91;
        v197 = 0xE100000000000000;
        v194 = 0;
        v195 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v198 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v199 = v64;
        v196 = 93;
        v197 = 0xE100000000000000;
        v194 = 0;
        v195 = 0xE000000000000000;
        v65 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v67 = v66;

        v68 = v170;
        if (*(v170 + 16))
        {
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v67);
          v71 = v70;

          if (v71)
          {
            v72 = (*(v68 + 56) + 16 * v69);
            v73 = *v72;
            v74 = v72[1];

            v75 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v73, v74, v168, v68);

            if (v75)
            {
              v76 = *(v75 + 16);
              swift_beginAccess();
              v77 = v184;
              if (static __RKEntityUUIDComponent.registration && (v78 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v80 = *(Object + 1);
                v81 = Object[7];
                v82 = Object[6];
                v83 = Object[5];
                v84 = Object[4];
                v85 = Object[3];
                v86 = Object[2];
                v87 = Object[1];
                v88 = *Object;
                v89 = v183;
                UUID.init(uuid:)();
                v90 = *v173;
                (*v173)(v89, 0, 1, v187);
                result = outlined destroy of BodyTrackingComponent?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v90 = *v173;
                v133 = v183;
                v134 = v187;
                (*v173)(v183, 1, 1, v187);
                outlined destroy of BodyTrackingComponent?(v133, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                UUID.init()();
                v90(v77, 0, 1, v134);
                result = Entity.__interactionIdentifier.setter(v77);
              }

              v135 = v182;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_75;
              }

              v136 = *(v75 + 16);
              v137 = *(static __RKEntityUUIDComponent.registration + 4);
              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_75;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_75;
              }

              v138 = *(result + 8);
              v139 = *(result + 7);
              v140 = *(result + 6);
              v141 = *(result + 5);
              v142 = *(result + 4);
              v143 = *(result + 3);
              v144 = *(result + 2);
              v145 = *(result + 1);
              v146 = *result;
              UUID.init(uuid:)();

              v91 = v187;
              v147 = v188;
              (*v169)(v188, v135, v187);
              v90(v147, 0, 1, v91);
              goto LABEL_31;
            }
          }
        }

        else
        {
        }
      }

      v91 = v187;
      (*v173)(v188, 1, 1, v187);
LABEL_31:

      if ((*v172)(v188, 1, v91) != 1)
      {
        (*v169)(v186, v188, v91);
        v92 = [v175 path];
        v93 = [v92 stringValue];

        if (v93)
        {
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          if (*(v166 + 16))
          {
            v97 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v96);
            v99 = v98;

            if (v99)
            {
              v100 = (*(v166 + 56) + 16 * v97);
              v102 = *v100;
              v101 = v100[1];
              v103 = v190;
              (*v162)(v190, v186, v91);
              v104 = type metadata accessor for __RKEntityAudioActionArguments(0);
              v105 = v104[6];
              v103[v105] = 3;
              v106 = v104[8];
              v107 = &v103[v104[7]];
              v108 = v104[9];
              v103[v108] = 3;
              v109 = &v103[v104[5]];
              *v109 = v102;
              *(v109 + 1) = v101;
              v103[v105] = v164;
              v103[v108] = v163;
              *v107 = v30;
              v107[8] = 0;
              v103[v106] = 0;
              v103[v104[10]] = 1;
              swift_storeEnumTagMultiPayload();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165[2] + 1, 1, v165);
              }

              v111 = v189;
              v110 = v190;
              v113 = v165[2];
              v112 = v165[3];
              if (v113 >= v112 >> 1)
              {
                v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1, v165);
                v111 = v189;
                v165 = v148;
                v110 = v190;
              }

              v114 = v165;
              v165[2] = v113 + 1;
              outlined init with take of __RKEntityHideActionArguments(v110, v114 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v113, type metadata accessor for __RKEntityActionSpecification);
              goto LABEL_53;
            }
          }

          else
          {
          }
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v115 = swift_allocObject();
        *(v115 + 16) = v178;
        v116 = [v175 path];
        v117 = [v116 stringValue];

        if (v117)
        {
          v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v120 = v119;
        }

        else
        {
          v118 = 0;
          v120 = 0;
        }

        *(v115 + 56) = MEMORY[0x1E69E6158];
        v121 = lazy protocol witness table accessor for type String and conformance String();
        *(v115 + 64) = v121;
        v122 = 0x296C6C756E28;
        if (v120)
        {
          v122 = v118;
        }

        v123 = 0xE600000000000000;
        if (v120)
        {
          v123 = v120;
        }

        *(v115 + 32) = v122;
        *(v115 + 40) = v123;
        v124 = v171;
        v125 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F69647561, 0xE500000000000000, 1, v175);
        if (v124)
        {

          v171 = 0;
          goto LABEL_50;
        }

        v171 = 0;
        if (v125)
        {
          v129 = v125;
          v130 = [v125 path];

          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v132;

          v126 = (v115 + 72);
          *(v115 + 96) = MEMORY[0x1E69E6158];
          *(v115 + 104) = v121;
          if (v127)
          {
            *v126 = v131;
            v91 = v187;
            goto LABEL_52;
          }

          v91 = v187;
        }

        else
        {
LABEL_50:
          v126 = (v115 + 72);
          *(v115 + 96) = MEMORY[0x1E69E6158];
          *(v115 + 104) = v121;
        }

        *v126 = 0x296C6C756E28;
        v127 = 0xE600000000000000;
LABEL_52:
        *(v115 + 80) = v127;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v128 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v55 = v128;
LABEL_53:

        (*v167)(v186, v91);
        goto LABEL_14;
      }

      outlined destroy of BodyTrackingComponent?(v188, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v50 = swift_allocObject();
      *(v50 + 16) = v178;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v51 = v176;
      *(v50 + 32) = 0xD000000000000012;
      *(v50 + 40) = v51;
      *(v50 + 96) = v177;
      *(v50 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v50 + 72) = v55;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v52 = v55;
      v53 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

LABEL_14:
      v48 = v181;
      v42 = v180;
      v49 = v191 + 1;
      if (v179 == v191 + 1)
      {

        v149 = v165;
        goto LABEL_73;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateChangeSceneActionSpecifications(decodeContext:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - v15;
  v17 = *a1;
  v18 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x656E656373, 0xE500000000000000, 1, *a1);
  if (v18)
  {
    v60 = v10;
    v19 = [*(a1 + 8) objectAtPath_];
    v20 = &property descriptor for UnlitMaterial.readsDepth;
    if (!v19 || (v21 = v19, objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v20 = &property descriptor for UnlitMaterial.readsDepth, !v22))
    {
LABEL_9:
      v30 = [v18 v20[419]];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0x6E776F6E6B6E753CLL;
        v34 = 0xE90000000000003ELL;
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1C1887600;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v36 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return MEMORY[0x1E69E7CC0];
    }

    v59 = v18;
    v23 = [v18 stringValue];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    USDDecodableContext.identifierForScene(uskNodePath:)(v25, v27, v8);

    v28 = v60;
    v29 = *(v60 + 48);
    if (v29(v8, 1, v9) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v18 = v59;
      v20 = &property descriptor for UnlitMaterial.readsDepth;
      goto LABEL_9;
    }

    v38 = v8;
    v39 = *(v28 + 32);
    v39(v16, v38, v9);
    v40 = *(a1 + 16);
    Scene.__sceneIdentifier.getter(v6);
    if (v29(v6, 1, v9) != 1)
    {
      v39(v14, v6, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v46 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1C1887600;
      v50 = v49 + v48;
      v51 = v60;
      v52 = *(v60 + 16);
      v52(v50, v14, v9);
      v53 = type metadata accessor for __RKChangeSceneActionArguments(0);
      v52(v50 + *(v53 + 20), v16, v9);
      swift_storeEnumTagMultiPayload();

      v54 = *(v51 + 8);
      v54(v14, v9);
      v54(v16, v9);
      return v49;
    }

    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v41 = [v17 path];
    v42 = [v41 stringValue];

    if (v42)
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v43 = 0x6E776F6E6B6E753CLL;
      v45 = 0xE90000000000003ELL;
    }

    v55 = v59;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1C1887600;
    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v56 + 32) = v43;
    *(v56 + 40) = v45;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v57 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    (*(v60 + 8))(v16, v9);
  }

  return MEMORY[0x1E69E7CC0];
}

float specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1;
  v3 = 1.0;
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 1.0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    v3 = *&a2;
  }

  if (v2 <= v3)
  {
    if ((LODWORD(v3) & 0x7FFFFF) == 0)
    {
      v2 = v3;
    }

    if ((~LODWORD(v3) & 0x7F800000) != 0)
    {
      v2 = v3;
    }
  }

  return roundf(3.4028e38 / v2);
}

uint64_t specialized implicit closure #4 in variable initialization expression of static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x797469636F6C6576, 0xE800000000000000, 1, a1);
  *&v8.f64[0] = vcvt_f32_f64(v8);
  *&v9 = v9;
  *&v8.f64[1] = LODWORD(v9);
  v12 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, a1, a2, a3, a4, &v12, v8);
  v10 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v12);

  return v10;
}

void specialized static __RKEntityActionSpecification.generateLookAtCameraActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v151 = a4;
  v149 = a3;
  v153 = a2;
  v5 = type metadata accessor for __RKEntityActionSpecification(0);
  v150 = *(v5 - 8);
  v6 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v125 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v125 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v125 - v25;
  v152 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v145 = v20;
  v146 = v26;
  v139 = v24;
  v142 = v8;
  v147 = v18;
  v140 = v16;
  v141 = v13;
  v148 = v5;
  v28 = v27;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x746E6F7266, 0xE500000000000000, 1, v152);
  v144 = v29;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x726F746365567075, 0xE800000000000000, 1, v152);
  v143 = v30;
  v31 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v32 = [v152 property_];

  if (!v32)
  {
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1C1897FD0;
    v116 = MEMORY[0x1E69E6158];
    *(v115 + 56) = MEMORY[0x1E69E6158];
    v117 = lazy protocol witness table accessor for type String and conformance String();
    *(v115 + 32) = 0xD000000000000012;
    *(v115 + 40) = 0x80000001C18DE9B0;
    *(v115 + 96) = v116;
    *(v115 + 104) = v117;
    *(v115 + 64) = v117;
    *(v115 + 72) = 0x6465746365666661;
    *(v115 + 80) = 0xEF737463656A624FLL;
    v118 = [v152 path];
    v119 = [v118 stringValue];

    if (v119)
    {
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = (v115 + 112);
      *(v115 + 136) = v116;
      *(v115 + 144) = v117;
      if (v122)
      {
        *v123 = v120;
LABEL_44:
        *(v115 + 120) = v122;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v124 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_45:
        v114 = MEMORY[0x1E69E7CC0];
LABEL_46:
        specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v114);

        return;
      }
    }

    else
    {
      v123 = (v115 + 112);
      *(v115 + 136) = v116;
      *(v115 + 144) = v117;
    }

    *v123 = 7104878;
    v122 = 0xE300000000000000;
    goto LABEL_44;
  }

  v33 = v32;
  v34 = [v33 objectPathArray];
  v35 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v36 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v19;
  v39 = v153;
  v40 = v142;
  if (!v37)
  {

    goto LABEL_45;
  }

  if (v37 >= 1)
  {
    v41 = 0;
    v152 = (v36 & 0xC000000000000001);
    v137 = (v145 + 56);
    v132 = (v145 + 32);
    v133 = (v145 + 48);
    v131 = (v145 + 16);
    v129 = *(&v144 + 1);
    v130 = v144;
    v127 = *(&v143 + 1);
    v128 = v143;
    v126 = (v145 + 8);
    v145 = 0x80000001C18DE9B0;
    *&v143 = MEMORY[0x1E69E7CC0];
    v144 = xmmword_1C1897FC0;
    v135 = v37;
    v136 = v36;
    v134 = v35;
    while (1)
    {
      if (v152)
      {
        v45 = MEMORY[0x1C68F41F0](v41, v36);
      }

      else
      {
        v45 = *(v36 + 8 * v41 + 32);
      }

      v46 = v45;
      v47 = [v39 objectAtPath_];
      if (!v47)
      {
        goto LABEL_8;
      }

      v48 = v47;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();

      if (!v49)
      {
        goto LABEL_8;
      }

      v50 = [v46 stringValue];
      if (v50)
      {
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v158 = v52;
        v159 = v54;
        v138 = v54;
        v156 = 91;
        v157 = 0xE100000000000000;
        v154 = 0;
        v155 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v158 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v159 = v55;
        v156 = 93;
        v157 = 0xE100000000000000;
        v154 = 0;
        v155 = 0xE000000000000000;
        v56 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v58 = v57;

        v59 = v151;
        v60 = v143;
        if (*(v151 + 16))
        {
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v58);
          v63 = v62;

          if (v63)
          {
            v64 = (*(v59 + 56) + 16 * v61);
            v65 = *v64;
            v66 = v64[1];

            v67 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v65, v66, v149, v59);

            if (v67)
            {
              v68 = *(v67 + 16);
              swift_beginAccess();
              v69 = v141;
              if (static __RKEntityUUIDComponent.registration && (v70 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v72 = *(Object + 1);
                v73 = Object[7];
                v74 = Object[6];
                v75 = Object[5];
                v76 = Object[4];
                v77 = Object[3];
                v78 = Object[2];
                v79 = Object[1];
                v80 = *Object;
                v81 = v140;
                UUID.init(uuid:)();
                v125 = *v137;
                v125(v81, 0, 1, v38);
                outlined destroy of BodyTrackingComponent?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v98 = *v137;
                v99 = v140;
                (*v137)(v140, 1, 1, v38);
                outlined destroy of BodyTrackingComponent?(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                UUID.init()();
                v125 = v98;
                v98(v69, 0, 1, v38);
                v60 = v143;
                Entity.__interactionIdentifier.setter(v69);
              }

              v100 = v139;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_49;
              }

              v101 = *(v67 + 16);
              v102 = *(static __RKEntityUUIDComponent.registration + 4);
              if (!REEntityGetCustomComponent())
              {
                goto LABEL_49;
              }

              v103 = RECustomComponentGetObject();
              if (!v103)
              {
                goto LABEL_49;
              }

              v104 = *(v103 + 1);
              v105 = v103[7];
              v106 = v103[6];
              v107 = v103[5];
              v108 = v103[4];
              v109 = v103[3];
              v110 = v103[2];
              v111 = v103[1];
              v112 = *v103;
              UUID.init(uuid:)();

              v82 = v147;
              (*v132)(v147, v100, v38);
              v125(v82, 0, 1, v38);
              goto LABEL_26;
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v60 = v143;
      }

      v82 = v147;
      (*v137)(v147, 1, 1, v38);
LABEL_26:

      if ((*v133)(v82, 1, v38) != 1)
      {
        v83 = v146;
        (*v132)(v146, v82, v38);
        (*v131)(v40, v83, v38);
        v84 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
        v85 = v40 + v84[5];
        v86 = v40 + v84[6];
        v87 = v40 + v84[7];
        v88 = v40 + v84[8];
        v89 = v84[10];
        v90 = v40 + v84[9];
        *v85 = v28;
        *(v85 + 4) = 0;
        *v86 = 0;
        *(v86 + 4) = 0;
        v91 = v129;
        *v87 = v130;
        *(v87 + 8) = v91;
        *(v87 + 16) = 0;
        *v88 = 0;
        *(v88 + 4) = 0;
        v92 = v127;
        *v90 = v128;
        *(v90 + 8) = v92;
        *(v90 + 16) = 0;
        *(v40 + v89) = 0;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        }

        v94 = v60[2];
        v93 = v60[3];
        v95 = v150;
        v96 = v146;
        if (v94 >= v93 >> 1)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93 > 1, v94 + 1, 1, v60);
          v95 = v150;
          v60 = v113;
        }

        v60[2] = v94 + 1;
        v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        *&v143 = v60;
        outlined init with take of __RKEntityHideActionArguments(v40, v60 + v97 + *(v95 + 72) * v94, type metadata accessor for __RKEntityActionSpecification);

        (*v126)(v96, v38);
        v35 = v134;
        v36 = v136;
        v39 = v153;
        v37 = v135;
        goto LABEL_9;
      }

      outlined destroy of BodyTrackingComponent?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v35 = v134;
      v36 = v136;
      v37 = v135;
LABEL_8:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = v144;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v42 + 32) = 0xD000000000000012;
      *(v42 + 40) = v145;
      *(v42 + 96) = v35;
      *(v42 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v42 + 72) = v46;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v43 = v46;
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v39 = v153;

LABEL_9:
      if (v37 == ++v41)
      {

        v114 = v143;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t specialized static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v64 = a4;
  v65 = a2;
  v66 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x696669746E656469, 0xEA00000000007265, 1, a1);
  v63 = v13;
  v27 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v28 = v21;
    v60 = v6;
    v61 = v25;
    v58 = v10;
    v62 = v24;
    v29 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
    v30 = a1;
    v31 = [a1 property_];

    v59 = v9;
    v32 = v5;
    v33 = v23;
    v34 = v18;
    v35 = v28;
    v37 = v65;
    v36 = v66;
    if (v31)
    {
      v38 = [v31 objectPathArray];

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = v39 >> 62 ? __CocoaSet.count.getter() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v40 >= 1)
      {
        v67 = v27;
        v41 = v61;

        specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, v30, v37, v36, v64, &v67, v62, v41);
        swift_bridgeObjectRelease_n();
        v42 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v67);

        return v42;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v43 = type metadata accessor for __RKEntityActionSpecification(0);
    v44 = *(*(v43 - 8) + 72);
    v66 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C1887600;
    v45 = v60;
    (*(v60 + 56))(v33, 1, 1, v32);
    v65 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    outlined init with copy of [String : String](v33, v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v46 = *(v45 + 48);
    if (v46(v35, 1, v32) == 1)
    {
      v64 = v43;
      UUID.init(uuidString:)();
      result = v46(v34, 1, v32);
      v47 = v59;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v48 = *(v45 + 32);
      v48(v59, v34, v32);
      if (v46(v35, 1, v32) != 1)
      {
        outlined destroy of BodyTrackingComponent?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      v49 = v58;
      v50 = v63;
      v48(v63, v47, v32);
    }

    else
    {
      v51 = *(v45 + 32);
      v52 = v59;
      v51(v59, v35, v32);
      v49 = v58;
      v50 = v63;
      v51(v63, v52, v32);
    }

    v53 = (v50 + *(v49 + 20));
    v54 = v61;
    *v53 = v62;
    v53[1] = v54;
    outlined destroy of BodyTrackingComponent?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = *(v49 + 24);
    v56 = v66;
    *(v50 + v55) = v65;
    outlined init with take of __RKEntityHideActionArguments(v50, v27 + v56, type metadata accessor for __RKEntityCustomActionArguments);
    swift_storeEnumTagMultiPayload();
  }

  return v27;
}

uint64_t specialized static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7265746E6563, 0xE600000000000000, 1, *a1);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v11);
    v16 = v15;
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6974756C6F766572, 0xEB00000000736E6FLL, 1, v11);
    v18 = v17;
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1936291937, 0xE400000000000000, 1, v11);
    v35 = v19;
    v34 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x506F546E67696C61, 0xEB00000000687461, 1, v11);
    v20 = [a1[1] objectAtPath_];
    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();

    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = [v12 stringValue];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    USDDecodableContext.identifierForPath(uskNodePath:)(v25, v27, v5);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C1887600;
      *(v28 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      *(v28 + 64) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v28 + 32) = v12;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v29 = v12;
      v30 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return MEMORY[0x1E69E7CC0];
    }

    v31 = (*(v7 + 32))(v10, v5, v6);
    v36 = v14;
    MEMORY[0x1EEE9AC00](v31);
    *&v33[-64] = &v36;
    *&v33[-56] = v10;
    *&v33[-48] = v16;
    *&v33[-44] = v18;
    *&v33[-32] = v35;
    v33[-16] = v34 & 1;
    USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, partial apply for closure #1 in static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:), &v33[-80]);
    v32 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v36);

    (*(v7 + 8))(v10, v6);
    return v32;
  }

  return result;
}

void specialized static __RKEntityActionSpecification.generateSpinActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v157 = a4;
  v152 = a3;
  v159 = a2;
  v155 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v5 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for __RKEntityActionSpecification(0);
  v156 = *(v153 - 8);
  v7 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v130 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v130 - v29;
  v158 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v148 = v30;
  v145 = v28;
  v143 = v25;
  v151 = v20;
  v150 = v19;
  v144 = v17;
  v142 = v14;
  v149 = v9;
  v32 = v31;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6974756C6F766572, 0xEB00000000736E6FLL, 1, v158);
  v34 = v33;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1936291937, 0xE400000000000000, 1, v158);
  v147 = v35;
  v36 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v37 = [v158 property_];

  if (!v37)
  {
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1C1897FD0;
    v121 = MEMORY[0x1E69E6158];
    *(v120 + 56) = MEMORY[0x1E69E6158];
    v122 = lazy protocol witness table accessor for type String and conformance String();
    *(v120 + 32) = 0xD000000000000012;
    *(v120 + 40) = 0x80000001C18DE9B0;
    *(v120 + 96) = v121;
    *(v120 + 104) = v122;
    *(v120 + 64) = v122;
    *(v120 + 72) = 0x6465746365666661;
    *(v120 + 80) = 0xEF737463656A624FLL;
    v123 = [v158 path];
    v124 = [v123 stringValue];

    if (v124)
    {
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;

      v128 = (v120 + 112);
      *(v120 + 136) = v121;
      *(v120 + 144) = v122;
      if (v127)
      {
        *v128 = v125;
LABEL_48:
        *(v120 + 120) = v127;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v129 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_49:
        v45 = MEMORY[0x1E69E7CC0];
LABEL_50:
        specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v45);

        return;
      }
    }

    else
    {
      v128 = (v120 + 112);
      *(v120 + 136) = v121;
      *(v120 + 144) = v122;
    }

    *v128 = 7104878;
    v127 = 0xE300000000000000;
    goto LABEL_48;
  }

  v38 = v37;
  v39 = [v38 objectPathArray];
  v40 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v159;
  if (!v42)
  {

    goto LABEL_49;
  }

  if (v42 >= 1)
  {
    v44 = 0;
    v158 = (v41 & 0xC000000000000001);
    v140 = (v21 + 56);
    v136 = (v21 + 32);
    v139 = (v21 + 48);
    v135 = (v21 + 16);
    if (v32 < 0.0)
    {
      v32 = 1.0;
    }

    v133 = *(&v147 + 1);
    v134 = v147;
    v132 = (v21 + 8);
    if (v34 < 0.0)
    {
      v34 = 1.0;
    }

    *&v147 = 0x80000001C18DE9B0;
    v45 = MEMORY[0x1E69E7CC0];
    v146 = xmmword_1C1897FC0;
    v138 = v42;
    v137 = v41;
    while (1)
    {
      if (v158)
      {
        v50 = MEMORY[0x1C68F41F0](v44, v41);
      }

      else
      {
        v50 = *(v41 + 8 * v44 + 32);
      }

      v51 = v50;
      v52 = [v43 objectAtPath_];
      if (!v52)
      {
        goto LABEL_12;
      }

      v53 = v52;
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();

      if (!v54)
      {
        goto LABEL_12;
      }

      v55 = v40;
      v56 = [v51 stringValue];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v164 = v58;
        v165 = v60;
        v141 = v60;
        v162 = 91;
        v163 = 0xE100000000000000;
        v160 = 0;
        v161 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v164 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v165 = v61;
        v162 = 93;
        v163 = 0xE100000000000000;
        v160 = 0;
        v161 = 0xE000000000000000;
        v62 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v64 = v63;

        v65 = v157;
        if (*(v157 + 16))
        {
          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v64);
          v68 = v67;

          if (v68)
          {
            v69 = (*(v65 + 56) + 16 * v66);
            v71 = *v69;
            v70 = v69[1];

            v72 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v71, v70, v152, v65);

            if (v72)
            {
              v131 = v45;
              v73 = *(v72 + 16);
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && (v74 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v76 = *(Object + 1);
                v77 = Object[7];
                v78 = Object[6];
                v79 = Object[5];
                v80 = Object[4];
                v81 = Object[3];
                v82 = Object[2];
                v83 = Object[1];
                v84 = *Object;
                v85 = v144;
                UUID.init(uuid:)();
                v86 = *v140;
                v87 = v151;
                (*v140)(v85, 0, 1, v151);
                outlined destroy of BodyTrackingComponent?(v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v86 = *v140;
                v104 = v144;
                v87 = v151;
                (*v140)(v144, 1, 1, v151);
                outlined destroy of BodyTrackingComponent?(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v105 = v142;
                UUID.init()();
                v86(v105, 0, 1, v87);
                Entity.__interactionIdentifier.setter(v105);
              }

              v88 = v150;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_53;
              }

              v106 = *(v72 + 16);
              v107 = *(static __RKEntityUUIDComponent.registration + 4);
              if (!REEntityGetCustomComponent())
              {
                goto LABEL_53;
              }

              v108 = RECustomComponentGetObject();
              if (!v108)
              {
                goto LABEL_53;
              }

              v109 = *(v108 + 1);
              v110 = v108[7];
              v111 = v108[6];
              v112 = v108[5];
              v113 = v108[4];
              v114 = v108[3];
              v115 = v108[2];
              v116 = v108[1];
              v117 = *v108;
              v118 = v143;
              UUID.init(uuid:)();

              (*v136)(v88, v118, v87);
              v86(v88, 0, 1, v87);
              v45 = v131;
              goto LABEL_30;
            }
          }
        }

        else
        {
        }
      }

      v88 = v150;
      v87 = v151;
      (*v140)(v150, 1, 1, v151);
LABEL_30:

      if ((*v139)(v88, 1, v87) != 1)
      {
        v89 = *v136;
        v90 = v148;
        (*v136)(v148, v88, v87);
        v91 = v145;
        (*v135)(v145, v90, v87);
        v92 = v155;
        v93 = *(v155 + 28);
        v94 = v87;
        v95 = v154;
        v154[v93] = 2;
        v89(v95, v91, v94);
        v96 = v95 + v92[5];
        *v96 = v32;
        *(v96 + 4) = 0;
        v97 = v95 + v92[6];
        v98 = v95 + v92[8];
        *v97 = v34;
        *(v97 + 4) = 0;
        *(v95 + v93) = 0;
        v99 = v133;
        *v98 = v134;
        *(v98 + 8) = v99;
        *(v98 + 16) = 0;
        outlined init with take of __RKEntityHideActionArguments(v95, v149, type metadata accessor for __RKEntitySpinActionArguments);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
        }

        v101 = v45[2];
        v100 = v45[3];
        v43 = v159;
        v102 = v156;
        v103 = v148;
        if (v101 >= v100 >> 1)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1, v45);
          v102 = v156;
          v45 = v119;
        }

        v45[2] = v101 + 1;
        outlined init with take of __RKEntityHideActionArguments(v149, v45 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101, type metadata accessor for __RKEntityActionSpecification);

        (*v132)(v103, v151);
        v40 = v55;
        v41 = v137;
        v42 = v138;
        goto LABEL_13;
      }

      outlined destroy of BodyTrackingComponent?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v40 = v55;
      v41 = v137;
      v42 = v138;
LABEL_12:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = v146;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v47 = v147;
      *(v46 + 32) = 0xD000000000000012;
      *(v46 + 40) = v47;
      *(v46 + 96) = v40;
      *(v46 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v46 + 72) = v51;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v48 = v51;
      v49 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v43 = v159;
LABEL_13:
      if (v42 == ++v44)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t specialized static __RKEntityActionSpecification.generateStartAnimationActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v166 = a3;
  v167 = a4;
  v170 = a2;
  v5 = type metadata accessor for __RKEntityActionSpecification(0);
  v168 = *(v5 - 8);
  v169 = v5;
  v6 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v140 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v140 - v25;
  v27 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7472617473, 0xE500000000000000, 1, a1);
  v165 = v26;
  v162 = v24;
  v164 = v19;
  v163 = v18;
  v161 = v13;
  v28 = v168;
  v29 = v170;
  v31 = v30;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v33 = v32;
  v34 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6465737265766572, 0xE800000000000000, 1, a1);
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F6974616D696E61, 0xEE0064656570536ELL, 1, a1);
  v36 = v35;
  LODWORD(v160) = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7365737265766572, 0xE800000000000000, 1, a1);
  v37 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000018, 0x80000001C18DEA50, 1, a1);
  v149 = v8;
  v40 = v38;
  if (v38)
  {
    v41._countAndFlagsBits = v37;
    v41._object = v40;
    v42 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehaviorUSD.init(rawValue:), v41);

    if (v42 >= 3)
    {
      v39 = 1;
    }

    else
    {
      v39 = 0x20001u >> (8 * v42);
    }
  }

  else
  {
    v39 = 1;
  }

  v147 = v39;
  v43 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v44 = [v27 property_];

  v45 = v165;
  if (!v44)
  {
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1C1897FD0;
    v130 = MEMORY[0x1E69E6158];
    *(v129 + 56) = MEMORY[0x1E69E6158];
    v131 = lazy protocol witness table accessor for type String and conformance String();
    *(v129 + 32) = 0xD000000000000012;
    *(v129 + 40) = 0x80000001C18DE9B0;
    *(v129 + 96) = v130;
    *(v129 + 104) = v131;
    *(v129 + 64) = v131;
    *(v129 + 72) = 0x6465746365666661;
    *(v129 + 80) = 0xEF737463656A624FLL;
    v132 = [v27 path];
    v133 = [v132 stringValue];

    if (v133)
    {
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v135;

      v137 = (v129 + 112);
      *(v129 + 136) = v130;
      *(v129 + 144) = v131;
      if (v136)
      {
        *v137 = v134;
LABEL_50:
        *(v129 + 120) = v136;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v138 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_53;
      }
    }

    else
    {
      v137 = (v129 + 112);
      *(v129 + 136) = v130;
      *(v129 + 144) = v131;
    }

    *v137 = 7104878;
    v136 = 0xE300000000000000;
    goto LABEL_50;
  }

  v141 = v16;
  v46 = v160;
  v47 = v34;
  v48 = v44;
  v49 = [v48 objectPathArray];
  v156 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = v50;
  if (v50 >> 62)
  {
    result = __CocoaSet.count.getter();
    v51 = v50;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

  result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_52:

LABEL_53:
    v128 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v139 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v128);

    return v139;
  }

LABEL_10:
  if (result >= 1)
  {
    v53 = 0;
    v159 = v51 & 0xC000000000000001;
    v152 = (v20 + 56);
    v146 = (v20 + 32);
    v148 = (v20 + 48);
    v145 = (v20 + 16);
    v144 = v47 & 1;
    v143 = v46 & 1;
    v142 = (v20 + 8);
    v54 = 0x80000001C18DE9B0;
    v151 = MEMORY[0x1E69E7CC0];
    v155 = xmmword_1C1897FC0;
    v55 = v29;
    v158 = v51;
    v150 = 0x80000001C18DE9B0;
    v157 = result;
    while (1)
    {
      v160 = v53;
      if (v159)
      {
        v59 = MEMORY[0x1C68F41F0](v53);
      }

      else
      {
        v59 = *(v51 + 8 * v53 + 32);
      }

      v60 = v59;
      v61 = [v55 objectAtPath_];
      if (!v61)
      {
        goto LABEL_13;
      }

      v62 = v61;
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();

      if (!v63)
      {
        goto LABEL_13;
      }

      v64 = [v60 stringValue];
      v154 = v60;
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        v175 = v66;
        v176 = v68;
        v153 = v68;
        v173 = 91;
        v174 = 0xE100000000000000;
        v171 = 0;
        v172 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v175 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v176 = v69;
        v173 = 93;
        v174 = 0xE100000000000000;
        v171 = 0;
        v172 = 0xE000000000000000;
        v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v72 = v71;

        v73 = v167;
        if (*(v167 + 16))
        {
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v72);
          v76 = v75;

          v60 = v154;
          if (v76)
          {
            v77 = (*(v73 + 56) + 16 * v74);
            v79 = *v77;
            v78 = v77[1];

            v80 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v79, v78, v166, v73);

            if (v80)
            {
              v81 = *(v80 + 16);
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && (v82 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v84 = *(Object + 1);
                v85 = Object[7];
                v86 = Object[6];
                v87 = Object[5];
                v88 = Object[4];
                v89 = Object[3];
                v90 = Object[2];
                v91 = Object[1];
                v92 = *Object;
                v93 = v141;
                UUID.init(uuid:)();
                v94 = *v152;
                (*v152)(v93, 0, 1, v164);
                result = outlined destroy of BodyTrackingComponent?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v95 = v162;
                v54 = v150;
              }

              else
              {
                v94 = *v152;
                v112 = v141;
                v113 = v164;
                (*v152)(v141, 1, 1, v164);
                outlined destroy of BodyTrackingComponent?(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v114 = v161;
                UUID.init()();
                v94(v114, 0, 1, v113);
                v54 = v150;
                result = Entity.__interactionIdentifier.setter(v114);
                v95 = v162;
              }

              v45 = v165;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_56;
              }

              v115 = *(v80 + 16);
              v116 = *(static __RKEntityUUIDComponent.registration + 4);
              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_56;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_56;
              }

              v117 = *(result + 8);
              v118 = *(result + 7);
              v119 = *(result + 6);
              v120 = *(result + 5);
              v121 = *(result + 4);
              v122 = *(result + 3);
              v123 = *(result + 2);
              v124 = *(result + 1);
              v125 = *result;
              UUID.init(uuid:)();

              v96 = v163;
              v126 = v95;
              v99 = v164;
              (*v146)(v163, v126, v164);
              v97 = v96;
              v98 = 0;
              v100 = v99;
              goto LABEL_33;
            }
          }

          v45 = v165;
        }

        else
        {

          v45 = v165;
          v60 = v154;
        }

        v54 = v150;
      }

      else
      {
        v153 = 0;
      }

      v94 = *v152;
      v96 = v163;
      v97 = v163;
      v98 = 1;
      v99 = v164;
      v100 = v164;
LABEL_33:
      v94(v97, v98, 1, v100);

      if ((*v148)(v96, 1, v99) != 1)
      {
        (*v146)(v45, v96, v99);
        v101 = v149;
        (*v145)(v149, v45, v99);
        started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
        v103 = started[14];
        v94(v101 + v103, 1, 1, v164);
        *(v101 + started[5]) = 1;
        *(v101 + started[6]) = v147;
        *(v101 + started[10]) = v144;
        *(v101 + started[8]) = v33;
        *(v101 + started[7]) = v31;
        *(v101 + started[11]) = v36;
        *(v101 + started[9]) = v143;
        *(v101 + started[12]) = 0;
        v104 = v101 + started[13];
        *v104 = 0x3FF0000000000000;
        *(v104 + 8) = 0;
        outlined destroy of BodyTrackingComponent?(v101 + v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v94(v101 + v103, 1, 1, v164);
        swift_storeEnumTagMultiPayload();
        v105 = v151;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105[2] + 1, 1, v105);
        }

        v106 = v28;
        v151 = v105;
        v108 = v105[2];
        v107 = v105[3];
        v55 = v29;
        v109 = v150;
        v110 = v154;
        if (v108 >= v107 >> 1)
        {
          v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107 > 1, v108 + 1, 1, v151);
          v106 = v28;
          v151 = v127;
        }

        v111 = v151;
        v151[2] = v108 + 1;
        outlined init with take of __RKEntityHideActionArguments(v149, v111 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v108, type metadata accessor for __RKEntityActionSpecification);

        (*v142)(v45, v164);
        v54 = v109;
        goto LABEL_14;
      }

      outlined destroy of BodyTrackingComponent?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v56 = swift_allocObject();
      *(v56 + 16) = v155;
      *(v56 + 56) = MEMORY[0x1E69E6158];
      *(v56 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v56 + 32) = 0xD000000000000012;
      *(v56 + 40) = v54;
      *(v56 + 96) = v156;
      *(v56 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v56 + 72) = v60;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v57 = v60;
      v58 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v45 = v165;

      v55 = v29;
LABEL_14:
      v53 = v160 + 1;
      v51 = v158;
      if (v157 == v160 + 1)
      {

        v128 = v151;
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateTransformActionSpecifications(decodeContext:)(void **a1)
{
  v215 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v2 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215);
  v219 = &v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v220 = *(v4 - 8);
  v221 = v4;
  v5 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v216 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for UUID();
  v214 = *(v218 - 8);
  v7 = *(v214 + 64);
  v8 = MEMORY[0x1EEE9AC00](v218);
  v213 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v217 = &v177 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v177 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v177 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v177 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v177 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v177 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v177 - v31;
  v33 = *a1;
  v34 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7261546D726F6678, 0xEB00000000746567, 1, *a1);
  v35 = v33;
  v205 = v30;
  v211 = a1;
  v208 = v27;
  v209 = v24;
  v207 = v21;
  v206 = v18;
  v210 = v13;
  v36 = v220;
  if (!v34)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v212 = v34;
  v37 = v35;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v35);
  v40 = v39;
  v41 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, v37);
  v43 = v42;
  if (!v42)
  {
    goto LABEL_3;
  }

  v204 = v32;
  v44._countAndFlagsBits = v41;
  v44._object = v43;
  v45 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelectionUSD.init(rawValue:), v44);

  if (v45)
  {
    v46 = v211;
    if (v45 == 1)
    {
      v47 = 0;
      goto LABEL_10;
    }

LABEL_3:

    return MEMORY[0x1E69E7CC0];
  }

  v47 = 1;
  v46 = v211;
LABEL_10:
  v49 = v46[1];
  v48 = v46[2];
  v50 = v46[3];
  v230 = v46[4];
  v231 = v50;
  v229 = v46[5];
  v51 = v37;
  v52 = v49;

  outlined init with copy of [String : String](&v231, v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v230, v222, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v229, v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEase.init(decodeContext:)(v46, &v227);
  v197 = v47;
  v53 = v52;
  LODWORD(v52) = v227;
  v54 = v51;
  v55 = v53;

  outlined init with copy of [String : String](&v231, v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v230, v222, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v229, v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEaseType.init(decodeContext:)(v46, &v227);
  v56 = v52;
  v202 = v54;
  v193 = v227;
  v57 = [v55 objectAtPath_];
  if (!v57)
  {
LABEL_16:
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1C1887600;
    *(v68 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
    *(v68 + 64) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
    v69 = v212;
    *(v68 + 32) = v212;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v70 = v69;
    v71 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return MEMORY[0x1E69E7CC0];
  }

  v58 = v57;
  v203 = v55;
  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {

    goto LABEL_16;
  }

  v60 = v214;
  [objc_opt_self() localTransformWithNode:v59 time:0.0];
  REMakeSRTFromMatrix();
  v200 = v61;
  v201 = v62;
  v199 = v63;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v64 = *(v60 + 56);
  v65 = v204;
  v195 = v60 + 56;
  v198 = v64;
  v64(v204, 1, 1, v218);
  v66 = v202;
  v67 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000010, 0x80000001C18DEAC0, 1, v202);
  v187 = v56;
  v178 = v48;
  if (v67)
  {
    v72 = v67;
    v73 = [v67 stringValue];
    v74 = v205;
    if (v73)
    {
      v75 = v73;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v65 = v204;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    USDDecodableContext.identifierForPath(uskNodePath:)(v76, v78, v74);

    outlined assign with take of UUID?(v74, v65);
    v66 = v202;
  }

  v79 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v80 = [v66 property_];

  if (!v80)
  {
    v162 = v58;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_1C1897FD0;
    v165 = MEMORY[0x1E69E6158];
    *(v164 + 56) = MEMORY[0x1E69E6158];
    v166 = lazy protocol witness table accessor for type String and conformance String();
    v167 = v66;
    v168 = v166;
    *(v164 + 32) = 0xD000000000000012;
    *(v164 + 40) = 0x80000001C18DE9B0;
    *(v164 + 96) = v165;
    *(v164 + 104) = v166;
    *(v164 + 64) = v166;
    *(v164 + 72) = 0x6465746365666661;
    *(v164 + 80) = 0xEF737463656A624FLL;
    v169 = [v167 path];
    v170 = [v169 stringValue];

    if (v170)
    {
      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;

      v174 = (v164 + 112);
      *(v164 + 136) = v165;
      *(v164 + 144) = v168;
      if (v173)
      {
        *v174 = v171;
LABEL_70:
        v65 = v204;
        *(v164 + 120) = v173;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v175 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v163 = MEMORY[0x1E69E7CC0];
        goto LABEL_71;
      }
    }

    else
    {
      v174 = (v164 + 112);
      *(v164 + 136) = v165;
      *(v164 + 144) = v168;
    }

    *v174 = 7104878;
    v173 = 0xE300000000000000;
    goto LABEL_70;
  }

  v81 = v58;
  v82 = v80;
  v83 = [v82 objectPathArray];
  v202 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v84 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v217;
  v85 = v218;
  v87 = v214;
  if (!result)
  {

    v163 = MEMORY[0x1E69E7CC0];
    v162 = v81;
LABEL_71:
    v176 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v163);

    outlined destroy of BodyTrackingComponent?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v176;
  }

  v177 = v81;
  if (result >= 1)
  {
    v88 = 0;
    v214 = v84 & 0xC000000000000001;
    v188 = v231;
    v186 = (v87 + 32);
    v194 = (v87 + 48);
    v185 = (v87 + 16);
    v183 = *(&v199 + 1);
    v184 = v199;
    v182 = v200;
    v180 = *(&v201 + 1);
    v181 = v201;
    if (v40 < 0.0)
    {
      v40 = 1.0;
    }

    v179 = (v87 + 8);
    v196 = MEMORY[0x1E69E7CC0];
    *&v201 = 0x80000001C18DE9B0;
    v200 = xmmword_1C1897FC0;
    v205 = result;
    v211 = v84;
    while (1)
    {
      if (v214)
      {
        v93 = MEMORY[0x1C68F41F0](v88, v84);
      }

      else
      {
        v93 = *(v84 + 8 * v88 + 32);
      }

      v89 = v93;
      v94 = [v203 objectAtPath_];
      if (!v94)
      {
        goto LABEL_31;
      }

      v95 = v94;
      objc_opt_self();
      v96 = swift_dynamicCastObjCClass();

      if (!v96)
      {
        goto LABEL_31;
      }

      *&v199 = v89;
      v97 = [v89 stringValue];
      if (v97)
      {
        break;
      }

      v128 = 1;
      v129 = v215;
LABEL_50:
      v130 = v208;
LABEL_51:
      v198(v130, v128, 1, v85);

      if ((*v194)(v130, 1, v85) != 1)
      {
        v189 = *v186;
        v131 = v130;
        v132 = v210;
        v189(v210, v131, v85);
        (*v185)(v86, v132, v85);
        outlined init with copy of [String : String](v204, v209, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v190 = v129[9];
        v219[v190] = 2;
        v191 = v129[10];
        v219[v191] = 10;
        v133 = v129[11];
        v219[v133] = 3;
        v192 = v129[15];
        v198(&v219[v192], 1, 1, v85);
        v189(v219, v86, v85);
        v134 = &v219[v129[5]];
        v135 = &v219[v129[6]];
        v136 = &v219[v129[7]];
        v137 = &v219[v129[8]];
        v138 = v129[12];
        v139 = &v219[v129[13]];
        v140 = &v219[v129[14]];
        *v137 = v40;
        v137[4] = 0;
        *v134 = v184;
        *(v134 + 1) = v183;
        v134[16] = 0;
        v141 = v180;
        *v135 = v181;
        *(v135 + 1) = v141;
        v135[16] = 0;
        *v136 = v182;
        v136[4] = 0;
        v219[v190] = v197;
        v219[v191] = v187;
        v142 = v219;
        v219[v133] = v193;
        *(v142 + v138) = 0;
        *v139 = 0;
        v139[4] = 0;
        *v140 = 0;
        v140[4] = 0;
        outlined assign with take of UUID?(v209, v142 + v192);
        outlined init with take of __RKEntityHideActionArguments(v142, v216, type metadata accessor for __RKEntityTransformActionArguments);
        swift_storeEnumTagMultiPayload();
        v143 = v196;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
        }

        v144 = v36;
        v196 = v143;
        v146 = v143[2];
        v145 = v143[3];
        v65 = v204;
        v86 = v217;
        v85 = v218;
        v84 = v211;
        if (v146 >= v145 >> 1)
        {
          v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v145 > 1, v146 + 1, 1, v196);
          v144 = v36;
          v196 = v161;
        }

        v147 = v196;
        v196[2] = v146 + 1;
        outlined init with take of __RKEntityHideActionArguments(v216, v147 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v146, type metadata accessor for __RKEntityActionSpecification);

        (*v179)(v210, v85);
        goto LABEL_32;
      }

      outlined destroy of BodyTrackingComponent?(v130, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v89 = v199;
LABEL_31:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v90 = swift_allocObject();
      *(v90 + 16) = v200;
      *(v90 + 56) = MEMORY[0x1E69E6158];
      *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v90 + 32) = 0xD000000000000012;
      *(v90 + 40) = v201;
      *(v90 + 96) = v202;
      *(v90 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v90 + 72) = v89;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v91 = v89;
      v92 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v65 = v204;
      v84 = v211;
LABEL_32:
      if (v205 == ++v88)
      {

        v162 = v177;
        v163 = v196;
        goto LABEL_71;
      }
    }

    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v227 = v99;
    v228 = v101;
    v225 = 91;
    v226 = 0xE100000000000000;
    v223 = 0;
    v224 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v227 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v228 = v102;
    v225 = 93;
    v226 = 0xE100000000000000;
    v223 = 0;
    v224 = 0xE000000000000000;
    v103 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v105 = v104;

    v106 = v188;
    if (*(v188 + 16))
    {
      v107 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v105);
      v109 = v108;

      if (v109)
      {
        v110 = (*(v106 + 56) + 16 * v107);
        v112 = *v110;
        v111 = v110[1];

        v113 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v112, v111, v178, v106);

        v85 = v218;
        v114 = v213;
        if (v113)
        {
          v115 = *(v113 + 16);
          swift_beginAccess();
          if (static __RKEntityUUIDComponent.registration && (v116 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
          {
            v118 = *(Object + 1);
            v119 = Object[7];
            v120 = Object[6];
            v121 = Object[5];
            v122 = Object[4];
            v123 = Object[3];
            v124 = Object[2];
            v125 = Object[1];
            v126 = *Object;
            v127 = v207;
            UUID.init(uuid:)();
            v198(v127, 0, 1, v85);
            result = outlined destroy of BodyTrackingComponent?(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v148 = v207;
            v198(v207, 1, 1, v85);
            outlined destroy of BodyTrackingComponent?(v148, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v149 = v206;
            UUID.init()();
            v198(v149, 0, 1, v85);
            result = Entity.__interactionIdentifier.setter(v149);
          }

          v129 = v215;
          if (!static __RKEntityUUIDComponent.registration)
          {
            goto LABEL_74;
          }

          v150 = *(v113 + 16);
          v151 = *(static __RKEntityUUIDComponent.registration + 4);
          result = REEntityGetCustomComponent();
          if (!result)
          {
            goto LABEL_74;
          }

          result = RECustomComponentGetObject();
          if (!result)
          {
            goto LABEL_74;
          }

          v152 = *(result + 8);
          v153 = *(result + 7);
          v154 = *(result + 6);
          v155 = *(result + 5);
          v156 = *(result + 4);
          v157 = *(result + 3);
          v158 = *(result + 2);
          v159 = *(result + 1);
          v160 = *result;
          UUID.init(uuid:)();

          v130 = v208;
          (*v186)(v208, v114, v85);
          v128 = 0;
          v86 = v217;
          goto LABEL_51;
        }

        v128 = 1;
        v129 = v215;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v128 = 1;
    v129 = v215;
    v85 = v218;
LABEL_49:
    v86 = v217;
    goto LABEL_50;
  }

  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v13 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F6974616D696E61, 0xE90000000000006ELL, 1, *a1);
  result = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return result;
  }

  v14 = [a1[1] objectAtPath_];
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = [v13 stringValue];
  if (v16)
  {
    v17 = v16;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v16 = v27;
  }

  else
  {
    v19 = 0;
  }

  USDDecodableContext.identifierForPath(uskNodePath:)(v16, v19, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 32))(v10, v5, v6);
  v20 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000018, 0x80000001C18DEA50, 1, v11);
  if (v21)
  {
    v24 = v21;
    v25._countAndFlagsBits = v20;
    v25._object = v24;
    _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehaviorUSD.init(rawValue:), v25);
  }

  v28 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v20);
  *(&v26 - 4) = &v28;
  *(&v26 - 24) = v22;
  *(&v26 - 2) = v10;
  USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, partial apply for closure #1 in static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:), (&v26 - 6));
  v23 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v28);

  (*(v7 + 8))(v10, v6);
  return v23;
}

uint64_t specialized static __RKEntityActionSpecification.generateVisibilityActionSpecifications(decodeContext:)(void **a1)
{
  v237 = type metadata accessor for __RKEntityHideActionArguments(0);
  v2 = *(*(v237 - 8) + 64);
  MEMORY[0x1EEE9AC00](v237);
  v228 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for __RKEntityShowActionArguments(0);
  v4 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v234 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityActionSpecification(0);
  v7 = *(v6 - 8);
  v235 = v6;
  v236 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v229 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v233 = &v193 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v230 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v193 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v193 - v19;
  v21 = type metadata accessor for UUID();
  v231 = *(v21 - 8);
  v22 = *(v231 + 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v193 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v193 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v193 - v32;
  v34 = *a1;
  v35 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, *a1);
  v37 = v34;
  v225 = a1;
  v226 = v33;
  v222 = v31;
  v219 = v28;
  v220 = v25;
  v224 = v21;
  v223 = v20;
  v221 = v18;
  v39 = v236;
  v38 = v237;
  if (!v36)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v40 = v35;
  v227 = v36;
  v41 = v37;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v37);
  v43 = v42;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7473694465766F6DLL, 0xEC00000065636E61, 1, v41);
  v46 = v45;
  v47 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x656C797473, 0xE500000000000000, 1, v41);
  v49 = v48;
  if (!v48 || (v50._countAndFlagsBits = v47, v50._object = v49, v51 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionAnimationStyle.init(rawValue:), v50), , v51 >= 3))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v52 = v225;
  v54 = v225[1];
  v53 = v225[2];
  v55 = v225[3];
  v246 = v225[4];
  v247 = v55;
  v245 = v225[5];
  v56 = v41;
  v57 = v54;
  v216 = v53;

  outlined init with copy of [String : String](&v247, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v246, v238, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v245, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEase.init(decodeContext:)(v52, &v243);
  v202 = v243;
  v218 = v56;
  v58 = v57;

  outlined init with copy of [String : String](&v247, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v246, v238, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v245, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEaseType.init(decodeContext:)(v225, &v243);
  v208 = 0;
  v198 = v51;
  v197 = v243;
  v59 = v218;
  v217 = v58;

  outlined init with copy of [String : String](&v247, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v246, v238, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v245, v238, &_sSDyS2SGMd, &_sSDyS2SGMR);

  v60 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v206 = v59;
  v61 = [v59 property_];

  if (!v61)
  {
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_1C1897FD0;
    v183 = MEMORY[0x1E69E6158];
    *(v182 + 56) = MEMORY[0x1E69E6158];
    v184 = lazy protocol witness table accessor for type String and conformance String();
    *(v182 + 32) = 0xD000000000000012;
    *(v182 + 40) = 0x80000001C18DE9B0;
    *(v182 + 96) = v183;
    *(v182 + 104) = v184;
    *(v182 + 64) = v184;
    *(v182 + 72) = 0x6465746365666661;
    *(v182 + 80) = 0xEF737463656A624FLL;
    v185 = [v206 path];
    v186 = [v185 stringValue];

    if (v186)
    {
      v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v189 = v188;

      v190 = (v182 + 112);
      *(v182 + 136) = v183;
      *(v182 + 144) = v184;
      if (v189)
      {
        *v190 = v187;
LABEL_80:
        *(v182 + 120) = v189;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v191 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v181 = MEMORY[0x1E69E7CC0];
        goto LABEL_81;
      }
    }

    else
    {
      v190 = (v182 + 112);
      *(v182 + 136) = v183;
      *(v182 + 144) = v184;
    }

    *v190 = 7104878;
    v189 = 0xE300000000000000;
    goto LABEL_80;
  }

  v62 = v61;
  v63 = [v62 objectPathArray];
  v213 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = v64;
  if (v64 >> 62)
  {
    result = __CocoaSet.count.getter();
    v65 = v64;
  }

  else
  {
    result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v226;
  if (!result)
  {

    v181 = MEMORY[0x1E69E7CC0];
LABEL_81:

    outlined destroy of BodyTrackingComponent?(&v247, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v246, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v245, &_sSDyS2SGMd, &_sSDyS2SGMR);
    swift_bridgeObjectRelease_n();
    v192 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v181);

    return v192;
  }

  if (result >= 1)
  {
    v67 = 0;
    v203 = v247;
    v68 = v65 & 0xC000000000000001;
    v209 = v231 + 56;
    v204 = (v231 + 32);
    v207 = (v231 + 48);
    v69 = v227 == 0xE400000000000000 && v40 == 2003789939;
    v200 = v69;
    v70 = v227 == 0xE400000000000000 && v40 == 1701079400;
    v194 = v70;
    v195 = (v231 + 16);
    if (v43 < 0.0)
    {
      v43 = 1.0;
    }

    v199 = (v231 + 8);
    v201 = MEMORY[0x1E69E7CC0];
    v212 = 0x80000001C18DE9B0;
    v211 = xmmword_1C1897FC0;
    v214 = v65;
    v215 = result;
    v205 = v65 & 0xC000000000000001;
    while (1)
    {
      if (v68)
      {
        v77 = MEMORY[0x1C68F41F0](v67);
      }

      else
      {
        v77 = *(v65 + 8 * v67 + 32);
      }

      v218 = v67;
      v231 = v77;
      v78 = [v217 objectAtPath_];
      if (!v78)
      {
        goto LABEL_22;
      }

      v79 = v78;
      objc_opt_self();
      v80 = swift_dynamicCastObjCClass();

      if (!v80)
      {
        goto LABEL_22;
      }

      v81 = [v231 stringValue];
      if (v81)
      {
        v82 = v81;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v243 = v83;
        v244 = v85;
        v210 = v85;
        v241 = 91;
        v242 = 0xE100000000000000;
        v239 = 0;
        v240 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v243 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v244 = v86;
        v241 = 93;
        v242 = 0xE100000000000000;
        v239 = 0;
        v240 = 0xE000000000000000;
        v87 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v89 = v88;

        v90 = v203;
        if (*(v203 + 16))
        {
          v91 = specialized __RawDictionaryStorage.find<A>(_:)(v87, v89);
          v93 = v92;

          if (v93)
          {
            v94 = (*(v90 + 56) + 16 * v91);
            v95 = *v94;
            v96 = v94[1];

            v97 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v95, v96, v216, v90);

            if (v97)
            {
              v196 = v97;
              v98 = *(v97 + 16);
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && (v99 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v101 = *(Object + 1);
                v102 = Object[7];
                v103 = Object[6];
                v104 = Object[5];
                v105 = Object[4];
                v106 = Object[3];
                v107 = Object[2];
                v108 = Object[1];
                v109 = *Object;
                v110 = v221;
                UUID.init(uuid:)();
                v111 = *v209;
                (*v209)(v110, 0, 1, v224);
                result = outlined destroy of BodyTrackingComponent?(v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v111 = *v209;
                v148 = v221;
                v149 = v224;
                (*v209)(v221, 1, 1, v224);
                outlined destroy of BodyTrackingComponent?(v148, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v150 = v230;
                UUID.init()();
                v111(v150, 0, 1, v149);
                result = Entity.__interactionIdentifier.setter(v150);
              }

              v112 = v223;
              v151 = v220;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_84;
              }

              v152 = *(v196 + 16);
              v153 = *(static __RKEntityUUIDComponent.registration + 4);
              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_84;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_84;
              }

              v154 = *(result + 8);
              v155 = *(result + 7);
              v156 = *(result + 6);
              v157 = *(result + 5);
              v158 = *(result + 4);
              v159 = *(result + 3);
              v160 = *(result + 2);
              v161 = *(result + 1);
              v162 = *result;
              UUID.init(uuid:)();

              v113 = v224;
              (*v204)(v112, v151, v224);
              v111(v112, 0, 1, v113);
              v66 = v226;
              v68 = v205;
              goto LABEL_41;
            }
          }
        }

        else
        {
        }

        v66 = v226;
        v68 = v205;
      }

      v112 = v223;
      v113 = v224;
      (*v209)(v223, 1, 1, v224);
LABEL_41:

      if ((*v207)(v112, 1, v113) != 1)
      {
        v114 = *v204;
        (*v204)(v66, v112, v113);
        v210 = v114;
        if (v200 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v115 = v206;
          v116 = v217;

          outlined init with copy of [String : String](&v247, &v243, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined init with copy of [String : String](&v246, &v243, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined init with copy of [String : String](&v245, &v243, &_sSDyS2SGMd, &_sSDyS2SGMR);
          v117 = v208;
          __RKEntityShowActionBuildInAnimationType.init(decodeContext:)(v225, &v241);
          if (v117)
          {

            v208 = 0;
            goto LABEL_46;
          }

          v208 = 0;
          v118 = v241;
          v119 = v222;
          (*v195)(v222, v66, v113);
          v120 = v232;
          v121 = *(v232 + 28);
          v122 = v119;
          v123 = v234;
          v234[v121] = 10;
          v124 = v120[8];
          v123[v124] = 3;
          v125 = v113;
          v126 = v120[14];
          v123[v126] = 3;
          v127 = v120[15];
          v123[v127] = 10;
          v210(v123, v122, v125);
          v128 = &v123[v120[5]];
          v129 = &v123[v120[6]];
          v130 = v120[9];
          v131 = &v123[v120[10]];
          v132 = v120[11];
          v133 = &v123[v120[12]];
          v134 = &v123[v120[13]];
          *v128 = v43;
          v128[4] = 0;
          *v129 = v46;
          v129[4] = 0;
          v123[v121] = v202;
          v135 = v123;
          v136 = v233;
          *(v135 + v124) = v197;
          *(v135 + v130) = 1;
          *v131 = 1065353216;
          v131[4] = 0;
          *(v135 + v132) = 0;
          *v133 = 0;
          v133[4] = 0;
          *v134 = 0;
          v134[4] = 0;
          *(v135 + v126) = v198;
          *(v135 + v127) = v118;
          outlined init with take of __RKEntityHideActionArguments(v135, v136, type metadata accessor for __RKEntityShowActionArguments);
          swift_storeEnumTagMultiPayload();
          v137 = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
          }

          v138 = v39;
          v201 = v137;
          v140 = v137[2];
          v139 = v137[3];
          v66 = v226;
          v76 = v218;
          if (v140 >= v139 >> 1)
          {
            v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v139 > 1, v140 + 1, 1, v201);
            v138 = v39;
            v201 = v180;
          }

          v141 = v201;
          v201[2] = v140 + 1;
          outlined init with take of __RKEntityHideActionArguments(v136, v141 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v140, type metadata accessor for __RKEntityActionSpecification);

          v113 = v224;
          v75 = v215;
LABEL_60:
          v68 = v205;
LABEL_61:
          (*v199)(v66, v113);
          goto LABEL_23;
        }

        if (!v194 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

LABEL_46:
          v75 = v215;
          v76 = v218;
          goto LABEL_61;
        }

        v142 = v206;
        v143 = v217;

        outlined init with copy of [String : String](&v247, &v243, &_sSDyS2SGMd, &_sSDyS2SGMR);
        outlined init with copy of [String : String](&v246, &v243, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        outlined init with copy of [String : String](&v245, &v243, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v144 = v208;
        v145._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x79546E6F69746F6DLL, 0xEA00000000006570, 1, v142);
        v146 = v144;
        if (v144)
        {
LABEL_58:

          outlined destroy of BodyTrackingComponent?(&v247, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined destroy of BodyTrackingComponent?(&v246, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined destroy of BodyTrackingComponent?(&v245, &_sSDyS2SGMd, &_sSDyS2SGMR);

          v208 = 0;
        }

        else
        {
          v208 = 0;
          if (!v145._object || (v147 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v145), v147 == 10))
          {
            lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError();
            v146 = swift_allocError();
            swift_willThrow();
            goto LABEL_58;
          }

          v163 = v147;

          outlined destroy of BodyTrackingComponent?(&v247, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined destroy of BodyTrackingComponent?(&v246, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined destroy of BodyTrackingComponent?(&v245, &_sSDyS2SGMd, &_sSDyS2SGMR);
          LODWORD(v196) = byte_1C189A612[v163];
          v164 = v219;
          v165 = v224;
          (*v195)(v219, v226, v224);
          v166 = v38[7];
          v167 = v228;
          v228[v166] = 10;
          v168 = v38[8];
          *(v167 + v168) = 3;
          v169 = v38[14];
          *(v167 + v169) = 3;
          v193 = v38[15];
          *(v167 + v193) = 10;
          v210(v167, v164, v165);
          v170 = v167 + v38[5];
          v171 = v167 + v38[6];
          v172 = v38[9];
          v173 = v167 + v38[10];
          v174 = v38[11];
          v175 = v167 + v38[12];
          v176 = v167 + v38[13];
          *v170 = v43;
          *(v170 + 4) = 0;
          *v171 = v46;
          *(v171 + 4) = 0;
          *(v167 + v166) = v202;
          *(v167 + v168) = v197;
          *(v167 + v172) = 1;
          *v173 = 0;
          *(v173 + 4) = 0;
          *(v167 + v174) = 0;
          *v175 = 0;
          *(v175 + 4) = 0;
          *v176 = 0;
          *(v176 + 4) = 0;
          *(v167 + v169) = v198;
          *(v167 + v193) = v196;
          outlined init with take of __RKEntityHideActionArguments(v167, v229, type metadata accessor for __RKEntityHideActionArguments);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v201[2] + 1, 1, v201);
          }

          v178 = v201[2];
          v177 = v201[3];
          if (v178 >= v177 >> 1)
          {
            v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177 > 1, v178 + 1, 1, v201);
          }

          v179 = v201;
          v201[2] = v178 + 1;
          outlined init with take of __RKEntityHideActionArguments(v229, v179 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v178, type metadata accessor for __RKEntityActionSpecification);
        }

        v113 = v224;
        v66 = v226;
        v75 = v215;
        v76 = v218;
        goto LABEL_60;
      }

      outlined destroy of BodyTrackingComponent?(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_22:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v71 = swift_allocObject();
      *(v71 + 16) = v211;
      *(v71 + 56) = MEMORY[0x1E69E6158];
      *(v71 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v71 + 32) = 0xD000000000000012;
      *(v71 + 40) = v212;
      *(v71 + 96) = v213;
      *(v71 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      v72 = v231;
      *(v71 + 72) = v231;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v73 = v72;
      v74 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v66 = v226;

      v75 = v215;
      v76 = v218;
LABEL_23:
      v67 = v76 + 1;
      v65 = v214;
      if (v75 == v67)
      {

        v181 = v201;
        goto LABEL_81;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type USKObjectPath and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type USKObjectPath and conformance NSObject;
  if (!lazy protocol witness table cache variable for type USKObjectPath and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USKObjectPath and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of __RKEntityActionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of __RKEntityActionSpecification(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of __RKEntityHideActionArguments(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *specialized static __Engine.makeSharedEngine(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();

  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x1C68F3280](0xD000000000000020, 0x80000001C18DEC60);
  v5 = [v3 BOOLForKey_];

  v6 = [objc_opt_self() processInfo];
  v7 = [v6 environment];

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v8 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000001C18DEC90);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v1 + 16);
  RenderFlags = REEngineConfigurationGetRenderFlags();
  if (((v5 | v10) & 1) == 0 && (RenderFlags & 0x40000) == 0)
  {
    v13 = *(v1 + 16);
    REEngineConfigurationGetRenderFlags();
    v14 = *(v1 + 16);
    v15 = REGetRetainCount();
    v16 = *(v1 + 16);
    if (v15 >= 2)
    {

      v17 = REEngineConfigurationClone();
      type metadata accessor for EngineConfiguration();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;

      v1 = v18;
    }

    REEngineConfigurationSetRenderFlags();
  }

  v20 = v1;
  type metadata accessor for __Engine();
  swift_allocObject();
  return __Engine.init(configuration:)(&v20);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioFileResource.LoadingStrategy(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C657270;
  }

  else
  {
    v4 = 0x6D6165727473;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64616F6C657270;
  }

  else
  {
    v6 = 0x6D6165727473;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioFileResource.LoadingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioFileResource.LoadingStrategy()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioFileResource.LoadingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AudioFileResource.LoadingStrategy.rawValue.getter()
{
  if (*v0)
  {
    result = 0x64616F6C657270;
  }

  else
  {
    result = 0x6D6165727473;
  }

  *v0;
  return result;
}

uint64_t AudioFileResource.LoadingStrategy.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6165727473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C657270 && a2 == 0xE700000000000000)
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

unint64_t lazy protocol witness table accessor for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy()
{
  result = lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy;
  if (!lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy;
  if (!lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.LoadingStrategy and conformance AudioFileResource.LoadingStrategy);
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AudioFileResource.LoadingStrategy(uint64_t *a1@<X8>)
{
  v2 = 0x6D6165727473;
  if (*v1)
  {
    v2 = 0x64616F6C657270;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static ReverbComponent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t ReverbComponent.hash(into:)()
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

Swift::Int ReverbComponent.hashValue.getter()
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

void static ReverbComponent.__fromCore(_:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  ReverbPreset = REReverbComponentGetReverbPreset();
  Reverb.Preset.init(core:)(ReverbPreset, &v14);
  v5 = v14;
  if (v14 == 10)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.audio);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      type metadata accessor for REAudioReverbPreset(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C1358000, v7, v8, "Unsupported reverb preset %s. Setting to anechoic.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C6902A30](v10, -1, -1);
      MEMORY[0x1C6902A30](v9, -1, -1);
    }
  }

  *a2 = v5;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ReverbComponent(uint64_t *a1)
{
  v2 = *a1;
  if (*v1 != 10)
  {
    v4 = *v1;
    Reverb.Preset.core.getter();
  }

  REReverbComponentSetPriority();
  REReverbComponentSetReverbPresetWithBlend();

  return RENetworkMarkComponentDirty();
}

uint64_t ReverbComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (*v1 != 10)
  {
    v4 = *v1;
    Reverb.Preset.core.getter();
  }

  REReverbComponentSetPriority();
  REReverbComponentSetReverbPresetWithBlend();

  return RENetworkMarkComponentDirty();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ReverbComponent()
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ReverbComponent()
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReverbComponent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](1);
  }

  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ReverbComponent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    if (v3 != 10)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type ReverbComponent and conformance ReverbComponent()
{
  result = lazy protocol witness table cache variable for type ReverbComponent and conformance ReverbComponent;
  if (!lazy protocol witness table cache variable for type ReverbComponent and conformance ReverbComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReverbComponent and conformance ReverbComponent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReverbComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 11;
  if (v6 < 0xA)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for ReverbComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 simd_float4x4.identity.getter()
{
  result = *MEMORY[0x1E69E9B18];
  v1 = *(MEMORY[0x1E69E9B18] + 16);
  v2 = *(MEMORY[0x1E69E9B18] + 32);
  v3 = *(MEMORY[0x1E69E9B18] + 48);
  return result;
}

double simd_float4x4.transform(position:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2), a5);
  *&result = vdivq_f32(v5, vdupq_laneq_s32(v5, 3)).u64[0];
  return result;
}

double simd_float4x4.transform(normal:)(float32x4_t a1, simd_float3 a2, simd_float3 a3, simd_float3 a4)
{
  a2.i32[3] = 0;
  a3.i32[3] = 0;
  a4.i32[3] = 0;
  v10.columns[0] = a2;
  v10.columns[1] = a3;
  v10.columns[2] = a4;
  v11 = __invert_f3(v10);
  v4 = vzip1q_s32(v11.columns[0], v11.columns[2]);
  v5 = vzip1q_s32(v11.columns[1], 0);
  v6 = vzip1q_s32(v4, v5);
  v7 = vzip2q_s32(v4, v5);
  v11.columns[1] = vzip2q_s32(v11.columns[0], v11.columns[1]);
  v7.i32[2] = v11.columns[2].i32[1];
  v6.i32[2] = v11.columns[2].i32[0];
  v11.columns[1].i32[2] = v11.columns[2].i32[2];
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, a1.f32[0]), v7, *a1.f32, 1), v11.columns[1], a1, 2).u64[0];
  return result;
}

float32x2_t simd_float4x4.transform(force:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2).u64[0];
  v5 = vzip1_s32(*a2.f32, *a3.f32);
  v6 = vzip2_s32(*a2.f32, *a3.f32);
  v7 = vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL));
  v8 = vsqrt_f32(vadd_f32(vmul_f32(v7, v7), vadd_f32(vmul_f32(v5, v5), vmul_f32(v6, v6))));
  return vmul_f32(v4, vmul_f32(v8, vmul_f32(v8, v8)));
}

float32x2_t simd_float4x4.transform(torque:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2).u64[0];
  v5 = vzip1_s32(*a2.f32, *a3.f32);
  v6 = vzip2_s32(*a2.f32, *a3.f32);
  v7 = vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL));
  v8 = vsqrt_f32(vadd_f32(vmul_f32(v7, v7), vadd_f32(vmul_f32(v5, v5), vmul_f32(v6, v6))));
  return vmul_f32(v4, vmul_f32(v8, vmul_f32(v8, vmul_f32(v8, v8))));
}

double one-time initialization function for identity()
{
  result = 0.0;
  static simd_quatf.identity = xmmword_1C1887660;
  return result;
}

{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  result = *&static simd_quatf.identity;
  static Transform.identity = xmmword_1C1887620;
  xmmword_1EBEB2BB0 = static simd_quatf.identity;
  xmmword_1EBEB2BC0 = 0uLL;
  return result;
}

double static simd_quatf.identity.getter()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static simd_quatf.identity;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.DistanceAttenuation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x66666F6C6C6F72 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.DistanceAttenuation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.DistanceAttenuation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Audio.DistanceAttenuation.RolloffCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Audio.DistanceAttenuation.RolloffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Audio.DistanceAttenuation.RolloffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Audio.DistanceAttenuation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO17RolloffCodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO17RolloffCodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMR);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO10CodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO10CodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v15 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

unint64_t lazy protocol witness table accessor for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys()
{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys);
  }

  return result;
}

uint64_t Audio.DistanceAttenuation.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C68F4C50](*&v2);
}

Swift::Int Audio.DistanceAttenuation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C68F4C50](*&v2);
  return Hasher._finalize()();
}

uint64_t Audio.DistanceAttenuation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO17RolloffCodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO17RolloffCodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMR);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO10CodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation5AudioO19DistanceAttenuationO10CodingKeys33_2AB3A9E71F011B186449786A6B481780LLOGMR);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Audio.DistanceAttenuation.CodingKeys and conformance Audio.DistanceAttenuation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = v8;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      lazy protocol witness table accessor for type Audio.DistanceAttenuation.RolloffCodingKeys and conformance Audio.DistanceAttenuation.RolloffCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = v21;
      KeyedDecodingContainer.decode(_:forKey:)();
      v15 = v14;
      (*(v23 + 8))(v7, v4);
      (*(v13 + 8))(v11, v24);
      swift_unknownObjectRelease();
      *v22 = v15;
    }

    else
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v18 = &type metadata for Audio.DistanceAttenuation;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      (*(v21 + 8))(v11, v24);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Audio.DistanceAttenuation()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C68F4C50](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Audio.DistanceAttenuation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C68F4C50](*&v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation()
{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation;
  if (!lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation);
  }

  return result;
}

uint64_t one-time initialization function for audio()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.audio);
  __swift_project_value_buffer(v0, static Logger.audio);
  return Logger.init(subsystem:category:)();
}

Swift::Int AudioResource.InputMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioResource.InputMode and conformance AudioResource.InputMode()
{
  result = lazy protocol witness table cache variable for type AudioResource.InputMode and conformance AudioResource.InputMode;
  if (!lazy protocol witness table cache variable for type AudioResource.InputMode and conformance AudioResource.InputMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.InputMode and conformance AudioResource.InputMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioResource.InputMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioResource.InputMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13simd_float4x4a_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a2 + 5;
  v4 = a1 + 3;
  do
  {
    v5 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*v4, v3[-2]), vceqq_f32(v4[-1], v3[-3])), vandq_s8(vceqq_f32(v4[1], v3[-1]), vceqq_f32(v4[2], *v3))));
    result = v5 >> 31;
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v3 += 4;
    v4 += 4;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD3VySfG_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10simd_quatfa_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ17RealityFoundation8BindPathV4PartO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        outlined copy of BindPath.Part(v15, v5, v6);
        outlined copy of BindPath.Part(v7, v8, v9);
        v10 = specialized static BindPath.Part.== infix(_:_:)(&v15, &v12);
        outlined consume of BindPath.Part(v12, v13, v14);
        outlined consume of BindPath.Part(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit6EntityC0B10FoundationE12WriteOptionsV6OptionO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit30__RKEntityTriggerSpecificationO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        outlined init with copy of __RKEntityActionSpecification(v19, v16, a4);
        outlined init with copy of __RKEntityActionSpecification(v20, v13, a4);
        v22 = a5(v16, v13);
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v13, a4);
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo11REShaderAPIV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit13ShapeResourceC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 != result)
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
LABEL_25:
      v14 = 0;
      return v14 & 1;
    }
  }

  if (!v5)
  {
    goto LABEL_26;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
LABEL_26:
    v14 = 1;
    return v14 & 1;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    result = MEMORY[0x1C68F41F0](0, a1);
    v11 = result;
    v12 = a2 & 0xC000000000000001;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v13 = MEMORY[0x1C68F41F0](0, a2);
    goto LABEL_23;
  }

  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_56;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_59;
  }

  v11 = *(a1 + 32);

  v12 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);

LABEL_23:
    if (*(v11 + 16) != *(v13 + 16))
    {
LABEL_24:

      goto LABEL_25;
    }

    v15 = v5 - 1;
    v16 = 5;
    while (1)
    {
      v17 = vmovn_s32(vceqq_f32(*(v11 + 32), *(v13 + 32)));
      if ((v17.i8[0] & 1) == 0 || (v17.i8[2] & 1) == 0 || (v17.i8[4] & 1) == 0)
      {
        goto LABEL_24;
      }

      v23 = *(v11 + 48);

      v22 = *(v13 + 48);

      v14 = vminv_u16(vmovn_s32(vceqq_f32(v23, v22)));
      v19 = v15-- != 0;
      if ((v14 & 1) == 0 || !v19)
      {
        return v14 & 1;
      }

      v20 = v16 - 4;
      if (v16 - 4 >= v5)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_52;
      }

      if (v21)
      {
        v11 = MEMORY[0x1C68F41F0](v16 - 4, a1);
        if (v12)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v11 = *(a1 + 8 * v16);

        if (v12)
        {
LABEL_29:
          v13 = MEMORY[0x1C68F41F0](v16 - 4, a2);
          goto LABEL_30;
        }
      }

      if (v20 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v13 = *(a2 + 8 * v16);

LABEL_30:
      ++v16;
      if (*(v11 + 16) != *(v13 + 16))
      {
        goto LABEL_24;
      }
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0H20CompatibilityVariantV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 2) == *(i - 2); i += 3)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit17AudioFileResourceC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  IsEqual = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (IsEqual)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_51;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v17 = (v3 + 32);
    v18 = (a2 + 32);
    v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19)
    {
      if (!v20)
      {
        goto LABEL_45;
      }

      v3 = *v17;
      a2 = *v18;
      IsEqual = *(*v17 + 16);
      if (IsEqual != *(*v18 + 16))
      {
        v21 = *v17;
        swift_retain_n();
        swift_retain_n();
        AudioFileResource.CreateOptions.init(from:)(&v28);
        v32 = v28;
        v33 = v29;
        v34 = v30;
        v35 = v31;
        AudioFileResource.CreateOptions.init(from:)(&v28);
        v36 = v28;
        v37 = v29;
        v38 = v30;
        v39 = v31;
        v28 = v32;
        v29 = v33;
        v30 = v34;
        v31 = v35;
        v24 = v36;
        v25 = v37;
        v26 = v38;
        v27 = v39;
        v22 = specialized static AudioFileResource.CreateOptions.== infix(_:_:)(&v28, &v24);
        outlined destroy of AudioFileResource.CreateOptions(&v36);
        outlined destroy of AudioFileResource.CreateOptions(&v32);
        if ((v22 & 1) == 0)
        {
LABEL_41:

          return 0;
        }

        IsEqual = REAudioFileAssetIsEqual();

        if ((IsEqual & 1) == 0)
        {
          return 0;
        }
      }

      --v20;
      --v19;
      ++v17;
      ++v18;
      if (!--i)
      {
        return 1;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v23 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v12 = j - 4;
    v13 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C68F41F0](j - 4, v3);
      IsEqual = result;
      if (v23)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    IsEqual = *(v3 + 8 * j);

    if (v23)
    {
LABEL_23:
      v14 = MEMORY[0x1C68F41F0](j - 4, a2);
      goto LABEL_28;
    }

LABEL_26:
    if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v14 = *(a2 + 8 * j);

LABEL_28:
    if (*(IsEqual + 16) == *(v14 + 16))
    {
    }

    else
    {

      AudioFileResource.CreateOptions.init(from:)(&v28);
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31;
      AudioFileResource.CreateOptions.init(from:)(&v28);
      v36 = v28;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      v27 = v39;
      v15 = specialized static AudioFileResource.CreateOptions.== infix(_:_:)(&v28, &v24);
      outlined destroy of AudioFileResource.CreateOptions(&v36);
      outlined destroy of AudioFileResource.CreateOptions(&v32);
      if ((v15 & 1) == 0)
      {
        goto LABEL_41;
      }

      v16 = REAudioFileAssetIsEqual();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    if (v13 == i)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of __RKEntityActionSpecification(v14, v11, type metadata accessor for __RKEntityInteractionSpecification);
      outlined init with copy of __RKEntityActionSpecification(v15, v8, type metadata accessor for __RKEntityInteractionSpecification);
      if ((specialized static __RKEntityTriggerSpecification.== infix(_:_:)(v11, v8) & 1) == 0 || (specialized static __RKEntityActionSpecification.== infix(_:_:)(&v11[*(v4 + 20)], &v8[*(v4 + 20)]) & 1) == 0)
      {
LABEL_18:
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityInteractionSpecification);
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v11, type metadata accessor for __RKEntityInteractionSpecification);
        return 0;
      }

      v17 = *(v4 + 24);
      v18 = &v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v8[v17];
      v21 = *(v20 + 1);
      v22 = v21 == 0;
      if (!v19)
      {
        goto LABEL_5;
      }

      if (!v21)
      {
        goto LABEL_18;
      }

      if (*v18 != *v20 || v19 != v21)
      {
        break;
      }

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityInteractionSpecification);
      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v11, type metadata accessor for __RKEntityInteractionSpecification);
LABEL_6:
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_5:
    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityInteractionSpecification);
    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(v11, type metadata accessor for __RKEntityInteractionSpecification);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t AudioLibraryComponent.resources.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

RealityFoundation::AudioLibraryComponent __swiftcall AudioLibraryComponent.init(resources:)(Swift::OpaquePointer resources)
{
  v3 = v1;

  v3->_rawValue = resources._rawValue;
  return result;
}

uint64_t AudioLibraryComponent.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC8];
  *a2 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMR);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  v7 = v4;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, 1, &v7);

  *a2 = v7;
  return result;
}

void static AudioLibraryComponent.__fromCore(_:)(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit13AudioResourceCTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v4 = REAudioLibraryComponentCopyAssetNames();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFStringRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  *a2 = v5;
}

void AudioLibraryComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  *v82 = *v1;
  v3 = *v82;
  AudioLibraryComponent.removeDeletedResources(component:)();
  v4 = *v82 + 64;
  v5 = 1 << *(*v82 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v82 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  *(&v10 + 1) = 2;
  v65 = xmmword_1C1887600;
  *&v10 = 136315138;
  v64 = v10;
  v67 = *v82;
  v68 = v8;
  v66 = v2;
  while (v7)
  {
LABEL_12:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v9 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v3 + 56) + 8 * v15);

    v70 = v18;
    v71 = v17;
    v20 = MEMORY[0x1C68F3280](v18, v17);
    AssetForName = REAudioLibraryComponentGetAssetForName();

    if (!AssetForName)
    {
      goto LABEL_6;
    }

    v69 = v19;
    v22 = REAssetGetSwiftObject();
    type metadata accessor for AudioResource();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    v29 = REAssetHandleAssetType();
    if (one-time initialization token for resourceClasses != -1)
    {
      v57 = v29;
      swift_once();
      v29 = v57;
    }

    rawValue = resourceClasses._rawValue;
    v31 = v71;
    if (*(resourceClasses._rawValue + 2) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v33 & 1) != 0))
    {
      v34 = *(rawValue[7] + 16 * v32);
      v61 = *(rawValue[7] + 16 * v32 + 8);
      v62 = *(v61 + 16);
      v60 = v34;
      v35 = v34;
      v36 = type metadata accessor for Optional();
      v63 = &v58;
      v58 = *(v36 - 8);
      v59 = v36;
      v37 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      v38 = MEMORY[0x1EEE9AC00](v36);
      v40 = &v58 - v39;
      v62(AssetForName, v35, v61, v38);
      v41 = *(v35 - 8);
      if ((*(v41 + 48))(v40, 1, v35) == 1)
      {
        (*(v58 + 8))(v40, v59);
        memset(v82, 0, 40);
      }

      else
      {
        *&v82[24] = v60;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
        (*(v41 + 32))(boxed_opaque_existential_1, v40, v35);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16LoadableResource_pSgMd, &_s17RealityFoundation16LoadableResource_pSgMR);
      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      v23 = v78;
      if (!v78)
      {
        goto LABEL_28;
      }

LABEL_14:
      v19 = v69;
      if (*(v69 + 16) == *(v23 + 16))
      {
        goto LABEL_36;
      }

      type metadata accessor for AudioFileResource();
      v24 = swift_dynamicCastClass();
      if (v24 && (v25 = v24, (v26 = swift_dynamicCastClass()) != 0))
      {
        if (*(v25 + 16) == *(v26 + 16))
        {
LABEL_36:

          goto LABEL_39;
        }

        v19 = v69;

        AudioFileResource.CreateOptions.init(from:)(&v74);
        v78 = v74;
        v79 = v75;
        v80 = v76;
        v81 = v77;
        AudioFileResource.CreateOptions.init(from:)(&v74);
        *v82 = v74;
        *&v82[16] = v75;
        *&v82[32] = v76;
        v83 = v77;
        v74 = v78;
        v75 = v79;
        v76 = v80;
        v77 = v81;
        v72[0] = *v82;
        v72[1] = *&v82[16];
        v72[2] = *&v82[32];
        v73 = v83;
        v27 = specialized static AudioFileResource.CreateOptions.== infix(_:_:)(&v74, v72);
        outlined destroy of AudioFileResource.CreateOptions(v82);
        outlined destroy of AudioFileResource.CreateOptions(&v78);
        if ((v27 & 1) == 0)
        {

          goto LABEL_5;
        }

        IsEqual = REAudioFileAssetIsEqual();

        v3 = v67;
        if (!IsEqual)
        {
          goto LABEL_6;
        }

LABEL_35:

        v8 = v68;
      }

      else
      {
        type metadata accessor for AudioFileGroupResource();
        v51 = swift_dynamicCastClass();
        if (!v51 || (v52 = v51, (v53 = swift_dynamicCastClass()) == 0))
        {

LABEL_5:
          v3 = v67;
          goto LABEL_6;
        }

        v54 = *(v52 + 24);
        v55 = *(v53 + 24);

        LOBYTE(v54) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit17AudioFileResourceC_Tt1g5(v54, v55);

        v3 = v67;
        if (v54)
        {
          goto LABEL_35;
        }

LABEL_6:
        v11 = *(v19 + 16);
        v12 = MEMORY[0x1C68F3280](v70, v71);

        REAudioLibraryComponentRegisterAsset();

        v8 = v68;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = v65;
      v43 = REAssetGetType();
      *(v42 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
      *(v42 + 64) = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v42 + 32) = v43;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

LABEL_28:
      if (one-time initialization token for audio != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.audio);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v82 = v49;
        *v48 = v64;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v31, v82);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_1C1358000, v46, v47, "[API/RealityKit] [AudioLibraryComponent] Failed to get AudioResource from coreAssetType for asset %s.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1C6902A30](v49, -1, -1);
        MEMORY[0x1C6902A30](v48, -1, -1);
      }

      else
      {
      }

LABEL_39:
      v3 = v67;
      v8 = v68;
    }
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t _s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZ0A3Kit05AudioD0C_Tt1g5(uint64_t a1)
{
  v2 = REAssetGetSwiftObject();
  type metadata accessor for AudioResource();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    v4 = REAssetHandleAssetType();
    if (one-time initialization token for resourceClasses != -1)
    {
      v22 = v4;
      swift_once();
      v4 = v22;
    }

    rawValue = resourceClasses._rawValue;
    if (!*(resourceClasses._rawValue + 2) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) == 0))
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C1887600;
      v19 = REAssetGetType();
      *(v18 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
      *(v18 + 64) = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v18 + 32) = v19;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return 0;
    }

    v8 = rawValue[7];
    v9 = *(v8 + 16 * v6 + 8);
    v10 = *(v9 + 16);
    v23 = *(v8 + 16 * v6);
    v11 = v23;
    v12 = type metadata accessor for Optional();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = &v23 - v15;
    v10(a1, v23, v9);
    v17 = *(v11 - 8);
    if ((*(v17 + 48))(v16, 1, v11) == 1)
    {
      (*(v13 + 8))(v16, v12);
      memset(v25, 0, 40);
    }

    else
    {
      *(&v25[1] + 8) = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16LoadableResource_pSgMd, &_s17RealityFoundation16LoadableResource_pSgMR);
    if (!swift_dynamicCast())
    {
      return 0;
    }

    result = v24;
    if (!v24)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZAA014AudioFileGroupD0C_Tt1g5Tm(uint64_t a1, void (*a2)(void))
{
  v4 = REAssetGetSwiftObject();
  a2(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    v6 = REAssetHandleAssetType();
    if (one-time initialization token for resourceClasses != -1)
    {
      v25 = v6;
      swift_once();
      v6 = v25;
    }

    rawValue = resourceClasses._rawValue;
    if (*(resourceClasses._rawValue + 2) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v9 & 1) != 0))
    {
      v10 = rawValue[7];
      v11 = *(v10 + 16 * v8 + 8);
      v12 = *(v11 + 16);
      v26 = *(v10 + 16 * v8);
      v13 = v26;
      v14 = type metadata accessor for Optional();
      v15 = *(v14 - 8);
      v16 = *(v15 + 64);
      v17 = MEMORY[0x1EEE9AC00](v14);
      v19 = &v26 - v18;
      v12(a1, v26, v11, v17);
      v20 = *(v13 - 8);
      if ((*(v20 + 48))(v19, 1, v13) == 1)
      {
        (*(v15 + 8))(v19, v14);
        memset(v28, 0, 40);
      }

      else
      {
        *(&v28[1] + 8) = v26;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        (*(v20 + 32))(boxed_opaque_existential_1, v19, v13);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16LoadableResource_pSgMd, &_s17RealityFoundation16LoadableResource_pSgMR);
      if (swift_dynamicCast())
      {
        return v27;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C1887600;
      v22 = REAssetGetType();
      *(v21 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
      *(v21 + 64) = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v21 + 32) = v22;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v23 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    return 0;
  }

  return result;
}

void AudioLibraryComponent.removeDeletedResources(component:)()
{
  v1 = *v0;
  v2 = REAudioLibraryComponentCopyAssetNames();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10RealityKit13AudioResourceCG_SSs5NeverOTg504_s17d12Foundation21f126LibraryComponentV22removeDeletedResources33_702952AAC0242E04445618A79588EAB8LL9componentys13OpaquePointerV_tFS2S3key_0A3Kit0C8G69C5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_AlMtSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of [String : AudioResource].Index._Variant(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : AudioResource].Index._Variant(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v33 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v6 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v25 = *v6;
      v26 = *a3;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v32 = *a3;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v8;
      *(v34[7] + 8 * v27) = v25;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, a3, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v33 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
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

uint64_t outlined init with copy of __RKEntityActionSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __RKEntityActionVisibilityTypeUSD.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7368560;
    v6 = 0x7055656C616373;
    if (a1 != 8)
    {
      v6 = 0x776F44656C616373;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x766F624165766F6DLL;
    if (a1 != 5)
    {
      v7 = 0x6F6C654265766F6DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x6867695265766F6DLL;
    v3 = 0x6E6F724665766F6DLL;
    if (a1 != 3)
    {
      v3 = 0x6B63614265766F6DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7466654C65766F6DLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEaseTypeUSD.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionVisibilityTypeUSD.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

__n128 __RKEntitySpinActionArguments.init(target:duration:iterations:direction:axis:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, __n128 a6@<Q2>)
{
  v10 = *a2;
  v11 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v12 = v11[7];
  *(a3 + v12) = 2;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(a3, a1, v13);
  v14 = 1.0;
  if (a4 < 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = a4;
  }

  v16 = a3 + v11[5];
  *v16 = v15;
  *(v16 + 4) = 0;
  if (a5 >= 0.0)
  {
    v14 = a5;
  }

  v17 = a3 + v11[6];
  v18 = (a3 + v11[8]);
  *v17 = v14;
  *(v17 + 4) = 0;
  *(a3 + v12) = v10;
  result = a6;
  *v18 = a6;
  v18[1].n128_u8[0] = 0;
  return result;
}

__n128 __RKEntityOrbitEntityActionArguments.init(target:pivotTarget:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, __n128 a9@<Q2>, float a10@<S3>, float a11@<S4>)
{
  v19 = *a4;
  v20 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v21 = v20[10];
  *(a6 + v21) = 2;
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 32);
  v23(a6, a1, v22);
  v23(a6 + v20[5], a2, v22);
  v24 = 1.0;
  if (a7 >= 0.0)
  {
    v24 = a7;
  }

  v25 = a6 + v20[6];
  v26 = a6 + v20[7];
  v27 = v20[9];
  v28 = (a6 + v20[8]);
  v29 = v20[11];
  v30 = a6 + v20[12];
  v31 = a6 + v20[13];
  *v25 = v24;
  *(v25 + 4) = 0;
  *v26 = a8;
  *(v26 + 4) = 0;
  result = a9;
  *v28 = a9;
  v28[1].n128_u8[0] = 0;
  *(a6 + v27) = a3;
  *(a6 + v21) = v19;
  *(a6 + v29) = a5;
  *v30 = a10;
  *(v30 + 4) = 0;
  *v31 = a11;
  *(v31 + 4) = 0;
  return result;
}

uint64_t __RKEntityAudioActionArguments.init(target:path:type:spatialMode:volume:loops:multiplePerformBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v13 = *a4;
  v14 = *a5;
  v24 = *a7;
  v15 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v16 = v15[6];
  *(a8 + v16) = 3;
  v17 = v15[8];
  v18 = a8 + v15[7];
  v19 = v15[9];
  *(a8 + v19) = 3;
  v20 = type metadata accessor for UUID();
  result = (*(*(v20 - 8) + 32))(a8, a1, v20);
  v22 = (a8 + v15[5]);
  *v22 = a2;
  v22[1] = a3;
  *(a8 + v16) = v13;
  *(a8 + v19) = v14;
  *v18 = a9;
  *(v18 + 8) = 0;
  *(a8 + v17) = a6;
  *(a8 + v15[10]) = v24;
  return result;
}

uint64_t __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, float a9@<S2>)
{
  v17 = *a3;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v19 = started[14];
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v24 = *(v21 + 56);
  v24(a6 + v19, 1, 1, v20);
  (*(v21 + 32))(a6, a1, v20);
  *(a6 + started[5]) = a2;
  *(a6 + started[6]) = v17;
  *(a6 + started[10]) = a4;
  *(a6 + started[8]) = a8;
  *(a6 + started[7]) = a7;
  *(a6 + started[11]) = a9;
  *(a6 + started[9]) = a5;
  *(a6 + started[12]) = 0;
  v22 = a6 + started[13];
  *v22 = 0x3FF0000000000000;
  *(v22 + 8) = 0;
  outlined destroy of BodyTrackingComponent?(a6 + v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return (v24)(a6 + v19, 1, 1, v20);
}

uint64_t __RKChangeSceneActionArguments.init(sceneRoot:targetSceneIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for __RKChangeSceneActionArguments(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t __RKEntityEmphasisActionArguments.init(target:duration:iterations:animationStyle:emphasisAnimationType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v13 = v12[7];
  *(a4 + v13) = 3;
  v14 = v12[8];
  *(a4 + v14) = 8;
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(a4, a1, v15);
  v17 = 1.0;
  if (a5 < 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = a5;
  }

  v19 = a4 + v12[5];
  *v19 = v18;
  *(v19 + 4) = 0;
  if (a6 >= 0.0)
  {
    v17 = a6;
  }

  v20 = a4 + v12[6];
  *v20 = v17;
  *(v20 + 4) = 0;
  *(a4 + v13) = v10;
  *(a4 + v14) = v11;
  return result;
}

uint64_t __RKEntityForceActionArguments.init(target:force:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for __RKEntityForceActionArguments(0);
  v17 = a8 + *(v16 + 20);
  v18 = a8 + *(v16 + 24);
  v19 = type metadata accessor for UUID();
  result = (*(*(v19 - 8) + 32))(a8, a1, v19);
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4 & 1;
  *v18 = a5;
  *(v18 + 8) = a6;
  *(v18 + 16) = a7 & 1;
  return result;
}

__n128 __RKEntityLookAtCameraActionArguments.init(target:duration:animationDuration:direction:rotation:upVector:loops:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, __n128 a6@<Q2>, float a7@<S3>, __n128 a8@<Q4>)
{
  v14 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v15 = a3 + v14[5];
  v16 = a3 + v14[6];
  v17 = (a3 + v14[7]);
  v18 = a3 + v14[8];
  v19 = v14[10];
  v20 = (a3 + v14[9]);
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 32))(a3, a1, v21);
  *v15 = a4;
  *(v15 + 4) = 0;
  *v16 = a5;
  *(v16 + 4) = 0;
  result = a8;
  *v17 = a6;
  v17[1].n128_u8[0] = 0;
  *v18 = a7;
  *(v18 + 4) = 0;
  *v20 = a8;
  v20[1].n128_u8[0] = 0;
  *(a3 + v19) = a2;
  return result;
}

uint64_t __RKEntityCustomActionArguments.init(target:actionIdentifier:customArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a2;
  v29 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  outlined init with copy of UUID?(a1, v14);
  v20 = v16[6];
  v21 = v20(v14, 1, v15);
  v31 = a4;
  if (v21 == 1)
  {
    UUID.init(uuidString:)();
    result = v20(v11, 1, v15);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v23 = v16[4];
    v23(v19, v11, v15);
    if (v20(v14, 1, v15) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v23 = v16[4];
    v23(v19, v14, v15);
  }

  v23(a5, v19, v15);
  v24 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v25 = &a5[*(v24 + 20)];
  v26 = v29;
  *v25 = v28;
  *(v25 + 1) = v26;
  v27 = v31;
  if (!v31)
  {
    v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  result = outlined destroy of BodyTrackingComponent?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *&a5[*(v24 + 24)] = v27;
  return result;
}

uint64_t __RKEntityTransformActionArguments.init(target:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:relativeToEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, char *a13, char *a14, char *a15, char a16, uint64_t a17)
{
  v45 = *a14;
  v46 = *a13;
  v47 = *a15;
  v23 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v24 = v23[9];
  *(a9 + v24) = 2;
  v25 = v23[10];
  *(a9 + v25) = 10;
  v26 = v23[11];
  *(a9 + v26) = 3;
  v27 = v23[15];
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  (*(v29 + 56))(a9 + v27, 1, 1, v28);
  (*(v29 + 32))(a9, a1, v28);
  v30 = 1.0;
  if (a10 >= 0.0)
  {
    v30 = a10;
  }

  v31 = a9 + v23[5];
  v32 = a9 + v23[6];
  v33 = a9 + v23[8];
  *v33 = v30;
  *(v33 + 4) = 0;
  *v31 = a2;
  *(v31 + 8) = a3;
  *(v31 + 16) = a4 & 1;
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  if ((a7 & 1) == 0)
  {
    *v32 = a5;
    *(v32 + 8) = a6;
    *(v32 + 16) = 0;
  }

  v34 = a9 + v23[7];
  v35 = v23[12];
  v36 = a9 + v23[13];
  v37 = v23[14];
  *v34 = a8;
  *(v34 + 4) = BYTE4(a8) & 1;
  *(a9 + v24) = v46;
  *(a9 + v25) = v45;
  v38 = a9 + v37;
  *(a9 + v26) = v47;
  *(a9 + v35) = a16 & 1;
  *v36 = a11;
  *(v36 + 4) = 0;
  *v38 = a12;
  *(v38 + 4) = 0;

  return outlined assign with take of UUID?(a17, a9 + v27);
}

uint64_t __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, float a11@<S2>, double a12@<D3>)
{
  v21 = *a3;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v23 = started[14];
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  (*(v25 + 56))(a8 + v23, 1, 1, v24);
  (*(v25 + 32))(a8, a1, v24);
  *(a8 + started[5]) = a2;
  *(a8 + started[6]) = v21;
  *(a8 + started[10]) = a4;
  *(a8 + started[8]) = a10;
  *(a8 + started[7]) = a9;
  *(a8 + started[11]) = a11;
  *(a8 + started[9]) = a5;
  *(a8 + started[12]) = a6;
  v26 = a8 + started[13];
  *v26 = a12;
  *(v26 + 8) = 0;

  return outlined assign with take of UUID?(a7, a8 + v23);
}

uint64_t __RKEntityShowActionArguments.init(target:duration:distance:ease:easeType:fadeIn:finalOpacity:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:animationStyle:buildInAnimationType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>)
{
  v21 = *a2;
  v22 = *a3;
  v39 = *a6;
  v23 = *a7;
  v24 = a8(0);
  v25 = v24[7];
  *(a9 + v25) = 10;
  v26 = v24[8];
  *(a9 + v26) = 3;
  v27 = v24[14];
  *(a9 + v27) = 3;
  v28 = v24[15];
  *(a9 + v28) = 10;
  v29 = type metadata accessor for UUID();
  result = (*(*(v29 - 8) + 32))(a9, a1, v29);
  v31 = 1.0;
  if (a10 >= 0.0)
  {
    v31 = a10;
  }

  v32 = a9 + v24[5];
  v33 = a9 + v24[6];
  v34 = v24[9];
  v35 = a9 + v24[10];
  v36 = v24[11];
  v37 = a9 + v24[12];
  v38 = a9 + v24[13];
  *v32 = v31;
  *(v32 + 4) = 0;
  *v33 = a11;
  *(v33 + 4) = 0;
  *(a9 + v25) = v21;
  *(a9 + v26) = v22;
  *(a9 + v34) = a4;
  *v35 = a12;
  *(v35 + 4) = 0;
  *(a9 + v36) = a5;
  *v37 = a13;
  *(v37 + 4) = 0;
  *v38 = a14;
  *(v38 + 4) = 0;
  *(a9 + v27) = v39;
  *(a9 + v28) = v23;
  return result;
}

RealityKit::__RKWaitActionArguments __swiftcall __RKWaitActionArguments.init(duration:)(RealityKit::__RKWaitActionArguments duration)
{
  if (duration.duration < 0.0)
  {
    duration.duration = 1.0;
  }

  *v1 = duration.duration;
  return duration;
}

RealityKit::__RKEntityTriggerSpecification::Name_optional __swiftcall __RKEntityTriggerSpecification.Name.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityTriggerSpecification.Name.init(rawValue:), v3);

  v7 = 14;
  if (v5 < 0xE)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKEntityTriggerSpecification.Name.rawValue.getter()
{
  result = 1734439524;
  switch(*v0)
  {
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 0x74416B6F6F6CLL;
      break;
    case 3:
      result = 0x6E656D6563616C70;
      break;
    case 4:
      result = 0x74696D69786F7270;
      break;
    case 5:
      result = 0x6C61766F6D6572;
      break;
    case 6:
      result = 0x646E756F73;
      break;
    case 7:
      result = 0x7472617473;
      break;
    case 8:
      result = 0x6567726154706174;
      break;
    case 9:
      result = 0x72656D6974;
      break;
    case 0xA:
      result = 0x6F6973696C6C6F63;
      break;
    case 0xB:
      result = 0x6D6F74737563;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      result = 0x70756F7267;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityTriggerSpecification.Name@<X0>(unint64_t *a1@<X8>)
{
  result = __RKEntityTriggerSpecification.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.GroupCodingKeys()
{
  return protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.GroupCodingKeys();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.GroupCodingKeys()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.GroupCodingKeys();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.GroupCodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.GroupCodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.GroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.GroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.TapTargetCodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.TapTargetCodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.TapTargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.TapTargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityTriggerSpecification.ProximityCodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x65636E6174736964;
  if (v2 != 1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567726174;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x65636E6174736964;
  if (*a2 != 1)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567726174;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.ProximityCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityTriggerSpecification.ProximityCodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.ProximityCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityTriggerSpecification.ProximityCodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.ProximityCodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityTriggerSpecification.ProximityCodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65636E6174736964;
  if (v2 != 1)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityTriggerSpecification.ProximityCodingKeys()
{
  v1 = 0x65636E6174736964;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}