uint64_t one-time initialization function for scroll()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.scroll);
  v5 = __swift_project_value_buffer(v1, static Log.scroll);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD835F0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t initializeWithCopy for UpdateScrollStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 73);

  if (v5)
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 40) = v7;
    (**(v7 - 8))(a1 + 16, a2 + 16);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 161))
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 146) = *(a2 + 146);
  }

  else
  {
    v8 = *(a2 + 128);
    *(a1 + 128) = v8;
    (**(v8 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t destroy for UpdateScrollStateRequest(uint64_t a1)
{

  if (*(a1 + 73))
  {
    if (*(a1 + 161))
    {
      return result;
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    if (*(a1 + 161))
    {
      return result;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1 + 104);
}

uint64_t closure #1 in ScrollStateRequestTransform.updateRequest<A>(id:position:targetDistance:)(void **a1, uint64_t a2)
{
  outlined init with copy of UpdateScrollStateRequest(a2, v10);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v8 = &type metadata for UpdateScrollStateRequest;
  v9 = &protocol witness table for UpdateScrollStateRequest;
  *&v7 = swift_allocObject();
  outlined init with copy of UpdateScrollStateRequest(v10, v7 + 16);
  v3[2] = v5 + 1;
  outlined init with take of AnyTrackedValue(&v7, &v3[5 * v5 + 4]);
  result = outlined destroy of UpdateScrollStateRequest(v10);
  *a1 = v3;
  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t ScrollStateEnqueueRequests.enqueueRequests(_:)(uint64_t a1)
{
  v3 = v1[1];
  v98 = *v1;
  v99 = v3;
  v4 = v1[3];
  v100 = v1[2];
  v101 = v4;
  AGGraphClearUpdate();
  v5 = *AGGraphGetValue();
  AGGraphSetUpdate();
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = v5 | 4;
    do
    {
      outlined init with copy of AnyTrackedValue(v8, &v89);
      v12 = *(&v90 + 1);
      v13 = v91;
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      (*(v13 + 16))(&v92, v12, v13);
      if (v93)
      {

        v14 = *(&v90 + 1);
        v15 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        v16 = (*(v15 + 8))(v14, v15);
        outlined init with copy of AnyTrackedValue(&v89, v97);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v94 = v9;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        v20 = *(v9 + 16);
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_64;
        }

        v24 = v19;
        if (*(v9 + 24) < v23)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_68;
          }

LABEL_19:
          v6 = v94;
          if ((v24 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_3;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v46 = v18;
        specialized _NativeDictionary.copy()();
        v18 = v46;
        v6 = v94;
        if ((v24 & 1) == 0)
        {
LABEL_20:
          v6[(v18 >> 6) + 8] |= 1 << v18;
          *(v6[6] + 8 * v18) = v16;
          outlined init with take of AnyTrackedValue(v97, v6[7] + 40 * v18);
          v43 = v6[2];
          v22 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v22)
          {
            goto LABEL_65;
          }

LABEL_27:
          v6[2] = v44;
          goto LABEL_4;
        }
      }

      else
      {
        if (v10 == 4)
        {
          goto LABEL_4;
        }

        v26 = *(&v90 + 1);
        v27 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        v28 = (*(v27 + 8))(v26, v27);
        if (v6[2])
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if (v30)
          {
            outlined init with copy of AnyTrackedValue(v6[7] + 40 * v29, v97);
            v31 = *(&v90 + 1);
            v32 = v91;
            __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
            outlined init with copy of AnyTrackedValue(v97, &v94);
            LOBYTE(v31) = ScrollStateRequest.overrides(_:)(&v94, v31, v32);
            outlined destroy of ScrollStateRequest?(&v94, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
            __swift_destroy_boxed_opaque_existential_1(v97);
            if ((v31 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        v33 = *(&v90 + 1);
        v34 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        v35 = (*(v34 + 8))(v33, v34);
        outlined init with copy of AnyTrackedValue(&v89, v97);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v94 = v6;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        v38 = v6[2];
        v39 = (v37 & 1) == 0;
        v22 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v22)
        {
          goto LABEL_66;
        }

        v41 = v37;
        if (v6[3] >= v40)
        {
          if ((v36 & 1) == 0)
          {
            v47 = v18;
            specialized _NativeDictionary.copy()();
            v18 = v47;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, v36);
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_68;
          }
        }

        v6 = v94;
        if ((v41 & 1) == 0)
        {
          *(v94 + 8 * (v18 >> 6) + 64) |= 1 << v18;
          *(v6[6] + 8 * v18) = v35;
          outlined init with take of AnyTrackedValue(v97, v6[7] + 40 * v18);
          v45 = v6[2];
          v22 = __OFADD__(v45, 1);
          v44 = v45 + 1;
          if (v22)
          {
            goto LABEL_67;
          }

          goto LABEL_27;
        }
      }

LABEL_3:
      v11 = v6[7] + 40 * v18;
      __swift_destroy_boxed_opaque_existential_1(v11);
      outlined init with take of AnyTrackedValue(v97, v11);
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v48 = v6;
  v51 = v6[8];
  v50 = v6 + 8;
  v49 = v51;
  v52 = 1 << *(v48 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v49;
  v55 = (v52 + 63) >> 6;
  v86 = v48;

  v56 = 0;
  if (!v54)
  {
    goto LABEL_36;
  }

  do
  {
    while (1)
    {
      v57 = v56;
LABEL_44:
      v60 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v61 = v60 | (v57 << 6);
      v62 = *(v86[6] + 8 * v61);
      outlined init with copy of AnyTrackedValue(v86[7] + 40 * v61, &v94);
      *&v89 = v62;
      outlined init with take of AnyTrackedValue(&v94, &v89 + 8);
LABEL_45:
      v97[1] = v90;
      v97[2] = v91;
      v97[0] = v89;
      if (!v91)
      {
      }

      v63 = *&v97[0];
      outlined init with take of AnyTrackedValue((v97 + 8), &v94);
      v64 = v95;
      v65 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      if ((*(v65 + 40))(v64, v65))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v94);
      if (!v54)
      {
        goto LABEL_36;
      }
    }

    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = (v66 + 16);
    type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>);
    BloomFilter.init(hashValue:)(v68);
    v69 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(0, v89);
    if (v69 && *(v69 + 72) == 1)
    {
      swift_beginAccess();
      v70 = *v67;

      v72 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v71);
      if (!v72 || v72[9])
      {
        type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
        *(swift_allocObject() + 72) = 0;
        type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
        v74 = v73;

        *v67 = PropertyList.Element.init(keyType:before:after:)(v74, 0, v70);
      }

      swift_endAccess();
    }

    outlined init with copy of AnyTrackedValue(&v94, &v89);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v89, v63);
    swift_endAccess();
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    v76 = v99;
    *(v75 + 24) = v98;
    *(v75 + 40) = v76;
    v77 = v101;
    *(v75 + 56) = v100;
    *(v75 + 72) = v77;
    *(v75 + 88) = v63;

    outlined init with copy of ScrollStateEnqueueRequests(&v98, &v89);
    specialized static Update.begin()();
    LOBYTE(v92) = 17;

    Update.Action.init(reason:thunk:)(&v92, partial apply for closure #2 in ScrollStateEnqueueRequests.enqueueRequests(_:), v75, &v89);
    v78 = *(&v89 + 1);
    v79 = v90;
    v87 = DWORD2(v90);
    v88 = v89;
    v80 = one-time initialization token for actions;

    if (v80 != -1)
    {
      swift_once();
    }

    v81 = static Update.actions;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[32 * v83];
    v84[32] = v88;
    *(v84 + 5) = v78;
    *(v84 + 6) = v79;
    *(v84 + 14) = v87;
    static Update.actions = v81;

    static Update.end()();

    __swift_destroy_boxed_opaque_existential_1(&v94);
  }

  while (v54);
LABEL_36:
  if (v55 <= v56 + 1)
  {
    v58 = v56 + 1;
  }

  else
  {
    v58 = v55;
  }

  v59 = v58 - 1;
  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v55)
    {
      v54 = 0;
      v90 = 0u;
      v91 = 0u;
      v56 = v59;
      v89 = 0u;
      goto LABEL_45;
    }

    v54 = v50[v57];
    ++v56;
    if (v54)
    {
      v56 = v57;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_18D327538()
{

  return swift_deallocObject();
}

uint64_t sub_18D327570()
{

  return swift_deallocObject();
}

uint64_t closure #1 in DynamicLayoutScrollable.makeTarget(at:)@<X0>(unint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, char a4@<W6>, uint64_t a5@<X8>)
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v13 = *result;
    if (*(*result + 16) > a1)
    {

      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v15 = *WeakValue;
        v16 = *(WeakValue + 8);
        v17 = *(WeakValue + 16);
        v18 = *(WeakValue + 24);
        v19 = *(WeakValue + 32);
        v20 = *(WeakValue + 40);
        type metadata accessor for CGPoint(0);

        v21 = AGGraphGetWeakValue();
        if (v21)
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (*(v13 + 16) > a1)
          {
            v5 = *v21;
            v6 = v21[1];
            v17 = v19 - (*v21 - v17);
            v18 = v20 - (v6 - v18);
            v22 = v13 + (a1 << 6);
            v23 = *(v22 + 32);
            v24 = *(v22 + 40);
            v25 = *(v22 + 64);
            v26 = *(v22 + 72);

            *&v36 = v25;
            *(&v36 + 1) = v26;
            *&v35 = v23 - v5;
            *(&v35 + 1) = v24 - v6;
            if (one-time initialization token for content == -1)
            {
LABEL_8:
              v33[0] = static ScrollCoordinateSpace.content;
              v34 = 1;
              *&v28 = v15;
              *(&v28 + 1) = v16;
              v29 = v5;
              v30 = v6;
              v31 = v17;
              v32 = v18;

              CGRect.convert(to:transform:)(v33, &v28);

              outlined destroy of CoordinateSpace(v33);

              LOBYTE(v28) = a4 & 1;
              LOBYTE(v33[0]) = 0;
              v27 = v36;
              *a5 = v35;
              *(a5 + 16) = v27;
              *(a5 + 32) = a2;
              *(a5 + 40) = a3;
              *(a5 + 48) = a4 & 1;
              *(a5 + 49) = 0;
              return result;
            }

LABEL_14:
            swift_once();
            goto LABEL_8;
          }

          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
      }
    }
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 256;
  return result;
}

void *closure #1 in View.animation<A>(_:body:)(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || (result[9] & 1) == 0)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, a2);
  }

  return result;
}

uint64_t LazyStack<>.estimatedPlacement(subviews:context:cache:in:)(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a4;
  v58 = a2;
  v59 = a3;
  v66 = a1;
  v8 = type metadata accessor for StackPlacement();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v46 - v9;
  v10 = type metadata accessor for MinorProperties();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = (&v46 - v11);
  v12 = type metadata accessor for PlacementProperties();
  v65 = v8;
  v53 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Optional();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = *(TupleTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v46 - v22;
  v23 = type metadata accessor for _LazyStack_Cache();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  memcpy(v68, v58, sizeof(v68));
  (*(v24 + 16))(v26, v59, v23);
  memcpy(v67, v68, 0x129uLL);
  v59 = v26;
  v55 = a5;
  v56 = a6;
  LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v66, v67, v26, a5, a6, v16);
  v61 = v17;
  v27 = *(v17 + 48);
  v58 = TupleTypeMetadata2;
  if (v27(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v24 + 8))(v59, v23);
    return (*(v51 + 8))(v16, v52);
  }

  else
  {
    v51 = v24;
    v52 = v23;
    v30 = v60;
    v29 = v61;
    v31 = v54;
    v32 = v58;
    (*(v61 + 32))(v60, v16, v58);
    v47 = *(v29 + 16);
    v47(v20, v30, v32);
    v33 = v32[12];
    (*(v63 + 16))(v62, &v20[v33], v64);
    v34 = v53;
    v35 = *(*(v53 - 8) + 8);
    v35(&v20[v33], v53);
    v48 = *(v31 + 8);
    v49 = v31 + 8;
    v48(v20, v65);
    v47(v20, v30, v32);
    v36 = v57;
    v37 = v32[12];
    (*(v31 + 32))(v57, v20, v65);
    v35(&v20[v37], v34);
    memcpy(v67, v68, 0x129uLL);
    v38 = v66;
    v39 = v59;
    v40 = specialized LazyStack<>.resolveIndexAndPosition(subviews:context:cache:placer:properties:)(v66, v67, v59, v36, &v30[v32[12]], v55, v56);
    if (v42)
    {
      v48(v36, v65);
      (*(v63 + 8))(v62, v64);
    }

    else
    {
      v43 = v62;
      v67[0] = 2 * *v62;
      v44 = v65;
      StackPlacement.place(subviews:from:position:stopping:style:)(v41, v38, v40, 0, 1, v67, v65);

      specialized Array.append<A>(contentsOf:)(v45);
      v48(v36, v44);
      (*(v63 + 8))(v43, v64);
    }

    (*(v61 + 8))(v60, v58);
    return (*(v51 + 8))(v39, v52);
  }
}

uint64_t ViewList.applyIDs(from:style:listAttribute:transform:to:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  if (*a2 != 2 || (a1 = (*(a8 + 40))(a7, a8)) == 0)
  {
    v33 = v11;
    v35 = v12;
    LOBYTE(v36) = v13;
    v30 = MEMORY[0x1EEE9AC00](a1);
    v29 = (*(v31 + 64))(v10, &v33, a3 | ((HIDWORD(a3) & 1) << 32), &v35, partial apply for closure #1 in ViewList.applyIDs(from:style:listAttribute:transform:to:), v30);
    return v29 & 1;
  }

  v14 = a1;
  v15 = *(*a1 + 88);
  v16 = v15();
  result = v15();
  if (result < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = v15();
  if (v16 < 0 || result < v16)
  {
    goto LABEL_25;
  }

  v18 = v10;
  v19 = *v10;
  if (v19 >= v16)
  {

    *v18 = v19 - v16;
    v29 = 1;
    return v29 & 1;
  }

  v32 = v18;
  if (v19 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v15();
  v21 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v19, v20);
  if (v22)
  {
    v21 = (v15)(v21);
  }

  v23 = v21;
  result = v15();
  if (result < v23)
  {
    goto LABEL_27;
  }

  v24 = result;
  result = v15();
  if (result < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result >= v24)
  {
    if (v23 != v24)
    {
      while (1)
      {
        v25 = (*(*v14 + 96))(&v35, v23);
        v26 = v35;
        v27 = v36;
        result = (v15)(v25);
        if (v23 >= result)
        {
          break;
        }

        v35 = v26;
        v36 = v27;
        v33 = v12;
        LOBYTE(v34) = v13;
        _ViewList_TemporarySublistTransform.bindID(_:)(&v35);
        v33 = v35;
        v34 = v36;
        v28 = a5(&v33);

        if ((v28 & 1) == 0)
        {

          v29 = 0;
          *v32 = 0;
          return v29 & 1;
        }

        if (v24 == ++v23)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_18:

    *v32 = 0;
    v29 = 1;
    return v29 & 1;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t closure #1 in ViewList.applyIDs(from:style:listAttribute:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(__int128 *), uint64_t a6)
{
  v7 = *a2;
  v8 = *a4;
  v9 = *(a4 + 8);
  result = outlined init with copy of _ViewList_Node(a3, &v53);
  if (v58 > 1u)
  {
    if (v58 == 2)
    {
      v17 = 0;
      v18 = *(v53 + 16);
      v39 = v53;
      v38 = v53 + 32;
      if (v18)
      {
        goto LABEL_7;
      }

LABEL_6:
      v17 = v18;
      v51 = 0u;
      memset(v52, 0, 28);
      while (1)
      {
        *&v44[12] = *(v52 + 12);
        v43 = v51;
        *v44 = v52[0];
        v15 = *(&v52[0] + 1) == 0;
        if (!*(&v52[0] + 1))
        {
          break;
        }

        v19 = *&v44[24];
        outlined init with take of AnyTrackedValue(&v43, &v51);
        v20 = *(&v52[0] + 1);
        v21 = *&v52[1];
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52[0] + 1));
        v50 = v7;
        v48 = v8;
        v49 = v9;
        v47 = 0;
        LOBYTE(v20) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v50, v19, &v48, a5, a6, v20, v21);
        result = __swift_destroy_boxed_opaque_existential_1(&v51);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v17 == v18)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v17 >= *(v39 + 16))
        {
          goto LABEL_45;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v38 + 48 * v17++, &v51, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return v15 & 1;
    }

    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v54))
    {
      v31 = 1;
    }

    if (*(*(&v53 + 1) + 16) >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = *(*(&v53 + 1) + 16);
    }

    v40 = *(&v53 + 1) + 32;

    v33 = 0;
    v34 = v32 == 0;
    if (v32)
    {
      goto LABEL_30;
    }

LABEL_29:
    v33 = v32;
    v51 = 0u;
    memset(v52, 0, 28);
    while (1)
    {
      *&v44[12] = *(v52 + 12);
      v43 = v51;
      *v44 = v52[0];
      v15 = *(&v52[0] + 1) == 0;
      if (!*(&v52[0] + 1))
      {

        swift_unknownObjectRelease();
        return v15 & 1;
      }

      v35 = *&v44[24];
      outlined init with take of AnyTrackedValue(&v43, &v51);
      v36 = *(&v52[0] + 1);
      v37 = *&v52[1];
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52[0] + 1));
      v50 = v7;
      v48 = v8;
      v49 = v9;
      v47 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v50, v35, &v48, a5, a6, v36, v37) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v16 = &v51;
        goto LABEL_40;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v51);
      v34 = v33 >= v32;
      if (v33 == v32)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v34)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v40 + 48 * v33++, &v51, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
    if (!v58)
    {
      v11 = DWORD2(v55);
      v12 = BYTE12(v55);
      outlined init with take of AnyTrackedValue(&v53, &v43);
      v14 = *&v44[16];
      v13 = *&v44[8];
      __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
      v48 = v7;
      *&v51 = v8;
      BYTE8(v51) = v9;
      LOBYTE(v50) = v12;
      v15 = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v48, v11 | (v12 << 32), &v51, a5, a6, v13, v14);
      v16 = &v43;
LABEL_40:
      __swift_destroy_boxed_opaque_existential_1(v16);
      return v15 & 1;
    }

    *&v44[16] = v55;
    v45 = v56;
    v46[0] = *v57;
    *(v46 + 13) = *&v57[13];
    v43 = v53;
    *v44 = v54;
    v22 = *(&v53 + 1);
    if ((v7 & 1) == 0 || (v22 = *(&v43 + 1) * (v7 >> 1), (*(&v43 + 1) * (v7 >> 1)) >> 64 == v22 >> 63))
    {
      v23 = *a1 - v22;
      if (*a1 >= v22)
      {
        outlined destroy of _ViewList_Sublist(&v43);
        v15 = 1;
        *a1 = v23;
      }

      else
      {
        *&v51 = v8;
        BYTE8(v51) = v9;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v43);
        v24 = *&v44[4];
        v25 = *&v44[8];
        v26 = *(&v43 + 1);
        v27 = *(&v43 + 1) & ~(*(&v43 + 1) >> 63);

        v28 = 0;
        while (v26 != v28)
        {
          if (v28 == 0x80000000)
          {
            goto LABEL_46;
          }

          if (v27 == v28)
          {
            goto LABEL_47;
          }

          v29 = v28 + 1;
          *&v51 = __PAIR64__(v24, v28);
          *(&v51 + 1) = v25;

          v30 = a5(&v51);

          v28 = v29;
          if ((v30 & 1) == 0)
          {
            outlined destroy of _ViewList_Sublist(&v43);

            v15 = 0;
            *a1 = 0;
            return v15 & 1;
          }
        }

        outlined destroy of _ViewList_Sublist(&v43);

        v15 = 1;
        *a1 = 0;
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;

  return 0;
}

uint64_t TextShadowModifier.isEqual(to:)()
{
  v1 = v0;
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(result + 16);
    v5 = *(result + 24);
    v4 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(v1 + 16);
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = *(v1 + 40);

    if (v3)
    {
      if (v7 == v3)
      {

        if (v5 != v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = *(*v3 + 88);

        LOBYTE(v11) = v11(v12);

        result = 0;
        if ((v11 & 1) == 0 || v5 != v9)
        {
          return result;
        }
      }

      return v6 == v10 && v4 == v8;
    }
  }

  return result;
}

uint64_t getEnumTag for AccessibilityScrollableContext(uint64_t a1)
{
  result = *(a1 + 70);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityScrollableContext(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 62) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 70) = a2;
  return result;
}

BOOL specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  if (v3)
  {
    if (v2 != v10)
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      return 0;
    }
  }

  else if ((v11 | LODWORD(v10) ^ LODWORD(v2)))
  {
    return 0;
  }

  if (v4 == 2)
  {
    result = 0;
    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    return 0;
  }

  result = 0;
  if (((v12 ^ v4) & 1) == 0)
  {
LABEL_14:
    if (v5 == *(a2 + 6) && v6 == *(a2 + 7) && v7 == *(a2 + 8) && v8 == *(a2 + 9))
    {
      return v9 == *(a2 + 10);
    }
  }

  return result;
}

uint64_t destroy for AccessibilityTextAttributes(uint64_t result)
{
  if (*(result + 32))
  {
    outlined consume of Text.Storage(*(result + 8), *(result + 16), *(result + 24));
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image.CGImageProvider(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static Image.CGImageProvider.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static Image.CGImageProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((0x507030104060200uLL >> (8 * *(a1 + 16))) & 7) != ((0x507030104060200uLL >> (8 * *(a2 + 16))) & 7))
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a2 + 48);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_21;
    }

LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 24);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v8)
    {
      v9 = a1;
      v10 = a2;
      v11 = *(*v5 + 96);
      outlined copy of Text.Storage(*(a2 + 24), *(a2 + 32), 1);
      outlined copy of Text?(v7, v6, v8, v4);
      v12 = v11(v7);
      outlined consume of Text.Storage(v7, v6, 1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    outlined copy of Text?(*(a2 + 24), *(a2 + 32), v8, v4);
    v13 = v7;
    v14 = v6;
    v15 = 0;
LABEL_23:
    outlined consume of Text.Storage(v13, v14, v15);

    goto LABEL_24;
  }

  if (v8)
  {
    outlined copy of Text?(*(a2 + 24), *(a2 + 32), v8, v4);
    v13 = v7;
    v14 = v6;
    v15 = 1;
    goto LABEL_23;
  }

  v10 = a2;
  v9 = a1;
  v16 = *(a1 + 32);
  if (v5 == v7 && v16 == v6)
  {
    outlined copy of Text.Storage(*(a1 + 24), v16, 0);
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of Text.Storage(v7, v6, 0);

    if ((v17 & 1) == 0)
    {
LABEL_22:
      v15 = v8 & 1;
      v13 = v7;
      v14 = v6;
      goto LABEL_23;
    }
  }

LABEL_20:
  v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v3, v4);
  outlined consume of Text.Storage(v7, v6, v8 & 1);

  a2 = v10;
  a1 = v9;
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v19 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v19 & 1;
}

uint64_t AccessibilityTextModifier.isEqual(to:)()
{
  v1 = v0;
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 16) | (*(v2 + 18) << 16);
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    outlined copy of Text?(v5, v6, v7, v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = 1;
  }

  v8 = *(v1 + 16);
  v9 = *(v1 + 17);
  v10 = *(v1 + 18);
  v12 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = *(v1 + 48);
  if (v3 == 1)
  {
    if (v14 == 1)
    {
      outlined copy of Text?(v12, v11, v13, 1);
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = 1;
LABEL_12:
      outlined consume of AccessibilityTextAttributes?(v15, v16, v17, v18, v19);
      return v14 & 1;
    }

    v21 = v9;
    v22 = v8;
    outlined copy of Text?(v12, v11, v13, v14);
  }

  else
  {
    v28 = v4;
    v29 = v5;
    v30 = v6;
    v31 = v7;
    v32 = v3;
    if (v14 != 1)
    {
      v23[0] = v8;
      v23[1] = v9;
      v23[2] = v10;
      v24 = v12;
      v25 = v11;
      v26 = v13;
      v27 = v14;
      outlined copy of Text?(v12, v11, v13, v14);
      outlined copy of AccessibilityTextAttributes?(v4, v5, v6, v7, v3);
      LOBYTE(v14) = specialized static AccessibilityTextAttributes.== infix(_:_:)(&v28, v23);
      outlined consume of Text?(v24, v25, v26, v27);
      outlined consume of Text?(v29, v30, v31, v32);
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v3;
      goto LABEL_12;
    }

    v21 = v9;
    v22 = v8;
    outlined copy of Text?(v12, v11, v13, 1);
    outlined copy of AccessibilityTextAttributes?(v4, v5, v6, v7, v3);
    outlined consume of Text?(v5, v6, v7, v3);
  }

  outlined consume of AccessibilityTextAttributes?(v4, v5, v6, v7, v3);
  outlined consume of AccessibilityTextAttributes?(v22 | (v21 << 8) | (v10 << 16), v12, v11, v13, v14);
  LOBYTE(v14) = 0;
  return v14 & 1;
}

uint64_t outlined copy of AccessibilityTextAttributes?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5 != 1)
  {
    return outlined copy of Text?(a2, a3, a4, a5);
  }

  return result;
}

uint64_t specialized static AccessibilityTextAttributes.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  v15 = *(a2 + 3);
  v14 = *(a2 + 4);
  if (v2 == 8)
  {
    if (v9 != 8)
    {
      goto LABEL_33;
    }
  }

  else if (v2 != v9)
  {
    goto LABEL_33;
  }

  if (v3 == 7)
  {
    if (v10 != 7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 0;
    if (v10 == 7 || v3 != v10)
    {
      return v16 & 1;
    }
  }

  if (!v7)
  {
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_33:
    v16 = 0;
    return v16 & 1;
  }

  if (!v14)
  {
    goto LABEL_33;
  }

  if (v8)
  {
    if (v15)
    {
      v21 = *(*v5 + 96);
      outlined copy of Text?(v13, v12, v15, v14);
      outlined copy of Text?(v5, v6, v8, v7);
      outlined copy of Text.Storage(v13, v12, 1);
      LOBYTE(v21) = v21(v13);
      outlined consume of Text.Storage(v13, v12, 1);
      if ((v21 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    outlined copy of Text?(*(a2 + 1), *(a2 + 2), v15, v14);
    v17 = v13;
    v18 = v12;
    v19 = 0;
    goto LABEL_21;
  }

  if (v15)
  {
    outlined copy of Text?(*(a2 + 1), *(a2 + 2), v15, v14);
    v17 = v13;
    v18 = v12;
    v19 = 1;
LABEL_21:
    outlined consume of Text.Storage(v17, v18, v19);

    goto LABEL_33;
  }

  if (v5 == v13 && v6 == v12)
  {
    outlined copy of Text?(*(a1 + 1), v6, v15, v14);
    outlined copy of Text?(v5, v6, v8, v7);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of Text?(v13, v12, v15, v14);
    outlined copy of Text?(v5, v6, v8, v7);
    if ((v22 & 1) == 0)
    {
LABEL_32:
      outlined consume of Text.Storage(v13, v12, v15 & 1);

      outlined consume of Text?(v5, v6, v8, v7);
      goto LABEL_33;
    }
  }

LABEL_26:
  v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v7, v14);
  outlined consume of Text.Storage(v13, v12, v15 & 1);

  outlined consume of Text?(v5, v6, v8, v7);
  if ((v23 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v16 = v4 == 2;
  if (v11 != 2)
  {
    v16 = 0;
  }

  if (v4 != 2 && v11 != 2)
  {
    v16 = v11 ^ v4 ^ 1;
  }

  return v16 & 1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Binding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized Binding.wrappedValue.setter(a1);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t LocationBox.set(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10 = *(v5 + 184);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  (*(*(v5 + 176) + 56))(a1, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance _VariadicView_Children()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4 == 0;
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[16];
  LOBYTE(v2) = v2[17];
  *result = v3;
  *(result + 8) = v4;
  *(result + 16) = v5;
  *(result + 17) = v2;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 9);
  *result = v3;
  *(result + 8) = v4;
  *(result + 9) = v2;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v9 + 40), v22);
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t AnyStaticFontModifier.modify(descriptor:in:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return (*(*(v3 + 144) + 16))(a1, v6);
}

void *closure #1 in View.bold(_:)(void *result, char a2)
{
  v2 = result;
  if (a2)
  {
    _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V04BoldE0V_Ttt0g5();
    MEMORY[0x193ABF170]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

LABEL_92:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *result;
  v34 = *result >> 62;
  v35 = result;
  v4 = *result & 0xFFFFFFFFFFFFFF8;
  if (v34)
  {
    result = __CocoaSet.count.getter();
    v5 = result;
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v8 = &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>;
  v9 = &type metadata for Font.BoldModifier;
  while (1)
  {
    if (v5 == v6)
    {
      if (v34)
      {
        result = __CocoaSet.count.getter();
        v6 = result;
      }

      else
      {
        v6 = *(v4 + 16);
      }

LABEL_81:
      if (v3 >> 62)
      {
        result = __CocoaSet.count.getter();
        v33 = result;
        if (result >= v6)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v6, v33);
        }
      }

      else
      {
        v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v6)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v6, v33);
        }
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v7)
    {
      MEMORY[0x193AC03C0](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, v8);
    if (swift_dynamicCastClass())
    {
      break;
    }

    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    v11 = swift_dynamicCastClass();
    if (v11 && *(v11 + 16) >= 0.3)
    {
      v12 = v5;
      v13 = v4;
      v14 = v9;
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v15 = v8;
      v16 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v17 = dyld_program_sdk_at_least();

        v9 = v14;
        v4 = v13;
        v5 = v12;
        v7 = v3 & 0xC000000000000001;
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = static Semantics.forced;

        v19 = v18 >= v16;
        v8 = v15;
        v9 = v14;
        v4 = v13;
        v5 = v12;
        v7 = v3 & 0xC000000000000001;
        if (!v19)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_85;
    }
  }

LABEL_29:
  v20 = (v6 + 1);
  if (!__OFADD__(v6, 1))
  {
    if (v34)
    {
      result = __CocoaSet.count.getter();
      if (v20 == result)
      {
        goto LABEL_81;
      }
    }

    else
    {
      result = *(v4 + 16);
      if (v20 == result)
      {
        goto LABEL_81;
      }
    }

    v21 = v6 + 5;
    while (2)
    {
      v22 = v21 - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v21 - 4, v3);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v22 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }
      }

      if (swift_dynamicCastClass())
      {

        goto LABEL_69;
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
      v23 = swift_dynamicCastClass();
      if (!v23 || *(v23 + 16) < 0.3)
      {

        goto LABEL_44;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v26 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v27 = dyld_program_sdk_at_least();

        if ((v27 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_44:
        if (v22 != v6)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x193AC03C0](v6, v3);
            v25 = MEMORY[0x193AC03C0](v21 - 4, v3);
          }

          else
          {
            if (v6 < 0)
            {
              goto LABEL_97;
            }

            v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 >= v28)
            {
              goto LABEL_98;
            }

            if (v22 >= v28)
            {
              goto LABEL_99;
            }

            v24 = *(v3 + 8 * v6 + 32);
            v25 = *(v3 + 8 * v21);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v29 = (v3 >> 62) & 1;
          }

          else
          {
            LODWORD(v29) = 0;
          }

          v30 = v3 & 0xFFFFFFFFFFFFFF8;
          *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v25;

          if ((v3 & 0x8000000000000000) != 0 || v29)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v30 = v3 & 0xFFFFFFFFFFFFFF8;
            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_90;
            }
          }

          else if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          if (v22 >= *(v30 + 16))
          {
            goto LABEL_91;
          }

          *(v30 + 8 * v21) = v24;

          *v35 = v3;
        }

        v10 = __OFADD__(v6++, 1);
        if (v10)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v32 = static Semantics.forced;

        if (v32 >= v26)
        {
          goto LABEL_44;
        }
      }

LABEL_69:
      v31 = (v21 - 3);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_88;
      }

      if (v3 >> 62)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v21;
      if (v31 == result)
      {
        goto LABEL_81;
      }

      continue;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t ContentResponderHelper.update(data:size:position:transform:parent:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11)
{
  v71 = a8;
  v74 = a7;
  LODWORD(v63) = a5;
  v58 = a10;
  v57 = a9;
  LODWORD(v67) = a4;
  *&v66 = a3;
  v15 = *(a11 + 16);
  v75 = type metadata accessor for Optional();
  v16 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v59 = &v57 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  *&v65 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = *(v15 - 8);
  (*(v24 + 16))(&v57 - v22, a1, v15, v21);
  v62 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v60 = v23;
  LODWORD(v68) = a2;
  v23[v25] = a2;
  v26 = *(a11 + 40);
  v64 = v11;
  v27 = &v11[v26];
  v29 = *&v11[v26];
  v28 = *&v11[v26 + 8];
  v72 = v29;
  v73 = v28;
  v30 = *(v27 + 1);
  v70 = *(v27 + 2);
  v69 = v30;
  if (v74 & 1) != 0 || (v63)
  {
    v31 = *(a6 + 8);
    *v27 = *a6;
    *(v27 + 1) = v31;
    *&v32.f64[0] = v57.n128_u64[0];
    *&v32.f64[1] = v58.n128_u64[0];
    *(v27 + 2) = vsubq_f64(*(a6 + 32), vsubq_f64(v32, *(a6 + 16)));
    *(v27 + 1) = v32;
    v74 = 4;
  }

  else
  {
    v74 = 0;
  }

  v66 = *v66;

  v33 = v75;
  v34 = v64;
  if (v67)
  {
    *v64 = v66;
    v74 |= 2u;
  }

  if (v68)
  {
    v35 = *(v16 + 8);
LABEL_10:
    v38 = *(a11 + 36);
    v39 = v64;
    v35(&v64[v38], v33);
    v40 = v65;
    (*(v61 + 16))(v65, v60, v62);
    (*(v24 + 32))(&v39[v38], v40, v15);
    v41 = v39;
    (*(v24 + 56))(&v39[v38], 0, 1, v15);
    v74 |= 1u;
    goto LABEL_11;
  }

  v36 = v59;
  (*(v16 + 16))(v59, &v34[*(a11 + 36)], v33);
  v37 = (*(v24 + 48))(v36, 1, v15);
  v35 = *(v16 + 8);
  v35(v36, v33);
  if (v37 == 1)
  {
    goto LABEL_10;
  }

  v41 = v64;
  if (!v74)
  {
    (*(v61 + 8))(v60, v62);
  }

LABEL_11:
  v42 = *(v27 + 1);
  v68 = *v27;
  v67 = v42;
  v43 = *(a11 + 44);
  v44 = *(v41 + v43);
  v45 = *(v27 + 1);
  v66 = *(v27 + 2);
  v65 = v45;
  v63 = v43;
  *(v41 + v43) = MEMORY[0x1E69E7CC0];
  v46 = *(v44 + 2);
  if (v46)
  {
    v59 = v44;
    v47 = (v44 + 32);
    v75 = MEMORY[0x1E69E7CC0];
    v48 = v73;
    v49 = v68;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, v84);
      v83 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v50 = v85, ObjectType = swift_getObjectType(), v82 = v74, v79[0] = v72, v79[1] = v48, v80 = v69, v81 = v70, v76[0] = v49, v76[1] = v67, v77 = v65, v78 = v66, v52 = *(v50 + 16), , , , , v52(v71, &v82, v79, v76, &v83, ObjectType, v50), swift_unknownObjectRelease(), , , , , v83 == 1))
      {
        outlined destroy of weak GestureGraphDelegate?(v84);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v84, v79);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
        }

        v54 = v75[2];
        v53 = v75[3];
        if (v54 >= v53 >> 1)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v75);
        }

        outlined destroy of weak GestureGraphDelegate?(v84);
        v55 = v75;
        v75[2] = v54 + 1;
        outlined init with take of ContentPathObservers.Observer(v79, &v55[2 * v54 + 4]);
        *&v64[v63] = v55;
      }

      v47 += 16;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  return (*(v61 + 8))(v60, v62);
}

uint64_t specialized LeafResponderFilter.responder.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafViewResponder<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafViewResponder);
    v1 = swift_allocObject();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 76) = 2;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = 0;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v2 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v2 + 208);

    swift_beginAccess();
    *(v1 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafViewResponder<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafViewResponder);
    v1 = swift_allocObject();
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = 0;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v2 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v2 + 208);

    swift_beginAccess();
    *(v1 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t specialized LeafResponderFilter.updateValue()()
{
  v62[6] = *MEMORY[0x1E69E9840];
  v0 = specialized LeafResponderFilter.responder.getter();
  Value = AGGraphGetValue();
  v3 = v2;
  v55 = *Value;
  v46 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 20);
  v6 = *(Value + 21);
  v7 = AGGraphGetValue();
  v9 = v8;
  v10 = *v7;
  v11 = v7[1];
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v14 = v13;
  v48 = *v12;
  v49 = v12[1];
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v21 = v20 | v14;
  v53 = *(v15 + 32);
  v44 = *(v15 + 40);

  v52 = specialized LeafResponderFilter.responder.getter();
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v50 = *(v0 + 80);
  v51 = *(v0 + 88);
  if (v21)
  {
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    v26 = v49 - v19;
    *&v27 = v53;
    v28 = v53 - (v48 - v18);
    v29 = v44 - v26;
    *&v30 = v48;
    *(&v30 + 1) = v49;
    *(&v27 + 1) = v44;
    *(v0 + 96) = v30;
    *(v0 + 112) = v27;
    *(v0 + 112) = v28;
    *(v0 + 120) = v44 - v26;
    v54 = 4;
  }

  else
  {
    v54 = 0;
    v29 = *(v0 + 120);
    v28 = *(v0 + 112);
    v49 = *(v0 + 104);
    v48 = *(v0 + 96);
  }

  if (v9)
  {
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    v54 |= 2u;
  }

  if ((v3 & 1) != 0 || *(v0 + 76) << 32 == 0x200000000)
  {
    v31 = 0x100000000;
    if (!v5)
    {
      v31 = 0;
    }

    *(v0 + 56) = v55;
    *(v0 + 64) = v46;
    *(v0 + 72) = v4;
    *(v0 + 76) = (v31 | (v6 << 40)) >> 32;
    LOBYTE(v54) = v54 | 1;
  }

  else if (!v54)
  {

    goto LABEL_25;
  }

  v47 = *(v0 + 80);
  v45 = *(v0 + 88);
  v32 = *(v0 + 128);
  *(v0 + 128) = MEMORY[0x1E69E7CC0];
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v34, v59);
      v58 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v35 = v60, ObjectType = swift_getObjectType(), v57 = v54, v62[0] = v50, v62[1] = v51, v62[2] = v22, v62[3] = v23, v62[4] = v24, v62[5] = v25, v61[0] = v47, v61[1] = v45, *&v61[2] = v48, *&v61[3] = v49, *&v61[4] = v28, *&v61[5] = v29, v36 = *(v35 + 16), , , , , v36(v52, &v57, v62, v61, &v58, ObjectType, v35), swift_unknownObjectRelease(), , , , , v58 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v59);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v59, v62);
        v37 = *(v0 + 128);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
          *(v0 + 128) = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          *(v0 + 128) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
        }

        outlined destroy of ContentPathObservers.Observer(v59);
        v41 = *(v0 + 128);
        *(v41 + 16) = v40 + 1;
        outlined init with take of ContentPathObservers.Observer(v62, v41 + 16 * v40 + 32);
        *(v0 + 128) = v41;
      }

      v34 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_18DDAB4D0;
    *(v43 + 32) = specialized LeafResponderFilter.responder.getter();
    v62[0] = v43;
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v57[6] = *MEMORY[0x1E69E9840];
  v0 = specialized LeafResponderFilter.responder.getter();
  AGGraphGetValue();
  v2 = v1;
  Value = AGGraphGetValue();
  v5 = v4;
  v6 = *Value;
  v7 = Value[1];
  type metadata accessor for CGPoint(0);
  v8 = AGGraphGetValue();
  v10 = v9;
  v44 = *v8;
  v45 = v8[1];
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v17 = v16 | v10;
  v50 = *(v11 + 32);
  v48 = *(v11 + 40);

  v18 = specialized LeafResponderFilter.responder.getter();
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v46 = *(v0 + 64);
  v47 = v18;
  if (v17)
  {
    *(v0 + 64) = v12;
    *(v0 + 72) = v13;
    v24 = v45 - v15;
    *&v25 = v50;
    v26 = v50 - (v44 - v14);
    v27 = v48 - v24;
    *&v28 = v44;
    *(&v28 + 1) = v45;
    *(&v25 + 1) = v48;
    *(v0 + 80) = v28;
    *(v0 + 96) = v25;
    *(v0 + 96) = v26;
    *(v0 + 104) = v48 - v24;
    v49 = 4;
  }

  else
  {
    v49 = 0;
    v27 = *(v0 + 104);
    v26 = *(v0 + 96);
    v45 = *(v0 + 88);
    v44 = *(v0 + 80);
  }

  if (v5)
  {
    *(v0 + 40) = v6;
    *(v0 + 48) = v7;
    v49 |= 2u;
  }

  if ((v2 & 1) != 0 || *(v0 + 56) == 1)
  {
    *(v0 + 56) = 0;
    LOBYTE(v49) = v49 | 1;
  }

  else if (!v49)
  {

    goto LABEL_23;
  }

  v42 = *(v0 + 64);
  v43 = v19;
  v41 = *(v0 + 72);
  v29 = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v31, v54);
      v53 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v32 = v55, ObjectType = swift_getObjectType(), v52 = v49, v57[0] = v46, v57[1] = v43, v57[2] = v20, v57[3] = v21, v57[4] = v22, v57[5] = v23, v56[0] = v42, v56[1] = v41, *&v56[2] = v44, *&v56[3] = v45, *&v56[4] = v26, *&v56[5] = v27, v33 = *(v32 + 16), , , , , v33(v47, &v52, v57, v56, &v53, ObjectType, v32), swift_unknownObjectRelease(), , , , , v53 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v54);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v54, v57);
        v34 = *(v0 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 112) = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
          *(v0 + 112) = v34;
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          *(v0 + 112) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
        }

        outlined destroy of ContentPathObservers.Observer(v54);
        v38 = *(v0 + 112);
        *(v38 + 16) = v37 + 1;
        outlined init with take of ContentPathObservers.Observer(v57, v38 + 16 * v37 + 32);
        *(v0 + 112) = v38;
      }

      v31 += 16;
      --v30;
    }

    while (v30);
  }

  else
  {
  }

LABEL_23:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_18DDAB4D0;
    *(v40 + 32) = specialized LeafResponderFilter.responder.getter();
    v57[0] = v40;
    AGGraphSetOutputValue();
  }

  return result;
}

Swift::Void __swiftcall StyledTextResponder.update()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = *(Value + 8);
  v60 = *(Value + 16);

  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v11 = AGGraphGetValue();
  v13 = v12;
  v14 = *v11;
  v15 = v11[1];
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v18 = v17;
  v54 = *v16;
  v52 = v16[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = v24 | v18;
  v58 = *(v19 + 32);
  v56 = *(v19 + 40);
  swift_beginAccess();
  v26 = v1[26];
  v27 = v1[27];
  v28 = v1[28];
  v29 = v1[29];
  v50 = *(v1 + 25);
  v51 = *(v1 + 24);
  if (v25)
  {
    *(v1 + 24) = v21;
    *(v1 + 25) = v20;
    *&v30 = v58;
    v31 = v58 - (v54 - v22);
    v32 = v56 - (v52 - v23);
    *&v33 = v54;
    *(&v33 + 1) = v52;
    *(&v30 + 1) = v56;
    *(v1 + 13) = v33;
    *(v1 + 14) = v30;
    v1[28] = v31;
    v1[29] = v32;

    v57 = 4;
  }

  else
  {

    v57 = 0;
    v32 = v29;
    v31 = v28;
    v52 = v27;
    v54 = v26;
  }

  if (v13)
  {
    *(v1 + 18) = v14;
    *(v1 + 19) = v15;
    v57 |= 2u;
  }

  v35 = v52;
  v34 = v54;
  v36 = *(v1 + 20);
  if ((v9 & 1) != 0 || !v36)
  {
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v36);
    *(v1 + 20) = v5;
    *(v1 + 21) = v6;
    LOBYTE(v57) = v57 | 1;
    *(v1 + 22) = v60;
    *(v1 + 23) = v10;

    v34 = v1[26];
    v35 = v1[27];
    v31 = v1[28];
    v32 = v1[29];
  }

  else if (!v57)
  {

    goto LABEL_25;
  }

  v48 = *(v1 + 25);
  v49 = *(v1 + 24);
  v37 = *(v1 + 30);
  v38 = MEMORY[0x1E69E7CC0];
  *(v1 + 30) = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);
  if (v39)
  {
    v53 = v35;
    v55 = v34;
    v40 = v37 + 32;
    v59 = v38;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v40, v66);
      v65 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v41 = v1, v42 = v67, ObjectType = swift_getObjectType(), v64 = v57, v63[0] = v51, v63[1] = v50, *&v63[2] = v26, *&v63[3] = v27, *&v63[4] = v28, *&v63[5] = v29, v62[0] = v49, v62[1] = v48, *&v62[2] = v55, *&v62[3] = v53, *&v62[4] = v31, *&v62[5] = v32, v43 = *(v42 + 16), , , , , v44 = v42, v1 = v41, v43(v41, &v64, v63, v62, &v65, ObjectType, v44), swift_unknownObjectRelease(), , , , , v65 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v66);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v66, v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v41 + 30) = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
          *(v41 + 30) = v59;
        }

        v47 = v59[2];
        v46 = v59[3];
        if (v47 >= v46 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v59);
          *(v41 + 30) = v59;
        }

        outlined destroy of ContentPathObservers.Observer(v66);
        v59[2] = v47 + 1;
        outlined init with take of ContentPathObservers.Observer(v63, &v59[2 * v47 + 4]);
        *(v41 + 30) = v59;
      }

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  else
  {
  }

LABEL_25:

  swift_endAccess();
  swift_bridgeObjectRelease_n();
}

uint64_t outlined consume of ShapeStyledResponderData<StyledTextContentView>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PlatformViewResponderBase.preferredFocusableView.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t MultiViewResponder.children.setter(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v2[5];
  if (v4 >> 62)
  {
    goto LABEL_72;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(a1 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      goto LABEL_74;
    }

LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v39 = a1;
    v40 = v6;
    v36 = a1 + 32;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = a1 & 0xC000000000000001;
    v43 = -v5;
LABEL_5:
    while (2)
    {
      v38 = v7;
      v10 = v8 - v9 + 0x7FFFFFFFFFFFFFFFLL;
      v41 = v6 + v8 - v9;
      v11 = 8 * v8 + 32;
      while (1)
      {
        if (v42)
        {
          v12 = MEMORY[0x193AC03C0](v9, v39);
          if (v8 == v10)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v9 >= *(v37 + 16))
          {
            goto LABEL_65;
          }

          v12 = *(v36 + 8 * v9);

          if (v8 == v10)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        ++v9;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_28;
        }

        a1 = Strong;

        if (a1 != v2)
        {
          goto LABEL_28;
        }

        if (v5 < v8)
        {
          goto LABEL_64;
        }

        if (v8 == v5)
        {
          break;
        }

        v15 = 0;
        while (1)
        {
          v16 = v8 + v15;
          if (v8 + v15 >= v5)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          result = swift_beginAccess();
          v17 = v2[5];
          if ((v17 & 0xC000000000000001) != 0)
          {
            break;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          a1 = *(v17 + v11 + 8 * v15);
          result = swift_endAccess();
          if (a1 == v12)
          {
            goto LABEL_24;
          }

LABEL_21:
          ++v15;
          if (!(v43 + v8 + v15))
          {
            goto LABEL_28;
          }
        }

        a1 = MEMORY[0x193AC03C0](v8 + v15);
        swift_endAccess();
        result = swift_unknownObjectRelease();
        if (a1 != v12)
        {
          goto LABEL_21;
        }

LABEL_24:
        if (v15)
        {
          swift_beginAccess();
          a1 = (v2 + 5);
          specialized MutableCollection.swapAt(_:_:)(v8, v8 + v15, specialized _ArrayBuffer._consumeAndCreateNew());
          swift_endAccess();

          ++v8;
          v7 = 1;
          v6 = v40;
          if (v9 == v40)
          {
LABEL_52:

            if (v8 < v5)
            {
              goto LABEL_55;
            }

            return (*(*v2 + 336))(result);
          }

          goto LABEL_5;
        }

        ++v8;
        v11 += 8;
        if (v8 == v41)
        {

          v8 = v41;
          if (v41 < v5)
          {
LABEL_55:
            if (v5 < v8)
            {
              goto LABEL_97;
            }

            v24 = v8 < v5;
            if (v8 != v5)
            {
              goto LABEL_79;
            }

LABEL_76:
            swift_beginAccess();
            specialized Array.replaceSubrange<A>(_:with:)(v8, v5);
            result = swift_endAccess();
            return (*(*v2 + 336))(result);
          }

LABEL_61:
          if ((v38 & 1) == 0)
          {
            return result;
          }

          return (*(*v2 + 336))(result);
        }
      }

      v8 = v5;
LABEL_28:
      swift_weakLoadStrong();

      swift_weakAssign();
      swift_beginAccess();

      MEMORY[0x193ABF170](v18);
      v6 = v40;
      if (*((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = v2[5];
      swift_endAccess();
      if (v8 >= v5)
      {
LABEL_46:

        ++v5;
        ++v8;
        --v43;
        v7 = 1;
        if (v9 == v6)
        {
          goto LABEL_52;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x193AC03C0](v8, a1);
      v21 = MEMORY[0x193AC03C0](v5, a1);
      goto LABEL_36;
    }

    if (v8 < 0)
    {
      goto LABEL_66;
    }

    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v19)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5 >= v19)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v20 = *(a1 + 32 + 8 * v8);
    v21 = *(a1 + 32 + 8 * v5);

LABEL_36:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v2[5] = a1;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      v2[5] = a1;
    }

    if (v8 < 0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

    v2[5] = a1;
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      v2[5] = a1;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v40;
    if (v5 < *(v23 + 16))
    {
      *(v23 + 8 * v5 + 32) = v20;

      v2[5] = a1;
      swift_endAccess();
      goto LABEL_46;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v5 = __CocoaSet.count.getter();
    if (a1 >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_74:

  if (v5 <= 0)
  {
    return result;
  }

  v8 = 0;
  v24 = v5 > 0;
LABEL_79:
  if (!v24)
  {
    goto LABEL_98;
  }

  v25 = v8;
  while (2)
  {
    result = swift_beginAccess();
    v26 = v2[5];
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x193AC03C0](v25);
LABEL_88:
      swift_endAccess();
      swift_beginAccess();
      v28 = swift_weakLoadStrong();
      if (v28)
      {
        v29 = v28;

        if (v29 == v2)
        {
          if (swift_weakLoadStrong())
          {

            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v30 = v27[3];
              ObjectType = swift_getObjectType();
              v32 = type metadata accessor for EventGraphHost();
              (*(v30 + 16))(v44, v32, v32, ObjectType, v30);
              swift_unknownObjectRelease();
              if (v44[0])
              {
                v33 = v44[1];
                v34 = swift_getObjectType();
                (*(v33 + 8))(v34, v33);
                swift_unknownObjectRelease();
                v35 = EventBindingManager.willRemoveResponder(_:)(v27);
                (*(*v27 + 120))(v35);
              }
            }
          }

          swift_weakAssign();
        }
      }

      ++v25;

      if (v5 == v25)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_96;
    }

    v27 = *(v26 + 8 * v25 + 32);

    goto LABEL_88;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DefaultLayoutViewResponder.childrenDidChange()()
{
  v1 = *(v0 + 200);
  if (v1)
  {

    v1(v2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  }

  swift_beginAccess();
  v3 = *(v0 + 80);
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v0, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  swift_endAccess();
}

void *MultiViewResponder.visit(applying:)@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  result = a1((&v16 + 1), v3);
  v9 = BYTE1(v16);
  if (!BYTE1(v16))
  {
    v10 = (*(*v4 + 208))(result);
    v11 = v10;
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
LABEL_18:
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (v13 != v14)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193AC03C0](v14, v11);
        if (__OFADD__(v14, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v15 = *(v11 + 8 * v14 + 32);

        if (__OFADD__(v14, 1))
        {
          goto LABEL_13;
        }
      }

      (*(*v15 + 104))(&v16, a1, a2);

      ++v14;
      if (v16 == 2)
      {
        v9 = 2;
        goto LABEL_15;
      }
    }

    v9 = 0;
LABEL_15:
  }

  *a3 = v9;
  return result;
}

uint64_t ViewGraphRootValueUpdater.responderNode.getter(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_9(0, &lazy cache variable for type metadata for ResponderNode?, type metadata accessor for ResponderNode, MEMORY[0x1E69E6720]);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(closure #1 in ViewGraphRootValueUpdater.responderNode.getter, a1, v4, a2, &v6);
  if (v6 == 1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t *closure #1 in ViewGraphRootValueUpdater.responderNode.getter@<X0>(uint64_t *a1@<X8>)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_9(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (!result)
  {
    goto LABEL_8;
  }

  v3 = *result;
  if (!(*result >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x193AC03C0](0, v3);

    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);

LABEL_9:
    *a1 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t HitTestBindingFilter.updateValue()()
{
  v1 = *(v0 + 8);
  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t ShapeStyledResponderFilter.updateValue()(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v58 = *(a1 + 24);
  v55 = type metadata accessor for ShapeStyledResponderData();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = swift_getTupleTypeMetadata2();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v15 = *(v14 + 48);
  v16 = *(v1 + 12);
  v49 = *(v1 + 8);
  v51 = v16;
  v52 = *(v1 + 16);
  v48 = *(v1 + 24);
  Value = AGGraphGetValue();
  v19 = v18;
  v20 = *(v2 - 8);
  (*(v20 + 16))(v13, Value, v2);
  v13[v15] = v19 & 1;
  v21 = AGGraphGetValue();
  v23 = v19 | v22;
  v24 = *v21;
  v25 = *(v59 + 16);
  v54 = v13;
  v57 = v8;
  v25(v10, v13, v8);
  (*(v20 + 32))(v7, v10, v2);
  *&v7[*(type metadata accessor for ShapeStyledResponderData() + 36)] = v24;
  v7[*(TupleTypeMetadata2 + 48)] = v23 & 1;
  v26 = *(v60 + 16);
  v27 = v53;
  v56 = v7;
  v26(v53, v7, TupleTypeMetadata2);
  v58 = TupleTypeMetadata2;
  v50 = *(v27 + *(TupleTypeMetadata2 + 48));
  v28 = v27;
  v29 = v48;

  v30 = AGGraphGetValue();
  LOBYTE(v27) = v31;
  v32 = v30[1];
  v61[0] = *v30;
  v61[1] = v32;
  type metadata accessor for CGPoint(0);
  v33 = AGGraphGetValue();
  LOBYTE(v24) = v34;
  v35 = *v33;
  v36 = v33[1];
  v37 = AGGraphGetValue();
  LOBYTE(v10) = v38;
  v39 = *(v37 + 8);
  v62[0] = *v37;
  v62[1] = v39;
  v40 = *(v37 + 32);
  v63 = *(v37 + 16);
  v64 = v40;
  v41 = v55;
  v42 = type metadata accessor for ContentResponderHelper();

  v43.n128_u64[0] = v35;
  v44.n128_u64[0] = v36;
  ContentResponderHelper.update(data:size:position:transform:parent:)(v28, v50, v61, v27 & 1, v24 & 1, v62, v10 & 1, v29, v43, v44, v42);

  (*(*(v41 - 8) + 8))(v28, v41);
  type metadata accessor for [ViewResponder](0);
  if (AGGraphGetOutputValue())
  {
    (*(v60 + 8))(v56, v58);
    return (*(v59 + 8))(v54, v57);
  }

  else
  {
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAB4D0;
    *(v46 + 32) = v29;
    v62[0] = v46;

    AGGraphSetOutputValue();
    (*(v60 + 8))(v56, v58);
    (*(v59 + 8))(v54, v57);
  }
}

uint64_t initializeWithCopy for ShapeStyledResponderData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _OverlayStyleModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t destroy for ShapeStyledResponderData(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t GestureFilter.updateValue()(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = GestureFilter.responder.getter();
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v8 = (*(*(a1 + 24) + 72))(v2);
  (*(v3 + 8))(v5, v2);
  *(v6 + 220) = v8;

  GestureFilter.responder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v9)
  {

    MultiViewResponder.children.setter(v10);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18DDAB4D0;
    *(v12 + 32) = GestureFilter.responder.getter();
    v13[0] = v12;
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t GestureFilter.responder.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = closure #1 in GestureFilter.responder.getter(v0);
    *(v0 + 104) = v1;
  }

  return v1;
}

{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = closure #1 in GestureFilter.responder.getter(v0);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t closure #1 in GestureFilter.responder.getter(uint64_t a1)
{
  v2 = *(a1 + 96);
  AGGraphClearUpdate();
  v3 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureFilter.responder.getter(a1, &v5);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v5;
}

{
  v2 = *(a1 + 96);
  AGGraphClearUpdate();
  v3 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureFilter.responder.getter(a1, &v5);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v5;
}

id closure #1 in closure #1 in GestureFilter.responder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GestureResponder();
  type metadata accessor for GestureFilter();
  v4 = *(a1 + 4);
  v5 = *(a1 + 56);
  v14[2] = *(a1 + 40);
  v14[3] = v5;
  v14[4] = *(a1 + 72);
  v15 = *(a1 + 88);
  v6 = *(a1 + 24);
  v14[0] = *(a1 + 8);
  v14[1] = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v12[3] = *(a1 + 56);
  v12[4] = v8;
  v13 = *(a1 + 88);
  v9 = *(a1 + 24);
  v12[0] = *(a1 + 8);
  v12[1] = v9;
  v12[2] = v7;
  outlined init with copy of _ViewInputs(v14, v11);
  swift_allocObject();
  result = specialized GestureResponder.init(modifier:inputs:)(v4, v12);
  *a2 = result;
  return result;
}

uint64_t *GeometryEffectDisplayList.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 + 24);
  v36 = *(a1 + 16);
  v37 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v30 - v5;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = *(v2 + 28);
  v40 = *v2;
  *&v50 = __PAIR64__(v7, v40);
  *(&v50 + 1) = __PAIR64__(v8, v9);
  v35 = v8;
  *&v51 = __PAIR64__(v11, v10);
  DWORD2(v51) = v12;
  v38 = v13;
  BYTE12(v51) = v13;
  GeometryEffectDisplayList.content.getter(v48);
  v14 = *&v48[0];
  v15 = MEMORY[0x1E69E7CC0];
  if (*&v48[0])
  {
    v16 = *&v48[0];
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (*(v16 + 16))
  {
    v31 = *(&v48[0] + 1);
    v32 = v16;
    type metadata accessor for CGPoint(0);
    v30 = *AGGraphGetValue();
    v47 = vsubq_f64(v30, *AGGraphGetValue());
    *&v50 = __PAIR64__(v7, v40);
    *(&v50 + 1) = __PAIR64__(v35, v9);
    *&v51 = __PAIR64__(v11, v10);
    DWORD2(v51) = v12;
    v17 = v38;
    BYTE12(v51) = v38;
    GeometryEffectDisplayList.effect.getter(v6);
    type metadata accessor for CGSize(0);
    Value = AGGraphGetValue();
    v19 = *Value;
    v20 = Value[1];
    LOBYTE(v43) = *AGGraphGetValue();
    (*(v37 + 24))(v48, v6, &v47, &v43, v19, v20);
    (*(v33 + 8))(v6, v34);
    v21 = *&v48[0];
    v22 = DWORD2(v48[0]);
    v23 = BYTE12(v48[0]);
    if (v14)
    {
      v24 = v31 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
    }

    else
    {
      v24 = 0x40000000;
    }

    v25 = v47;
    outlined copy of DisplayList.Effect(*&v48[0], SBYTE8(v48[0]), SBYTE12(v48[0]));
    v26 = AGGraphGetValue();
    v43 = v25;
    v27 = *v26;
    ++static DisplayList.Version.lastValue;
    v44 = v27;
    *&v46[0] = v22 | (v23 << 32);
    *(&v46[0] + 1) = v32;
    *&v46[1] = v24;
    DWORD2(v46[1]) = v40;
    *&v45 = static DisplayList.Version.lastValue;
    *(&v45 + 1) = v21;
    LOBYTE(v50) = v17;
    DisplayList.Item.canonicalize(options:)(&v50);
    v48[2] = v45;
    v49[0] = v46[0];
    *(v49 + 12) = *(v46 + 12);
    v48[0] = v43;
    v48[1] = v44;
    v41[2] = v45;
    v42[0] = v46[0];
    *(v42 + 12) = *(v46 + 12);
    v41[0] = v43;
    v41[1] = v44;
    outlined init with copy of DisplayList.Item(v48, &v50);
    DisplayList.init(_:)(v41, v39);
    outlined consume of DisplayList.Effect(v21, v22, v23);
    v52 = v45;
    v53[0] = v46[0];
    *(v53 + 12) = *(v46 + 12);
    v50 = v43;
    v51 = v44;
    return outlined destroy of DisplayList.Item(&v50);
  }

  else
  {

    v29 = v39;
    *v39 = v15;
    *(v29 + 4) = 0;
    *(v29 + 3) = 0;
  }

  return result;
}

uint64_t GeometryEffectDisplayList.content.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t GeometryEffectDisplayList.effect.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

id specialized GestureResponder.init(modifier:inputs:)(int a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(v2 + 120) = *(a2 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a2 + 64);
  v4 = *(a2 + 16);
  *(v2 + 88) = *a2;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 216) = a1;
  *(v2 + 220) = 3;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a2 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _ScaleEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _ScaleEffect.effectValue(size:)(v7, a2, a3, *v3, v3[1], v3[2], v3[3]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t static DefaultGeometryEffectProvider.resolve(effect:origin:size:layoutDirection:)@<X0>(float64x2_t *a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  (*(a4 + 24))(&v23, a3, a4);
  if (v9 == 1)
  {
    v47 = 0xBFF0000000000000;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = xmmword_18DDAA020;
    v52 = a6;
    v53 = 0;
    v54 = 0x3FF0000000000000;
    ProjectionTransform.concatenating(_:)(&v23, v29);
    v42[0] = 0xBFF0000000000000;
    memset(&v42[1], 0, 24);
    v43 = xmmword_18DDAA020;
    v44 = a6;
    v45 = 0;
    v46 = 0x3FF0000000000000;
    v10 = v30;
    ProjectionTransform.concatenating(_:)(v42, v30);
    v11 = v32;
    v12 = v31;
    v13 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    v15 = v28;
    v14 = v27;
    v13 = v26;
    v11 = v25;
    v10 = &v23;
    v12 = v24;
  }

  v21 = v11;
  v22 = v12;
  v16 = *v10;
  v37 = v12;
  v38 = v11;
  v36 = v16;
  v39 = v13;
  v20 = v14;
  v40 = v14;
  v41 = v15;
  if (ProjectionTransform.isInvertible.getter())
  {
    if (*(&v22 + 1) != 0.0 || (v13 == 0.0 ? (v17 = v15 == 1.0) : (v17 = 0), !v17))
    {
      result = swift_allocObject();
      *(result + 16) = v16;
      *(result + 40) = v21;
      *(result + 24) = v22;
      *(result + 56) = v13;
      *(result + 64) = v20;
      *(result + 80) = v15;
      v19 = 9;
      *(result + 88) = 1;
      goto LABEL_20;
    }

    if (v16 != 1.0 || *&v22 != 0.0 || *&v21 != 0.0 || *(&v21 + 1) != 1.0)
    {
      result = swift_allocObject();
      *(result + 16) = v16;
      *(result + 24) = v22;
      *(result + 32) = v21;
      *(result + 48) = v20;
      v19 = 9;
      *(result + 88) = 0;
      goto LABEL_20;
    }

    result = 0;
    *a1 = vaddq_f64(v20, *a1);
  }

  else
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
  }

  v19 = 20;
LABEL_20:
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 12) = v19;
  return result;
}

uint64_t ContentShapeKindResponderFilter.updateValue()()
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for _ContentShapeKindModifier();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - v3;
  v5 = *(v0 + 3);
  LODWORD(v3) = v0[4];
  v36 = *v0;
  v37 = v3;

  Value = AGGraphGetValue();
  v7 = *(v2 + 16);
  v34 = v8;
  v35 = v7;
  v7(v4, Value, v1);
  v9 = AGGraphGetValue();
  v33 = v10;
  v11 = v9[1];
  v38[0] = *v9;
  v38[1] = v11;
  type metadata accessor for CGPoint(0);
  v12 = AGGraphGetValue();
  v32 = v13;
  v15 = *v12;
  v14 = v12[1];
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *(v16 + 8);
  v39[0] = *v16;
  v39[1] = v19;
  v20 = *(v16 + 32);
  v40 = *(v16 + 16);
  v41 = v20;
  swift_beginAccess();
  v21 = type metadata accessor for ContentResponderHelper();

  v22.n128_u64[0] = v15;
  v23.n128_u64[0] = v14;
  ContentResponderHelper.update(data:size:position:transform:parent:)(v4, v34 & 1, v38, v33 & 1, v32 & 1, v39, v18 & 1, v5, v22, v23, v21);
  swift_endAccess();

  v24 = *(v2 + 8);
  v24(v4, v1);
  v25 = AGGraphGetValue();
  v35(v4, v25, v1);
  v26 = *&v4[*(v1 + 40)];
  v24(v4, v1);
  *(v5 + 216) = v26;
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v27)
  {

    MultiViewResponder.children.setter(v28);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_18DDAB4D0;
    *(v30 + 32) = v5;
    v39[0] = v30;

    AGGraphSetOutputValue();
  }

  return result;
}

Swift::Void __swiftcall OpacityResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  *(v1 + 216) = *AGGraphGetValue();
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {

LABEL_6:

    goto LABEL_7;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);

  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;

  if (!v5)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    MultiViewResponder.children.setter(v5);
    goto LABEL_6;
  }

LABEL_7:
  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18DDAB4D0;
    *(v6 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

uint64_t specialized ShapeStyledResponderFilter.updateValue()()
{
  v176 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = Value[3];
  v6 = *Value;
  v5 = Value[1];
  v171[2] = Value[2];
  v171[3] = v4;
  v171[0] = v6;
  v171[1] = v5;
  v7 = Value[7];
  v9 = Value[4];
  v8 = Value[5];
  v171[6] = Value[6];
  v171[7] = v7;
  v171[4] = v9;
  v171[5] = v8;
  v11 = Value[9];
  v10 = Value[10];
  v12 = *(Value + 171);
  v171[8] = Value[8];
  *(v172 + 11) = v12;
  v171[9] = v11;
  v172[0] = v10;
  v13 = Value[9];
  v168 = Value[8];
  v169 = v13;
  v170[0] = Value[10];
  *(v170 + 11) = *(Value + 171);
  v14 = Value[5];
  v164 = Value[4];
  v165 = v14;
  v15 = Value[7];
  v166 = Value[6];
  v167 = v15;
  v16 = Value[1];
  v160 = *Value;
  v161 = v16;
  v17 = Value[3];
  v162 = Value[2];
  v163 = v17;
  outlined init with copy of Image.Resolved(v171, &v135);
  v18 = *AGGraphGetValue();
  v173[2] = v162;
  v173[3] = v163;
  v173[0] = v160;
  v173[1] = v161;
  v173[6] = v166;
  v173[7] = v167;
  v173[4] = v164;
  v173[5] = v165;
  *&v174[11] = *(v170 + 11);
  *v174 = v170[0];
  v173[8] = v168;
  v173[9] = v169;
  v157 = v168;
  v158 = v169;
  v159[0] = v170[0];
  *(v159 + 11) = *(v170 + 11);
  v153 = v164;
  v154 = v165;
  v155 = v166;
  v156 = v167;
  v149 = v160;
  v150 = v161;
  v151 = v162;
  v152 = v163;
  v143 = v168;
  v144 = v169;
  v145 = v159[0];
  v146 = v159[1];
  v139 = v164;
  v140 = v165;
  v141 = v166;
  v142 = v167;
  v135 = v160;
  v136 = v161;
  v137 = v162;
  v69 = v3 & 1;
  v175 = v3 & 1;
  v20 = (v3 | v19) & 1;
  v21 = *(v0 + 24);
  v138 = v163;
  v147 = v18;
  v148 = v20;
  v22 = v18;

  outlined init with copy of (value: Image.Resolved, changed: Bool)(v173, &__dst);

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v135, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  v23 = AGGraphGetValue();
  v25 = v24;
  v26 = *v23;
  v27 = v23[1];
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v30 = v29;
  v31 = *v28;
  v32 = v28[1];
  v33 = AGGraphGetValue();
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v37 = *(v33 + 24);
  v39 = *(v33 + 32);
  v38 = *(v33 + 40);
  v118 = v145;
  v119 = v146;
  v120 = v147;
  v114 = v141;
  v115 = v142;
  v116 = v143;
  v117 = v144;
  v110 = v137;
  v111 = v138;
  v112 = v139;
  v113 = v140;
  v108 = v135;
  v109 = v136;
  v74 = *(v21 + 272);
  v75 = *(v21 + 288);
  v76 = *(v21 + 264);
  v79 = *(v21 + 256);
  if ((v40 | v30))
  {
    *(v21 + 256) = v34;
    *(v21 + 264) = v35;
    *(v21 + 272) = v36;
    *(v21 + 280) = v37;
    *(v21 + 288) = v39;
    *(v21 + 296) = v38;

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v135, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    *(v21 + 288) = v39 - (v31 - v36);
    *(v21 + 296) = v38 - (v32 - v37);
    *(v21 + 272) = v31;
    *(v21 + 280) = v32;
    v77 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v135, &__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

    v77 = 0;
  }

  v41 = v3 & 1;
  if (v25)
  {
    *(v21 + 40) = v26;
    *(v21 + 48) = v27;
    v77 |= 2u;
  }

  if ((v20 & 1) != 0 || (memmove(&__dst, (v21 + 56), 0xC8uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOg(&__dst) == 1))
  {
    v42 = *(v21 + 216);
    v93[9] = *(v21 + 200);
    v93[10] = v42;
    v93[11] = *(v21 + 232);
    v94 = *(v21 + 248);
    v43 = *(v21 + 152);
    v93[5] = *(v21 + 136);
    v93[6] = v43;
    v44 = *(v21 + 184);
    v93[7] = *(v21 + 168);
    v93[8] = v44;
    v45 = *(v21 + 72);
    v46 = *(v21 + 104);
    v93[2] = *(v21 + 88);
    v93[3] = v46;
    v93[4] = *(v21 + 120);
    v93[0] = *(v21 + 56);
    v93[1] = v45;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for ShapeStyledResponderData<Image.Resolved>?);
    v131 = v118;
    v132 = v119;
    v127 = v114;
    v128 = v115;
    v129 = v116;
    v130 = v117;
    v123 = v110;
    v124 = v111;
    v125 = v112;
    v126 = v113;
    __dst = v108;
    v122 = v109;
    v105 = v118;
    v106 = v119;
    v101 = v114;
    v102 = v115;
    v103 = v116;
    v104 = v117;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v100 = v113;
    v133 = v120;
    v134 = v20;
    v107 = v120;
    v95 = v108;
    v96 = v109;
    _ViewInputs.base.modify(&v95, v47);
    v48 = v103;
    *(v21 + 200) = v104;
    v49 = v106;
    *(v21 + 216) = v105;
    *(v21 + 232) = v49;
    v50 = v107;
    v51 = v99;
    *(v21 + 136) = v100;
    v52 = v102;
    *(v21 + 152) = v101;
    *(v21 + 168) = v52;
    *(v21 + 184) = v48;
    v53 = v95;
    *(v21 + 72) = v96;
    v54 = v98;
    *(v21 + 88) = v97;
    *(v21 + 104) = v54;
    *(v21 + 248) = v50;
    *(v21 + 120) = v51;
    LOBYTE(v77) = v77 | 1;
    *(v21 + 56) = v53;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&__dst, &v81, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  }

  else if (!v77)
  {

    v131 = v118;
    v132 = v119;
    v133 = v120;
    v127 = v114;
    v128 = v115;
    v129 = v116;
    v130 = v117;
    v123 = v110;
    v124 = v111;
    v125 = v112;
    v126 = v113;
    __dst = v108;
    v122 = v109;
    v134 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v135, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    goto LABEL_23;
  }

  v68 = v20;
  v73 = *(v21 + 256);
  v71 = *(v21 + 264);
  v72 = *(v21 + 288);
  v70 = *(v21 + 272);
  v55 = *(v21 + 304);
  *(v21 + 304) = MEMORY[0x1E69E7CC0];
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v55 + 32;
    v58 = v79;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v57, &v95);
      LOBYTE(v93[0]) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v59 = *(&v95 + 1), ObjectType = swift_getObjectType(), v80 = v77, *&__dst = v58, *(&__dst + 1) = v76, v122 = v74, v123 = v75, *&v81 = v73, *(&v81 + 1) = v71, v82 = v70, v83 = v72, v60 = *(v59 + 16), , v58 = v79, , , , v60(v21, &v80, &__dst, &v81, v93, ObjectType, v59), swift_unknownObjectRelease(), , , , , LOBYTE(v93[0]) == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v95);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v95, &__dst);
        v61 = *(v21 + 304);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 304) = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
          *(v21 + 304) = v61;
        }

        v64 = v61[2];
        v63 = v61[3];
        if (v64 >= v63 >> 1)
        {
          *(v21 + 304) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
        }

        outlined destroy of ContentPathObservers.Observer(&v95);
        v65 = *(v21 + 304);
        *(v65 + 16) = v64 + 1;
        outlined init with take of ContentPathObservers.Observer(&__dst, v65 + 16 * v64 + 32);
        *(v21 + 304) = v65;
      }

      v57 += 16;
      --v56;
    }

    while (v56);
  }

  else
  {
  }

  v131 = v118;
  v132 = v119;
  v133 = v120;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v130 = v117;
  v123 = v110;
  v124 = v111;
  v125 = v112;
  v126 = v113;
  __dst = v108;
  v122 = v109;
  v20 = v68;
  v134 = v68;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v135, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
  v41 = v69;
LABEL_23:
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v129 = v157;
    v130 = v158;
    v131 = v159[0];
    v132 = v159[1];
    v125 = v153;
    v126 = v154;
    v127 = v155;
    v128 = v156;
    __dst = v149;
    v122 = v150;
    v123 = v151;
    v124 = v152;
    v133 = v22;
    v134 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    v89 = v168;
    v90 = v169;
    *v91 = v170[0];
    *&v91[11] = *(v170 + 11);
    v85 = v164;
    v86 = v165;
    v87 = v166;
    v88 = v167;
    v81 = v160;
    v82 = v161;
    v83 = v162;
    v84 = v163;
    v92 = v41;
    return outlined destroy of (value: Image.Resolved, changed: Bool)(&v81);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAB4D0;
    *(v67 + 32) = v21;
    *&v108 = v67;

    AGGraphSetOutputValue();
    v129 = v157;
    v130 = v158;
    v131 = v159[0];
    v132 = v159[1];
    v125 = v153;
    v126 = v154;
    v127 = v155;
    v128 = v156;
    __dst = v149;
    v122 = v150;
    v123 = v151;
    v124 = v152;
    v133 = v22;
    v134 = v20;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&__dst, type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    v89 = v168;
    v90 = v169;
    *v91 = v170[0];
    *&v91[11] = *(v170 + 11);
    v85 = v164;
    v86 = v165;
    v87 = v166;
    v88 = v167;
    v81 = v160;
    v82 = v161;
    v83 = v162;
    v84 = v163;
    v92 = v41;
    outlined destroy of (value: Image.Resolved, changed: Bool)(&v81);
  }
}

{
  v58[6] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = Value[1];

  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v51 = *v11;
  v46 = v11[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *(v19 + 8);
  v21 = v10[12];
  v22 = v10[13];
  v23 = v10[14];
  v24 = v10[15];
  v48 = *(v10 + 11);
  v49 = *(v10 + 10);
  if ((v25 | v16))
  {
    v27 = *(v19 + 32);
    v26 = *(v19 + 40);
    v29 = *(v19 + 16);
    v28 = *(v19 + 24);
    v10[10] = *v19;
    *(v10 + 11) = v20;
    v30 = v27 - (v17 - v29);
    v31 = v26 - (v18 - v28);
    v10[14] = v30;
    v10[15] = v31;
    v10[12] = v17;
    v10[13] = v18;

    v50 = 4;
  }

  else
  {

    v50 = 0;
    v31 = v24;
    v30 = v23;
    v18 = v22;
    v17 = v21;
  }

  if (v13)
  {
    *(v10 + 5) = v51;
    *(v10 + 6) = v46;
    v50 |= 2u;
  }

  v32 = *(v10 + 7);
  if ((v8 & 1) != 0 || !v32)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v32, *(v10 + 8), *(v10 + 9), MEMORY[0x1E69E7CF8]);
    *(v10 + 7) = v5;
    *(v10 + 8) = v4;
    LOBYTE(v50) = v50 | 1;
    *(v10 + 9) = v9;

    v17 = v10[12];
    v18 = v10[13];
    v30 = v10[14];
    v31 = v10[15];
  }

  else if (!v50)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  v45 = *(v10 + 11);
  v47 = *(v10 + 10);
  v33 = *(v10 + 16);
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v33 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v35, v55);
      v54 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v36 = v56, ObjectType = swift_getObjectType(), v53 = v50, v58[0] = v49, v58[1] = v48, *&v58[2] = v21, *&v58[3] = v22, *&v58[4] = v23, *&v58[5] = v24, v57[0] = v47, v57[1] = v45, *&v57[2] = v17, *&v57[3] = v18, *&v57[4] = v30, *&v57[5] = v31, v37 = *(v36 + 16), , , , , v37(v10, &v53, v58, v57, &v54, ObjectType, v36), swift_unknownObjectRelease(), , , , , v54 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v55);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v55, v58);
        v38 = *(v10 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 16) = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
          *(v10 + 16) = v38;
        }

        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          *(v10 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
        }

        outlined destroy of ContentPathObservers.Observer(v55);
        v42 = *(v10 + 16);
        *(v42 + 16) = v41 + 1;
        outlined init with take of ContentPathObservers.Observer(v58, v42 + 16 * v41 + 32);
        *(v10 + 16) = v42;
      }

      v35 += 16;
      --v34;
    }

    while (v34);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_18DDAB4D0;
    *(v43 + 32) = v10;
    v58[0] = v43;

    AGGraphSetOutputValue();
  }

  return swift_bridgeObjectRelease_n();
}

{
  v102 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *AGGraphGetValue();
  v12 = *(v0 + 24);
  v13 = (v3 | v11) & 1;
  v86 = v5;
  v87 = v4;
  v60 = v7;
  v61 = v6;
  v88 = v6;
  v89 = v7;
  v62 = v8;
  v63 = v9;
  v90 = v8;
  v91 = v9;
  v92 = v10;
  v93 = (v3 | v11) & 1;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v86, &v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  v14 = AGGraphGetValue();
  v78 = v15;
  v74 = *v14;
  v70 = v14[1];
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *v16;
  v20 = v16[1];
  v21 = AGGraphGetValue();
  v22 = *(v21 + 8);
  v24 = v23 | v18;
  v26 = v86;
  v25 = v87;
  v27 = v88;
  v28 = v89;
  v29 = v90;
  v30 = v91;
  v31 = v92;
  v32 = *(v12 + 104);
  v72 = *(v12 + 120);
  v73 = *(v12 + 136);
  v76 = *(v12 + 112);
  if (v24)
  {
    v68 = v4;
    v64 = v87;
    v66 = v88;
    v33 = v89;
    v34 = v5;
    v35 = *(v21 + 16);
    v36 = *(v21 + 24);
    v58 = v86;
    v37 = *(v21 + 32);
    v38 = *(v21 + 40);
    *(v12 + 104) = *v21;
    *(v12 + 112) = v22;
    *(v12 + 120) = v35;
    *(v12 + 128) = v36;
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v86, &v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
    v39 = v19 - v35;
    v4 = v68;
    v40 = v20 - v36;
    v5 = v34;
    v28 = v33;
    v41 = v37 - v39;
    v25 = v64;
    v27 = v66;
    v42 = v38 - v40;
    v26 = v58;
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    *(v12 + 120) = v19;
    *(v12 + 128) = v20;
    v77 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v86, &v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

    v77 = 0;
  }

  if (v78)
  {
    *(v12 + 40) = v74;
    *(v12 + 48) = v70;
    v77 |= 2u;
  }

  if (v13 || !*(v12 + 96))
  {

    v97 = v26;
    v98 = v25;
    *&v99 = v27;
    *(&v99 + 1) = v28;
    LOBYTE(v100) = v29;
    BYTE1(v100) = v30;
    *(&v100 + 1) = v31;
    v101 = v13;
    v44 = 256;
    if (!v30)
    {
      v44 = 0;
    }

    *(v12 + 56) = v26;
    *(v12 + 64) = v25;
    *(v12 + 72) = v27;
    *(v12 + 80) = v28;
    LOBYTE(v77) = v77 | 1;
    *(v12 + 88) = v44 | v29;
    *(v12 + 96) = v31;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v97, v94, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }

  else if (!v77)
  {

    v97 = v26;
    v98 = v25;
    *&v99 = v27;
    *(&v99 + 1) = v28;
    LOBYTE(v100) = v29;
    BYTE1(v100) = v30;
    *(&v100 + 1) = v31;
    v101 = 0;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v86, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
    v43 = v63;
    goto LABEL_27;
  }

  v75 = v32;
  v57 = v13;
  v59 = v10;
  v71 = *(v12 + 104);
  v65 = *(v12 + 112);
  v67 = *(v12 + 120);
  v69 = *(v12 + 136);
  v45 = *(v12 + 152);
  *(v12 + 152) = MEMORY[0x1E69E7CC0];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + 32;
    v80 = v12;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, &v83);
      v82 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v48 = v85, ObjectType = swift_getObjectType(), v81 = v77, v97 = v75, v98 = v76, v99 = v72, v100 = v73, v94[0] = v71, v94[1] = v65, v95 = v67, v96 = v69, v49 = *(v48 + 16), , , , , v49(v80, &v81, &v97, v94, &v82, ObjectType, v48), swift_unknownObjectRelease(), , , v12 = v80, , , v82 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v83);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v83, &v97);
        v50 = *(v80 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v80 + 152) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
          *(v80 + 152) = v50;
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          *(v80 + 152) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
        }

        outlined destroy of ContentPathObservers.Observer(&v83);
        v54 = *(v80 + 152);
        *(v54 + 16) = v53 + 1;
        outlined init with take of ContentPathObservers.Observer(&v97, v54 + 16 * v53 + 32);
        *(v80 + 152) = v54;
      }

      v47 += 16;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  v97 = v26;
  v98 = v25;
  *&v99 = v27;
  *(&v99 + 1) = v28;
  LOBYTE(v100) = v29;
  BYTE1(v100) = v30;
  *(&v100 + 2) = v94[0];
  WORD3(v100) = WORD2(v94[0]);
  *(&v100 + 1) = v31;
  LOBYTE(v13) = v57;
  v101 = v57;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v86, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  v8 = v62;
  v43 = v63;
  v10 = v59;
LABEL_27:
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v97 = v5;
    v98 = v4;
    *&v99 = v61;
    *(&v99 + 1) = v60;
    LOBYTE(v100) = v8;
    BYTE1(v100) = v43;
    *(&v100 + 2) = v83;
    WORD3(v100) = v84;
    *(&v100 + 1) = v10;
    v101 = v13;
    return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_18DDAB4D0;
    *(v56 + 32) = v12;
    v94[0] = v56;

    AGGraphSetOutputValue();
    v97 = v5;
    v98 = v4;
    *&v99 = v61;
    *(&v99 + 1) = v60;
    LOBYTE(v100) = v8;
    BYTE1(v100) = v43;
    *(&v100 + 2) = v83;
    WORD3(v100) = v84;
    *(&v100 + 1) = v10;
    v101 = v13;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v97, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
  }
}

{
  v59[6] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);

  v7 = AGGraphGetValue();
  v9 = (v3 | v8) & 1;
  v10 = *v7;
  v11 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v52 = *v12;
  v47 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v21 = *(v20 + 8);
  v23 = v11[13];
  v24 = v11[14];
  v25 = v11[15];
  v26 = v11[16];
  v49 = *(v11 + 12);
  v50 = *(v11 + 11);
  if ((v22 | v17))
  {
    v28 = *(v20 + 32);
    v27 = *(v20 + 40);
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    v11[11] = *v20;
    *(v11 + 12) = v21;
    v31 = v28 - (v18 - v30);
    v32 = v27 - (v19 - v29);
    v11[15] = v31;
    v11[16] = v32;
    v11[13] = v18;
    v11[14] = v19;

    v51 = 4;
  }

  else
  {

    v51 = 0;
    v32 = v26;
    v31 = v25;
    v19 = v24;
    v18 = v23;
  }

  if (v14)
  {
    *(v11 + 5) = v52;
    *(v11 + 6) = v47;
    v51 |= 2u;
  }

  v33 = *(v11 + 7);
  if ((v9 & 1) != 0 || !v33)
  {
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v33);
    *(v11 + 7) = v4;
    *(v11 + 8) = v5;
    LOBYTE(v51) = v51 | 1;
    *(v11 + 9) = v6;
    *(v11 + 10) = v10;

    v18 = v11[13];
    v19 = v11[14];
    v31 = v11[15];
    v32 = v11[16];
  }

  else if (!v51)
  {

    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  v46 = *(v11 + 12);
  v48 = *(v11 + 11);
  v34 = *(v11 + 17);
  *(v11 + 17) = MEMORY[0x1E69E7CC0];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v34 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v36, v56);
      v55 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v37 = v57, ObjectType = swift_getObjectType(), v54 = v51, v59[0] = v50, v59[1] = v49, *&v59[2] = v23, *&v59[3] = v24, *&v59[4] = v25, *&v59[5] = v26, v58[0] = v48, v58[1] = v46, *&v58[2] = v18, *&v58[3] = v19, *&v58[4] = v31, *&v58[5] = v32, v38 = *(v37 + 16), , , , , v38(v11, &v54, v59, v58, &v55, ObjectType, v37), swift_unknownObjectRelease(), , , , , v55 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v56);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v56, v59);
        v39 = *(v11 + 17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 17) = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          *(v11 + 17) = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          *(v11 + 17) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
        }

        outlined destroy of ContentPathObservers.Observer(v56);
        v43 = *(v11 + 17);
        *(v43 + 16) = v42 + 1;
        outlined init with take of ContentPathObservers.Observer(v59, v43 + 16 * v42 + 32);
        *(v11 + 17) = v43;
      }

      v36 += 16;
      --v35;
    }

    while (v35);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_18DDAB4D0;
    *(v44 + 32) = v11;
    v59[0] = v44;

    AGGraphSetOutputValue();
  }
}

{
  v60[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 9);

  v7 = AGGraphGetValue();
  v9 = (v3 | v8) & 1;
  v10 = *v7;
  v11 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v53 = *v12;
  v48 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v21 = *(v20 + 8);
  v23 = v11[12];
  v24 = v11[13];
  v25 = v11[14];
  v26 = v11[15];
  v50 = *(v11 + 11);
  v51 = *(v11 + 10);
  if ((v22 | v17))
  {
    v28 = *(v20 + 32);
    v27 = *(v20 + 40);
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    v11[10] = *v20;
    *(v11 + 11) = v21;
    v31 = v28 - (v18 - v30);
    v32 = v27 - (v19 - v29);
    v11[14] = v31;
    v11[15] = v32;
    v11[12] = v18;
    v11[13] = v19;

    v52 = 4;
  }

  else
  {

    v52 = 0;
    v32 = v26;
    v31 = v25;
    v19 = v24;
    v18 = v23;
  }

  if (v14)
  {
    *(v11 + 5) = v53;
    *(v11 + 6) = v48;
    v52 |= 2u;
  }

  v33 = *(v11 + 7);
  if ((v9 & 1) != 0 || !v33)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v33, *(v11 + 8), *(v11 + 9), MEMORY[0x1E69E7CF8]);
    v34 = 256;
    if (!v6)
    {
      v34 = 0;
    }

    *(v11 + 7) = v4;
    *(v11 + 8) = v34 | v5;
    *(v11 + 9) = v10;
    LOBYTE(v52) = v52 | 1;

    v18 = v11[12];
    v19 = v11[13];
    v31 = v11[14];
    v32 = v11[15];
  }

  else if (!v52)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_27;
  }

  v47 = *(v11 + 11);
  v49 = *(v11 + 10);
  v35 = *(v11 + 16);
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v37, v57);
      v56 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v38 = v58, ObjectType = swift_getObjectType(), v55 = v52, v60[0] = v51, v60[1] = v50, *&v60[2] = v23, *&v60[3] = v24, *&v60[4] = v25, *&v60[5] = v26, v59[0] = v49, v59[1] = v47, *&v59[2] = v18, *&v59[3] = v19, *&v59[4] = v31, *&v59[5] = v32, v39 = *(v38 + 16), , , , , v39(v11, &v55, v60, v59, &v56, ObjectType, v38), swift_unknownObjectRelease(), , , , , v56 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v57);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v57, v60);
        v40 = *(v11 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 16) = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
          *(v11 + 16) = v40;
        }

        v43 = v40[2];
        v42 = v40[3];
        if (v43 >= v42 >> 1)
        {
          *(v11 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
        }

        outlined destroy of ContentPathObservers.Observer(v57);
        v44 = *(v11 + 16);
        *(v44 + 16) = v43 + 1;
        outlined init with take of ContentPathObservers.Observer(v60, v44 + 16 * v43 + 32);
        *(v11 + 16) = v44;
      }

      v37 += 16;
      --v36;
    }

    while (v36);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_18DDAB4D0;
    *(v45 + 32) = v11;
    v60[0] = v45;

    AGGraphSetOutputValue();
  }

  return swift_bridgeObjectRelease_n();
}

{
  v66[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v59 = *(Value + 8);
  v5 = *(Value + 9);

  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v55 = v11[1];
  v57 = *v11;
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = *(v19 + 8);
  v23 = v22 | v16;
  v24 = v10;
  v25 = *(v10 + 10);
  v26 = v10[12];
  v27 = v10[13];
  v28 = v10[14];
  v29 = v10[15];
  v53 = *(v10 + 11);
  if (v23)
  {
    v31 = *(v19 + 32);
    v30 = *(v19 + 40);
    v33 = *(v19 + 16);
    v32 = *(v19 + 24);
    *(v10 + 10) = v20;
    *(v10 + 11) = v21;
    v34 = v31 - (v17 - v33);
    v35 = v30 - (v18 - v32);
    v10[14] = v34;
    v10[15] = v35;
    v10[12] = v17;
    v10[13] = v18;

    v54 = 4;
    v51 = v20;
    v52 = v21;
  }

  else
  {
    v36 = *(v10 + 11);

    v54 = 0;
    v35 = v29;
    v34 = v28;
    v18 = v27;
    v17 = v26;
    v51 = v25;
    v52 = v36;
  }

  v37 = v25;

  if (v13)
  {
    *(v24 + 5) = v57;
    *(v24 + 6) = v55;
    v54 |= 2u;
  }

  v38 = *(v24 + 7);
  if ((v8 & 1) != 0 || !v38)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v38, *(v24 + 8), *(v24 + 9), MEMORY[0x1E69E7D48]);
    v39 = 256;
    if (!v5)
    {
      v39 = 0;
    }

    *(v24 + 7) = v4;
    *(v24 + 8) = v39 | v59;
    *(v24 + 9) = v9;
    LOBYTE(v54) = v54 | 1;

    v51 = *(v24 + 10);
    v52 = *(v24 + 11);
    v17 = v24[12];
    v18 = v24[13];
    v34 = v24[14];
    v35 = v24[15];
  }

  else if (!v54)
  {

    goto LABEL_27;
  }

  v40 = *(v24 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v56 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v63);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v64, ObjectType = swift_getObjectType(), v61 = v54, v66[0] = v37, v66[1] = v53, *&v66[2] = v26, *&v66[3] = v27, *&v66[4] = v28, *&v66[5] = v29, v65[0] = v51, v65[1] = v52, *&v65[2] = v17, *&v65[3] = v18, *&v65[4] = v34, *&v65[5] = v35, v58 = *(v44 + 16), v60 = ObjectType, , , , , v58(v24, &v61, v66, v65, &v62, v60, v44), swift_unknownObjectRelease(), , , , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + 16) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          *(v24 + 16) = v56;
        }

        v48 = v56[2];
        v47 = v56[3];
        if (v48 >= v47 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v56);
          *(v24 + 16) = v56;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v56[2] = v48 + 1;
        outlined init with take of ContentPathObservers.Observer(v66, &v56[2 * v48 + 4]);
        *(v24 + 16) = v56;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAB4D0;
    *(v49 + 32) = v24;
    v66[0] = v49;

    AGGraphSetOutputValue();
  }
}

{
  v86 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *(Value + 34);
  outlined copy of Path.Storage(*Value, v4, v6, v7, v8);
  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  *&v82 = v5;
  *(&v82 + 1) = v4;
  *&v83 = v6;
  *(&v83 + 1) = v7;
  LOBYTE(v84) = v8;
  v53 = v9;
  v54 = v10;
  BYTE1(v84) = v9;
  v14 = (v3 | v12) & 1;
  BYTE2(v84) = v10;
  v15 = v13;
  *(&v84 + 1) = v11;
  v85 = v14;
  v52 = v11;

  *&v55 = v5;
  *(&v55 + 1) = v4;
  v56 = v7;
  v57 = v8;
  outlined copy of Path.Storage(v5, v4, v6, v7, v8);

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v82, &v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *v16;
  v20 = v16[1];
  type metadata accessor for CGPoint(0);
  v21 = AGGraphGetValue();
  v23 = v22;
  v24 = *v21;
  v25 = v21[1];
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v32 = *(v26 + 32);
  v31 = *(v26 + 40);
  v34 = v33 | v23;
  v75 = v82;
  v76 = v83;
  v77 = v84;
  v36 = *(v15 + 104);
  v35 = *(v15 + 112);
  v62 = *(v15 + 120);
  v63 = *(v15 + 136);
  if (v34)
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v82, &v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    *(v15 + 104) = v27;
    *(v15 + 112) = v28;
    *(v15 + 136) = v32 - (v24 - v29);
    *(v15 + 144) = v31 - (v25 - v30);
    *(v15 + 120) = v24;
    *(v15 + 128) = v25;
    v65 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v82, &v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));

    v65 = 0;
  }

  v37 = v56;
  if (v18)
  {
    *(v15 + 40) = v19;
    *(v15 + 48) = v20;
    v65 |= 2u;
  }

  v38 = *(v15 + 96);
  v39 = v57;
  if ((v14 & 1) != 0 || !v38)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>?(*(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), v38);
    v78 = v75;
    v79 = v76;
    v80 = v77;
    v81 = v14;
    *(v15 + 56) = v75;
    v40 = v80;
    *(v15 + 72) = v79;
    *(v15 + 88) = v40;
    LOBYTE(v65) = v65 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v78, v72, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  }

  else if (!v65)
  {
    v78 = v75;
    v79 = v76;
    v80 = v77;
    v81 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));

    goto LABEL_25;
  }

  *&v64 = v36;
  *(&v64 + 1) = v35;
  v60 = *(v15 + 112);
  v61 = *(v15 + 104);
  v58 = *(v15 + 120);
  v59 = *(v15 + 136);
  v41 = *(v15 + 152);
  v42 = MEMORY[0x1E69E7CC0];
  *(v15 + 152) = MEMORY[0x1E69E7CC0];
  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = v41 + 32;
    v66 = v42;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v44, v70);
      v69 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v45 = v71, ObjectType = swift_getObjectType(), v68 = v65, v78 = v64, v79 = v62, v80 = v63, v72[0] = v61, v72[1] = v60, v74 = v59, v73 = v58, v46 = *(v45 + 16), , , , , v46(v15, &v68, &v78, v72, &v69, ObjectType, v45), swift_unknownObjectRelease(), , , , , v69 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v70);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v70, &v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 152) = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
          *(v15 + 152) = v66;
        }

        v49 = v66[2];
        v48 = v66[3];
        if (v49 >= v48 >> 1)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v66);
          *(v15 + 152) = v66;
        }

        outlined destroy of ContentPathObservers.Observer(v70);
        v66[2] = v49 + 1;
        outlined init with take of ContentPathObservers.Observer(&v78, &v66[2 * v49 + 4]);
        *(v15 + 152) = v66;
      }

      v44 += 16;
      --v43;
    }

    while (v43);

    v39 = v57;
    v37 = v56;
  }

  else
  {
  }

  v78 = v75;
  v79 = v76;
  v80 = v77;
  v81 = v14;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
LABEL_25:

  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v82, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v78 = v55;
    *&v79 = v6;
    *(&v79 + 1) = v37;
    LOBYTE(v80) = v39;
    BYTE1(v80) = v53;
    BYTE2(v80) = v54;
    *(&v80 + 3) = v75;
    BYTE7(v80) = BYTE4(v75);
    *(&v80 + 1) = v52;
    v81 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    return outlined consume of Path.Storage(v55, *(&v55 + 1), v6, v37, v39);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAB4D0;
    *(v51 + 32) = v15;
    v72[0] = v51;

    AGGraphSetOutputValue();
    v78 = v55;
    *&v79 = v6;
    *(&v79 + 1) = v37;
    LOBYTE(v80) = v39;
    BYTE1(v80) = v53;
    BYTE2(v80) = v54;
    *(&v80 + 3) = v75;
    BYTE7(v80) = BYTE4(v75);
    *(&v80 + 1) = v52;
    v81 = v14;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v78, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    outlined consume of Path.Storage(v55, *(&v55 + 1), v6, v37, v39);
  }
}

{
  v184 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 208);
  v180 = *(Value + 192);
  v181 = v4;
  v182 = *(Value + 224);
  v5 = *(Value + 144);
  v176 = *(Value + 128);
  v177 = v5;
  v6 = *(Value + 176);
  v178 = *(Value + 160);
  v179 = v6;
  v7 = *(Value + 80);
  v172 = *(Value + 64);
  v173 = v7;
  v8 = *(Value + 112);
  v174 = *(Value + 96);
  v175 = v8;
  v9 = *(Value + 16);
  v168 = *Value;
  v169 = v9;
  v10 = *(Value + 48);
  v170 = *(Value + 32);
  v183 = *(Value + 240);
  v171 = v10;
  v11 = *AGGraphGetValue();
  v164 = v180;
  v165 = v181;
  v166 = v182;
  LOWORD(v167) = v183;
  v160 = v176;
  v161 = v177;
  v162 = v178;
  v163 = v179;
  v156 = v172;
  v157 = v173;
  v158 = v174;
  v159 = v175;
  v152 = v168;
  v153 = v169;
  v154 = v170;
  v155 = v171;
  v13 = (v3 | v12) & 1;
  v14 = *(v0 + 24);
  v147 = v180;
  v148 = v181;
  v149 = v182;
  *&v150 = v167;
  v143 = v176;
  v144 = v177;
  v145 = v178;
  v146 = v179;
  v139 = v172;
  v140 = v173;
  v141 = v174;
  v142 = v175;
  v135 = v168;
  v136 = v169;
  v137 = v170;
  v138 = v171;
  *(&v150 + 1) = v11;
  v151 = v13;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v135, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v22 = v21;
  v23 = *v20;
  v24 = v20[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = *(v25 + 32);
  v30 = *(v25 + 40);
  v114 = v147;
  v115 = v148;
  v116 = v149;
  v117 = v150;
  v110 = v143;
  v111 = v144;
  v112 = v145;
  v113 = v146;
  v106 = v139;
  v107 = v140;
  v108 = v141;
  v109 = v142;
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v105 = v138;
  v33 = *(v14 + 312);
  v34 = *(v14 + 320);
  v74 = *(v14 + 328);
  v75 = *(v14 + 344);
  if ((v32 | v22))
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v135, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v14 + 312) = v26;
    *(v14 + 320) = v27;
    *(v14 + 344) = v31 - (v23 - v28);
    *(v14 + 352) = v30 - (v24 - v29);
    *(v14 + 328) = v23;
    *(v14 + 336) = v24;
    v76 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v135, &__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v76 = 0;
  }

  if (v17)
  {
    *(v14 + 40) = v18;
    *(v14 + 48) = v19;
    v76 |= 2u;
  }

  if ((v13 & 1) != 0 || (memmove(&__dst, (v14 + 56), 0x100uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA024PartialContainerRelativeC0VGGSgWOg(&__dst) == 1))
  {
    v35 = *(v14 + 264);
    v36 = *(v14 + 280);
    v85[12] = *(v14 + 248);
    v85[13] = v35;
    v37 = *(v14 + 296);
    v85[14] = v36;
    v85[15] = v37;
    v38 = *(v14 + 200);
    v85[8] = *(v14 + 184);
    v85[9] = v38;
    v39 = *(v14 + 232);
    v85[10] = *(v14 + 216);
    v85[11] = v39;
    v40 = *(v14 + 136);
    v85[4] = *(v14 + 120);
    v85[5] = v40;
    v41 = *(v14 + 168);
    v85[6] = *(v14 + 152);
    v85[7] = v41;
    v42 = *(v14 + 72);
    v85[0] = *(v14 + 56);
    v85[1] = v42;
    v43 = *(v14 + 104);
    v85[2] = *(v14 + 88);
    v85[3] = v43;
    outlined destroy of ObservationTracking._AccessList?(v85, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v130 = v114;
    v131 = v115;
    v132 = v116;
    v133 = v117;
    v126 = v110;
    v127 = v111;
    v128 = v112;
    v129 = v113;
    v122 = v106;
    v123 = v107;
    v124 = v108;
    v125 = v109;
    __dst = v102;
    v119 = v103;
    v120 = v104;
    v121 = v105;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v94 = v110;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v90 = v106;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v86 = v102;
    v87 = v103;
    v134 = v13;
    v88 = v104;
    v89 = v105;
    _ViewInputs.base.modify(&v86);
    v44 = v99;
    v46 = v100;
    v45 = v101;
    *(v14 + 248) = v98;
    *(v14 + 264) = v44;
    *(v14 + 280) = v46;
    *(v14 + 296) = v45;
    v47 = v95;
    v49 = v96;
    v48 = v97;
    *(v14 + 184) = v94;
    *(v14 + 200) = v47;
    *(v14 + 216) = v49;
    *(v14 + 232) = v48;
    v50 = v91;
    v52 = v92;
    v51 = v93;
    *(v14 + 120) = v90;
    *(v14 + 136) = v50;
    *(v14 + 152) = v52;
    *(v14 + 168) = v51;
    v53 = v87;
    v55 = v88;
    v54 = v89;
    *(v14 + 56) = v86;
    *(v14 + 72) = v53;
    *(v14 + 88) = v55;
    LOBYTE(v76) = v76 | 1;
    *(v14 + 104) = v54;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, v82, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v76)
  {
    v130 = v114;
    v131 = v115;
    v132 = v116;
    v133 = v117;
    v126 = v110;
    v127 = v111;
    v128 = v112;
    v129 = v113;
    v122 = v106;
    v123 = v107;
    v124 = v108;
    v125 = v109;
    __dst = v102;
    v119 = v103;
    v120 = v104;
    v121 = v105;
    v134 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_23;
  }

  v68 = v13;
  v69 = v11;
  v72 = *(v14 + 320);
  v73 = *(v14 + 312);
  v70 = *(v14 + 328);
  v71 = *(v14 + 344);
  v56 = *(v14 + 360);
  v57 = MEMORY[0x1E69E7CC0];
  *(v14 + 360) = MEMORY[0x1E69E7CC0];
  v58 = *(v56 + 16);
  if (v58)
  {
    v59 = v56 + 32;
    v77 = v57;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v59, &v86);
      LOBYTE(v85[0]) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v80 = v58, v60 = *(&v86 + 1), ObjectType = swift_getObjectType(), v81 = v76, *&__dst = v33, *(&__dst + 1) = v34, v119 = v74, v120 = v75, v82[0] = v73, v82[1] = v72, v84 = v71, v83 = v70, v78 = *(v60 + 16), v79 = ObjectType, , , , , v62 = v60, v58 = v80, v78(v14, &v81, &__dst, v82, v85, v79, v62), swift_unknownObjectRelease(), , , , , LOBYTE(v85[0]) == 1))
      {
        outlined destroy of ContentPathObservers.Observer(&v86);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(&v86, &__dst);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 360) = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
          *(v14 + 360) = v77;
        }

        v65 = v77[2];
        v64 = v77[3];
        if (v65 >= v64 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v77);
          *(v14 + 360) = v77;
        }

        outlined destroy of ContentPathObservers.Observer(&v86);
        v77[2] = v65 + 1;
        outlined init with take of ContentPathObservers.Observer(&__dst, &v77[2 * v65 + 4]);
        *(v14 + 360) = v77;
      }

      v59 += 16;
      --v58;
    }

    while (v58);
  }

  else
  {
  }

  v130 = v114;
  v131 = v115;
  v132 = v116;
  v133 = v117;
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v129 = v113;
  v122 = v106;
  v123 = v107;
  v124 = v108;
  v125 = v109;
  __dst = v102;
  v119 = v103;
  v120 = v104;
  v121 = v105;
  v13 = v68;
  v134 = v68;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v11 = v69;
LABEL_23:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v135, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v130 = v164;
    v131 = v165;
    v132 = v166;
    *&v133 = v167;
    v126 = v160;
    v127 = v161;
    v128 = v162;
    v129 = v163;
    v122 = v156;
    v123 = v157;
    v124 = v158;
    v125 = v159;
    __dst = v152;
    v119 = v153;
    v120 = v154;
    v121 = v155;
    *(&v133 + 1) = v11;
    v134 = v13;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAB4D0;
    *(v67 + 32) = v14;
    v82[0] = v67;

    AGGraphSetOutputValue();
    v130 = v164;
    v131 = v165;
    v132 = v166;
    *&v133 = v167;
    v126 = v160;
    v127 = v161;
    v128 = v162;
    v129 = v163;
    v122 = v156;
    v123 = v157;
    v124 = v158;
    v125 = v159;
    __dst = v152;
    v119 = v153;
    v120 = v154;
    v121 = v155;
    *(&v133 + 1) = v11;
    v134 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&__dst, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v82 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = *(Value + 8);
  v7 = *(Value + 16);
  v6 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *(Value + 34);
  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  v14 = (v3 | v12) & 1;
  *&v52 = v5;
  *(&v52 + 1) = v4;
  *&v71 = v5;
  *(&v71 + 1) = v4;
  *&v53 = v7;
  *(&v53 + 1) = v6;
  *&v72 = v7;
  *(&v72 + 1) = v6;
  LOBYTE(v73) = v8;
  BYTE1(v73) = v9;
  v54 = v10;
  BYTE2(v73) = v10;
  *(&v73 + 1) = v11;
  v74 = (v3 | v12) & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v71, &v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v22 = v21;
  v23 = *v20;
  v24 = v20[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = *(v25 + 32);
  v30 = *(v25 + 40);
  v33 = v32 | v22;
  v34 = v13;
  v68 = v71;
  v69 = v72;
  v70 = v73;
  v35 = *(v13 + 104);
  v36 = *(v13 + 112);
  v59 = *(v34 + 120);
  v60 = *(v34 + 136);
  if (v33)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v71, &v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v34 + 104) = v26;
    *(v34 + 112) = v27;
    *(v34 + 136) = v31 - (v23 - v28);
    *(v34 + 144) = v30 - (v24 - v29);
    *(v34 + 120) = v23;
    *(v34 + 128) = v24;
    v61 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v71, &v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v61 = 0;
  }

  if (v17)
  {
    *(v34 + 40) = v18;
    *(v34 + 48) = v19;
    v61 |= 2u;
  }

  if (v14 || !*(v34 + 96))
  {

    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v14;
    *(v34 + 56) = v68;
    *(v34 + 72) = v79;
    *(v34 + 88) = v80;
    LOBYTE(v61) = v61 | 1;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v78, v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v61)
  {
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = 0;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v37 = v54;
    goto LABEL_25;
  }

  v49 = v14;
  v50 = v8;
  v51 = v9;
  v58 = *(v34 + 104);
  v56 = *(v34 + 112);
  v57 = *(v34 + 136);
  v55 = *(v34 + 120);
  v38 = *(v34 + 152);
  v39 = MEMORY[0x1E69E7CC0];
  *(v34 + 152) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v62 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v66);
      v65 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v67, ObjectType = swift_getObjectType(), v64 = v61, *&v78 = v35, *(&v78 + 1) = v36, v80 = v60, v79 = v59, v75[0] = v58, v75[1] = v56, v76 = v55, v77 = v57, v43 = *(v42 + 16), , , , , v43(v34, &v64, &v78, v75, &v65, ObjectType, v42), swift_unknownObjectRelease(), , , , , v65 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v66);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v66, &v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + 152) = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
          *(v34 + 152) = v62;
        }

        v46 = v62[2];
        v45 = v62[3];
        if (v46 >= v45 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v62);
          *(v34 + 152) = v62;
        }

        outlined destroy of ContentPathObservers.Observer(v66);
        v62[2] = v46 + 1;
        outlined init with take of ContentPathObservers.Observer(&v78, &v62[2 * v46 + 4]);
        *(v34 + 152) = v62;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v78 = v68;
  v79 = v69;
  v80 = v70;
  LOBYTE(v14) = v49;
  v81 = v49;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v37 = v54;
  v8 = v50;
  v9 = v51;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v71, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v78 = v52;
    v79 = v53;
    LOBYTE(v80) = v8;
    BYTE1(v80) = v9;
    BYTE2(v80) = v37;
    *(&v80 + 3) = v68;
    BYTE7(v80) = BYTE4(v68);
    *(&v80 + 1) = v11;
    v81 = v14;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_18DDAB4D0;
    *(v48 + 32) = v34;
    v75[0] = v48;

    AGGraphSetOutputValue();
    v78 = v52;
    v79 = v53;
    LOBYTE(v80) = v8;
    BYTE1(v80) = v9;
    BYTE2(v80) = v37;
    *(&v80 + 3) = v68;
    BYTE7(v80) = BYTE4(v68);
    *(&v80 + 1) = v11;
    v81 = v14;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v78, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v88 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 16);
  v75 = *Value;
  v76 = v4;
  v77 = *(Value + 32);
  v78 = *(Value + 48);
  v6 = *AGGraphGetValue();
  LOWORD(v74) = v78;
  v71 = v75;
  v72 = v76;
  v73 = v77;
  v7 = (v3 | v5) & 1;
  v8 = *(v0 + 24);
  v66 = v75;
  v67 = v76;
  v68 = v77;
  *&v69 = v74;
  *(&v69 + 1) = v6;
  v70 = v7;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v66, &v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v9 = AGGraphGetValue();
  v11 = v10;
  v12 = *v9;
  v13 = v9[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = *(v19 + 32);
  v24 = *(v19 + 40);
  v27 = v26 | v16;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v65 = v69;
  v29 = *(v8 + 120);
  v28 = *(v8 + 128);
  v53 = *(v8 + 136);
  v54 = *(v8 + 152);
  if (v27)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v66, &v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v8 + 120) = v20;
    *(v8 + 128) = v21;
    *(v8 + 152) = v25 - (v17 - v22);
    *(v8 + 160) = v24 - (v18 - v23);
    *(v8 + 136) = v17;
    *(v8 + 144) = v18;
    v55 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v66, &v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v55 = 0;
  }

  if (v11)
  {
    *(v8 + 40) = v12;
    *(v8 + 48) = v13;
    v55 |= 2u;
  }

  if ((v7 & 1) != 0 || !*(v8 + 112))
  {
    v30 = *(v8 + 72);
    v82[0] = *(v8 + 56);
    v82[1] = v30;
    v31 = *(v8 + 104);
    v82[2] = *(v8 + 88);
    v82[3] = v31;
    outlined destroy of ObservationTracking._AccessList?(v82, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v62;
    v83 = v62;
    v84 = v63;
    v34 = v64;
    v33 = v65;
    v85 = v64;
    v86 = v65;
    v87 = v7;
    *(v8 + 72) = v63;
    *(v8 + 88) = v34;
    *(v8 + 104) = v33;
    LOBYTE(v55) = v55 | 1;
    *(v8 + 56) = v32;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v83, v79, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v55)
  {
    v83 = v62;
    v84 = v63;
    v85 = v64;
    v86 = v65;
    v87 = v7;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_25;
  }

  v47 = v7;
  v48 = v6;
  v51 = *(v8 + 128);
  v52 = *(v8 + 120);
  v49 = *(v8 + 136);
  v50 = *(v8 + 152);
  v35 = *(v8 + 168);
  v36 = MEMORY[0x1E69E7CC0];
  *(v8 + 168) = MEMORY[0x1E69E7CC0];
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = v35 + 32;
    v56 = v36;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v38, v82);
      v61 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v59 = v37, v39 = *(&v82[0] + 1), ObjectType = swift_getObjectType(), v60 = v55, *&v83 = v29, *(&v83 + 1) = v28, v84 = v53, v85 = v54, v79[0] = v52, v79[1] = v51, v81 = v50, v80 = v49, v57 = *(v39 + 16), v58 = ObjectType, , , , , v41 = v39, v37 = v59, v57(v8, &v60, &v83, v79, &v61, v58, v41), swift_unknownObjectRelease(), , , , , v61 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v82);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v82, &v83);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + 168) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          *(v8 + 168) = v56;
        }

        v44 = v56[2];
        v43 = v56[3];
        if (v44 >= v43 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v56);
          *(v8 + 168) = v56;
        }

        outlined destroy of ContentPathObservers.Observer(v82);
        v56[2] = v44 + 1;
        outlined init with take of ContentPathObservers.Observer(&v83, &v56[2 * v44 + 4]);
        *(v8 + 168) = v56;
      }

      v38 += 16;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  v83 = v62;
  v84 = v63;
  v85 = v64;
  v86 = v65;
  v7 = v47;
  v87 = v47;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v6 = v48;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v66, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v83 = v71;
    v84 = v72;
    v85 = v73;
    *&v86 = v74;
    *(&v86 + 1) = v6;
    v87 = v7;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAB4D0;
    *(v46 + 32) = v8;
    v79[0] = v46;

    AGGraphSetOutputValue();
    v83 = v71;
    v84 = v72;
    v85 = v73;
    *&v86 = v74;
    *(&v86 + 1) = v6;
    v87 = v7;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v83, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v71 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, sizeof(__dst));
  v4 = AGGraphGetValue();
  v6 = v3 | v5;
  v7 = *v4;
  memcpy(__src, __dst, 0x182uLL);
  v8 = v6 & 1;
  v9 = *(v0 + 24);
  memcpy(v67, __src, 0x188uLL);
  v67[49] = v7;
  v68 = v6 & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v67, v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v10 = AGGraphGetValue();
  v56 = v11;
  v12 = *v10;
  v13 = v10[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v25 = v24 | v16;
  v27 = *(v19 + 32);
  v26 = *(v19 + 40);
  memcpy(v64, v67, sizeof(v64));
  v28 = *(v9 + 456);
  v29 = *(v9 + 464);
  v50 = *(v9 + 472);
  v51 = *(v9 + 488);
  if (v25)
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v67, v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v9 + 456) = v21;
    *(v9 + 464) = v20;
    *(v9 + 488) = v27 - (v17 - v22);
    *(v9 + 496) = v26 - (v18 - v23);
    *(v9 + 472) = v17;
    *(v9 + 480) = v18;
    v52 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v67, v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v52 = 0;
  }

  v30 = v28;

  if (v56)
  {
    *(v9 + 40) = v12;
    *(v9 + 48) = v13;
    v52 |= 2u;
  }

  if ((v8 & 1) != 0 || (memmove(v65, (v9 + 56), 0x190uLL), _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA19ConcentricRectangleVGGSgWOg(v65) == 1))
  {
    memcpy(v62, (v9 + 56), sizeof(v62));
    outlined destroy of ObservationTracking._AccessList?(v62, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>?, type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    memcpy(v65, v64, sizeof(v65));
    v66 = v8;
    memcpy(v63, v64, sizeof(v63));
    _ViewInputs.base.modify(v63);
    memcpy((v9 + 56), v63, 0x190uLL);
    LOBYTE(v52) = v52 | 1;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v65, v59, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v52)
  {
    memcpy(v65, v64, sizeof(v65));
    v66 = v8;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_23;
  }

  v45 = v7;
  v48 = *(v9 + 464);
  v49 = *(v9 + 456);
  v46 = *(v9 + 472);
  v47 = *(v9 + 488);
  v31 = *(v9 + 504);
  v32 = MEMORY[0x1E69E7CC0];
  *(v9 + 504) = MEMORY[0x1E69E7CC0];
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = v31 + 32;
    v53 = v32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v34, v63);
      v62[0] = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v57 = v33, v35 = v9, v36 = v63[1], ObjectType = swift_getObjectType(), v58 = v52, *&v65[0] = v30, *(&v65[0] + 1) = v29, v65[1] = v50, v65[2] = v51, v59[0] = v49, v59[1] = v48, v61 = v47, v60 = v46, v54 = *(v36 + 16), v55 = ObjectType, , , , , v38 = v35, v39 = v36, v9 = v35, v33 = v57, v54(v38, &v58, v65, v59, v62, v55, v39), swift_unknownObjectRelease(), , , , , v62[0] == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + 504) = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
          *(v9 + 504) = v53;
        }

        v42 = v53[2];
        v41 = v53[3];
        if (v42 >= v41 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v53);
          *(v9 + 504) = v53;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v53[2] = v42 + 1;
        outlined init with take of ContentPathObservers.Observer(v65, &v53[2 * v42 + 4]);
        *(v9 + 504) = v53;
      }

      v34 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

  memcpy(v65, v64, sizeof(v65));
  v66 = v8;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v7 = v45;
LABEL_23:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v67, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    memcpy(v65, __src, 0x188uLL);
    *(&v65[24] + 1) = v7;
    v66 = v8;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_18DDAB4D0;
    *(v44 + 32) = v9;
    v59[0] = v44;

    AGGraphSetOutputValue();
    memcpy(v65, __src, 0x188uLL);
    *(&v65[24] + 1) = v7;
    v66 = v8;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v65, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v67[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v58 = *(Value + 8);
  v60 = *Value;
  v54 = *(Value + 16);
  v4 = *(Value + 17);
  v5 = *(Value + 18);
  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v52 = v11[1];
  v53 = *v11;
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v21 = *v19;
  v20 = *(v19 + 8);
  v23 = v22 | v16;
  v24 = *(v10 + 11);
  v25 = *(v10 + 12);
  v26 = v10[13];
  v27 = v10[14];
  v28 = v10[15];
  v29 = v10[16];
  if (v23)
  {
    v31 = *(v19 + 32);
    v30 = *(v19 + 40);
    v33 = *(v19 + 16);
    v32 = *(v19 + 24);
    *(v10 + 11) = v21;
    *(v10 + 12) = v20;
    v34 = v31 - (v17 - v33);
    v35 = v30 - (v18 - v32);
    v10[15] = v34;
    v10[16] = v35;
    v10[13] = v17;
    v10[14] = v18;

    v57 = 4;
    v55 = v21;
    v56 = v20;
  }

  else
  {

    v57 = 0;
    v35 = v29;
    v34 = v28;
    v18 = v27;
    v17 = v26;
    v55 = v24;
    v56 = v25;
  }

  if (v13)
  {
    *(v10 + 5) = v53;
    *(v10 + 6) = v52;
    v57 |= 2u;
  }

  if (v8 || !*(v10 + 10))
  {

    v36 = 256;
    if (!v4)
    {
      v36 = 0;
    }

    v37 = v36 | v54;
    v38 = 0x10000;
    if (!v5)
    {
      v38 = 0;
    }

    *(v10 + 7) = v60;
    *(v10 + 8) = v58;
    *(v10 + 9) = v37 | v38;
    *(v10 + 10) = v9;
    LOBYTE(v57) = v57 | 1;

    v55 = *(v10 + 11);
    v56 = *(v10 + 12);
    v17 = v10[13];
    v18 = v10[14];
    v34 = v10[15];
    v35 = v10[16];
  }

  else if (!v57)
  {

    goto LABEL_29;
  }

  v39 = *(v10 + 17);
  v40 = MEMORY[0x1E69E7CC0];
  *(v10 + 17) = MEMORY[0x1E69E7CC0];
  v41 = *(v39 + 16);
  if (v41)
  {
    v42 = v39 + 32;
    v59 = v40;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v42, v64);
      v63 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v43 = v10, v44 = v65, ObjectType = swift_getObjectType(), v62 = v57, v67[0] = v24, v67[1] = v25, *&v67[2] = v26, *&v67[3] = v27, *&v67[4] = v28, *&v67[5] = v29, v66[0] = v55, v66[1] = v56, *&v66[2] = v17, *&v66[3] = v18, *&v66[4] = v34, *&v66[5] = v35, v45 = *(v44 + 16), , , , , v46 = v44, v10 = v43, v45(v43, &v62, v67, v66, &v63, ObjectType, v46), swift_unknownObjectRelease(), , , , , v63 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v64);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v64, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v43 + 17) = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
          *(v43 + 17) = v59;
        }

        v49 = v59[2];
        v48 = v59[3];
        if (v49 >= v48 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v59);
          *(v43 + 17) = v59;
        }

        outlined destroy of ContentPathObservers.Observer(v64);
        v59[2] = v49 + 1;
        outlined init with take of ContentPathObservers.Observer(v67, &v59[2 * v49 + 4]);
        *(v43 + 17) = v59;
      }

      v42 += 16;
      --v41;
    }

    while (v41);
  }

  else
  {
  }

LABEL_29:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDAB4D0;
    *(v50 + 32) = v10;
    v67[0] = v50;

    AGGraphSetOutputValue();
  }
}

{
  v95 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 33);
  v10 = *AGGraphGetValue();
  v12 = *(v0 + 24);
  v13 = (v3 | v11) & 1;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v52 = v7;
  v80 = v7;
  v53 = v8;
  v54 = v9;
  v81 = v8;
  v82 = v9;
  v83 = v10;
  v84 = (v3 | v11) & 1;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v14 = AGGraphGetValue();
  v16 = v15;
  v18 = *v14;
  v17 = v14[1];
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v21 = v20;
  v22 = *v19;
  v23 = v19[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v28 = v27 | v21;
  v29 = v12;
  v30 = v77;
  v55 = v78;
  v56 = v79;
  v57 = v80;
  v58 = v81;
  v59 = v82;
  v31 = v83;
  v64 = *(v29 + 120);
  v65 = *(v29 + 136);
  v66 = *(v29 + 112);
  v73 = *(v29 + 104);
  if (v28)
  {
    v70 = v77;
    v72 = v4;
    v32 = *(v24 + 16);
    v33 = *(v24 + 24);
    v34 = *(v24 + 32);
    v68 = *(v24 + 40);

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v29 + 104) = v25;
    *(v29 + 112) = v26;
    v35 = v34 - (v22 - v32);
    v30 = v70;
    v4 = v72;
    *(v29 + 136) = v35;
    *(v29 + 144) = v68 - (v23 - v33);
    *(v29 + 120) = v22;
    *(v29 + 128) = v23;
    v67 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v67 = 0;
  }

  if (v16)
  {
    *(v29 + 40) = v18;
    *(v29 + 48) = v17;
    v67 |= 2u;
  }

  if (v13 || !*(v29 + 96))
  {

    v90 = v30;
    v91 = v55;
    LOBYTE(v92) = v56;
    *(&v92 + 1) = v57;
    LOBYTE(v93) = v58;
    BYTE1(v93) = v59;
    *(&v93 + 1) = v31;
    v94 = v13;
    v37 = 256;
    if (!v59)
    {
      v37 = 0;
    }

    *(v29 + 56) = v30;
    *(v29 + 64) = v55;
    *(v29 + 72) = v56;
    *(v29 + 80) = v57;
    LOBYTE(v67) = v67 | 1;
    *(v29 + 88) = v37 | v58;
    *(v29 + 96) = v31;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v90, v87, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v67)
  {
    v90 = v30;
    v91 = v55;
    LOBYTE(v92) = v56;
    *(&v92 + 1) = v57;
    LOBYTE(v93) = v58;
    BYTE1(v93) = v59;
    *(&v93 + 1) = v31;
    v94 = 0;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v36 = v53;
    goto LABEL_27;
  }

  v50 = v13;
  v51 = v10;
  v63 = *(v29 + 104);
  v61 = *(v29 + 112);
  v62 = *(v29 + 136);
  v60 = *(v29 + 120);
  v38 = *(v29 + 152);
  v39 = MEMORY[0x1E69E7CC0];
  *(v29 + 152) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v69 = v39;
    v42 = v73;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v75);
      LOBYTE(v85) = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v43 = v76, ObjectType = swift_getObjectType(), v74 = v67, v90 = v42, v91 = v66, v92 = v64, v93 = v65, v87[0] = v63, v87[1] = v61, v88 = v60, v89 = v62, v44 = *(v43 + 16), , , , , v44(v29, &v74, &v90, v87, &v85, ObjectType, v43), v42 = v73, swift_unknownObjectRelease(), , , , , v85 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v75);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v75, &v90);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 152) = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
          *(v29 + 152) = v69;
        }

        v47 = v69[2];
        v46 = v69[3];
        if (v47 >= v46 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v69);
          *(v29 + 152) = v69;
        }

        outlined destroy of ContentPathObservers.Observer(v75);
        v69[2] = v47 + 1;
        outlined init with take of ContentPathObservers.Observer(&v90, &v69[2 * v47 + 4]);
        *(v29 + 152) = v69;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

  v90 = v30;
  v91 = v55;
  LOBYTE(v92) = v56;
  *(&v92 + 1) = v87[0];
  DWORD1(v92) = *(v87 + 3);
  *(&v92 + 1) = v57;
  LOBYTE(v93) = v58;
  BYTE1(v93) = v59;
  *(&v93 + 2) = *v75;
  WORD3(v93) = *&v75[4];
  *(&v93 + 1) = v31;
  LOBYTE(v13) = v50;
  v94 = v50;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v36 = v53;
  v9 = v54;
  v10 = v51;
LABEL_27:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v77, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v90 = v4;
    v91 = v5;
    LOBYTE(v92) = v6;
    *(&v92 + 1) = *v75;
    DWORD1(v92) = *&v75[3];
    *(&v92 + 1) = v52;
    LOBYTE(v93) = v36;
    BYTE1(v93) = v9;
    *(&v93 + 2) = v85;
    WORD3(v93) = v86;
    *(&v93 + 1) = v10;
    v94 = v13;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAB4D0;
    *(v49 + 32) = v29;
    v87[0] = v49;

    AGGraphSetOutputValue();
    v90 = v4;
    v91 = v5;
    LOBYTE(v92) = v6;
    *(&v92 + 1) = *v75;
    DWORD1(v92) = *&v75[3];
    *(&v92 + 1) = v52;
    LOBYTE(v93) = v36;
    BYTE1(v93) = v9;
    *(&v93 + 2) = v85;
    WORD3(v93) = v86;
    *(&v93 + 1) = v10;
    v94 = v13;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v90, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

{
  v88 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v6 = *(Value + 8);
  v5 = *(Value + 16);
  v8 = *(Value + 24);
  v7 = *(Value + 32);
  v9 = *(Value + 40);
  v10 = *(Value + 41);

  v11 = *AGGraphGetValue();
  v13 = *(v0 + 24);
  *&v75 = v4;
  v50 = v6;
  *&v51 = v5;
  *(&v75 + 1) = v6;
  *&v76 = v5;
  *(&v51 + 1) = v8;
  v52 = v7;
  *(&v76 + 1) = v8;
  *&v77 = v7;
  v53 = v9;
  v54 = (v3 | v12) & 1;
  BYTE8(v77) = v9;
  BYTE9(v77) = v10;
  v78 = v11;
  v79 = v54;
  v49 = v11;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v75, &v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v21 = v20;
  v22 = *v19;
  v23 = v19[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  v32 = v31 | v21;
  v71 = v75;
  v72 = v76;
  v73 = v77;
  v74 = v78;
  v33 = *(v13 + 120);
  v59 = *(v13 + 128);
  v60 = *(v13 + 144);
  v62 = *(v13 + 112);
  if (v32)
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v75, &v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
    *(v13 + 112) = v25;
    *(v13 + 120) = v26;
    *(v13 + 144) = v30 - (v22 - v27);
    *(v13 + 152) = v29 - (v23 - v28);
    *(v13 + 128) = v22;
    *(v13 + 136) = v23;
    v63 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v75, &v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

    v63 = 0;
  }

  v34 = v54;
  if (v16)
  {
    *(v13 + 40) = v17;
    *(v13 + 48) = v18;
    v63 |= 2u;
  }

  v35 = *(v13 + 56);
  if ((v54 & 1) != 0 || !v35)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>?(v35);
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v87 = v54;
    v36 = v72;
    *(v13 + 56) = v71;
    v37 = v74;
    v86 = v74;
    *(v13 + 72) = v36;
    *(v13 + 88) = v85;
    *(v13 + 104) = v37;
    LOBYTE(v63) = v63 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v83, v80, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }

  else if (!v63)
  {
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v54;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

    goto LABEL_25;
  }

  v48 = v10;
  v57 = *(v13 + 120);
  v58 = *(v13 + 112);
  v55 = *(v13 + 128);
  v56 = *(v13 + 144);
  v38 = *(v13 + 160);
  v39 = MEMORY[0x1E69E7CC0];
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v61 = v33;
    v41 = v38 + 32;
    v64 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v69);
      v68 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v70, ObjectType = swift_getObjectType(), v67 = v63, *&v83 = v62, *(&v83 + 1) = v61, v84 = v59, v85 = v60, v80[0] = v58, v80[1] = v57, v81 = v55, v82 = v56, v65 = *(v42 + 16), , , , , v65(v13, &v67, &v83, v80, &v68, ObjectType, v42), swift_unknownObjectRelease(), , , , , v68 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v69);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v69, &v83);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 160) = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
          *(v13 + 160) = v64;
        }

        v45 = v64[2];
        v44 = v64[3];
        if (v45 >= v44 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v64);
          *(v13 + 160) = v64;
        }

        outlined destroy of ContentPathObservers.Observer(v69);
        v64[2] = v45 + 1;
        outlined init with take of ContentPathObservers.Observer(&v83, &v64[2 * v45 + 4]);
        *(v13 + 160) = v64;
      }

      v41 += 16;
      --v40;
    }

    while (v40);

    v34 = v54;
  }

  else
  {
  }

  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v87 = v34;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));

  v10 = v48;
LABEL_25:
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v75, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    *&v83 = v4;
    *(&v83 + 1) = v50;
    v84 = v51;
    *&v85 = v52;
    BYTE8(v85) = v53;
    BYTE9(v85) = v10;
    *(&v85 + 10) = v71;
    HIWORD(v85) = WORD2(v71);
    v86 = v49;
    v87 = v34;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18DDAB4D0;
    *(v46 + 32) = v13;
    v80[0] = v46;

    AGGraphSetOutputValue();
    *&v83 = v4;
    *(&v83 + 1) = v50;
    v84 = v51;
    *&v85 = v52;
    BYTE8(v85) = v53;
    BYTE9(v85) = v10;
    *(&v85 + 10) = v71;
    HIWORD(v85) = WORD2(v71);
    v86 = v49;
    v87 = v34;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v83, type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
  }
}

{
  v98 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = Value[1];
  v4 = Value[2];
  v6 = *Value;
  *(v94 + 12) = *(Value + 44);
  v93[1] = v5;
  v94[0] = v4;
  v93[0] = v6;
  v7 = Value[1];
  v90 = *Value;
  v91 = v7;
  v92[0] = Value[2];
  *(v92 + 12) = *(Value + 44);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v93, &v81, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
  v8 = *AGGraphGetValue();
  v10 = v3 & 1;
  *&v96[12] = *(v92 + 12);
  v95[1] = v91;
  *v96 = v92[0];
  v95[0] = v90;
  v97 = v3 & 1;
  v87 = v90;
  v88 = v91;
  v89[0] = v92[0];
  *(v89 + 12) = *(v92 + 12);
  v11 = (v3 | v9) & 1;
  v12 = *(v0 + 24);
  v81 = v90;
  v82 = v91;
  v83 = v89[0];
  v84 = v89[1];
  v85 = v8;
  v86 = v11;

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v95, &v75, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v81, &v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  v13 = AGGraphGetValue();
  v15 = v14;
  v16 = *v13;
  v17 = v13[1];
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  v22 = v18[1];
  v23 = AGGraphGetValue();
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v29 = *(v23 + 32);
  v28 = *(v23 + 40);
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v70 = v81;
  v71 = v82;
  v31 = *(v12 + 128);
  v54 = *(v12 + 144);
  v55 = *(v12 + 160);
  v56 = *(v12 + 136);
  if ((v30 | v20))
  {

    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v81, &v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    *(v12 + 128) = v25;
    *(v12 + 136) = v24;
    *(v12 + 160) = v29 - (v21 - v26);
    *(v12 + 168) = v28 - (v22 - v27);
    *(v12 + 144) = v21;
    *(v12 + 152) = v22;
    v57 = 4;
  }

  else
  {
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v81, &v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    v57 = 0;
  }

  if (v15)
  {
    *(v12 + 40) = v16;
    *(v12 + 48) = v17;
    v57 |= 2u;
  }

  if ((v11 & 1) != 0 || !*(v12 + 104))
  {
    v32 = *(v12 + 88);
    v68[1] = *(v12 + 72);
    v68[2] = v32;
    v68[3] = *(v12 + 104);
    v69 = *(v12 + 120);
    v68[0] = *(v12 + 56);
    outlined destroy of ObservationTracking._AccessList?(v68, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>?, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v74;
    v79 = v74;
    v35 = v72;
    v34 = v73;
    v77 = v72;
    v78 = v73;
    v36 = v70;
    v75 = v70;
    v76 = v71;
    v80 = v11;
    *(v12 + 72) = v71;
    *(v12 + 88) = v35;
    *(v12 + 104) = v34;
    *(v12 + 120) = v33;
    LOBYTE(v57) = v57 | 1;
    *(v12 + 56) = v36;
    outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v75, &v64, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else if (!v57)
  {
    v77 = v72;
    v78 = v73;
    v79 = v74;
    v75 = v70;
    v76 = v71;
    v80 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

    goto LABEL_25;
  }

  v48 = v8;
  v49 = v10;
  v52 = *(v12 + 136);
  v53 = *(v12 + 128);
  v50 = *(v12 + 144);
  v51 = *(v12 + 160);
  v37 = *(v12 + 176);
  v38 = MEMORY[0x1E69E7CC0];
  *(v12 + 176) = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = v37 + 32;
    v58 = v38;
    v61 = v12;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v40, v68);
      v63 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v41 = *(&v68[0] + 1), ObjectType = swift_getObjectType(), v62 = v57, *&v75 = v31, *(&v75 + 1) = v56, v76 = v54, v77 = v55, *&v64 = v53, *(&v64 + 1) = v52, v65 = v50, *v66 = v51, v59 = *(v41 + 16), v60 = ObjectType, , , , , v59(v61, &v62, &v75, &v64, &v63, v60, v41), swift_unknownObjectRelease(), , , v12 = v61, , , v63 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v68);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v68, &v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 176) = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          *(v61 + 176) = v58;
        }

        v45 = v58[2];
        v44 = v58[3];
        if (v45 >= v44 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v58);
          *(v61 + 176) = v58;
        }

        outlined destroy of ContentPathObservers.Observer(v68);
        v58[2] = v45 + 1;
        outlined init with take of ContentPathObservers.Observer(&v75, &v58[2 * v45 + 4]);
        *(v61 + 176) = v58;
      }

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  else
  {
  }

  v77 = v72;
  v78 = v73;
  v79 = v74;
  v75 = v70;
  v76 = v71;
  v80 = v11;
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));

  v10 = v49;
  v8 = v48;
LABEL_25:
  outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v81, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    v75 = v87;
    v76 = v88;
    v77 = v89[0];
    v78 = v89[1];
    v79 = v8;
    v80 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    v64 = v90;
    v65 = v91;
    *v66 = v92[0];
    *&v66[12] = *(v92 + 12);
    v67 = v10;
    return outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v64, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAB4D0;
    *(v47 + 32) = v12;
    *&v68[0] = v47;

    AGGraphSetOutputValue();
    v75 = v87;
    v76 = v88;
    v77 = v89[0];
    v78 = v89[1];
    v79 = v8;
    v80 = v11;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v75, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, changed: Bool), type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
    v64 = v90;
    v65 = v91;
    *v66 = v92[0];
    *&v66[12] = *(v92 + 12);
    v67 = v10;
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(&v64, &lazy cache variable for type metadata for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool), type metadata accessor for _ShapeView<Rectangle, MeshGradient>, type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool));
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool))
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<Image.Resolved>, changed: Bool));
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<Image.Resolved>?()
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>?)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderData);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>?);
    }
  }
}

uint64_t getEnumTagSinglePayload for _ContentShapeKindModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

uint64_t _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void specialized static DefaultSystemColorDefinition_PhoneTV.value(for:environment:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v39 = *a2;
  v40 = v5;
  EnvironmentValues.colorScheme.getter(&v38);
  v7 = v38;
  if (!v5)
  {
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v6);
    if (v19)
    {
      v8 = *(v19 + 72);
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_3:
    __asm { FMOV            V0.2S, #1.0 }

    v14 = 2143289344;
    v15 = _D0;
    switch(v4)
    {
      case 1:
        if (v8)
        {
          v16 = 255.0;
          v17 = 179.0;
          v18 = 1115684864;
          goto LABEL_144;
        }

        v16 = 255.0;
        v36 = 1126105088;
        goto LABEL_121;
      case 2:
        if (v8)
        {
          v16 = 255.0;
          v17 = 212.0;
          v18 = 1108869120;
          goto LABEL_144;
        }

        v16 = 255.0;
        v36 = 1129709568;
LABEL_121:
        v17 = *&v36;
        v20 = 100.0;
        v21 = 10.0;
        goto LABEL_153;
      case 3:
        v16 = 48.0;
        if (v8)
        {
          v17 = 219.0;
          v18 = 1119223808;
        }

        else
        {
          v17 = 209.0;
          v18 = 1118830592;
        }

        goto LABEL_144;
      case 4:
        if (v8)
        {
          v16 = 93.0;
          v25 = 1130758144;
          goto LABEL_95;
        }

        v16 = 64.0;
        v17 = 200.0;
        v18 = 1130364928;
        goto LABEL_144;
      case 5:
        v16 = 99.0;
        v17 = 230.0;
        v18 = 1130496000;
        goto LABEL_144;
      case 6:
        if (v8)
        {
          v16 = 112.0;
          v25 = 1129775104;
          goto LABEL_95;
        }

        v17 = 210.0;
        v21 = 255.0;
        v16 = 100.0;
        v20 = 100.0;
        goto LABEL_153;
      case 7:
        if (v8)
        {
          v16 = 64.0;
          v25 = 1125908480;
          goto LABEL_95;
        }

        v17 = 132.0;
        v21 = 255.0;
        v20 = 100.0;
        v16 = 10.0;
        goto LABEL_153;
      case 8:
        if (v8)
        {
          v16 = 125.0;
          v25 = 1123287040;
          goto LABEL_95;
        }

        v16 = 94.0;
        v35 = 1119354880;
        goto LABEL_126;
      case 9:
        if (v8)
        {
          v16 = 218.0;
          v25 = 1125056512;
LABEL_95:
          v17 = *&v25;
          v18 = 1132396544;
        }

        else
        {
          v16 = 191.0;
          v17 = 90.0;
          v18 = 1131544576;
        }

        goto LABEL_144;
      case 10:
        if (v8)
        {
          v16 = 255.0;
          v21 = 130.0;
          v17 = 100.0;
          v20 = 100.0;
          goto LABEL_153;
        }

        v16 = 255.0;
        v17 = 55.0;
        v18 = 1119748096;
        goto LABEL_144;
      case 11:
        if (v8)
        {
          v16 = 181.0;
          v17 = 148.0;
          v18 = 1121058816;
        }

        else
        {
          v16 = 172.0;
          v17 = 142.0;
          v18 = 1120927744;
        }

        goto LABEL_144;
      case 12:
        if ((v8 & 1) == 0)
        {
          goto LABEL_80;
        }

        v16 = 174.0;
        v32 = 1127350272;
        goto LABEL_81;
      case 13:
        goto LABEL_154;
      case 14:
        if (v8)
        {
          v16 = 235.0;
          v24 = 1131741184;
          goto LABEL_46;
        }

        v16 = 235.0;
        v21 = 245.0;
        v22 = 1114636288;
        goto LABEL_105;
      case 15:
        if (v8)
        {
          v16 = 235.0;
          v23 = 1131741184;
          goto LABEL_43;
        }

        v16 = 235.0;
        v37 = 1131741184;
        goto LABEL_119;
      case 16:
        if (v8)
        {
          v16 = 235.0;
          v21 = 245.0;
          v22 = 1109393408;
          goto LABEL_105;
        }

        v16 = 235.0;
        v21 = 245.0;
        goto LABEL_151;
      case 17:
        if (v8)
        {
          v28 = 0.081373;
        }

        else
        {
          v28 = 0.05;
        }

        __asm { FMOV            V0.2S, #1.0 }

        LODWORD(v15) = _D0;
        goto LABEL_63;
      case 18:
        v16 = 120.0;
        if (v8)
        {
          v33 = 1110441984;
        }

        else
        {
          v33 = 1108344832;
        }

        goto LABEL_139;
      case 19:
        if ((v8 & 1) == 0)
        {
          v29 = 1123024896;
          goto LABEL_149;
        }

        v16 = 120.0;
        v33 = 1109393408;
LABEL_139:
        v20 = *&v33;
        v21 = 128.0;
        goto LABEL_152;
      case 20:
        if ((v8 & 1) == 0)
        {
          v34 = 1122762752;
          goto LABEL_130;
        }

        v29 = 1122762752;
LABEL_149:
        v16 = *&v29;
        v21 = 128.0;
        v20 = 32.0;
        break;
      case 21:
        v16 = 116.0;
        v21 = 128.0;
        if (v8)
        {
          v20 = 26.0;
        }

        else
        {
          v20 = 18.0;
        }

        goto LABEL_152;
      default:
        v16 = 255.0;
        if (v8)
        {
          v17 = 105.0;
          v18 = 1120010240;
        }

        else
        {
          v17 = 69.0;
          v18 = 1114112000;
        }

        goto LABEL_144;
    }

    goto LABEL_152;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v6, &v39);

  v8 = v39;
  if (v7)
  {
    goto LABEL_3;
  }

LABEL_8:
  v15 = 0x3F80000000000000;
  _D0 = 0;
  v14 = 2143289344;
  switch(v4)
  {
    case 1:
      if (v8)
      {
        v16 = 201.0;
        v26 = 1112539136;
      }

      else
      {
        v16 = 255.0;
        v26 = 1125449728;
      }

      goto LABEL_123;
    case 2:
      if (v8)
      {
        v16 = 178.0;
        v26 = 1117782016;
      }

      else
      {
        v16 = 255.0;
        v26 = 1129054208;
      }

LABEL_123:
      v17 = *&v26;
      v20 = 100.0;
      v21 = 0.0;
      goto LABEL_153;
    case 3:
      if (v8)
      {
        v16 = 36.0;
        v17 = 138.0;
        v18 = 1114898432;
      }

      else
      {
        v16 = 52.0;
        v17 = 199.0;
        v18 = 1118961664;
      }

      goto LABEL_144;
    case 4:
      if (v8)
      {
        v17 = 130.0;
        v27 = 1125711872;
        goto LABEL_147;
      }

      v16 = 48.0;
      v17 = 176.0;
      v18 = 1128726528;
      goto LABEL_144;
    case 5:
      if (v8)
      {
        v17 = 129.0;
        v21 = 123.0;
        v20 = 100.0;
        v16 = 12.0;
        goto LABEL_153;
      }

      v17 = 199.0;
      v27 = 1128136704;
      goto LABEL_147;
    case 6:
      if ((v8 & 1) == 0)
      {
        v16 = 50.0;
        v35 = 1127022592;
LABEL_126:
        v17 = *&v35;
        v18 = 1130758144;
        goto LABEL_144;
      }

      v17 = 113.0;
      v27 = 1126432768;
LABEL_147:
      v21 = *&v27;
      v20 = 100.0;
      v16 = 0.0;
      goto LABEL_153;
    case 7:
      if (v8)
      {
        v17 = 64.0;
        v27 = 1130168320;
      }

      else
      {
        v17 = 122.0;
        v27 = 1132396544;
      }

      goto LABEL_147;
    case 8:
      if (v8)
      {
        v16 = 54.0;
        v17 = 52.0;
        v18 = 1126367232;
      }

      else
      {
        v16 = 88.0;
        v17 = 86.0;
        v18 = 1129709568;
      }

      goto LABEL_144;
    case 9:
      if (v8)
      {
        v16 = 137.0;
        v17 = 68.0;
        v18 = 1126891520;
      }

      else
      {
        v16 = 175.0;
        v17 = 82.0;
        v18 = 1130233856;
      }

      goto LABEL_144;
    case 10:
      if (v8)
      {
        v16 = 211.0;
        v21 = 69.0;
        v20 = 100.0;
        v17 = 15.0;
        goto LABEL_153;
      }

      v16 = 255.0;
      v17 = 45.0;
      v18 = 1118437376;
      goto LABEL_144;
    case 11:
      if (v8)
      {
        v16 = 127.0;
        v17 = 101.0;
        v18 = 1116340224;
      }

      else
      {
        v16 = 162.0;
        v17 = 132.0;
        v18 = 1119617024;
      }

      goto LABEL_144;
    case 12:
      if (v8)
      {
        v16 = 108.0;
        v32 = 1121976320;
      }

      else
      {
LABEL_80:
        v16 = 142.0;
        v32 = 1125318656;
      }

LABEL_81:
      v21 = *&v32;
      v22 = 1120403456;
      goto LABEL_105;
    case 13:
      goto LABEL_154;
    case 14:
      if (v8)
      {
        v16 = 60.0;
        v21 = 67.0;
        v22 = 1117782016;
        goto LABEL_105;
      }

      v21 = 67.0;
      v16 = 60.0;
      v17 = 60.0;
      v20 = 60.0;
      goto LABEL_153;
    case 15:
      if (v8)
      {
        v16 = 60.0;
        v24 = 1116078080;
LABEL_46:
        v21 = *&v24;
        v22 = 1116471296;
        goto LABEL_105;
      }

      v16 = 60.0;
      v37 = 1116078080;
LABEL_119:
      v21 = *&v37;
      v20 = 30.0;
      break;
    case 16:
      if (v8)
      {
        v16 = 60.0;
        v23 = 1116078080;
LABEL_43:
        v21 = *&v23;
        v22 = 1113325568;
LABEL_105:
        v20 = *&v22;
      }

      else
      {
        v16 = 60.0;
        v21 = 67.0;
        v20 = 18.0;
      }

      break;
    case 17:
      if (v8)
      {
        v28 = 0.081373;
      }

      else
      {
        v28 = 0.05;
      }

      _D0 = 0;
      LODWORD(v15) = 0;
LABEL_63:
      *(&v15 + 1) = v28;
      v14 = 2143289344;
      goto LABEL_154;
    case 18:
      if (v8)
      {
        v16 = 120.0;
        v21 = 128.0;
        v20 = 28.0;
        break;
      }

      v30 = 1123024896;
      goto LABEL_141;
    case 19:
      if (v8)
      {
        v34 = 1123024896;
LABEL_130:
        v16 = *&v34;
        v21 = 128.0;
        v20 = 24.0;
      }

      else
      {
        v16 = 120.0;
        v21 = 128.0;
LABEL_151:
        v20 = 16.0;
      }

      break;
    case 20:
      if ((v8 & 1) == 0)
      {
        v31 = 1123024896;
        goto LABEL_132;
      }

      v30 = 1122762752;
LABEL_141:
      v16 = *&v30;
      v21 = 128.0;
      v20 = 20.0;
      break;
    case 21:
      if (v8)
      {
        v31 = 1122500608;
LABEL_132:
        v16 = *&v31;
        v21 = 128.0;
        v20 = 12.0;
      }

      else
      {
        v16 = 116.0;
        v21 = 128.0;
        v20 = 8.0;
      }

      break;
    default:
      if (v8)
      {
        v16 = 215.0;
        v20 = 100.0;
        v17 = 0.0;
        v21 = 21.0;
      }

      else
      {
        v16 = 255.0;
        v17 = 59.0;
        v18 = 1111490560;
LABEL_144:
        v21 = *&v18;
        v20 = 100.0;
      }

      goto LABEL_153;
  }

LABEL_152:
  v17 = v16;
LABEL_153:
  _s7SwiftUI21SystemColorDefinitionPAAE9systemRGByAA0D0VAAE11ResolvedHDRVSf_S3ftFZAA07DefaultcdE8_PhoneTVV_Tt3g5(&v39, v16, v17, v21, v20);
  _D0 = v39;
  v15 = v40;
  v14 = v41;
LABEL_154:
  *a3 = _D0;
  *(a3 + 8) = v15;
  *(a3 + 16) = v14;
}

uint64_t ViewResponder.isDescendant(of:)(uint64_t a1)
{
  v2 = v1;
  swift_retain_n();
  if (v1 != a1)
  {
    v4 = *(*v1 + 88);

    v6 = v4(v5);

    while (1)
    {

      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {

        LOBYTE(v9) = 1;
        return v9 & 1;
      }

      v7 = *(*v6 + 88);

      v6 = v7(v8);
    }

    type metadata accessor for ViewResponder();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      return v9 & 1;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_19;
    }

    v11 = Strong;
    v12 = *(v2 + 24);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      if (v11 != v14)
      {
        v25 = ObjectType;
        v17 = swift_getObjectType();
        v18 = type metadata accessor for EventGraphHost();
        v19 = *(v12 + 16);

        v19(v26, v18, v18, v17, v12);
        if (v26[0])
        {
          v20 = v26[1];
          (*(v15 + 16))(v26, v18, v18, v25, v15);
          if (v26[0])
          {
            v21 = swift_getObjectType();
            v22 = *(v20 + 64);
            v23 = swift_unknownObjectRetain();
            LOBYTE(v9) = v22(v23, v21, v20);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            return v9 & 1;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_18:
    swift_unknownObjectRelease();
LABEL_19:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

void _s7SwiftUI21SystemColorDefinitionPAAE9systemRGByAA0D0VAAE11ResolvedHDRVSf_S3ftFZAA07DefaultcdE8_PhoneTVV_Tt3g5(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  v7 = a2 / 255.0;
  v8 = a3 / 255.0;
  v9 = -(a2 / 255.0);
  if (v7 > 0.0)
  {
    v9 = v7;
  }

  if (v9 <= 0.04045)
  {
    v10 = v9 * 0.077399;
  }

  else
  {
    v10 = 1.0;
    if (v9 != 1.0)
    {
      v11 = a4;
      v12 = powf((v9 * 0.94787) + 0.052133, 2.4);
      a4 = v11;
      v10 = v12;
    }
  }

  v13 = -v8;
  if (v8 > 0.0)
  {
    v13 = v8;
  }

  v14 = a4 / 255.0;
  if (v13 <= 0.04045)
  {
    v15 = v13 * 0.077399;
  }

  else
  {
    v15 = 1.0;
    if (v13 != 1.0)
    {
      v15 = powf((v13 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v14 <= 0.0)
  {
    v16 = -v14;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0.04045)
  {
    v17 = v16 * 0.077399;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = powf((v16 * 0.94787) + 0.052133, 2.4);
    }
  }

  v18 = -v15;
  if (v8 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v10;
  if (v7 > 0.0)
  {
    v19 = v10;
  }

  if (v14 <= 0.0)
  {
    v17 = -v17;
  }

  *a1 = v19;
  *(a1 + 4) = v18;
  *(a1 + 8) = v17;
  *(a1 + 12) = a5 * 0.01;
  *(a1 + 16) = 2143289344;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPhaseState(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t CoreMaterialCache.subscript.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *v1;
  v7 = v4 | (v5 << 32);
  if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v4 | (v5 << 32)), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v10 = specialized CoreMaterialCache.load(material:)(&v13);
    outlined copy of Material.ID(v3, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v3, v7, isUniquelyReferenced_nonNull_native);
    outlined consume of Material.ID(v3, v4);
    *v2 = v13;
  }

  return v10;
}

uint64_t specialized CoreMaterialCache.load(material:)(uint64_t a1)
{
  v117[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v112.n128_u64[0] = *a1;
  v112.n128_u8[8] = v1;
  v112.n128_u32[3] = v2;
  v3 = Material.ResolvedMaterial.coreMaterialRecipe.getter();
  v105.n128_u64[0] = v112.n128_u64[0];
  v105.n128_u8[8] = v1;
  v105.n128_u32[3] = v2;
  Material.ResolvedMaterial.coreMaterialOptions.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = MTMaterialCreateDictionaryRepresentation();

  if (!v5)
  {
    __break(1u);
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x737265746C6966, 0xE700000000000000), (v8 & 1) == 0) || (outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v112), type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for [[String : Any]], type metadata accessor for [String : Any], MEMORY[0x1E69E62F8]), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  if ((v2 & 0x80) == 0)
  {
    if ((v2 & 0x20) != 0)
    {

      v12 = 1065353216;
    }

    else
    {
      if (*(v6 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C616373, 0xE500000000000000), (v10 & 1) != 0))
      {
        outlined init with copy of Any(*(v6 + 56) + 32 * v9, &v112);

        if (swift_dynamicCast())
        {
          *&v11 = v105.n128_f64[0];
          v12 = v11;
          goto LABEL_146;
        }
      }

      else
      {
      }

      v12 = 1048576000;
    }

LABEL_146:
    v100 = v12;
    v14 = *(v105.n128_u64[0] + 16);
    if (!v14)
    {
      goto LABEL_147;
    }

    goto LABEL_13;
  }

  v100 = 0;
  v14 = *(v105.n128_u64[0] + 16);
  if (v14)
  {
LABEL_13:
    v15 = v105.n128_u64[0] + 32;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = *v15;
      if (!*(*v15 + 16))
      {
        goto LABEL_15;
      }

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v112);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v20 = v105;
      if (*&v105 == __PAIR128__(0xED00006574617275, 0x746153726F6C6F63) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!*(v17 + 16))
        {
          goto LABEL_14;
        }

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

        outlined init with copy of Any(*(v17 + 56) + 32 * v21, &v112);

        if ((swift_dynamicCast() & 1) != 0 && v105.n128_f64[0] != 1.0)
        {
          v112.n128_u64[0] = v105.n128_u64[0];
          _s7SwiftUI14GraphicsFilterOWOi9_(&v112);
LABEL_26:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v24 = *(v16 + 2);
          v23 = *(v16 + 3);
          if (v24 >= v23 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
          }

          v109 = v115;
          v110 = *v116;
          v111[0] = *&v116[16];
          *(v111 + 12) = *&v116[28];
          v107 = *&v113[16];
          v108 = v114;
          v25 = v112;
          v105 = v112;
          v106 = *v113;
          *(v16 + 2) = v24 + 1;
          v26 = &v16[128 * v24];
          v27 = v106;
          v28 = v108;
          *(v26 + 4) = v107;
          *(v26 + 5) = v28;
          *(v26 + 3) = v27;
          v29 = v109;
          v30 = v110;
          v31 = v111[0];
          *(v26 + 140) = *(v111 + 12);
          *(v26 + 7) = v30;
          *(v26 + 8) = v31;
          *(v26 + 6) = v29;
          *(v26 + 2) = v25;
        }
      }

      else if (*&v20 == __PAIR128__(0xEF7373656E746867, 0x697242726F6C6F63) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!*(v17 + 16))
        {
          goto LABEL_14;
        }

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }

        outlined init with copy of Any(*(v17 + 56) + 32 * v32, &v112);

        if ((swift_dynamicCast() & 1) != 0 && v105.n128_f64[0] != 0.0)
        {
          v112.n128_u64[0] = v105.n128_u64[0];
          _s7SwiftUI14GraphicsFilterOWOi10_(&v112);
          goto LABEL_26;
        }
      }

      else
      {
        if (*&v20 == __PAIR128__(0xEC00000072756C42, 0x6E61697373756167) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if ((v2 & 0x20) != 0)
          {
            goto LABEL_14;
          }

          if (!*(v17 + 16))
          {
            goto LABEL_14;
          }

          v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x6461527475706E69, 0xEB00000000737569);
          if ((v35 & 1) == 0)
          {
            goto LABEL_14;
          }

          outlined init with copy of Any(*(v17 + 56) + 32 * v34, &v112);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_14;
          }

          v36 = v105.n128_f64[0];
          if (*(v17 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469447475706E69, 0xEB00000000726568), (v38 & 1) != 0) && (outlined init with copy of Any(*(v17 + 56) + 32 * v37, &v112), swift_dynamicCast()))
          {
            v39 = v105.n128_u8[0];
          }

          else
          {
            v39 = 0;
          }

          if (*(v17 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000018DD7A5A0), (v46 & 1) != 0))
          {
            outlined init with copy of Any(*(v17 + 56) + 32 * v45, &v112);

            if (swift_dynamicCast())
            {
              v47 = v105.n128_u8[0];
              goto LABEL_69;
            }
          }

          else
          {
          }

          v47 = 0;
LABEL_69:
          if (v36 > 0.0)
          {
            v112.n128_f64[0] = v36;
            v112.n128_u8[8] = v47;
            v112.n128_u8[9] = v39;
            _s7SwiftUI14GraphicsFilterOWOi_(&v112);
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        if (*&v20 == __PAIR128__(0xEC00000072756C42, 0x656C626169726176) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if ((v2 & 0x20) == 0)
          {
            if (*(v17 + 16))
            {
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(0x6461527475706E69, 0xEB00000000737569);
              if (v41)
              {
                outlined init with copy of Any(*(v17 + 56) + 32 * v40, &v112);
                if (swift_dynamicCast())
                {
                  v42 = v105.n128_f64[0];
                  if (v105.n128_f64[0] > 0.0)
                  {
                    if (*(v17 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0x73614D7475706E69, 0xEE006567616D496BLL), (v44 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v17 + 56) + 32 * v43, &v112);
                    }

                    else
                    {
                      v112 = 0u;
                      *v113 = 0u;
                    }

                    v105 = v112;
                    v106 = *v113;
                    if (*&v113[8])
                    {
                      outlined init with take of Any(&v105, v102);
                      type metadata accessor for CGImageRef(0);
                      swift_dynamicCast();
                      v54 = v117[0];
                      if (v117[0])
                      {
                        if (*(v17 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469447475706E69, 0xEB00000000726568), (v56 & 1) != 0) && (outlined init with copy of Any(*(v17 + 56) + 32 * v55, &v112), swift_dynamicCast()))
                        {
                          v95 = v105.n128_u8[0];
                        }

                        else
                        {
                          v95 = 0;
                        }

                        if (*(v17 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000018DD7A5A0), (v62 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v17 + 56) + 32 * v61, v117);

                          if (swift_dynamicCast())
                          {
                            v63 = v112.n128_u8[0];
                            goto LABEL_122;
                          }
                        }

                        else
                        {
                        }

                        v63 = 0;
LABEL_122:
                        Width = CGImageGetWidth(v54);
                        *&v75 = CGImageGetHeight(v54);
                        v99 = v54;
                        outlined consume of GraphicsImage.Contents?(0, 0xFFu);
                        v105.n128_u8[0] = 1;
                        memset(v102, 0, sizeof(v102));
                        v103 = 0;
                        v104 = 0x80000000;
                        outlined destroy of VariableBlurStyle.Mask(v102);
                        v112.n128_f64[0] = v42 + v42;
                        v112.n128_u8[8] = v63;
                        v112.n128_u8[9] = v95;
                        *v113 = v54;
                        *&v113[8] = xmmword_18DDAB500;
                        *&v113[24] = Width;
                        v114 = v75;
                        v115 = 0uLL;
                        *v116 = 1;
                        memset(&v116[8], 0, 32);
                        *&v116[40] = 65794;
                        _s7SwiftUI14GraphicsFilterOWOi0_(&v112);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
                        }

                        v77 = *(v16 + 2);
                        v76 = *(v16 + 3);
                        if (v77 >= v76 >> 1)
                        {
                          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v16);
                        }

                        v109 = v115;
                        v110 = *v116;
                        v111[0] = *&v116[16];
                        *(v111 + 12) = *&v116[28];
                        v107 = *&v113[16];
                        v108 = v114;
                        v78 = v112;
                        v105 = v112;
                        v106 = *v113;
                        *(v16 + 2) = v77 + 1;
LABEL_127:
                        v79 = &v16[128 * v77];
                        v81 = v106;
                        v80 = v107;
                        *(v79 + 5) = v108;
                        v82 = v109;
                        v83 = v110;
                        v84 = v111[0];
                        *(v79 + 140) = *(v111 + 12);
                        *(v79 + 7) = v83;
                        *(v79 + 8) = v84;
                        *(v79 + 6) = v82;
                        *(v79 + 2) = v78;
                        *(v79 + 3) = v81;
                        *(v79 + 4) = v80;
                        goto LABEL_15;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_14;
        }

        if (*&v20 != __PAIR128__(0xEC000000726F6C6FLL, 0x4365676172657661) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (__PAIR128__(0x800000018DD7A540, 0xD000000000000011) == *&v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (*(v17 + 16))
            {
              v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6D417475706E69, 0xEB00000000746E75);
              if (v49)
              {
                outlined init with copy of Any(*(v17 + 56) + 32 * v48, &v112);
                if (swift_dynamicCast())
                {
                  v50 = v105.n128_f64[0];
                  if (*(v17 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C61567475706E69, 0xEB00000000736575), (v52 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v17 + 56) + 32 * v51, v102);

                    _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
                    if (swift_dynamicCast())
                    {
                      v53 = v112.n128_u64[0];
                    }

                    else
                    {
                      v53 = 0;
                    }
                  }

                  else
                  {

                    v53 = 0;
                  }

                  v85 = specialized SIMD4<>.init(_:)(v53);
                  v86 = v50;
                  v112 = v85;
                  *v113 = v86;
                  _s7SwiftUI14GraphicsFilterOWOi15_(&v112);
                  goto LABEL_26;
                }
              }
            }

            goto LABEL_14;
          }

          if (*&v20 == __PAIR128__(0xE600000000000000, 0x736576727563) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (*(v17 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x6465527475706E69, 0xEE007365756C6156), (v58 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v57, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              v59 = swift_dynamicCast();
              v60 = v105.n128_u64[0];
              if (!v59)
              {
                v60 = 0;
              }

              v97 = v60;
            }

            else
            {
              v97 = 0;
            }

            if (*(v17 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A560), (v65 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v64, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v66 = v105.n128_u64[0];
              }

              else
              {
                v66 = 0;
              }
            }

            else
            {
              v66 = 0;
            }

            if (*(v17 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(0x756C427475706E69, 0xEF7365756C615665), (v68 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v67, &v112);
              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v69 = v105.n128_u64[0];
              }

              else
              {
                v69 = 0;
              }
            }

            else
            {
              v69 = 0;
            }

            if (*(v17 + 16) && (v70 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A580), (v71 & 1) != 0))
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v70, v102);

              _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
              if (swift_dynamicCast())
              {
                v72 = v112.n128_u64[0];
              }

              else
              {
                v72 = 0;
              }
            }

            else
            {

              v72 = 0;
            }

            v98 = specialized SIMD4<>.init(_:)(v97);
            v96 = specialized SIMD4<>.init(_:)(v66);
            v94 = specialized SIMD4<>.init(_:)(v69);
            v73 = specialized SIMD4<>.init(_:)(v72);
            v112 = v98;
            *v113 = v96;
            *&v113[16] = v94;
            v114 = v73;
            _s7SwiftUI14GraphicsFilterOWOi16_(&v112);
            goto LABEL_26;
          }

          if (*&v20 == __PAIR128__(0xEB00000000786972, 0x74614D726F6C6F63))
          {
          }

          else
          {
            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v87 & 1) == 0)
            {
LABEL_14:

              goto LABEL_15;
            }
          }

          if (*(v17 + 16))
          {
            v88 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A4B0);
            if (v89)
            {
              outlined init with copy of Any(*(v17 + 56) + 32 * v88, v117);

              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSValue);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_15;
              }

              *(v102 + 4) = 0uLL;
              *(&v102[1] + 4) = 0x3F80000000000000;
              LODWORD(v102[0]) = 1065353216;
              memset(&v102[1] + 12, 0, 20);
              LODWORD(v102[3]) = 1065353216;
              memset(&v102[3] + 4, 0, 20);
              *(&v102[4] + 1) = 1065353216;
              [v101 getValue_];
              if (_ColorMatrix.isIdentity.getter())
              {

                goto LABEL_15;
              }

              *&v113[16] = v102[2];
              v114 = v102[3];
              v115 = v102[4];
              v112 = v102[0];
              *v113 = v102[1];
              v116[0] = 0;
              _s7SwiftUI14GraphicsFilterOWOi5_(&v112);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
              }

              v77 = *(v16 + 2);
              v90 = *(v16 + 3);
              if (v77 >= v90 >> 1)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v77 + 1, 1, v16);
              }

              v109 = v115;
              v110 = *v116;
              v111[0] = *&v116[16];
              *(v111 + 12) = *&v116[28];
              v107 = *&v113[16];
              v108 = v114;
              v78 = v112;
              v105 = v112;
              v106 = *v113;
              *(v16 + 2) = v77 + 1;
              goto LABEL_127;
            }
          }

          goto LABEL_14;
        }

        if ((v2 & 0x20) == 0)
        {
          _s7SwiftUI14GraphicsFilterOWOi22_(&v112);
          goto LABEL_26;
        }
      }

LABEL_15:
      v15 += 8;
      if (!--v14)
      {
        goto LABEL_148;
      }
    }
  }

LABEL_147:
  v16 = MEMORY[0x1E69E7CC0];
LABEL_148:

  if (!*(v16 + 2))
  {
    goto LABEL_11;
  }

  v91 = one-time initialization token for normal;

  if (v91 != -1)
  {
    swift_once();
  }

  v92 = static GraphicsBlendMode.normal;
  v93 = byte_1ED52F818;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);

  _sypSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>, &type metadata for Material.Layer, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDA6EB0;
  *(result + 32) = v100;
  *(result + 40) = xmmword_18DDCA9F0;
  *(result + 56) = v16;
  *(result + 64) = 1;
  *(result + 68) = 1065353216;
  *(result + 72) = v92;
  *(result + 80) = v93;
  return result;
}

__n128 specialized SIMD4<>.init(_:)(uint64_t a1)
{
  result.n128_u64[0] = 0;
  if (a1)
  {
    if (*(a1 + 16) == 4)
    {
      v2 = *(a1 + 32);
      v3 = *(a1 + 48);

      result.n128_u64[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v3).u64[0];
    }

    else
    {

      return xmmword_18DDBDEB0;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v7);
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0xFFFFFFFF000000FFLL, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a2;
    v8 = HIDWORD(a2);
    v9 = ~v4;
    do
    {
      v10 = *(v3 + 48) + 16 * v5;
      v11 = *(v10 + 12);
      v12 = *(v10 + 8);
      v17 = *v10;
      v18 = v12;
      v15 = a1;
      v16 = v6;
      outlined copy of Material.ID(v17, v12);
      outlined copy of Material.ID(a1, v6);
      v13 = specialized static Material.ID.== infix(_:_:)(&v17, &v15);
      outlined consume of Material.ID(v15, v16);
      outlined consume of Material.ID(v17, v18);
      if ((v13 & (v11 == v8)) == 1)
      {
        break;
      }

      v5 = (v5 + 1) & v9;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [Material.Layer], &type metadata for Material.Layer, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial()
{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial and conformance Material.ResolvedMaterial);
  }

  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15ForegroundStyleVGG_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a2, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v10 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v12 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = CurrentAttribute;
    }

    *(v10 + 188) = v13;
    *(v10 + 192) = v12;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a4, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v10 = swift_allocObject();
  }

  v14 = *(a1 + 144);
  *(v10 + 144) = *(a1 + 128);
  *(v10 + 160) = v14;
  *(v10 + 169) = *(a1 + 153);
  v15 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v15;
  v16 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v16;
  v17 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v17;
  result = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = result;
  *a5 = v10;
  a5[1] = 0;
  return result;
}