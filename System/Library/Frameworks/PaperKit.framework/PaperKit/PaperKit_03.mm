uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PKStrokeProperties.visitReferences(_:)(uint64_t a1)
{
  v47 = type metadata accessor for AnyCRValue();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for PKStrokeProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v45 = a1;
  Ref.visitReferences(_:)();
  v12 = *(v1 + *(v11 + 48));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v40 = v3 + 16;
  v18 = (v3 + 32);
  v42 = v3;
  v43 = v12;
  v44 = (v3 + 8);

  v20 = 0;
  v41 = v10;
  v38 = v8;
  v39 = (v3 + 32);
  if (v16)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v42;
      v27 = *(*(v43 + 48) + 8 * v25);
      v28 = v46;
      v29 = v47;
      (*(v42 + 16))(v46, *(v43 + 56) + *(v42 + 72) * v25, v47);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd);
      v31 = *(v30 + 48);
      v8 = v38;
      *v38 = v27;
      v32 = v29;
      v18 = v39;
      (*(v26 + 32))(&v8[v31], v28, v32);
      (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
      v23 = v21;
      v10 = v41;
LABEL_13:
      outlined init with take of Range<AttributedString.Index>(v8, v10, &_sSi3key_9Coherence10AnyCRValueV5valuetSgMd);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
      }

      v34 = &v10[*(v33 + 48)];
      v36 = v46;
      v35 = v47;
      (*v18)(v46, v34, v47);
      AnyCRValue.visitReferences(_:)();
      result = (*v44)(v36, v35);
      v20 = v23;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd);
        (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PKStrokeProperties.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v122 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v111 - v11;
  v137 = type metadata accessor for CRKeyPath();
  v131 = *(v137 - 8);
  v12 = MEMORY[0x1EEE9AC00](v137);
  v130 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v135 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v116 = (&v111 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v118 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = &v111 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v117 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v111 - v24;
  v138 = type metadata accessor for UUID();
  v136 = *(v138 - 8);
  v26 = MEMORY[0x1EEE9AC00](v138);
  v115 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v132 = &v111 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v121 = &v111 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v111 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v114 = &v111 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v126 = &v111 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v111 - v40;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeProperties);
  v42 = type metadata accessor for PKStrokeProperties(0);
  Ref.copy(renamingReferences:)();
  (*(v39 + 40))(a2 + v42[8], v41, v38);
  v43 = v136;
  v44 = specialized _NativeDictionary.mapValues<A>(_:)(*(v2 + v42[12]), a1);
  v45 = v42[12];

  v46 = a2;
  v47 = v138;
  v133 = v46;
  *(v46 + v45) = v44;
  v48 = v42;
  v49 = v42[5];
  v129 = v3;
  outlined init with copy of Date?(v3 + v49, v25, &_s10Foundation4UUIDVSgMd);
  v50 = v43[6];
  v51 = v50(v25, 1, v47);
  v134 = v34;
  v124 = v43 + 6;
  v125 = a1;
  v127 = v42;
  v123 = v50;
  if (v51 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s10Foundation4UUIDVSgMd);
    v52 = v137;
    v53 = v130;
    goto LABEL_12;
  }

  v54 = v126;
  v112 = v43[4];
  v112(v126, v25, v47);
  v113 = v43[2];
  v113(v34, v54, v47);
  v55 = v116;
  CRKeyPath.init(_:)();
  v56 = *a1;
  if (*(*a1 + 16))
  {
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
    v58 = v137;
    v59 = v131;
    v60 = v43;
    if (v61)
    {
      (*(v131 + 16))(v119, *(v56 + 56) + *(v131 + 72) * v57, v137);
    }
  }

  else
  {
    v60 = v43;
    v58 = v137;
    v59 = v131;
  }

  v62 = *(v59 + 8);
  v62(v55, v58);
  v63 = v119;
  v116 = *(v59 + 56);
  v116();
  v64 = (*(v59 + 48))(v63, 1, v58);
  v47 = v138;
  if (v64)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence9CRKeyPathVSgMd);
    v65 = v117;
    (v60[7])(v117, 1, 1, v47);
  }

  else
  {
    v66 = *(v59 + 16);
    v67 = v63;
    v68 = v135;
    v66(v135, v67, v58);
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence9CRKeyPathVSgMd);
    v65 = v117;
    CRKeyPath.uuid.getter();
    v62(v68, v58);
    if (v123(v65, 1, v47) != 1)
    {
      (v60[1])(v126, v47);
      v103 = v114;
      v104 = v112;
      v112(v114, v65, v47);
      v48 = v127;
      v105 = v127[5];
      v106 = v133;
      outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v105, &_s10Foundation4UUIDVSgMd);
      v104(v106 + v105, v103, v47);
      (v60[7])(v106 + v105, 0, 1, v47);
      v43 = v60;
      a1 = v125;
      v53 = v130;
      v52 = v137;
      goto LABEL_11;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s10Foundation4UUIDVSgMd);
  v69 = v134;
  UUID.init()();
  v48 = v127;
  v70 = v127[5];
  v71 = v133;
  outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v70, &_s10Foundation4UUIDVSgMd);
  v72 = v113;
  v113((v71 + v70), v69, v47);
  (v60[7])(v71 + v70, 0, 1, v47);
  v73 = v121;
  v74 = v126;
  v72(v121, v126, v138);
  v75 = v135;
  CRKeyPath.init(_:)();
  v72(v73, v69, v138);
  v76 = v122;
  CRKeyPath.init(_:)();
  v52 = v137;
  (v116)(v76, 0, 1, v137);
  v43 = v60;
  a1 = v125;
  specialized Dictionary.subscript.setter(v76, v75);
  v77 = v43[1];
  v77(v69, v138);
  v78 = v74;
  v47 = v138;
  v77(v78, v138);
  v53 = v130;
LABEL_11:
  v50 = v123;
LABEL_12:
  v79 = v128;
  outlined init with copy of Date?(v129 + v48[6], v128, &_s10Foundation4UUIDVSgMd);
  if (v50(v79, 1, v47) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s10Foundation4UUIDVSgMd);
  }

  v81 = v132;
  v128 = v43[4];
  (v128)(v132, v79, v47);
  v82 = v134;
  v129 = v43[2];
  v130 = (v43 + 2);
  v129(v134, v81, v47);
  CRKeyPath.init(_:)();
  v83 = *a1;
  if (*(*a1 + 16))
  {
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v53);
    v85 = v131;
    if (v86)
    {
      (*(v131 + 16))(v120, *(v83 + 56) + *(v131 + 72) * v84, v52);
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }
  }

  else
  {
    v87 = 1;
    v85 = v131;
  }

  v88 = *(v85 + 8);
  v89 = v137;
  v88(v53, v137);
  v90 = v120;
  v131 = *(v85 + 56);
  (v131)(v120, v87, 1, v89);
  if ((*(v85 + 48))(v90, 1, v89))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSgMd);
    v91 = v136;
    v92 = v118;
    (*(v136 + 56))(v118, 1, 1, v47);
LABEL_22:
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s10Foundation4UUIDVSgMd);
    UUID.init()();
    v95 = v127[6];
    v96 = v133;
    outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v95, &_s10Foundation4UUIDVSgMd);
    v97 = v129;
    v129((v96 + v95), v82, v47);
    (*(v91 + 56))(v96 + v95, 0, 1, v47);
    v98 = v121;
    v99 = v132;
    v97(v121, v132, v47);
    v100 = v135;
    CRKeyPath.init(_:)();
    v97(v98, v82, v47);
    v101 = v122;
    CRKeyPath.init(_:)();
    (v131)(v101, 0, 1, v137);
    specialized Dictionary.subscript.setter(v101, v100);
    v102 = *(v91 + 8);
    v102(v82, v47);
    return (v102)(v99, v47);
  }

  v93 = v135;
  (*(v85 + 16))(v135, v90, v89);
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSgMd);
  v92 = v118;
  CRKeyPath.uuid.getter();
  v88(v93, v89);
  v82 = v134;
  v94 = v123(v92, 1, v47);
  v91 = v136;
  if (v94 == 1)
  {
    goto LABEL_22;
  }

  (*(v136 + 8))(v132, v47);
  v107 = v115;
  v108 = v128;
  (v128)(v115, v92, v47);
  v109 = v127[6];
  v110 = v133;
  outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v109, &_s10Foundation4UUIDVSgMd);
  v108(v110 + v109, v107, v47);
  return (*(v91 + 56))(v110 + v109, 0, 1, v47);
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  if (v5)
  {
    v7 = a1[3];
    v6 = a1[4];
    v8 = a1[2];
    v25[0] = *a1;
    v25[1] = v5;
    v25[2] = v8;
    v25[3] = v7;
    v25[4] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v2 = v24;
  }

  else
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v2;
      v25[0] = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25[0];
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v14, v18);
      v21 = *(*(v16 + 56) + 40 * v14);

      specialized _NativeDictionary._delete(at:)(v14, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
  }

  else
  {
    outlined init with take of WeakCalculateExpression(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary.copy());
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for CRKeyPath();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for CRKeyPath();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13, MEMORY[0x1E69954B8], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for CRKeyPath();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence9CRKeyPathVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    (*(v9 + 8))(a2, v8);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for CRAsset();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for CRAsset();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13, MEMORY[0x1E6995408], &lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for CRAsset();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary.copy());
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sScCySo10CGImageRefaSgs5NeverOGSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_sScCySo10CGImageRefaSgs5NeverOGSgMd);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sypSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sypSgMd);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for PDFPageID();
      outlined destroy of PKStrokeProperties(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for PDFPageID);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
      *v4 = v10;
    }

    else
    {
      return outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v15);
    result = outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
    *v3 = v17;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for CRKeyPath();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = type metadata accessor for CRKeyPath();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v17);
    v18 = type metadata accessor for CRKeyPath();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sypSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sypSgMd);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v4 = v24;
  }

  else
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        a4();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      specialized _NativeDictionary._delete(at:)(v15, v17, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = (v21)(a2, v19);
      *v5 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a3 == -1)
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v20 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v20;
      }

      outlined consume of Data._Representation(*(*(v18 + 48) + 16 * v16), *(*(v18 + 48) + 16 * v16 + 8));
      outlined consume of AsyncCache<Data, CGImageRef>.CacheState(*(*(v18 + 56) + 24 * v16), *(*(v18 + 56) + 24 * v16 + 8), *(*(v18 + 56) + 24 * v16 + 16));
      specialized _NativeDictionary._delete(at:)(v16, v18);
      result = outlined consume of Data._Representation(a4, a5);
      *v6 = v18;
    }

    else
    {

      return outlined consume of Data._Representation(a4, a5);
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3 & 1, a4, a5, v12);
    result = outlined consume of Data._Representation(a4, a5);
    *v6 = v19;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v10, v12);
      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t PKStrokeProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for PKStrokeProperties(0);
    LOBYTE(v18) = 1;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17[1] = v9[8];
    LOBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokePathStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v18 = *(v3 + v9[9]);
    v22 = 4;
    type metadata accessor for PKStrokeMaskStruct();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, type metadata accessor for PKStrokeMaskStruct);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[10]);
    v11 = *(v10 + 32);
    v12 = v10[1];
    v18 = *v10;
    v19 = v12;
    LOBYTE(v20) = v11;
    v22 = 5;
    lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v9[11]);
    v14 = *(v13 + 48);
    v15 = v13[1];
    v18 = *v13;
    v19 = v15;
    v20 = v13[2];
    v21 = v14;
    v22 = 6;
    type metadata accessor for CGAffineTransform(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v18 = *(v3 + v9[12]);
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi9Coherence10AnyCRValueVGMd);
    lazy protocol witness table accessor for type [Int : AnyCRValue] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PKStrokeProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMd);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PKStrokeProperties(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 20);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 56);
  v55 = v16;
  v18(v15 + v16, 1, 1, v17);
  v52 = *(v12 + 24);
  v18(v15 + v52, 1, 1, v17);
  v50 = v12;
  v19 = v15;
  v20 = v15 + *(v12 + 40);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  v21 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v25 = v55;
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_0(v54);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19 + v25, &_s10Foundation4UUIDVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19 + v26, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v22 = v44;
    v23 = v45;
    LOBYTE(v56) = 0;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v19;
    *v19 = v24;
    LOBYTE(v56) = 1;
    v27 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v51 = v11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v27;
    v28 = v41;
    outlined assign with take of UUID?(v22, v41 + v55, &_s10Foundation4UUIDVSgMd);
    LOBYTE(v56) = 2;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v50;
    *(v28 + v50[7]) = v29;
    LOBYTE(v56) = 3;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokePathStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
    v31 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v48 + 32))(v28 + v30[8], v23, v31);
    type metadata accessor for PKStrokeMaskStruct();
    v60 = 4;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, type metadata accessor for PKStrokeMaskStruct);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v28 + v30[9]) = v56;
    v60 = 5;
    lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v58;
    v33 = v57;
    *v20 = v56;
    *(v20 + 1) = v33;
    v20[32] = v32;
    type metadata accessor for CGAffineTransform(0);
    v60 = 6;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v28 + v50[11];
    v35 = v59;
    v36 = v57;
    *v34 = v56;
    *(v34 + 16) = v36;
    *(v34 + 32) = v58;
    *(v34 + 48) = v35;
    LOBYTE(v56) = 7;
    v37 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of UUID?(v37, v28 + v52, &_s10Foundation4UUIDVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi9Coherence10AnyCRValueVGMd);
    v60 = 8;
    lazy protocol witness table accessor for type [Int : AnyCRValue] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v50[12];
    (*(v46 + 8))(v51, v47);

    *(v28 + v38) = v56;
    outlined init with copy of PKStrokeProperties(v28, v42, type metadata accessor for PKStrokeProperties);
    __swift_destroy_boxed_opaque_existential_0(v54);
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeProperties);
  }
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeProperties()
{
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeProperties(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokeStructCache.BoundsParameters(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(v7, v8);
}

uint64_t PKStrokeStructCache.__deallocating_deinit()
{
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t TaggedStroke.stroke.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t TaggedStroke.substrokes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v6, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t PKStrokeInheritedProperties.ink.getter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double PKStrokeInheritedProperties.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

__C::CGRect __swiftcall PKStrokeStruct.bounds(path:ink:transform:)(PKStrokePath_optional path, PKInk_optional ink, CGAffineTransform *transform)
{
  v4 = *&path.is_nil;
  isa = path.value.super.isa;
  v7 = *ink.value.super.isa;
  v6 = *(ink.value.super.isa + 1);
  v8 = *(ink.value.super.isa + 3);
  v65 = *(ink.value.super.isa + 2);
  v66 = v6;
  v9 = *(ink.value.super.isa + 4);
  v64 = *(ink.value.super.isa + 5);
  v10 = type metadata accessor for PKStrokeProperties(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v57.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57.i8[-v14];
  v16 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  v67 = v3;
  v17 = *(v3 + v16);
  if (one-time initialization token for unfairLock != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  v20 = *(v17 + 32);
  v21 = *(v17 + 40);
  v22 = *(v17 + 64);
  v75[0] = *(v17 + 48);
  v75[1] = v22;
  v23 = *(v17 + 96);
  v75[2] = *(v17 + 80);
  v75[3] = v23;
  outlined init with copy of PKStrokeStructCache.BoundsParameters(v75, &v80);
  os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  *&v80 = isa;
  v61 = v8;
  v62 = v7;
  v24 = v66;
  *(&v80 + 1) = v7;
  *&v81 = v66;
  v25 = v65;
  *(&v81 + 1) = v65;
  *&v82 = v8;
  v63 = v9;
  v26 = v64;
  *(&v82 + 1) = v9;
  *&v83 = v64;
  *(&v83 + 1) = v4;
  v76 = v80;
  v77 = v81;
  v78 = v82;
  v79 = v83;
  v27 = isa;
  v28 = v4;
  v84.origin.x = v19;
  v84.origin.y = v18;
  v84.size.width = v20;
  v84.size.height = v21;
  if (CGRectIsNull(v84) || !specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(v75, &v76))
  {
    v59 = v27;
    v60 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    CRRegister.wrappedValue.getter();
    v29 = &v15[*(v10 + 44)];
    v30 = *v29;
    v57 = *(v29 + 1);
    v58 = v30;
    v31 = *(v29 + 4);
    v32 = *(v29 + 5);
    v33 = v29[48];
    outlined destroy of PKStrokeProperties(v15, type metadata accessor for PKStrokeProperties);
    if (v33)
    {
      v31 = 0.0;
      v32 = 0.0;
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }

    if (v4 && isa)
    {
      v35 = vdupq_n_s64(v34);
      v57 = vbslq_s8(v35, xmmword_1D4059310, v57);
      v58 = vbslq_s8(v35, xmmword_1D4059320, v58);
      v36 = v59;
      v37 = v60;
      CRRegister.wrappedValue.getter();
      v38 = *&v13[*(v10 + 36)];

      outlined destroy of PKStrokeProperties(v13, type metadata accessor for PKStrokeProperties);
      if (v38)
      {
        v39 = *(*(v38 + 16) + 16);
      }

      else
      {
        v39 = 0;
      }

      v41 = v62;
      v40 = v63;
      v42 = v61;
      v43 = objc_opt_self();
      *&v71 = v41;
      *(&v71 + 1) = v24;
      *&v72 = v25;
      *(&v72 + 1) = v42;
      *&v73 = v40;
      *(&v73 + 1) = v26;
      v68[0] = v58;
      v68[1] = v57;
      v69 = v31;
      v70 = v32;
      [v43 _calculateBounds_transform_ink_inkTransform_strokePath_];
      v19 = v44;
      v18 = v45;
      v20 = v46;
      v21 = v47;
    }

    else
    {
      v19 = *MEMORY[0x1E695F050];
      v18 = *(MEMORY[0x1E695F050] + 8);
      v20 = *(MEMORY[0x1E695F050] + 16);
      v21 = *(MEMORY[0x1E695F050] + 24);
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    *(v17 + 16) = v19;
    *(v17 + 24) = v18;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    v48 = *(v17 + 96);
    v49 = *(v17 + 48);
    v50 = *(v17 + 64);
    v73 = *(v17 + 80);
    v74 = v48;
    v71 = v49;
    v72 = v50;
    v51 = v79;
    *(v17 + 80) = v78;
    *(v17 + 96) = v51;
    v52 = v77;
    *(v17 + 48) = v76;
    *(v17 + 64) = v52;
    outlined init with copy of PKStrokeStructCache.BoundsParameters(&v80, v68);
    outlined destroy of PKStrokeStructCache.BoundsParameters(&v71);
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  outlined destroy of PKStrokeStructCache.BoundsParameters(&v80);
  outlined destroy of PKStrokeStructCache.BoundsParameters(v75);
  v53 = v19;
  v54 = v18;
  v55 = v20;
  v56 = v21;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

void closure #1 in CRRegister<>.bounds(in:)(CGFloat *a1@<X0>, void *a2@<X2>, CGRect *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v24 - v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Ref.subscript.getter();
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_project_boxed_opaque_existential_1(a2, v14);
  v17 = specialized CRRegister<>.bounds(in:)(v16, v9, v14, v15);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  v25.origin.x = v10;
  v25.origin.y = v11;
  v25.size.width = v12;
  v25.size.height = v13;
  v26.origin.x = v17;
  v26.origin.y = v19;
  v26.size.width = v21;
  v26.size.height = v23;
  *a3 = CGRectUnion(v25, v26);
}

uint64_t CRRegister<>.requiredContentVersion<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v95 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v94 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v127 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v94 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v94 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v106 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v118 = *(v14 - 8);
  v119 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v94 - v15;
  v16 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v94 - v21;
  v109 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v128 = a2;
  v129 = a3;
  v132 = type metadata accessor for Capsule();
  v116 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v108 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  v31 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v111 = &v94 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v94 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v94 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v94 - v42;
  v96 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v94 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v117 = &v94 - v46;
  v126 = v5;
  CRRegister.value.getter();
  outlined init with take of TaggedStroke(v40, v37, type metadata accessor for TaggedStroke);
  v112 = v31;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKStrokeProperties(v37, type metadata accessor for TaggedStroke);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v49 = *(v48 - 8);
    (*(v49 + 32))(v43, v37, v48);
    (*(v49 + 56))(v43, 0, 1, v48);
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v43, 1, v50);
  v53 = v127;
  if (v52 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  }

  else
  {
    v54 = v107;
    v55 = v120;
    Ref.subscript.getter();
    (*(v51 + 8))(v43, v50);
    outlined init with take of TaggedStroke(v54, v117, type metadata accessor for PKStrokeStruct);
    (*(v116 + 16))(v131, v55, v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    v56 = (v108 + 48);
    v57 = (v108 + 8);
    for (i = (v108 + 32); ; (*i)(v30, v22, v28))
    {
      swift_getWitnessTable();
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v26, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v56)(v22, 1, v28) == 1)
      {
        break;
      }

      (*v57)(v30, v28);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    (*(v116 + 8))(v131, v132);
    v59 = v110;
    Ref.subscript.getter();
    (*v57)(v30, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    outlined destroy of PKStrokeProperties(v59, type metadata accessor for PKStrokeInheritedProperties);
    v60 = v133;
    if (v133)
    {
      v61 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
      v62 = v117;
      v63 = v99;
      CRRegister.wrappedValue.getter();
      v64 = v100;
      v65 = v97;
      v66 = v101;
      (*(v100 + 16))(v97, v63 + *(v98 + 32), v101);
      outlined destroy of PKStrokeProperties(v63, type metadata accessor for PKStrokeProperties);
      v67 = v102;
      Ref.subscript.getter();
      (*(v64 + 8))(v65, v66);
      isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v69 = type metadata accessor for PKStrokePath();
      (*(*(v69 - 8) + 8))(v67, v69);
      v70 = [v61 _requiredContentVersionForStrokePath_ink_];

      outlined destroy of PKStrokeProperties(v62, type metadata accessor for PKStrokeStruct);
      return v70;
    }

    outlined destroy of PKStrokeProperties(v117, type metadata accessor for PKStrokeStruct);
    v53 = v127;
  }

  v71 = v111;
  CRRegister.value.getter();
  v72 = v113;
  outlined init with take of TaggedStroke(v71, v113, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = v130;
  v75 = v119;
  v76 = v114;
  if (EnumCaseMultiPayload == 1)
  {
    v77 = v118;
    (*(v118 + 32))(v114, v72, v119);
    v78 = 0;
    v79 = v120;
  }

  else
  {
    outlined destroy of PKStrokeProperties(v72, type metadata accessor for TaggedStroke);
    v78 = 1;
    v79 = v120;
    v77 = v118;
  }

  (*(v77 + 56))(v76, v78, 1, v75);
  if ((*(v77 + 48))(v76, 1, v75) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    return 1;
  }

  else
  {
    (*(v77 + 32))(v115, v76, v75);
    v80 = v103;
    Ref.subscript.getter();
    v81 = v105;
    CRSequence.makeIterator()();
    (*(v104 + 8))(v80, v81);
    v82 = v123;
    CRSequence.Iterator.next()();
    v83 = v82;
    v70 = 1;
    v132 = *(v53 + 48);
    if (v132(v83, 1, v74) != 1)
    {
      v131 = *(v53 + 32);
      v84 = (v95 + 8);
      v127 = v53 + 32;
      v85 = (v53 + 8);
      v70 = 1;
      v86 = v129;
      do
      {
        v88 = v121;
        (v131)(v121, v83, v74);
        v89 = v122;
        v90 = v128;
        Ref.subscript.getter();
        v91 = CRRegister<>.requiredContentVersion<A>(in:)(v79, v90, v86);
        v92 = v89;
        v74 = v130;
        (*v84)(v92, v126);
        (*v85)(v88, v74);
        if (v70 < v91)
        {
          v70 = v91;
          if (v91 == 4)
          {
            break;
          }
        }

        v87 = v123;
        CRSequence.Iterator.next()();
        v83 = v87;
      }

      while (v132(v87, 1, v74) != 1);
    }

    (*(v106 + 8))(v124, v125);
    (*(v118 + 8))(v115, v119);
  }

  return v70;
}

uint64_t Ref<>.getAllStrokes<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v55 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v57 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - v13;
  v58 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v62 = *(v26 - 8);
  v63 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v55 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v55 - v29;
  v70 = a3;
  v71 = a2;
  v59 = v7;
  v30 = a4;
  v31 = v69;
  Ref.subscript.getter();
  CRRegister.value.getter();
  (*(v20 + 8))(v22, v19);
  outlined init with take of TaggedStroke(v18, v15, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v33 = *(v32 - 8);
    (*(v33 + 32))(v25, v15, v32);
    (*(v33 + 56))(v25, 0, 1, v32);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v15, type metadata accessor for TaggedStroke);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v25, 1, v35);
  v39 = v64;
  v38 = v65;
  if (v37 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    v40 = v59;
    v41 = v60;
    v42 = v56;
    (*(v60 + 16))(v56, v31, v59);
    v43 = v66;
    specialized Set._Variant.insert(_:)(v66, v42);
    return (*(v41 + 8))(v43, v40);
  }

  else
  {
    v45 = v55;
    v68 = v30;
    Ref.subscript.getter();
    (*(v36 + 8))(v25, v35);
    (*(v62 + 32))(v61, v45, v63);
    CRSequence.makeIterator()();
    v46 = v72;
    CRSequence.Iterator.next()();
    v47 = v46;
    v48 = v59;
    v49 = v60;
    v69 = *(v60 + 48);
    v50 = v69(v46, 1, v59);
    v51 = v66;
    v52 = v67;
    v53 = v38;
    if (v50 != 1)
    {
      v54 = *(v49 + 32);
      do
      {
        v54(v51, v47, v48);
        Ref<>.getAllStrokes<A>(_:in:)(v52, v71, v70, v68);
        (*(v49 + 8))(v51, v48);
        CRSequence.Iterator.next()();
        v47 = v72;
      }

      while (v69(v72, 1, v48) != 1);
    }

    (*(v57 + 8))(v39, v53);
    return (*(v62 + 8))(v61, v63);
  }
}

uint64_t PKStrokeInheritedProperties.inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);

  return CRRegister.wrappedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.inherited : PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  outlined init with copy of Date?(v7, v5, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
}

uint64_t PKStrokeInheritedProperties.inherited.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
}

uint64_t (*PKStrokeInheritedProperties.inherited.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PKStrokeInheritedProperties.$inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);

  return CRRegister.projectedValue.getter();
}

uint64_t (*PKStrokeInheritedProperties.$inherited.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t key path getter for PKStrokeInheritedProperties.ink : PKStrokeInheritedProperties@<X0>(void *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PKStrokeInheritedProperties.ink : PKStrokeInheritedProperties(void **a1)
{
  v1 = *a1;
  type metadata accessor for PKStrokeInheritedProperties(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PKStrokeInheritedProperties.ink.setter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PKStrokeInheritedProperties.ink.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*PKStrokeInheritedProperties.$ink.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PKStrokeInheritedProperties(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for PKStrokeInheritedProperties.transform : PKStrokeInheritedProperties@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for PKStrokeInheritedProperties.transform : PKStrokeInheritedProperties()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PKStrokeInheritedProperties.transform.setter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PKStrokeInheritedProperties.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PKStrokeInheritedProperties.$transform : PKStrokeInheritedProperties()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.$transform : PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t PKStrokeInheritedProperties.$transform.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PKStrokeInheritedProperties.$transform.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PKStrokeInheritedProperties(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL PKStrokeInheritedProperties.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v65 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  MEMORY[0x1EEE9AC00](v65);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  outlined init with copy of PKStrokeProperties(v2, v26, type metadata accessor for PKStrokeInheritedProperties.Partial);
  v70 = a1;
  v28 = PKStrokeInheritedProperties.Partial.canMerge(delta:)(a1);
  outlined destroy of PKStrokeProperties(v26, type metadata accessor for PKStrokeInheritedProperties.Partial);
  if (!v28)
  {
    return v28;
  }

  v58 = v28;
  v59 = v9;
  outlined init with copy of Date?(v2, v24, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v57 = v17;
  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  if (v30 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70, v27, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  }

  else
  {
    outlined init with copy of Date?(v70, v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    if (v29(v22, 1, v16) != 1)
    {
      v33 = v57;
      v34 = v60;
      (*(v57 + 32))(v60, v22, v16);
      v31 = v27;
      v35 = v29(v27, 1, v16);
      v32 = v65;
      if (!v35)
      {
        CRRegister.merge(delta:)();
      }

      (*(v33 + 8))(v34, v16);
      goto LABEL_10;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  }

  v31 = v27;
  v32 = v65;
LABEL_10:
  v36 = *(v32 + 20);
  outlined init with copy of Date?(v31 + v36, v15, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v37 = *(v68 + 48);
  v38 = v66;
  v39 = v37(v15, 1, v66);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v40 = *(v32 + 20);
  v41 = v39 == 1;
  v42 = v69;
  if (v41)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v40, v31 + v36, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  }

  else
  {
    v43 = v63;
    outlined init with copy of Date?(v70 + v40, v63, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v44 = v37(v43, 1, v38);
    if (v44 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    }

    else
    {
      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v43, v38);
      if (!v37((v31 + v36), 1, v38))
      {
        CRRegister.merge(delta:)();
      }

      (*(v45 + 8))(v46, v38);
    }
  }

  v47 = v67;
  v48 = *(v32 + 24);
  v49 = v59;
  outlined init with copy of Date?(v31 + v48, v59, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v47);
  outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v52 = *(v32 + 24);
  if (v51 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v52, v31 + v48, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v53 = v64;
    outlined init with copy of Date?(v70 + v52, v64, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v50(v53, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v54 = v69;
      v55 = v62;
      (*(v69 + 32))(v62, v53, v47);
      if (!v50(v31 + v48, 1, v47))
      {
        CRRegister.merge(delta:)();
      }

      (*(v54 + 8))(v55, v47);
    }
  }

  LOBYTE(v28) = v58;
  return v28;
}

BOOL PKStrokeInheritedProperties.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  outlined init with copy of Date?(a1, v19, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v17 = v19;
    v25 = v54;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    v26 = v52;
    v27 = v53;
    goto LABEL_6;
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = v54;
  outlined init with copy of Date?(v54, v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  if (v24(v17, 1, v20) == 1)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v17, v20);
  v26 = v52;
  v27 = v53;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v28 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  outlined init with copy of Date?(a1 + *(v28 + 20), v11, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    v27 = v11;
    v31 = v50;
    v30 = v51;
    v32 = v49;
  }

  else
  {
    v33 = v25;
    v34 = v47;
    (*(v26 + 32))(v47, v11, v12);
    outlined init with copy of Date?(v33 + *(v28 + 20), v27, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v35 = v29(v27, 1, v12);
    v32 = v49;
    if (v35 != 1)
    {
      v41 = CRRegister.canMerge(delta:)();
      v42 = *(v26 + 8);
      v42(v34, v12);
      v42(v27, v12);
      v31 = v50;
      v30 = v51;
      v25 = v54;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v26 + 8))(v34, v12);
    v31 = v50;
    v30 = v51;
    v25 = v54;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
LABEL_11:
  outlined init with copy of Date?(a1 + *(v28 + 24), v32, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v36 = *(v30 + 48);
  v37 = v48;
  if (v36(v32, 1, v48) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    return 1;
  }

  (*(v30 + 32))(v31, v32, v37);
  v32 = v46;
  outlined init with copy of Date?(v25 + *(v28 + 24), v46, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v36(v32, 1, v37) == 1)
  {
    (*(v30 + 8))(v31, v37);
    goto LABEL_14;
  }

  v43 = CRRegister.canMerge(delta:)();
  v44 = *(v30 + 8);
  v44(v31, v37);
  v44(v32, v37);
  return (v43 & 1) != 0;
}

uint64_t PKStrokeInheritedProperties.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  outlined init with copy of Date?(v1, &v19 - v9, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v12 + 8))(v10, v11);
  }

  v13 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  outlined init with copy of Date?(v1 + *(v13 + 20), v7, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v15 + 8))(v7, v14);
  }

  outlined init with copy of Date?(v1 + *(v13 + 24), v4, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v17 + 8))(v4, v16);
}

uint64_t PKStrokeInheritedProperties.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v10 = *(v9 - 8);
  v43 = *(v10 + 56);
  v44 = v9;
  v42 = v10 + 56;
  v43(a2, 1, 1);
  v11 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  v12 = *(v11 + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v48 = v12;
  v15(a2 + v12, 1, 1, v13);
  v17 = *(v11 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v49 = a2;
  v20(a2 + v17, 1, 1, v18);
  v22 = v50;
  dispatch thunk of CRDecoder.keyedContainer()();
  v50 = v22;
  if (v22)
  {

    return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
  }

  v36[1] = v16;
  v37 = v15;
  v40 = v17;
  v41 = v21;
  v38 = v18;
  v39 = v20;
  v23 = v47;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
    v24 = v46;
    v25 = v50;
    CRRegister.init(from:)();
    v26 = v48;
    if (v25)
    {
LABEL_9:

      return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
    }

    v27 = v13;
    v50 = 0;
    (v43)(v24, 0, 1, v44);
    outlined assign with take of UUID?(v24, v49, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  }

  else
  {
    v26 = v48;
    v27 = v13;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd);
    lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
    v28 = v50;
    CRRegister.init(from:)();
    v29 = v28;
    if (v28)
    {
      goto LABEL_9;
    }

    v37(v23, 0, 1, v27);
    outlined assign with take of UUID?(v23, v49 + v26, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  }

  else
  {
    v29 = v50;
  }

  v31 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v32 = v45;
  v33 = v39;
  v34 = v40;
  v35 = v38;
  if (!v31)
  {
  }

  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
  CRRegister.init(from:)();

  if (!v29)
  {
    v33(v32, 0, 1, v35);
    return outlined assign with take of UUID?(v32, v49 + v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
}

uint64_t PKStrokeInheritedProperties.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v34 = &v30 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = v38;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v17)
  {
    v31 = v3;
    v32 = v6;
    v38 = v9;
    v19 = v37;
    outlined init with copy of Date?(v37, v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v14 + 8))(v16, v13);
    }

    v20 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v21 = v32;
    outlined init with copy of Date?(v19 + *(v20 + 20), v32, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v22 = v36;
    v23 = (*(v36 + 48))(v21, 1, v7);
    v24 = v38;
    if (v23 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    }

    else
    {
      (*(v22 + 32))(v38, v21, v7);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v22 + 8))(v24, v7);
    }

    v25 = v34;
    outlined init with copy of Date?(v19 + *(v20 + 24), v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    v26 = v35;
    v27 = v33;
    v28 = (*(v35 + 48))(v25, 1, v33);
    v29 = v31;
    if (v28 == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v26 + 32))(v31, v25, v27);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v29, v27);
    }
  }

  return result;
}

uint64_t PKStrokeInheritedProperties.init(ink:transform:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v26 = *(*(v16 - 8) + 56);
  v26(v15, 1, 1, v16);
  outlined init with copy of Date?(v15, v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v17 = type metadata accessor for PKStrokeInheritedProperties(0);
  v25 = *(v17 + 20);
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v24 = *(v17 + 24);
  v38 = 0x3FF0000000000000uLL;
  *&v39 = 0;
  *(&v39 + 1) = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
  v40 = 0uLL;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v26(v15, 1, 1, v16);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v18 = v27;
  CRRegister.init<A>(_:)();
  (*(v28 + 40))(a3, v18, v29);
  *&v38 = v33;
  v19 = v33;
  v20 = v30;
  CRRegister.init(_:)();
  (*(v31 + 40))(a3 + v25, v20, v32);
  v21 = v34;
  v22 = v35[1];
  v38 = *v35;
  v39 = v22;
  v40 = v35[2];
  CRRegister.init(_:)();

  return (*(v36 + 40))(a3 + v24, v21, v37);
}

uint64_t PKStrokeInheritedProperties.init(inherited:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = v21 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = v21 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v25);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v14 = *(v13 - 8);
  v26 = *(v14 + 56);
  v26(v12, 1, 1, v13);
  outlined init with copy of Date?(v12, v9, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v24 = lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v15 = type metadata accessor for PKStrokeInheritedProperties(0);
  v23 = *(v15 + 20);
  v37 = 0;
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v22 = *(v15 + 24);
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
  v41 = 0;
  v42 = 0;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v16 = v32;
  (*(v14 + 16))(v12, v32, v13);
  v26(v12, 0, 1, v13);
  v17 = v27;
  CRRegister.init(_:)();
  (*(v28 + 40))(a2, v17, v29);
  v37 = 0;
  v18 = v30;
  CRRegister.init(_:)();
  (*(v31 + 40))(a2 + v23, v18, v33);
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0;
  v19 = v34;
  CRRegister.init(_:)();
  (*(v14 + 8))(v16, v13);
  return (*(v35 + 40))(a2 + v22, v19, v36);
}

uint64_t PKStrokeInheritedProperties.$ink.getter(void (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a1(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a4(v6);
}

uint64_t PKStrokeInheritedProperties.$transform.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  return a1(v2);
}

uint64_t PKStrokeInheritedProperties.minAppFormatVersion.getter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  CRRegister.wrappedValue.getter();
  if (!v10)
  {
    return 0;
  }

  v0 = [v10 requiredContentVersion];
  if (v0 == 3)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (v0 == 4)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v10 inkFormatVersion];

  if (v3 == 250)
  {
    v4 = 250;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 4)
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 3)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 2)
  {
    v6 = v8;
  }

  if (v6 <= v2)
  {
    return v2;
  }

  else
  {
    return v6;
  }
}

uint64_t PKStrokeStruct.inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);

  return CRRegister.wrappedValue.getter();
}

uint64_t key path setter for PKStrokeStruct.inherited : PKStrokeStruct(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t PKStrokeStruct.inherited.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PKStrokeStruct.inherited.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PKStrokeStruct.$inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.$inherited : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  CRRegister.projectedValue.setter();
  return (*(v7 + 8))(v12, v6);
}

uint64_t PKStrokeInheritedProperties.$inherited.setter(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  CRRegister.projectedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*PKStrokeStruct.$inherited.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$inherited.modify;
}

void PKStrokeInheritedProperties.$inherited.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    CRRegister.projectedValue.setter();
    v10 = *(v8 + 8);
    v10(v5, v9);
    v10(v6, v9);
  }

  else
  {
    CRRegister.projectedValue.setter();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t key path getter for PKStrokeInheritedProperties.$ink : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  a4(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  return a7(v9);
}

uint64_t key path setter for PKStrokeStruct.properties : PKStrokeStruct(uint64_t a1)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  outlined init with copy of PKStrokeProperties(a1, &v9 - v6, type metadata accessor for PKStrokeProperties);
  outlined init with copy of PKStrokeProperties(v7, v5, type metadata accessor for PKStrokeProperties);
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of PKStrokeProperties(v7, type metadata accessor for PKStrokeProperties);
}

uint64_t PKStrokeStruct.properties.setter(uint64_t a1)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of PKStrokeProperties(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PKStrokeProperties);
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of PKStrokeProperties(a1, type metadata accessor for PKStrokeProperties);
}

uint64_t (*PKStrokeStruct.properties.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

void PKStrokeInheritedProperties.inherited.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t key path setter for PKStrokeInheritedProperties.$ink : PKStrokeInheritedProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *(v10 + 16);
  v16(&v18 - v14, a1, v9);
  v16(v13, v15, v9);
  a7(0);
  CRRegister.projectedValue.setter();
  return (*(v10 + 8))(v15, v9);
}

uint64_t PKStrokeInheritedProperties.$ink.setter(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v10 - v8, a1, v6);
  a4(0);
  CRRegister.projectedValue.setter();
  return (*(v7 + 8))(a1, v6);
}

uint64_t (*PKStrokeStruct.$properties.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PKStrokeStruct(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

void PKStrokeInheritedProperties.$ink.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v11 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    CRRegister.projectedValue.setter();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    CRRegister.projectedValue.setter();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void PKStrokeStruct.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  outlined init with copy of Date?(a1, v12, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd);
  v16 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v12, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  else
  {
    outlined init with copy of Date?(v12, v15, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
    outlined destroy of PKStrokeProperties(v12, type metadata accessor for PKStrokeStruct.MutatingAction);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  CRRegister.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
  outlined init with copy of Date?(a1, v10, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd);
  if (v17(v10, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit14PKStrokeStructV14MutatingActionVSgMd);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd);
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  }

  else
  {
    outlined init with copy of Date?(&v10[*(v16 + 20)], v6, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
    outlined destroy of PKStrokeProperties(v10, type metadata accessor for PKStrokeStruct.MutatingAction);
  }

  v20 = type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
  v21 = *(v20 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v22 = *(v2 + v21);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v23 = *(MEMORY[0x1E695F050] + 16);
    *(v22 + 16) = *MEMORY[0x1E695F050];
    *(v22 + 32) = v23;
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v24 = swift_allocObject();
    v25 = *(MEMORY[0x1E695F050] + 16);
    *(v24 + 16) = *MEMORY[0x1E695F050];
    *(v24 + 32) = v25;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0x3FF0000000000000;
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
    *(v24 + 80) = 0x3FF0000000000000;
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;
    *(v24 + 104) = 0;

    *(v2 + v21) = v24;
  }
}

BOOL PKStrokeStruct.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = type metadata accessor for PKStrokeStruct.Partial(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v23, type metadata accessor for PKStrokeStruct.Partial);
  v51 = a1;
  v24 = PKStrokeStruct.Partial.canMerge(delta:)(a1);
  outlined destroy of PKStrokeProperties(v23, type metadata accessor for PKStrokeStruct.Partial);
  if (v24)
  {
    v45 = v24;
    v46 = v11;
    v44 = v6;
    outlined init with copy of Date?(v2, v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    v25 = v2;
    v43 = v13;
    v26 = *(v13 + 48);
    v27 = v26(v20, 1, v12);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    if (v27 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51, v25, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    }

    else
    {
      outlined init with copy of Date?(v51, v18, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
      if (v26(v18, 1, v12) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
      }

      else
      {
        v28 = v43;
        v29 = v47;
        (*(v43 + 32))(v47, v18, v12);
        if (!v26(v25, 1, v12))
        {
          CRRegister.merge(delta:)();
        }

        (*(v28 + 8))(v29, v12);
      }
    }

    v30 = v50;
    v31 = *(v21 + 20);
    v32 = v46;
    outlined init with copy of Date?(v25 + v31, v46, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    v33 = v49;
    v34 = *(v49 + 48);
    LODWORD(v30) = v34(v32, 1, v30);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    v35 = *(v21 + 20);
    if (v30 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51 + v35, v25 + v31, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
      LOBYTE(v24) = v45;
    }

    else
    {
      v36 = v48;
      outlined init with copy of Date?(v51 + v35, v48, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
      v37 = v34(v36, 1, v50);
      LOBYTE(v24) = v45;
      if (v37 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
      }

      else
      {
        v38 = v44;
        v39 = v36;
        v40 = v50;
        (*(v33 + 32))(v44, v39, v50);
        if (!v34(v25 + v31, 1, v40))
        {
          CRRegister.merge(delta:)();
        }

        (*(v33 + 8))(v38, v40);
      }
    }
  }

  return v24;
}

BOOL PKStrokeStruct.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v32 = a1;
  outlined init with copy of Date?(a1, v14, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    v12 = v14;
    v20 = v7;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    outlined init with copy of Date?(v33, v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    v20 = v7;
    if (v19(v12, 1, v15) != 1)
    {
      v26 = CRRegister.canMerge(delta:)();
      v27 = *(v16 + 8);
      v27(v18, v15);
      v27(v12, v15);
      v22 = v34;
      v21 = v35;
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    (*(v16 + 8))(v18, v15);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v22 = v34;
  v21 = v35;
LABEL_6:
  v23 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v32 + *(v23 + 20), v6, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v24 = *(v21 + 48);
  if (v24(v6, 1, v20) == 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    return 1;
  }

  (*(v21 + 32))(v22, v6, v20);
  v6 = v31;
  outlined init with copy of Date?(v33 + *(v23 + 20), v31, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  if (v24(v6, 1, v20) == 1)
  {
    (*(v21 + 8))(v22, v20);
    goto LABEL_9;
  }

  v28 = CRRegister.canMerge(delta:)();
  v29 = *(v21 + 8);
  v29(v22, v20);
  v29(v6, v20);
  return (v28 & 1) != 0;
}

uint64_t PKStrokeStruct.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  outlined init with copy of Date?(v1, &v14 - v6, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v9 + 8))(v7, v8);
  }

  v10 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v1 + *(v10 + 20), v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v12 + 8))(v4, v11);
}

uint64_t PKStrokeStruct.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(a2, 1, 1, v8);
  v12 = *(type metadata accessor for PKStrokeStruct.Partial(0) + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v37 = a2;
  v15(a2 + v12, 1, 1, v13);
  v17 = v36;
  dispatch thunk of CRDecoder.keyedContainer()();
  v36 = v17;
  if (v17)
  {

    v18 = v37;
  }

  else
  {
    v30 = v11;
    v31 = v8;
    v32 = v10;
    v33 = a1;
    v27 = v16;
    v28 = v15;
    v29 = v12;
    v20 = v34;
    v21 = v35;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
      v22 = v20;
      v23 = v36;
      CRRegister.init(from:)();
      v24 = v23;
      if (v23)
      {

        v18 = v37;
        return outlined destroy of PKStrokeProperties(v18, type metadata accessor for PKStrokeStruct.Partial);
      }

      v26 = v13;
      v32(v22, 0, 1, v31);
      v25 = v37;
      outlined assign with take of UUID?(v22, v37, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    }

    else
    {
      v25 = v37;
      v26 = v13;
      v24 = v36;
    }

    if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
    }

    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
    CRRegister.init(from:)();

    v18 = v25;
    if (!v24)
    {
      v28(v21, 0, 1, v26);
      return outlined assign with take of UUID?(v21, v25 + v29, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    }
  }

  return outlined destroy of PKStrokeProperties(v18, type metadata accessor for PKStrokeStruct.Partial);
}

uint64_t PKStrokeStruct.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v22 = v3;
    v23 = v6;
    v15 = v25;
    outlined init with copy of Date?(v25, v9, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v11 + 8))(v13, v10);
    }

    v16 = type metadata accessor for PKStrokeStruct.Partial(0);
    v17 = v22;
    outlined init with copy of Date?(v15 + *(v16 + 20), v22, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    v18 = v24;
    v19 = (*(v24 + 48))(v17, 1, v4);
    v20 = v23;
    if (v19 == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    }

    else
    {
      (*(v18 + 32))(v23, v17, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v4);
    }
  }

  return result;
}

uint64_t PKStrokeStruct.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  type metadata accessor for PKStrokeStructCache();
  v8 = swift_allocObject();
  v9 = *(MEMORY[0x1E695F050] + 16);
  *(v8 + 16) = *MEMORY[0x1E695F050];
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x3FF0000000000000;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0x3FF0000000000000;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(a1 + v7) = v8;
  UnknownProperties.init()();
  static CRKeyPath.unique.getter();
  type metadata accessor for PKStrokeInheritedProperties(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);
  Ref.init(id:)();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  CRRegister.init(_:)();
  v10 = v2[5];
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v12(&v4[v2[6]], 1, 1, v11);
  static CRKeyPath.unique.getter();
  type metadata accessor for PKStrokePathStruct(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);
  Ref.init(id:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v4 = 0;
  *&v4[v2[7]] = 0;
  *&v4[v2[9]] = 0;
  v14 = &v4[v2[10]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = &v4[v2[11]];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  v15[48] = 1;
  *&v4[v2[12]] = v13;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  return CRRegister.init(_:)();
}

uint64_t PKStrokeStruct.init(inheritedProperties:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a1;
  v36 = a3;
  v5 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v40 = *(v43 - 8);
  v8 = v40;
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v34 - v9;
  v37 = &v34 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v42 = *(v34 - 8);
  v11 = v42;
  v12 = MEMORY[0x1EEE9AC00](v34);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *(v11 + 16);
  v38 = &v34 - v15;
  v17(&v34 - v15, a1);
  v35 = *(v8 + 16);
  v35(v10, a2, v43);
  v18 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  type metadata accessor for PKStrokeStructCache();
  v19 = swift_allocObject();
  v20 = *(MEMORY[0x1E695F050] + 16);
  *(v19 + 16) = *MEMORY[0x1E695F050];
  *(v19 + 32) = v20;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0x3FF0000000000000;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0x3FF0000000000000;
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v36 + v18) = v19;
  UnknownProperties.init()();
  v21 = v16;
  v22 = v34;
  (v17)(v14, v21, v34);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  CRRegister.init(_:)();
  v23 = v5[5];
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 56);
  v25(&v7[v23], 1, 1, v24);
  v25(&v7[v5[6]], 1, 1, v24);
  type metadata accessor for PKStrokeMaskStruct();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v7 = 0;
  *&v7[v5[7]] = 0;
  v27 = v37;
  v28 = v43;
  v35(&v7[v5[8]], v37, v43);
  *&v7[v5[9]] = 0;
  v29 = &v7[v5[10]];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = 1;
  v30 = &v7[v5[11]];
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *v30 = 0u;
  v30[48] = 1;
  *&v7[v5[12]] = v26;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
  CRRegister.init(_:)();
  v31 = *(v40 + 8);
  v31(v39, v28);
  v32 = *(v42 + 8);
  v32(v41, v22);
  v31(v27, v28);
  return (v32)(v38, v22);
}

uint64_t PKStrokeStruct.minAppFormatVersion.getter()
{
  v0 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *v2;
  outlined destroy of PKStrokeProperties(v2, type metadata accessor for PKStrokeProperties);
  if (_So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_shouldSolveMath_getter(v3 & 0xFFFFFFFFFFFFLL))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(void *a1)
{
  v50 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v42 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v41 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v46 = v41 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v41 - v30;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v48 = v1;
  CRRegister.wrappedValue.getter();
  v49 = a1;
  Ref.subscript.getter();
  v32 = *(v22 + 8);
  v32(v31, v21);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of PKStrokeProperties(v20, type metadata accessor for PKStrokeInheritedProperties);
  v47 = v22;
  v33 = *(v22 + 48);
  v34 = v33(v12, 1, v21);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  if (v34 != 1)
  {
    CRRegister.wrappedValue.getter();
    v52 = v49;
    swift_retain_n();
    CRRegister.wrappedValue.getter();
    for (i = (v47 + 32); ; (*i)(v26, v9, v21))
    {
      type metadata accessor for Capsule.Ref();
      swift_getWitnessTable();
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v17, type metadata accessor for PKStrokeInheritedProperties);
      if (v33(v9, 1, v21) == 1)
      {
        break;
      }

      v32(v26, v21);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);

    Ref.subscript.getter();
    v32(v26, v21);
    v37 = v46;
    Ref.subscript.setter();
    v32(v37, v21);
    v38 = v42;
    CRRegister.wrappedValue.getter();
    v39 = v43;
    (*(v47 + 56))(v43, 1, 1, v21);
    v40 = Ref.subscript.modify();
    outlined init with copy of Date?(v39, v44, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v40(&v52, 0);
    return (v32)(v38, v21);
  }

  return result;
}

Swift::Void __swiftcall PKStrokeStruct.didMerge()()
{
  v1 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v2 = *(v0 + v1);
    if (one-time initialization token for unfairLock != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    v3 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 16) = *MEMORY[0x1E695F050];
    *(v2 + 32) = v3;

    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  else
  {
    type metadata accessor for PKStrokeStructCache();
    v4 = swift_allocObject();
    v5 = *(MEMORY[0x1E695F050] + 16);
    *(v4 + 16) = *MEMORY[0x1E695F050];
    *(v4 + 32) = v5;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x3FF0000000000000;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0x3FF0000000000000;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    *(v4 + 104) = 0;

    *(v0 + v1) = v4;
  }
}

uint64_t TaggedStroke.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t TaggedStroke.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v69 = a2;
  v76 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd);
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v72 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  v23 = type metadata accessor for TaggedStroke(0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12TaggedStrokeO_ACtMd);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v61 - v31;
  v33 = *(v30 + 56);
  outlined init with copy of PKStrokeProperties(v74, &v61 - v31, type metadata accessor for TaggedStroke);
  outlined init with copy of PKStrokeProperties(v75, &v32[v33], type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of PKStrokeProperties(v32, v26, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v70;
        v35 = v71;
        v37 = *(v70 + 32);
        v38 = v64;
        v37(v64, v26, v71);
        v39 = &v32[v33];
        v40 = v65;
        v37(v65, v39, v35);
        v41 = v68;
        Ref.observableDifference(from:with:)();
        v42 = *(v36 + 8);
        v42(v40, v35);
        v42(v38, v35);
        if ((*(v66 + 48))(v41, 1, v67) == 1)
        {
          v43 = &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GSgMd;
          v44 = v41;
LABEL_13:
          outlined destroy of StocksKitCurrencyCache.Provider?(v44, v43);
          outlined destroy of PKStrokeProperties(v32, type metadata accessor for TaggedStroke);
          v53 = type metadata accessor for TaggedStroke.ObservableDifference(0);
          return (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
        }

        v54 = v41;
        v55 = v61;
        outlined init with take of Range<AttributedString.Index>(v54, v61, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd);
        v56 = v55;
        v57 = v76;
        outlined init with take of Range<AttributedString.Index>(v56, v76, &_s9Coherence3RefV20ObservableDifferenceOyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGG_GMd);
        v58 = type metadata accessor for TaggedStroke.ObservableDifference(0);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
        return outlined destroy of PKStrokeProperties(v32, type metadata accessor for TaggedStroke);
      }

      (*(v70 + 8))(v26, v71);
    }
  }

  else
  {
    v74 = v16;
    v75 = v20;
    v45 = v72;
    v46 = v73;
    outlined init with copy of PKStrokeProperties(v32, v28, type metadata accessor for TaggedStroke);
    if (!swift_getEnumCaseMultiPayload())
    {
      v50 = *(v45 + 32);
      v50(v22, v28, v17);
      v51 = v75;
      v50(v75, &v32[v33], v17);
      Ref.observableDifference(from:with:)();
      v52 = *(v45 + 8);
      v52(v51, v17);
      v52(v22, v17);
      if ((*(v63 + 48))(v46, 1, v62) == 1)
      {
        v43 = &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GSgMd;
        v44 = v46;
        goto LABEL_13;
      }

      v59 = v74;
      outlined init with take of Range<AttributedString.Index>(v46, v74, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd);
      v60 = v59;
      v57 = v76;
      outlined init with take of Range<AttributedString.Index>(v60, v76, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit14PKStrokeStructV_GMd);
      v58 = type metadata accessor for TaggedStroke.ObservableDifference(0);
      goto LABEL_16;
    }

    (*(v45 + 8))(v28, v17);
  }

  v47 = type metadata accessor for TaggedStroke.ObservableDifference(0);
  v48 = v76;
  swift_storeEnumTagMultiPayload();
  (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit12TaggedStrokeO_ACtMd);
}

uint64_t TaggedStroke.visitReferences(_:)(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for AnyCRValue();
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v21, v14, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v14, v4);
      Ref.visitReferences(_:)();
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      v18 = v20;
      (*(v20 + 32))(v3, &v14[*(v17 + 48)], v1);
      AnyCRValue.visitReferences(_:)();
      return (*(v18 + 8))(v3, v1);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    Ref.visitReferences(_:)();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t TaggedStroke.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for AnyCRValue();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v3, v17, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v17, v7);
      Ref.copy(renamingReferences:)();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v19 = *v17;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      v22 = v24;
      v21 = v25;
      (*(v24 + 32))(v6, &v17[*(v20 + 48)], v25);
      *v27 = v19;
      AnyCRValue.copy(renamingReferences:)();
      (*(v22 + 8))(v6, v21);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    Ref.copy(renamingReferences:)();
    (*(v12 + 8))(v14, v11);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedStroke.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TaggedStroke(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v16 - v10);
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v17 = a1;
  v12 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

  if (v12 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    Ref.init(from:)();

    swift_storeEnumTagMultiPayload();
    v11 = v9;
LABEL_9:
    v15 = v17;
    return outlined init with take of TaggedStroke(v11, v15, type metadata accessor for TaggedStroke);
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    *v6 = v12;
    AnyCRValue.init(from:)();

    swift_storeEnumTagMultiPayload();
    v11 = v6;
    goto LABEL_9;
  }

  type metadata accessor for PKStrokeStruct(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);
  Ref.init(from:)();

  v14 = v17;
  swift_storeEnumTagMultiPayload();
  v15 = v14;
  return outlined init with take of TaggedStroke(v11, v15, type metadata accessor for TaggedStroke);
}

uint64_t TaggedStroke.encode(to:)()
{
  v25 = type metadata accessor for AnyCRValue();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v1 = v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v9 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v29;
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v12)
  {
    v24[0] = v1;
    v24[1] = result;
    v14 = v5;
    v16 = v26;
    v15 = v27;
    v29 = 0;
    outlined init with copy of PKStrokeProperties(v28, v11, type metadata accessor for TaggedStroke);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v16 + 32))(v4, v11, v2);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRSequence<Ref<CRRegister<TaggedStroke>>>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
        v18 = v29;
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
        if (!v18)
        {
          dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

          return (*(v16 + 8))(v4, v2);
        }

        (*(v16 + 8))(v4, v2);
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
        v21 = v24[0];
        v22 = v25;
        (*(v15 + 32))(v24[0], &v11[*(v20 + 48)], v25);
        v23 = v29;
        dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
        if (!v23)
        {
          dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

          return (*(v15 + 8))(v21, v22);
        }

        (*(v15 + 8))(v21, v22);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v11, v14);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
      v19 = v29;
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      if (!v19)
      {
        dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

        return (*(v6 + 8))(v8, v14);
      }

      (*(v6 + 8))(v8, v14);
    }
  }

  return result;
}

uint64_t TaggedStroke.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance TaggedStroke@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PKStrokeStruct.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v37 = *(v34 - 8);
  v3 = MEMORY[0x1EEE9AC00](v34);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = type metadata accessor for MergeResult();
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v21 = *(v9 + 8);
  v21(v16, v8);
  (*(v9 + 16))(v32, v14, v8);
  CRRegister.projectedValue.setter();
  v21(v14, v8);
  MergeResult.merge(_:)();
  v22 = *(v40 + 8);
  v40 += 8;
  v32 = v22;
  (v22)(v20, v39);
  type metadata accessor for PKStrokeStruct(0);
  v24 = v33;
  v23 = v34;
  CRRegister.projectedValue.getter();
  v25 = v35;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = v37;
  v27 = *(v37 + 8);
  v27(v24, v23);
  (*(v26 + 16))(v36, v25, v23);
  CRRegister.projectedValue.setter();
  v27(v25, v23);
  MergeResult.merge(_:)();
  v28 = v39;
  v29 = v32;
  (v32)(v20, v39);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v29)(v20, v28);
}

uint64_t PKStrokeStruct.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v31 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = v14;
  v20 = v29;
  v18(v19, v8);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  v21 = v30;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v22 = *(v31 + 8);
  v22(v21, v1);
  v22(v5, v1);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GMd);
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1 && (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GMd), (*(*(v24 - 8) + 48))(v20, 1, v24) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
    v25 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  }

  else
  {
    v26 = v32;
    outlined init with copy of Date?(v17, v32, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
    v27 = type metadata accessor for PKStrokeStruct.MutatingAction(0);
    outlined init with copy of Date?(v20, v26 + *(v27 + 20), &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVG_GSgMd);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18PKStrokePropertiesV_GSgMd);
}

uint64_t PKStrokeStruct.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v21[0] = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  CRRegister.projectedValue.getter();
  v21[1] = a1;
  CRRegister.projectedValue.getter();
  v15 = CRRegister.hasDelta(from:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15 & 1) != 0 || (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v17 = CRRegister.hasDelta(from:)(), v18 = *(v21[0] + 8), v18(v5, v2), v18(v7, v2), (v17))
  {
    v19 = 1;
  }

  else
  {
    v19 = UnknownProperties.hasDelta(from:)();
  }

  return v19 & 1;
}

uint64_t PKStrokeStruct.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v30 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v27 = v2;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeStruct);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  (*(v12 + 16))(v15, v17, v11);
  v19 = a2;
  CRRegister.projectedValue.setter();
  v18(v17, v11);
  v20 = type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  v21 = v29;
  CRRegister.copy(renamingReferences:)();
  v22 = v30;
  v23 = *(v30 + 8);
  v23(v9, v6);
  (*(v22 + 16))(v9, v21, v6);
  CRRegister.projectedValue.setter();
  v23(v21, v6);
  v24 = v31;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v32 + 40))(v19 + *(v20 + 28), v24, v33);
}

uint64_t PKStrokeStruct.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for UnknownProperties();
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for PKStrokeStruct(0);
  v10 = v9[6];
  type metadata accessor for PKStrokeStructCache();
  v11 = swift_allocObject();
  v12 = *(MEMORY[0x1E695F050] + 16);
  *(v11 + 16) = *MEMORY[0x1E695F050];
  *(v11 + 32) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0x3FF0000000000000;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0x3FF0000000000000;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(a1 + v10) = v11;
  v13 = v9[7];
  UnknownProperties.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v14 = v22;
  CRRegister.init(defaultState:)();
  if (v14)
  {

    return (*(v23 + 8))(a1 + v13, v24);
  }

  else
  {
    (*(v20 + 32))(a1, v8, v21);
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
    CRRegister.init(defaultState:)();
    (*(v17 + 32))(a1 + v9[5], v19, v18);
    UnknownProperties.init(defaultState:)();
    return (*(v23 + 40))(a1 + v13, v3, v24);
  }
}

uint64_t PKStrokeStruct.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  type metadata accessor for PKStrokeStruct(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v8 = CRRegister.isDefaultState.getter(), (*(v5 + 8))(v7, v4), (v8))
  {
    CRRegister.projectedValue.getter();
    v9 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t PKStrokeStruct.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v1 + 8))(v3, v0);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PKStrokeStruct.newRefs(from:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v21 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v22 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v14 = CRRegister.newRefs(from:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  specialized Set.formUnion<A>(_:)(v14);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v16 = CRRegister.newRefs(from:)();
  v17 = *(v21 + 8);
  v17(v4, v1);
  v17(v6, v1);
  specialized Set.formUnion<A>(_:)(v16);
  v18 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v18);
  return v22;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
    lazy protocol witness table accessor for type UIColor and conformance NSObject(&lazy protocol witness table cache variable for type UIColor and conformance NSObject, &lazy cache variable for type metadata for UIColor);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of Set<UIColor>.Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA6CE0C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

Swift::Bool __swiftcall PKStrokeStruct.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  CRRegister.projectedValue.getter();
  v8 = CRRegister.needToFinalizeTimestamps()();
  (*(v5 + 8))(v7, v4);
  v10 = v8 || (type metadata accessor for PKStrokeStruct(0), CRRegister.projectedValue.getter(), v9 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v9) || UnknownProperties.needToFinalizeTimestamps()();
  return v10;
}

uint64_t PKStrokeStruct.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v17 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v9 + 16))(v12, v14, v8);
  CRRegister.projectedValue.setter();
  (*(v9 + 8))(v14, v8);
  type metadata accessor for PKStrokeStruct(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v17, v7, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v7, v2);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PKStrokeStruct.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for CRCodableVersion();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v39 = type metadata accessor for PKStrokeStruct(0);
  v49 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v21 = *(v8 + 104);
  v45 = *MEMORY[0x1E6995288];
  v44 = v21;
  v21(v18);
  v22 = static CRCodableVersion.== infix(_:_:)();
  v48 = *(v8 + 8);
  v48(v18, v7);
  if (v22)
  {
    return (*(v8 + 32))(v50, v20, v7);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v47 + 8))(v6, v4);
  v47 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v24 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v25 = (v24 & 1) == 0;
  if (v24)
  {
    v26 = v20;
  }

  else
  {
    v26 = v13;
  }

  if (v25)
  {
    v27 = v20;
  }

  else
  {
    v27 = v13;
  }

  v28 = v48;
  v48(v26, v7);
  v29 = *(v8 + 32);
  v30 = v46;
  v29(v46, v27, v7);
  v29(v20, v30, v7);
  v44(v18, v45, v7);
  v31 = static CRCodableVersion.== infix(_:_:)();
  v28(v18, v7);
  if (v31)
  {
    v32 = v50;
LABEL_14:
    v38 = v20;
    return (v29)(v32, v38, v7);
  }

  v33 = v41;
  v34 = v43;
  CRRegister.projectedValue.getter();
  v35 = v40;
  CRRegister.minEncodingVersion.getter();
  (*(v42 + 8))(v33, v34);
  v36 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v37 = v50;
  if ((v36 & 1) == 0)
  {
    v48(v35, v7);
    v32 = v37;
    goto LABEL_14;
  }

  v48(v20, v7);
  v32 = v37;
  v38 = v35;
  return (v29)(v32, v38, v7);
}

uint64_t PKStrokeStruct.observableDifference(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v34 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v18 = *(v9 + 8);
  v19 = v12;
  v20 = v30;
  v18(v19, v8);
  v18(v14, v8);
  type metadata accessor for PKStrokeStruct(0);
  v21 = v31;
  CRRegister.projectedValue.getter();
  v22 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v23 = *(v34 + 8);
  v23(v22, v2);
  v23(v21, v2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1 && (v25 = type metadata accessor for CRValueObservableDifference(), (*(*(v25 - 8) + 48))(v20, 1, v25) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    v26 = type metadata accessor for PKStrokeStruct.ObservableDifference(0);
    (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
  }

  else
  {
    v27 = v35;
    outlined init with copy of Date?(v17, v35, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    v28 = type metadata accessor for PKStrokeStruct.ObservableDifference(0);
    outlined init with copy of Date?(v20, v27 + *(v28 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t PKStrokeStruct.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v1)
  {
    v11[1] = v0;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    type metadata accessor for PKStrokeStruct(0);
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKStrokeProperties> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v3 + 8))(v5, v2);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PKStrokeStruct.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v101 = a2;
  v2 = type metadata accessor for UnknownProperties();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = (&v80 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v80 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v92 = *(v94 - 8);
  v10 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v80 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v95 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v80 - v24;
  v26 = type metadata accessor for PKStrokeStruct(0);
  v27 = *(v26 + 24);
  type metadata accessor for PKStrokeStructCache();
  v28 = swift_allocObject();
  v29 = *(MEMORY[0x1E695F050] + 16);
  *(v28 + 16) = *MEMORY[0x1E695F050];
  *(v28 + 32) = v29;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0x3FF0000000000000;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 80) = 0x3FF0000000000000;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *&v101[v27] = v28;
  v96 = *(v26 + 28);
  UnknownProperties.init()();
  v30 = v99;
  v31 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v30)
  {

    goto LABEL_8;
  }

  v84 = v28;
  v80 = v16;
  v81 = v14;
  v82 = v26;
  v83 = v17;
  v85 = 0;
  v99 = v31;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
    v32 = v85;
    CRRegister.init(from:)();
    if (!v32)
    {
      v33 = v101;
      (*(v95 + 32))(v101, v20, v83);
      goto LABEL_11;
    }

LABEL_7:

LABEL_8:

    v35 = v101;
    return (*(v97 + 8))(&v35[v96], v98);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v34 = v85;
  CRRegister.init(defaultState:)();
  if (v34)
  {
    goto LABEL_7;
  }

  v37 = *(v95 + 32);
  v38 = v83;
  v37(v25, v23, v83);
  v33 = v101;
  v37(v101, v25, v38);
LABEL_11:
  v39 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v40 = v93;
  if (v39)
  {
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
    CRRegister.init(from:)();
    (*(v92 + 32))(&v33[*(v82 + 20)], v40, v94);
  }

  else
  {
    type metadata accessor for PKStrokeProperties(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties);
    v41 = v81;
    CRRegister.init(defaultState:)();
    v42 = *(v92 + 32);
    v43 = v80;
    v44 = v41;
    v45 = v94;
    v42(v80, v44, v94);
    v42(&v33[*(v82 + 20)], v43, v45);
  }

  v46 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  v85 = 0;
  v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v46);

  v103 = v47;
  specialized Set._Variant.remove(_:)(0x6574697265686E69, 0xE900000000000064);

  specialized Set._Variant.remove(_:)(0x69747265706F7270, 0xEA00000000007365);

  v48 = v103;
  v49 = v103 + 56;
  v50 = 1 << *(v103 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v103 + 56);
  v53 = (v50 + 63) >> 6;
  v93 = (v89 + 56);

  v54 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v55 = v90;
  while (1)
  {
    v56 = v54;
    if (!v52)
    {
      break;
    }

LABEL_21:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = (*(v48 + 6) + ((v54 << 10) | (16 * v57)));
    v60 = *v58;
    v59 = v58[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v80 = v48;
      v62 = v91;
      *v91 = v60;
      v62[1] = v59;
      v63 = v62;

      v64 = v85;
      AnyCRDT.init(from:)();
      if (v64)
      {
LABEL_37:

        swift_bridgeObjectRelease_n();
        v35 = v101;
        v75 = v94;
        v76 = v95;
        v78 = v83;
LABEL_34:
        (*(v76 + 8))(v35, v78);
        (*(v92 + 8))(&v35[*(v82 + 20)], v75);

        return (*(v97 + 8))(&v35[v96], v98);
      }

      (*v93)(v63, 0, 1, v55);
      v65 = v86;
      outlined init with take of Range<AttributedString.Index>(v63, v86, &_sSS_9Coherence7AnyCRDTVtMd);
      outlined init with take of Range<AttributedString.Index>(v65, v87, &_sSS_9Coherence7AnyCRDTVtMd);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd);
      }

      v67 = v89;
      v69 = v81[2];
      v68 = v81[3];
      v70 = v87;
      v48 = v80;
      if (v69 >= v68 >> 1)
      {
        v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v81, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd);
        v67 = v89;
        v81 = v72;
        v70 = v87;
      }

      v71 = v81;
      v81[2] = v69 + 1;
      outlined init with take of Range<AttributedString.Index>(v70, v71 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v69, &_sSS_9Coherence7AnyCRDTVtMd);
    }

    else
    {

      v61 = v91;
      (*v93)(v91, 1, 1, v90);
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_sSS_9Coherence7AnyCRDTVtSgMd);
    }
  }

  while (1)
  {
    v54 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v54);
    ++v56;
    if (v52)
    {
      goto LABEL_21;
    }
  }

  v73 = v81;
  if (v81[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
    v74 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC8];
  }

  v35 = v101;
  v75 = v94;
  v76 = v95;
  v77 = v88;
  v78 = v83;
  v102 = v74;
  v79 = v85;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v73, 1, &v102);
  if (v79)
  {

    goto LABEL_34;
  }

  UnknownProperties.init(_:)();

  return (*(v97 + 40))(&v35[v96], v77, v98);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence9CRKeyPathV_SD4KeysVyAF8PaperKit09AnyCanvasA4ViewC_GTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  result = MEMORY[0x1DA6CD4F0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PKStrokeStruct.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v44 = *(v41 - 8);
  v1 = MEMORY[0x1EEE9AC00](v41);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v20 = *(v9 + 8);
  v20(v12, v8);
  v21 = v14;
  v22 = v40;
  v20(v21, v8);
  type metadata accessor for PKStrokeStruct(0);
  v23 = v41;
  v24 = v42;
  CRRegister.projectedValue.getter();
  v25 = v9;
  v26 = v23;
  v27 = v43;
  CRRegister.projectedValue.getter();
  v28 = v24;
  CRRegister.delta(_:from:)();
  v29 = v44;
  v30 = *(v44 + 8);
  v30(v27, v26);
  v30(v28, v26);
  if ((*(v25 + 48))(v19, 1, v8) == 1 && (*(v29 + 48))(v22, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    v31 = type metadata accessor for PKStrokeStruct.Partial(0);
    (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
  }

  else
  {
    v32 = v38;
    outlined init with copy of Date?(v19, v38, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    v33 = v39;
    outlined init with copy of Date?(v22, v39, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    v34 = v45;
    (*(v25 + 56))(v45, 1, 1, v8);
    v35 = type metadata accessor for PKStrokeStruct.Partial(0);
    v36 = *(v35 + 20);
    (*(v29 + 56))(v34 + v36, 1, 1, v26);
    outlined assign with take of UUID?(v32, v34, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    outlined assign with take of UUID?(v33, v34 + v36, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
}

BOOL PKStrokeStruct.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v31 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v32 = a1;
  outlined init with copy of Date?(a1, v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    CRRegister.projectedValue.getter();
    v19 = CRRegister.canMerge(delta:)();
    v20 = *(v13 + 8);
    v20(v16, v12);
    v20(v18, v12);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = type metadata accessor for PKStrokeStruct.Partial(0);
  outlined init with copy of Date?(v32 + *(v21 + 20), v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  v22 = v31;
  if ((*(v31 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    return 1;
  }

  v23 = v29;
  (*(v22 + 32))(v29, v4, v5);
  type metadata accessor for PKStrokeStruct(0);
  v24 = v30;
  CRRegister.projectedValue.getter();
  v25 = CRRegister.canMerge(delta:)();
  v26 = *(v22 + 8);
  v26(v24, v5);
  v26(v23, v5);
  return (v25 & 1) != 0;
}

BOOL PKStrokeStruct.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v37 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  v38 = v1;
  v24 = PKStrokeStruct.canMerge(delta:)(a1);
  if (v24)
  {
    outlined init with copy of Date?(a1, v13, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGSgMd);
    }

    else
    {
      (*(v15 + 32))(v23, v13, v14);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v15 + 16))(v18, v21, v14);
      CRRegister.projectedValue.setter();
      v25 = *(v15 + 8);
      v25(v21, v14);
      v25(v23, v14);
    }

    v26 = type metadata accessor for PKStrokeStruct.Partial(0);
    v27 = v36;
    outlined init with copy of Date?(a1 + *(v26 + 20), v36, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    v28 = v37;
    if ((*(v37 + 48))(v27, 1, v5) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGSgMd);
    }

    else
    {
      v29 = v33;
      (*(v28 + 32))(v33, v27, v5);
      type metadata accessor for PKStrokeStruct(0);
      v30 = v34;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v28 + 16))(v35, v30, v5);
      CRRegister.projectedValue.setter();
      v31 = *(v28 + 8);
      v31(v30, v5);
      v31(v29, v5);
    }
  }

  return v24;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokeStruct(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeStruct and conformance PKStrokeStruct, type metadata accessor for PKStrokeStruct);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance PKStrokeStruct()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v5 + 8))(v7, v4);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v1 + 8))(v3, v0);
  return UnknownProperties.visitReferences(_:)();
}

BOOL protocol witness for CRType.needToFinalizeTimestamps() in conformance PKStrokeStruct()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  CRRegister.projectedValue.getter();
  v8 = CRRegister.needToFinalizeTimestamps()();
  (*(v5 + 8))(v7, v4);
  v10 = v8 || (CRRegister.projectedValue.getter(), v9 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v9) || UnknownProperties.needToFinalizeTimestamps()();
  return v10;
}

uint64_t protocol witness for CRCodable.minAppFormatVersion.getter in conformance PKStrokeStruct()
{
  v0 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  CRRegister.wrappedValue.getter();
  v3 = *v2;
  outlined destroy of PKStrokeProperties(v2, type metadata accessor for PKStrokeProperties);
  if (_So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_shouldSolveMath_getter(v3 & 0xFFFFFFFFFFFFLL))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeStruct()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v8 = CRRegister.isDefaultState.getter(), (*(v5 + 8))(v7, v4), (v8))
  {
    CRRegister.projectedValue.getter();
    v9 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t PKStrokeStruct.merge(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for MergeResult();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t PKStrokeInheritedProperties.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v50 = *(v48 - 8);
  v2 = MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v47 = &v40 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v45 = *(v43 - 8);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v22 = type metadata accessor for MergeResult();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v16, v19, v12);
  CRRegister.projectedValue.setter();
  v26(v19, v12);
  MergeResult.merge(_:)();
  v40 = *(v55 + 8);
  v55 += 8;
  v40(v25, v54);
  v51 = type metadata accessor for PKStrokeInheritedProperties(0);
  v27 = v41;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v29 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v30 = v45;
  v31 = *(v45 + 8);
  v31(v27, v28);
  (*(v30 + 16))(v44, v29, v28);
  CRRegister.projectedValue.setter();
  v31(v29, v28);
  MergeResult.merge(_:)();
  v32 = v40;
  v40(v25, v54);
  v33 = v46;
  v34 = v48;
  CRRegister.projectedValue.getter();
  v35 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v33, v34);
  (*(v36 + 16))(v49, v35, v34);
  CRRegister.projectedValue.setter();
  v37(v35, v34);
  MergeResult.merge(_:)();
  v38 = v54;
  v32(v25, v54);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v32)(v25, v38);
}

uint64_t PKStrokeInheritedProperties.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v25 = *(v16 + 8);
  v26 = v19;
  v27 = v44;
  v25(v26, v15);
  v25(v21, v15);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v28 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v29 = *(v46 + 8);
  v29(v28, v8);
  v30 = v12;
  v31 = v47;
  v29(v30, v8);
  v32 = v48;
  v33 = v50;
  CRRegister.projectedValue.getter();
  v34 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v35 = *(v51 + 8);
  v35(v34, v33);
  v35(v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GMd);
  if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1 && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GMd), (*(*(v37 - 8) + 48))(v27, 1, v37) == 1) && (v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GMd), (*(*(v38 - 8) + 48))(v31, 1, v38) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd);
    v39 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
    (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  }

  else
  {
    v40 = v52;
    outlined init with copy of Date?(v24, v52, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd);
    v41 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
    outlined init with copy of Date?(v27, v40 + *(v41 + 20), &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd);
    outlined init with copy of Date?(v31, v40 + *(v41 + 24), &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSg_GSgMd);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVySo17CGAffineTransformV_AgA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterV14MutatingActionVySo5PKInkCSg_AhA7CRValueHpAgaI8PaperKityHC_HCg_GSgMd);
}

uint64_t PKStrokeInheritedProperties.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for PKStrokeInheritedProperties.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v38, v18, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit27PKStrokeInheritedPropertiesV14MutatingActionVSgMd);
  }

  outlined init with take of TaggedStroke(v18, v22, type metadata accessor for PKStrokeInheritedProperties.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (*(v10 + 16))(v13, v15, v9);
  CRRegister.projectedValue.setter();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v24 = v30;
  v25 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  CRRegister.projectedValue.setter();
  (*(v26 + 8))(v24, v25);
  v27 = v34;
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v27, v28);
  return outlined destroy of PKStrokeProperties(v22, type metadata accessor for PKStrokeInheritedProperties.MutatingAction);
}

uint64_t PKStrokeInheritedProperties.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v34 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  CRRegister.projectedValue.getter();
  v35 = a1;
  CRRegister.projectedValue.getter();
  v19 = CRRegister.hasDelta(from:)();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v22 = *(v34 + 8), v22(v9, v6), v22(v11, v6), (v21) || (v23 = v30, v24 = v33, CRRegister.projectedValue.getter(), v25 = v31, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = UnknownProperties.hasDelta(from:)();
  }

  return v28 & 1;
}

uint64_t PKStrokeInheritedProperties.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v40 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v37 = v2;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeInheritedProperties);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v23 = *(v17 + 8);
  v23(v20, v16);
  (*(v17 + 16))(v20, v22, v16);
  CRRegister.projectedValue.setter();
  v23(v22, v16);
  v24 = type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v25 = v39;
  CRRegister.copy(renamingReferences:)();
  v26 = v40;
  v27 = *(v40 + 8);
  v27(v14, v11);
  (*(v26 + 16))(v14, v25, v11);
  v36 = a2;
  CRRegister.projectedValue.setter();
  v27(v25, v11);
  v29 = v42;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v30 = v41;
  CRRegister.copy(renamingReferences:)();
  v31 = v44;
  v32 = *(v44 + 8);
  v32(v29, v28);
  (*(v31 + 16))(v29, v30, v28);
  v33 = v36;
  CRRegister.projectedValue.setter();
  v32(v30, v28);
  v34 = v45;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v46 + 40))(v33 + *(v24 + 28), v34, v47);
}

uint64_t PKStrokeInheritedProperties.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  outlined init with copy of Date?(v14, v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v16 = type metadata accessor for PKStrokeInheritedProperties(0);
  v17 = v16[5];
  v50 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd);
  v43 = lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  v44 = v18;
  CRRegister.init(wrappedValue:)();
  v19 = v16[6];
  v50 = 0x3FF0000000000000;
  v51 = 0;
  v52 = 0;
  v53 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v21 = v20;
  v22 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
  v54 = 0;
  v55 = 0;
  CRRegister.init(wrappedValue:)();
  v23 = v16[7];
  v24 = a1;
  UnknownProperties.init()();
  v25 = v49;
  v26 = v56;
  CRRegister.init(defaultState:)();
  if (v26)
  {
    return outlined destroy of PKStrokeProperties(v24, type metadata accessor for PKStrokeInheritedProperties);
  }

  v35 = v22;
  v56 = v21;
  v34 = v19;
  v27 = v47;
  (*(v45 + 40))(v24, v25, v46);
  v28 = v48;
  CRRegister.init(defaultState:)();
  v29 = v24;
  (*(v27 + 40))(v24 + v17, v28, v41);
  v30 = v42;
  CRRegister.init(defaultState:)();
  (*(v38 + 40))(v29 + v34, v30, v39);
  v31 = v40;
  UnknownProperties.init(defaultState:)();
  return (*(v36 + 40))(v29 + v23, v31, v37);
}

uint64_t PKStrokeInheritedProperties.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  type metadata accessor for PKStrokeInheritedProperties(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v11) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v4 + 8))(v6, v3), (v12))
  {
    v13 = v17;
    CRRegister.projectedValue.getter();
    v14 = CRRegister.isDefaultState.getter();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PKStrokeInheritedProperties.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v1 = *(v0 - 8);
  v14 = v0;
  v15 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v5 + 8))(v7, v4);
  v12 = v14;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v15 + 8))(v3, v12);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PKStrokeInheritedProperties.newRefs(from:)(uint64_t a1)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v33 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v31 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  v36 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v31 + 8);
  v22(v9, v6);
  v22(v11, v6);
  specialized Set.formUnion<A>(_:)(v21);
  v23 = v32;
  v24 = v34;
  CRRegister.projectedValue.getter();
  v25 = v33;
  CRRegister.projectedValue.getter();
  v26 = CRRegister.newRefs(from:)();
  v27 = *(v35 + 8);
  v27(v25, v24);
  v27(v23, v24);
  specialized Set.formUnion<A>(_:)(v26);
  v28 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v28);
  return v36;
}

Swift::Bool __swiftcall PKStrokeInheritedProperties.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  CRRegister.projectedValue.getter();
  v11 = CRRegister.needToFinalizeTimestamps()();
  (*(v8 + 8))(v10, v7);
  v14 = v11 || (type metadata accessor for PKStrokeInheritedProperties(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), (*(v4 + 8))(v6, v3), v12) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v2, v0), v13) || UnknownProperties.needToFinalizeTimestamps()();
  return v14;
}

uint64_t PKStrokeInheritedProperties.finalizeTimestamps(_:)(uint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v28 = *(v25 - 8);
  v2 = MEMORY[0x1EEE9AC00](v25);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v12 + 16))(v15, v17, v11);
  CRRegister.projectedValue.setter();
  (*(v12 + 8))(v17, v11);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.getter();
  v18 = a1;
  CRRegister.finalizeTimestamps(_:)();
  (*(v6 + 16))(v24, v10, v5);
  CRRegister.projectedValue.setter();
  (*(v6 + 8))(v10, v5);
  v19 = v25;
  v20 = v26;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v21 = v28;
  (*(v28 + 16))(v27, v20, v19);
  CRRegister.projectedValue.setter();
  (*(v21 + 8))(v20, v19);
  return MEMORY[0x1DA6CBA30](v18);
}

uint64_t PKStrokeInheritedProperties.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CRCodableVersion();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v54 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v54 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - v25;
  v64 = type metadata accessor for PKStrokeInheritedProperties(0);
  v70 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v27 = *(v10 + 104);
  v68 = *MEMORY[0x1E6995288];
  v69 = v10 + 104;
  v67 = v27;
  v27(v24);
  v28 = static CRCodableVersion.== infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v24, v9);
  if (v28)
  {
    return (*(v10 + 32))(v71, v26, v9);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v66[1](v8, v6);
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v26;
  }

  else
  {
    v33 = v19;
  }

  if (v32)
  {
    v19 = v26;
  }

  v29(v33, v9);
  v34 = *(v10 + 32);
  v35 = v65;
  (v34)(v65, v19, v9);
  (v34)(v26, v35, v9);
  v67(v24, v68, v9);
  v36 = static CRCodableVersion.== infix(_:_:)();
  v29(v24, v9);
  if (v36)
  {
    return (v34)(v71, v26, v9);
  }

  v37 = v63;
  v66 = v34;
  v38 = v61;
  CRRegister.projectedValue.getter();
  v39 = v59;
  CRRegister.minEncodingVersion.getter();
  (*(v62 + 8))(v38, v37);
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v41 = (v40 & 1) == 0;
  v42 = (v40 & 1) != 0 ? v26 : v39;
  v43 = v41 ? v26 : v39;
  v29(v42, v9);
  v44 = v60;
  (v66)(v60, v43, v9);
  v45 = v44;
  v34 = v66;
  (v66)(v26, v45, v9);
  v67(v24, v68, v9);
  v46 = static CRCodableVersion.== infix(_:_:)();
  v29(v24, v9);
  if (v46)
  {
    return (v34)(v71, v26, v9);
  }

  v47 = v56;
  v48 = v58;
  CRRegister.projectedValue.getter();
  v49 = v55;
  CRRegister.minEncodingVersion.getter();
  (*(v57 + 8))(v47, v48);
  v50 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v51 = v71;
  if (v50)
  {
    v29(v26, v9);
    v52 = v51;
    v53 = v49;
  }

  else
  {
    v29(v49, v9);
    v52 = v51;
    v53 = v26;
  }

  return (v66)(v52, v53, v9);
}

uint64_t PKStrokeInheritedProperties.observableDifference(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v55 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v50 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v45 - v24;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v25 = *(v17 + 8);
  v26 = v20;
  v27 = v15;
  v25(v26, v16);
  v25(v22, v16);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v28 = v45;
  CRRegister.projectedValue.getter();
  v29 = v49;
  CRRegister.projectedValue.getter();
  v56 = v27;
  v30 = v29;
  CRRegister.observableDifference(from:with:)();
  v31 = *(v50 + 8);
  v31(v30, v7);
  v32 = v48;
  v31(v28, v7);
  v33 = v51;
  v34 = v53;
  CRRegister.projectedValue.getter();
  v35 = v52;
  CRRegister.projectedValue.getter();
  v36 = v46;
  CRRegister.observableDifference(from:with:)();
  v37 = *(v54 + 8);
  v37(v35, v34);
  v37(v33, v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GMd);
  if ((*(*(v38 - 8) + 48))(v36, 1, v38) == 1 && (v39 = type metadata accessor for CRValueObservableDifference(), v40 = *(*(v39 - 8) + 48), v40(v56, 1, v39) == 1) && v40(v32, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    v41 = type metadata accessor for PKStrokeInheritedProperties.ObservableDifference(0);
    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
  }

  else
  {
    v42 = v55;
    outlined init with copy of Date?(v36, v55, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    v43 = type metadata accessor for PKStrokeInheritedProperties.ObservableDifference(0);
    outlined init with copy of Date?(v56, v42 + *(v43 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v32, v42 + *(v43 + 24), &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit27PKStrokeInheritedPropertiesV_GSgMd);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t PKStrokeInheritedProperties.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v14 = v3;
    v15 = v6;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for PKStrokeInheritedProperties(0);
    v12 = v15;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v12, v4);
    v13 = v14;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v13, v1);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PKStrokeInheritedProperties.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v83 = type metadata accessor for UnknownProperties();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = (&v76 - v5);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v84 = *(v89 - 8);
  v6 = MEMORY[0x1EEE9AC00](v89);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v94 = *(v11 - 8);
  v95 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v76 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v99 = (&v76 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  outlined init with copy of Date?(v19, v17, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v97 = lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  v98 = v14;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v21 = type metadata accessor for PKStrokeInheritedProperties(0);
  v22 = v21[5];
  v103 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  v85 = v22;
  CRRegister.init(wrappedValue:)();
  v24 = v21[6];
  v103 = 0x3FF0000000000000;
  v104 = 0;
  v105 = 0;
  v106 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
  v107 = 0;
  v108 = 0;
  CRRegister.init(wrappedValue:)();
  v25 = v21[7];
  v101 = a2;
  UnknownProperties.init()();
  v26 = v100;
  v27 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v26)
  {
    goto LABEL_2;
  }

  v78 = v23;
  v77 = v24;
  v76 = v25;
  v92 = 0;
  v100 = v27;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v29 = v92;
    CRRegister.init(from:)();
    if (v29)
    {

LABEL_2:

      v28 = v101;
      return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
    }

    v92 = 0;
    v30 = v101;
    (*(v86 + 40))();
  }

  else
  {
    v30 = v101;
  }

  v31 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v33 = v95;
  v32 = v96;
  v35 = v93;
  v34 = v94;
  if (v31)
  {
    v36 = v92;
    CRRegister.init(from:)();
    if (v36)
    {
      goto LABEL_16;
    }

    v92 = 0;
    (*(v34 + 40))(v30 + v85, v35, v33);
  }

  v37 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v39 = v90;
  v38 = v91;
  if (v37)
  {
    v40 = v92;
    CRRegister.init(from:)();
    if (v40)
    {
      goto LABEL_16;
    }

    v92 = 0;
    (*(v39 + 40))(v30 + v77, v32, v38);
  }

  v41 = v92;
  v42 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  v43 = v41;
  if (v41)
  {
LABEL_16:

    v28 = v30;
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
  }

  v92 = 0;
  v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v42);

  v103 = v45;
  specialized Set._Variant.remove(_:)(0x6574697265686E69, 0xE900000000000064);

  specialized Set._Variant.remove(_:)(7040617, 0xE300000000000000);

  specialized Set._Variant.remove(_:)(0x726F66736E617274, 0xE90000000000006DLL);

  v46 = v103;
  v47 = v103 + 56;
  v48 = 1 << *(v103 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v103 + 56);
  v51 = (v48 + 63) >> 6;
  v52 = (v84 + 56);

  v99 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = v43;
    if (!v50)
    {
      break;
    }

LABEL_25:
    v54 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v55 = (*(v46 + 48) + ((v43 << 10) | (16 * v54)));
    v57 = *v55;
    v56 = v55[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v59 = v88;
      v98 = *(v89 + 48);
      *v88 = v57;
      *(v59 + 8) = v56;

      v60 = v92;
      AnyCRDT.init(from:)();
      v92 = v60;
      if (v60)
      {
LABEL_40:

        swift_bridgeObjectRelease_n();
        v28 = v101;
        return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
      }

      (*v52)(v59, 0, 1, v89);
      v61 = v79;
      outlined init with take of Range<AttributedString.Index>(v59, v79, &_sSS_9Coherence7AnyCRDTVtMd);
      outlined init with take of Range<AttributedString.Index>(v61, v80, &_sSS_9Coherence7AnyCRDTVtMd);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99[2] + 1, 1, v99, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd);
      }

      v62 = v84;
      v64 = v99[2];
      v63 = v99[3];
      v65 = v80;
      if (v64 >= v63 >> 1)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1, v99, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd);
        v62 = v84;
        v99 = v67;
        v65 = v80;
      }

      v66 = v99;
      v99[2] = v64 + 1;
      outlined init with take of Range<AttributedString.Index>(v65, v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, &_sSS_9Coherence7AnyCRDTVtMd);
    }

    else
    {

      v58 = v88;
      (*v52)(v88, 1, 1, v89);
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_sSS_9Coherence7AnyCRDTVtSgMd);
    }
  }

  while (1)
  {
    v43 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v43 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v43);
    ++v53;
    if (v50)
    {
      goto LABEL_25;
    }
  }

  v68 = v99;
  if (v99[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
    v69 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC8];
  }

  v70 = v101;
  v71 = v83;
  v72 = v82;
  v73 = v81;
  v74 = v76;
  v109 = v69;
  v75 = v92;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v68, 1, &v109);
  if (v75)
  {

    v28 = v70;
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeInheritedProperties);
  }

  UnknownProperties.init(_:)();

  return (*(v72 + 40))(v70 + v74, v73, v71);
}

uint64_t PKStrokeInheritedProperties.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v69 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v67 = *(v71 - 8);
  v5 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v70 = v13;
  v74 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v62 = *(v21 - 8);
  v22 = v62;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v56 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v61 = &v56 - v31;
  v59 = v3;
  CRRegister.projectedValue.getter();
  v60 = a2;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v32 = *(v22 + 8);
  v32(v25, v21);
  v32(v27, v21);
  v33 = v12;
  type metadata accessor for PKStrokeInheritedProperties(0);
  v34 = v64;
  CRRegister.projectedValue.getter();
  v35 = v65;
  CRRegister.projectedValue.getter();
  v36 = v72;
  v37 = v35;
  CRRegister.delta(_:from:)();
  v38 = *(v74 + 8);
  v38(v37, v13);
  v39 = v67;
  v38(v34, v13);
  v40 = v71;
  v41 = v66;
  CRRegister.projectedValue.getter();
  v42 = v68;
  CRRegister.projectedValue.getter();
  v73 = v33;
  v43 = v61;
  CRRegister.delta(_:from:)();
  v44 = *(v39 + 8);
  v45 = v62;
  v44(v42, v40);
  v44(v41, v40);
  if ((*(v45 + 48))(v43, 1, v21) == 1 && (*(v74 + 48))(v36, 1, v70) == 1 && (*(v39 + 48))(v73, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    v46 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    (*(*(v46 - 8) + 56))(v69, 1, 1, v46);
  }

  else
  {
    v47 = v56;
    outlined init with copy of Date?(v43, v56, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    v48 = v57;
    outlined init with copy of Date?(v36, v57, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v49 = v58;
    outlined init with copy of Date?(v73, v58, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    v50 = v69;
    (*(v45 + 56))(v69, 1, 1, v21);
    v51 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v52 = *(v51 + 20);
    (*(v74 + 56))(v50 + v52, 1, 1, v70);
    v53 = *(v51 + 24);
    (*(v39 + 56))(v50 + v53, 1, 1, v71);
    outlined assign with take of UUID?(v47, v50, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    outlined assign with take of UUID?(v48, v50 + v52, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v54 = v50 + v53;
    v36 = v72;
    outlined assign with take of UUID?(v49, v54, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
}

BOOL PKStrokeInheritedProperties.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v50 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  outlined init with copy of Date?(a1, v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    CRRegister.projectedValue.getter();
    v25 = CRRegister.canMerge(delta:)();
    v26 = *(v19 + 8);
    v26(v22, v18);
    v26(v24, v18);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  v28 = a1;
  outlined init with copy of Date?(a1 + *(v27 + 20), v10, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  v29 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  }

  else
  {
    v30 = v45;
    (*(v29 + 32))(v45, v10, v11);
    type metadata accessor for PKStrokeInheritedProperties(0);
    v31 = v46;
    CRRegister.projectedValue.getter();
    v32 = CRRegister.canMerge(delta:)();
    v33 = *(v29 + 8);
    v33(v31, v11);
    v33(v30, v11);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v47;
  outlined init with copy of Date?(v28 + *(v27 + 24), v47, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    return 1;
  }

  v37 = v43;
  (*(v36 + 32))(v43, v34, v35);
  type metadata accessor for PKStrokeInheritedProperties(0);
  v38 = v44;
  CRRegister.projectedValue.getter();
  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v36 + 8);
  v40(v38, v35);
  v40(v37, v35);
  return (v39 & 1) != 0;
}

BOOL PKStrokeInheritedProperties.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v61 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = v54 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v59 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v63 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v58 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v56 = v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v54 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v54 - v31;
  v33 = a1;
  v34 = a1;
  v35 = v1;
  v36 = PKStrokeInheritedProperties.canMerge(delta:)(v34);
  if (v36)
  {
    v55 = v36;
    outlined init with copy of Date?(v33, v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    v37 = (*(v24 + 48))(v22, 1, v23);
    v38 = v33;
    v54[1] = v35;
    if (v37 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd);
    }

    else
    {
      (*(v24 + 32))(v32, v22, v23);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v24 + 16))(v27, v30, v23);
      CRRegister.projectedValue.setter();
      v39 = *(v24 + 8);
      v39(v30, v23);
      v39(v32, v23);
      v38 = v33;
    }

    v40 = v65;
    v41 = v66;
    v42 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v43 = v62;
    outlined init with copy of Date?(v38 + *(v42 + 20), v62, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    v44 = v63;
    if ((*(v63 + 48))(v43, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd);
    }

    else
    {
      v45 = v56;
      (*(v44 + 32))(v56, v43, v14);
      type metadata accessor for PKStrokeInheritedProperties(0);
      v65 = v38;
      v46 = v57;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v44 + 16))(v58, v46, v14);
      CRRegister.projectedValue.setter();
      v47 = *(v44 + 8);
      v48 = v46;
      v38 = v65;
      v41 = v66;
      v47(v48, v14);
      v47(v45, v14);
    }

    v49 = v64;
    outlined init with copy of Date?(v38 + *(v42 + 24), v64, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v41 + 48))(v49, 1, v40) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v50 = v59;
      (*(v41 + 32))(v59, v49, v40);
      type metadata accessor for PKStrokeInheritedProperties(0);
      v51 = v60;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v41 + 16))(v61, v51, v40);
      CRRegister.projectedValue.setter();
      v52 = *(v41 + 8);
      v52(v51, v40);
      v52(v50, v40);
    }

    LOBYTE(v36) = v55;
  }

  return v36;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeInheritedProperties and conformance PKStrokeInheritedProperties, type metadata accessor for PKStrokeInheritedProperties);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance PKStrokeInheritedProperties(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v11 + 8))(v13, v10);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v7 + 8))(v9, v6);
  v14 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v5, v14);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PKStrokeStruct(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for MergeResult();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1DA6C8120]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1DA6C8120]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15NSTextAlignmentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit10ReflowEnumOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_8PaperKit17SearchQueryResultVtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit0D18DocumentFindResultVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CGAffineTransformVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17SearchQueryResultVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit16MiniDefaultColorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV08InternalF0OGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit10FeatureSetV0F0OGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit18ShapeConfigurationV0F0OGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccyyts5NeverOGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySbGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit12WeakObserver33_8D2F688A48D6891537C9DABEFCA94965LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeV_8PaperKit10ReflowWordCtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8_NSRangeV_8PaperKit10ReflowWordCtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence17CapsuleUndoActionVGMd, &_ss23_ContiguousArrayStorageCy9Coherence17CapsuleUndoActionVGMR, MEMORY[0x1E69952B0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit4LinkVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit4LinkVGMR, type metadata accessor for Link);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMR, type metadata accessor for Color);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMR, MEMORY[0x1E69783C8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence7AnyCRDTVtGMR, &_sSS_9Coherence7AnyCRDTVtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit6PageIdVSgGMd, &_ss23_ContiguousArrayStorageCy8PaperKit6PageIdVSgGMR, &_s8PaperKit6PageIdVSgMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_9Coherence10AnyCRValueVtGMd, &_ss23_ContiguousArrayStorageCySi_9Coherence10AnyCRValueVtGMR, &_sSi_9Coherence10AnyCRValueVtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit0D8DocumentV010PDFPageAndD4PageVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit0D8DocumentV010PDFPageAndD4PageVGMR, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScS12ContinuationVy10Foundation4DataV_GGMd, &_ss23_ContiguousArrayStorageCyScS12ContinuationVy10Foundation4DataV_GGMR, &_sScS12ContinuationVy10Foundation4DataV_GMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd, &_ss23_ContiguousArrayStorageCy9PencilKit12PKInkingToolV7InkTypeOGMR, MEMORY[0x1E6978358]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit9SignatureVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit9SignatureVGGMR, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ShapeVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ShapeVGGMR, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ImageVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit5ImageVGGMR, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVGGMR, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit18AnnotationImporterV15ImportedElementOGMd, &_ss23_ContiguousArrayStorageCy8PaperKit18AnnotationImporterV15ImportedElementOGMR, type metadata accessor for AnnotationImporter.ImportedElement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMR, MEMORY[0x1E69954B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMR, &_sScCyyts5NeverOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit20LoupeRenderDebouncerC0G5StateVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit20LoupeRenderDebouncerC0G5StateVGMR, type metadata accessor for LoupeRenderDebouncer.RenderState);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit15CanvasUIOverlay_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit15CanvasUIOverlay_pGMR, &_s8PaperKit15CanvasUIOverlay_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay8PaperKit20AnyCanvasElementViewCGGMd, &_ss23_ContiguousArrayStorageCySay8PaperKit20AnyCanvasElementViewCGGMR, &_sSay8PaperKit20AnyCanvasElementViewCGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit15PageOverlayView_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit15PageOverlayView_pGMR, &_s8PaperKit15PageOverlayView_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}