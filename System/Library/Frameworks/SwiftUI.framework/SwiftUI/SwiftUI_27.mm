uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018SearchFocusContextD033_01524358DA8FEB8BCC0A94C08F00494ALLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, v8, &lazy cache variable for type metadata for SearchFocusContext?);
  outlined init with copy of AnyAccessibilityValue?(a2, v10, &lazy cache variable for type metadata for SearchFocusContext?);
  if (!v9)
  {
    if (!v11)
    {
      outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for SearchFocusContext?);
      v3 = 1;
      return v3 & 1;
    }

LABEL_8:
    outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(v8, &lazy cache variable for type metadata for (SearchFocusContext?, SearchFocusContext?), &lazy cache variable for type metadata for SearchFocusContext?);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of AnyAccessibilityValue?(v8, &v6, &lazy cache variable for type metadata for SearchFocusContext?);
  if (!v11)
  {
    outlined destroy of SearchFocusContext(&v6);
    goto LABEL_8;
  }

  v5[0] = v10[0];
  v5[1] = v10[1];
  v5[2] = v11;
  v5[3] = v12;
  v5[4] = v13;
  if (v6 == *&v10[0])
  {
    v3 = MEMORY[0x18D00E7E0](&v7, v5 + 8);
  }

  else
  {
    v3 = 0;
  }

  outlined destroy of SearchFocusContext(v5);
  outlined destroy of SearchFocusContext(&v6);
  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for SearchFocusContext?);
  return v3 & 1;
}

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x18D00E9C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x18D00E9C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ToolbarStorage.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID()
{
  result = lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.ID and conformance ToolbarStorage.ID);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarStorage.Entry.ID()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  outlined init with copy of ToolbarItemPlacement.Role?(v0 + 40, &v4, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _s7SwiftUI7BindingVySiGMaTm_0);
  if (v5[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = v4;
    v3[0] = *v5;
    *(v3 + 9) = *&v5[9];
    Hasher._combine(_:)(1u);
    ToolbarItemPlacement.Role.hash(into:)();
    outlined destroy of ToolbarItemPlacement.Role(&v2);
  }

  return Hasher._finalize()();
}

uint64_t initializeWithCopy for ToolbarStorage.Entry.ID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
    (**(v5 - 8))(a1 + 40, a2 + 40);
    *(a1 + 80) = 1;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
  }

  return a1;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v74 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v68[-v12];
  v13 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v89);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for ToolbarStorage.Entry(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v68[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v68[-v24];
  v70 = a2;
  if (a3 == a2)
  {
    return;
  }

  v26 = *a4;
  v27 = *(v23 + 72);
  v71 = 0x800000018CD4EDC0;
  v28 = v26 + v27 * (a3 - 1);
  v85 = -v27;
  v29 = a1 - a3;
  v86 = v26;
  v69 = v27;
  v30 = v26 + v27 * a3;
  v76 = "swiftui-fixed-spacer";
  v75 = "@UIActivityViewController8@?0";
LABEL_6:
  v81 = a3;
  v78 = v30;
  v79 = v29;
  v80 = v28;
  while (1)
  {
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v30, v25, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v28, v90, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v25, v18, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v39 = v18[1];
      v96 = *v18;
      v40 = v18[2];
      v41 = v18[3];
      v97 = v39;
      v98 = v40;
      v42 = v18[4];
      v99 = v41;
      v100 = v42;
      if (v96)
      {
        v43 = 0xD000000000000017;
      }

      else
      {
        v43 = 0xD000000000000014;
      }

      v44 = v76;
      if (!v96)
      {
        v44 = v75;
      }

      v91 = v43;
      v92 = v44 | 0x8000000000000000;
      AnyHashable.init<A>(_:)();
      outlined init with copy of ToolbarItemPlacement.Role(&v96 + 8, v103);
      outlined destroy of ToolbarStorage.SpacerItem(&v96);
      v101[0] = v93;
      v101[1] = v94;
      v102 = v95;
      if (!*(a5 + 16))
      {
LABEL_4:
        outlined destroy of ToolbarStorage.Entry.ID(v101);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v90, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v25, type metadata accessor for ToolbarStorage.Entry);
LABEL_5:
        a3 = v81 + 1;
        v28 = v80 + v69;
        v29 = v79 - 1;
        v30 = v78 + v69;
        if (v81 + 1 == v70)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        *&v96 = 0x2D69757466697773;
        v32 = 0xEE00686372616573;
      }

      else
      {
        *&v96 = 0xD000000000000010;
        v32 = v71;
      }

      *(&v96 + 1) = v32;
      AnyHashable.init<A>(_:)();
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      v105 = -1;
      if (!*(a5 + 16))
      {
        goto LABEL_4;
      }
    }

LABEL_34:
    v60 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
    if ((v61 & 1) == 0)
    {
      goto LABEL_4;
    }

    v62 = *(*(a5 + 56) + 8 * v60);
    outlined destroy of ToolbarStorage.Entry.ID(v101);
    ToolbarStorage.Entry.id.getter(v101);
    if (!*(a5 + 16))
    {
      goto LABEL_4;
    }

    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v101);
    if ((v64 & 1) == 0)
    {
      goto LABEL_4;
    }

    v65 = *(*(a5 + 56) + 8 * v63);
    outlined destroy of ToolbarStorage.Entry.ID(v101);
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v90, type metadata accessor for ToolbarStorage.Entry);
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v25, type metadata accessor for ToolbarStorage.Entry);
    if (v62 < v65)
    {
      if (!v86)
      {
        goto LABEL_43;
      }

      v66 = v87;
      outlined init with take of ToolbarStorage.Item(v30, v87, type metadata accessor for ToolbarStorage.Entry);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of ToolbarStorage.Item(v66, v28, type metadata accessor for ToolbarStorage.Entry);
      v28 += v85;
      v30 += v85;
      if (!__CFADD__(v29++, 1))
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v33 = v77;
    outlined init with take of ToolbarStorage.Item(v18, v77, type metadata accessor for ToolbarStorage.Item);
    v34 = *(v33 + 1);
    v35 = *(v33 + 4);
    v36 = *(v33 + 5);
    *&v96 = *v33;
    *(&v96 + 1) = v34;
    v97 = *(v33 + 1);
    *&v98 = v35;
    *(&v98 + 1) = v36;
    lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

    AnyHashable.init<A>(_:)();
    outlined init with copy of ToolbarItemPlacement.Role((v33 + 112), v103);
    v37 = type metadata accessor for ToolbarStorage.Item;
    v38 = v33;
    goto LABEL_33;
  }

  v45 = v84;
  outlined init with take of ToolbarStorage.Item(v18, v84, type metadata accessor for ToolbarStorage.GroupItem);
  v46 = *(v45 + 19);
  if (*(v46 + 16))
  {
    v47 = v83;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v46 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v83, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v48 = v72;
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v47, v72, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v48[3];
      v98 = v48[2];
      v99 = v49;
      v100 = v48[4];
      v50 = *v48;
      v97 = v48[1];
      v96 = v50;
      _ViewList_ID.init(implicitID:)();
      v51 = *(&v93 + 1);
      v52 = v93;
      if (v96)
      {
        v53 = 0xD000000000000017;
      }

      else
      {
        v53 = 0xD000000000000014;
      }

      v54 = v76;
      if (!v96)
      {
        v54 = v75;
      }

      v55 = v54 | 0x8000000000000000;
      outlined destroy of ToolbarStorage.SpacerItem(&v96);
      v82 = 0uLL;
    }

    else
    {
      v56 = v77;
      outlined init with take of ToolbarStorage.Item(v48, v77, type metadata accessor for ToolbarStorage.Item);
      v52 = *v56;
      v51 = v56[1];
      *&v82 = v56[2];
      v57 = v56[4];
      *(&v82 + 1) = v56[3];
      v55 = v56[5];

      v58 = v56;
      v53 = v57;
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v58, type metadata accessor for ToolbarStorage.Item);
    }

    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v83, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    *&v96 = v52;
    *(&v96 + 1) = v51;
    v97 = v82;
    *&v98 = v53;
    *(&v98 + 1) = v55;
    lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();

    AnyHashable.init<A>(_:)();

    v59 = v84;
    outlined init with copy of ToolbarItemPlacement.Role((v84 + 80), v103);
    v37 = type metadata accessor for ToolbarStorage.GroupItem;
    v38 = v59;
LABEL_33:
    outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v38, v37);
    if (!*(a5 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t UIKitToolbarStrategy.makeContent(entry:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v14, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = v14[1];
      v22[0] = *v14;
      v22[1] = v17;
      v18 = v14[3];
      v22[2] = v14[2];
      v22[3] = v18;
      v22[4] = v14[4];
      if (LOBYTE(v22[0]))
      {
        v16 = 0xD000000000000017;
      }

      else
      {
        v16 = 0xD000000000000014;
      }

      outlined destroy of ToolbarStorage.SpacerItem(v22);
      break;
    case 1:
      outlined init with take of ToolbarStorage.NavigationProperties(v14, v4, type metadata accessor for ToolbarStorage.GroupItem);
      if (v4[1])
      {
        v16 = *v4;
      }

      else
      {
        UUID.init()();
        v16 = UUID.uuidString.getter();
        (*(v6 + 8))(v8, v5);
      }

      v19 = type metadata accessor for ToolbarStorage.GroupItem;
      v20 = v4;
      goto LABEL_17;
    case 0:
      outlined init with take of ToolbarStorage.NavigationProperties(v14, v11, type metadata accessor for ToolbarStorage.Item);
      if (*(v11 + 5))
      {
        v16 = *(v11 + 4);
      }

      else
      {
        UUID.init()();
        v16 = UUID.uuidString.getter();
        (*(v6 + 8))(v8, v5);
      }

      v19 = type metadata accessor for ToolbarStorage.Item;
      v20 = v11;
LABEL_17:
      outlined destroy of ToolbarStorage.NavigationProperties(v20, v19);
      return v16;
    default:
      outlined destroy of ToolbarStorage.NavigationProperties(v14, type metadata accessor for ToolbarStorage.Entry.Kind);
      return 0;
  }

  return v16;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>();
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v28, v41, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v28, v41, type metadata accessor for ToolbarStorage.Entry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of HashableCommandGroupPlacementWrapper(v41, *(v9 + 56) + v27 * v17, type metadata accessor for ToolbarStorage.Entry);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  type metadata accessor for _DictionaryStorage<UUID, (_:)>();
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>, outlined init with take of Any);
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Anchor<CGRect?>(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v64 - v9;
  v10 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v75 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v2;
  type metadata accessor for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>();
  v74 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v69 = (v6 + 48);
    v70 = v5;
    v66 = (v6 + 32);
    v67 = v12;
    v64 = v2;
    v65 = (v6 + 8);
    v21 = result + 64;
    v22 = v12;
    v23 = v75;
    while (v19)
    {
      v35 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
LABEL_15:
      v39 = v35 | (v15 << 6);
      v76 = v36;
      v40 = *(v71 + 72);
      v41 = *(v22 + 48) + v40 * v39;
      if (v74)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v41, v23, type metadata accessor for DisplayList.HostedViewState.Key);
        v42 = *(v22 + 56) + 184 * v39;
        v43 = *(v42 + 128);
        v44 = *(v42 + 144);
        v45 = *(v42 + 160);
        v88 = *(v42 + 176);
        v86 = v44;
        v87 = v45;
        v85 = v43;
        v46 = *(v42 + 64);
        v47 = *(v42 + 80);
        v48 = *(v42 + 112);
        v83 = *(v42 + 96);
        v84 = v48;
        v81 = v46;
        v82 = v47;
        v50 = *v42;
        v49 = *(v42 + 16);
        v51 = *(v42 + 48);
        v79 = *(v42 + 32);
        v80 = v51;
        v77 = v50;
        v78 = v49;
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v41, v23, type metadata accessor for DisplayList.HostedViewState.Key);
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v22 + 56) + 184 * v39, &v77);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v23);
      Hasher._combine(_:)(v23[1]);
      v52 = v73;
      _s10Foundation4UUIDVSgWOcTm_0(v23 + *(v72 + 24), v73, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v53 = v70;
      if ((*v69)(v52, 1, v70) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v54 = v68;
        (*v66)(v68, v52, v53);
        Hasher._combine(_:)(1u);
        _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        dispatch thunk of Hashable.hash(into:)();
        v55 = v54;
        v22 = v67;
        (*v65)(v55, v53);
      }

      result = Hasher._finalize()();
      v56 = -1 << *(v14 + 32);
      v57 = result & ~v56;
      v58 = v57 >> 6;
      v23 = v75;
      if (((-1 << v57) & ~*(v21 + 8 * (v57 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *(v21 + 8 * v58);
          if (v62 != -1)
          {
            v24 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v57) & ~*(v21 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = outlined init with take of HashableCommandGroupPlacementWrapper(v23, *(v14 + 48) + v40 * v24, type metadata accessor for DisplayList.HostedViewState.Key);
      v25 = *(v14 + 56) + 184 * v24;
      v26 = v85;
      v27 = v86;
      v28 = v87;
      *(v25 + 176) = v88;
      *(v25 + 144) = v27;
      *(v25 + 160) = v28;
      *(v25 + 128) = v26;
      v29 = v81;
      v30 = v82;
      v31 = v84;
      *(v25 + 96) = v83;
      *(v25 + 112) = v31;
      *(v25 + 64) = v29;
      *(v25 + 80) = v30;
      v32 = v77;
      v33 = v78;
      v34 = v80;
      *(v25 + 32) = v79;
      *(v25 + 48) = v34;
      *v25 = v32;
      *(v25 + 16) = v33;
      ++*(v14 + 16);
      v19 = v76;
    }

    v37 = v15;
    while (1)
    {
      v15 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v20)
      {
        break;
      }

      v38 = v16[v15];
      ++v37;
      if (v38)
      {
        v35 = __clz(__rbit64(v38));
        v36 = (v38 - 1) & v38;
        goto LABEL_15;
      }
    }

    if ((v74 & 1) == 0)
    {

      v3 = v64;
      goto LABEL_38;
    }

    v63 = 1 << *(v22 + 32);
    v3 = v64;
    if (v63 >= 64)
    {
      bzero(v16, ((v63 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v63;
    }

    *(v67 + 16) = 0;
  }

LABEL_38:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for ToolbarContentDescription(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>();
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v24, v37, type metadata accessor for ToolbarContentDescription);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v24, v37, type metadata accessor for ToolbarContentDescription);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = outlined init with take of HashableCommandGroupPlacementWrapper(v37, *(v9 + 56) + v23 * v17, type metadata accessor for ToolbarContentDescription);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>();
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v24, v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v37 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v24, v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v37 = *(*(v8 + 56) + 16 * v22);
      }

      Hasher.init(_seed:)();
      type metadata accessor for CommandGroupPlacement(0);
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = outlined init with take of HashableCommandGroupPlacementWrapper(v7, *(v10 + 48) + v23 * v18, type metadata accessor for HashableCommandGroupPlacementWrapper);
      *(*(v10 + 56) + 16 * v18) = v37;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v8 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for CommandOperation();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<UIMenuElement, CommandOperation>();
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v25, v7, type metadata accessor for CommandOperation);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v25, v7, type metadata accessor for CommandOperation);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = outlined init with take of HashableCommandGroupPlacementWrapper(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CommandOperation);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  type metadata accessor for _DictionaryStorage<UUID, PlatformItemList>();
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceDataSourceItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>();
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

{
  v3 = v2;
  v52 = type metadata accessor for IntelligenceAppIntentsPayload();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceDataSourceItem();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>();
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>, outlined init with take of Sendable);
}

{
  v3 = v2;
  v40 = type metadata accessor for UTType();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<NSFileWrapper, UTType>();
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t initializeWithCopy for BarItemView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);

  v7 = v6;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

void type metadata accessor for UIKitBarItemHost<BarItemView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
    v7 = a3(a1, &type metadata for BarItemView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BarItemViewGraph and conformance BarItemViewGraph()
{
  result = lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph;
  if (!lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemViewGraph and conformance BarItemViewGraph);
  }

  return result;
}

void type metadata completion function for UIKitBarButtonItem()
{
  type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in ViewRendererHost.platformItemList.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = PlatformItemListViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PlatformItemList.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PlatformItemList.Key.defaultValue;
}

uint64_t MergePlatformItemsView.Transform.list.getter(uint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t PlatformItemListImageRepresentable.PlatformRepresentation.value.getter()
{
  v0 = type metadata accessor for PlatformItemList.Item();
  v1 = (v0 - 8);
  v43 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v5 = Value[3];
  v7 = *Value;
  v6 = Value[1];
  v64 = Value[2];
  v65 = v5;
  v62 = v7;
  v63 = v6;
  v8 = Value[6];
  v10 = Value[4];
  v9 = Value[5];
  v69 = Value[7];
  v68 = v8;
  v66 = v10;
  v67 = v9;
  v12 = Value[9];
  v11 = Value[10];
  v13 = Value[8];
  *(v72 + 11) = *(Value + 171);
  v72[0] = v11;
  v70 = v13;
  v71 = v12;
  memset(v61, 0, sizeof(v61));
  outlined init with copy of Image.Resolved(&v62, v59);
  v14 = *(AGGraphGetValue() + 192);

  v15 = *(AGGraphGetValue() + 200);
  v52 = v70;
  v53 = v71;
  v54[0] = v72[0];
  *(v54 + 11) = *(v72 + 11);
  v48 = v66;
  v49 = v67;
  v50 = v68;
  v51 = v69;
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v47 = v65;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v44, v16, v17, v18);
  v3[32] = 0;
  *(v3 + 3) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 5) = -1;
  v3[56] = 1;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v55);
  v19 = v55[9];
  *(v3 + 12) = v55[8];
  *(v3 + 13) = v19;
  *(v3 + 14) = v56[0];
  *(v3 + 235) = *(v56 + 11);
  v20 = v55[5];
  *(v3 + 8) = v55[4];
  *(v3 + 9) = v20;
  v21 = v55[7];
  *(v3 + 10) = v55[6];
  *(v3 + 11) = v21;
  v22 = v55[1];
  *(v3 + 4) = v55[0];
  *(v3 + 5) = v22;
  v23 = v55[3];
  *(v3 + 6) = v55[2];
  *(v3 + 7) = v23;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 42) = 0x3FFFFFFFCLL;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 51) = 0;
  *(v3 + 52) = 1;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  v3[472] = 0;
  *(v3 + 60) = 0;
  *(v3 + 488) = 0u;
  v3[504] = 0;
  *(v3 + 32) = 0u;
  v3[528] = 4;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 107) = 0;
  *(v3 + 108) = 1;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 476) = 1283;
  v3[954] = 3;
  v24 = v1[30];
  v25 = type metadata accessor for CommandOperation();
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  v3[v1[31]] = 0;
  v3[v1[32]] = 0;
  v3[v1[33]] = 2;
  v3[v1[34]] = 0;
  v3[v1[35]] = 0;
  v26 = v1[36];
  *v3 = 0;
  v27 = *(v3 + 13);
  v59[8] = *(v3 + 12);
  v59[9] = v27;
  v60[0] = *(v3 + 14);
  *(v60 + 11) = *(v3 + 235);
  v28 = *(v3 + 9);
  v59[4] = *(v3 + 8);
  v59[5] = v28;
  v29 = *(v3 + 11);
  v59[6] = *(v3 + 10);
  v59[7] = v29;
  v30 = *(v3 + 5);
  v59[0] = *(v3 + 4);
  v59[1] = v30;
  v31 = *(v3 + 7);
  v59[2] = *(v3 + 6);
  v59[3] = v31;

  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v59, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v32 = v53;
  *(v3 + 12) = v52;
  *(v3 + 13) = v32;
  *(v3 + 14) = v54[0];
  *(v3 + 235) = *(v54 + 11);
  v33 = v49;
  *(v3 + 8) = v48;
  *(v3 + 9) = v33;
  v34 = v51;
  *(v3 + 10) = v50;
  *(v3 + 11) = v34;
  v35 = v45;
  *(v3 + 4) = v44;
  *(v3 + 5) = v35;
  v36 = v47;
  *(v3 + 6) = v46;
  *(v3 + 7) = v36;
  v37 = *(v3 + 456);
  v57[2] = *(v3 + 440);
  v57[3] = v37;
  v58 = v3[472];
  v38 = *(v3 + 424);
  v57[0] = *(v3 + 408);
  v57[1] = v38;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v57, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v3 + 408) = xmmword_18CD633F0;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  v3[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v61, (v3 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v3[v26] = v14;
  *(v3 + 6) = v15;
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v39 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v3, v40 + v39);
  return v40;
}

double _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(uint64_t a1)
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
  *(a1 + 128) = 0x1FFFFFFFCLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 183) = 0;
  return result;
}

uint64_t outlined destroy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Image.Resolved?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SelectionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t closure #1 in PlatformItemListNamedImageRepresentable.NamedResolvedRule.value.getter(void *a1)
{
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v9 = *(Value + 16);
  __dst = *(Value + 8);
  v40 = v9;
  v10 = type metadata accessor for Text.Style();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);

  MEMORY[0x18D008220](v11);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  AGGraphGetValue();

  Image.resolveNamedImage(in:)();

  v38 = __dst;
  v37 = v40;
  v36 = v41;
  v35 = v42;
  v34 = v43;
  v33 = v44;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = a1;
    v30 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v12[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      if (v12[2])
      {
LABEL_4:
        v15 = 0;
        v16 = *(type metadata accessor for PlatformItemList.Item() - 8);
        v17 = *(v16 + 72);
        v18 = v13 - 1;
        v19 = (v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 296);
        v32 = v18;
        do
        {
          memmove(&__dst, v19 - 29, 0xBBuLL);
          if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&__dst) != 1)
          {
            v21 = *(v19 - 5);
            v20 = *(v19 - 4);
            v22 = *(v19 - 3);
            v23 = v38;
            v24 = v37;
            *(v19 - 5) = v38;
            *(v19 - 4) = v24;
            v25 = v36;
            v26 = v35;
            *(v19 - 3) = v36;
            *(v19 - 2) = v26;
            v27 = v33;
            *(v19 - 1) = v34;
            *v19 = v27;
            outlined copy of Image.NamedResolved?(v23, v24, v25);
            v28 = v20;
            v18 = v32;
            outlined consume of Image.NamedResolved?(v21, v28, v22);
          }

          if (v18 == v15)
          {
            goto LABEL_10;
          }

          ++v15;
          v19 = (v19 + v17);
        }

        while (v15 < v12[2]);
      }
    }

    __break(1u);
LABEL_10:
    *v31 = v12;
    v7 = v30;
  }

  _s7SwiftUI16CommandOperationVWOhTm_0(v7, MEMORY[0x1E697FE88]);
  return outlined consume of Image.NamedResolved?(v38, v37, v36);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of CustomHoverEffectModifier<HoverEffect>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(0, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CustomHoverEffectModifier<HoverEffect>(uint64_t a1)
{
  type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(0, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for automatic()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for CustomHoverEffectModifier<HoverEffect>(0, &lazy cache variable for type metadata for _InternalHoverEffectBox<AutomaticHoverEffect>, lazy protocol witness table accessor for type AutomaticHoverEffect and conformance AutomaticHoverEffect, &type metadata for AutomaticHoverEffect, type metadata accessor for _InternalHoverEffectBox);
  result = swift_allocObject();
  *(result + 16) = KeyPath;
  *(result + 24) = 0;
  static HoverEffect.automatic = result;
  return result;
}

{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Automatic>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic, &type metadata for AccessibilityChildBehavior.Automatic, type metadata accessor for AccessibilityChildBehaviorBox);
  result = swift_allocObject();
  static AccessibilityChildBehavior.automatic = result;
  return result;
}

uint64_t outlined assign with take of ActionSheet.Presentation?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss11AnyHashableVSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized static ToolbarItemPlacement.Role.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ToolbarItemPlacement.Role(a1, &v11);
  outlined init with copy of ToolbarItemPlacement.Role(a2, v17);
  if (!v16)
  {
    outlined init with copy of ToolbarItemPlacement.Role(&v11, v10);
    if (!v18)
    {
      v3 = v10[0] == v17[0];
      goto LABEL_7;
    }

    goto LABEL_172;
  }

  if (v16 != 1)
  {
    if (!(v14 | v15 | v11 | v13 | v12))
    {
      if (v18 != 2)
      {
        goto LABEL_172;
      }

      v5 = vorrq_s8(*&v17[8], *&v17[24]);
      if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v17)
      {
        goto LABEL_172;
      }

      goto LABEL_171;
    }

    v4 = v14 | v15 | v13 | v12;
    if (v11 != 1 || v4)
    {
      if (v11 != 2 || v4)
      {
        if (v11 != 3 || v4)
        {
          if (v11 != 4 || v4)
          {
            if (v11 != 5 || v4)
            {
              if (v11 != 6 || v4)
              {
                if (v11 != 7 || v4)
                {
                  if (v11 != 8 || v4)
                  {
                    if (v11 != 9 || v4)
                    {
                      if (v11 != 10 || v4)
                      {
                        if (v11 != 11 || v4)
                        {
                          if (v11 != 12 || v4)
                          {
                            if (v11 != 13 || v4)
                            {
                              if (v11 != 14 || v4)
                              {
                                if (v11 != 15 || v4)
                                {
                                  if (v11 != 16 || v4)
                                  {
                                    if (v11 != 17 || v4)
                                    {
                                      if (v11 != 18 || v4)
                                      {
                                        if (v11 != 19 || v4)
                                        {
                                          if (v11 != 20 || v4)
                                          {
                                            if (v11 != 21 || v4)
                                            {
                                              if (v11 != 22 || v4)
                                              {
                                                if (v11 != 23 || v4)
                                                {
                                                  if (v11 != 24 || v4)
                                                  {
                                                    if (v11 != 25 || v4)
                                                    {
                                                      if (v11 != 26 || v4)
                                                      {
                                                        if (v11 != 27 || v4)
                                                        {
                                                          if (v11 != 28 || v4)
                                                          {
                                                            if (v11 != 29 || v4)
                                                            {
                                                              if (v11 != 30 || v4)
                                                              {
                                                                if (v11 != 31 || v4)
                                                                {
                                                                  if (v18 != 2 || *v17 != 32)
                                                                  {
                                                                    goto LABEL_172;
                                                                  }
                                                                }

                                                                else if (v18 != 2 || *v17 != 31)
                                                                {
                                                                  goto LABEL_172;
                                                                }
                                                              }

                                                              else if (v18 != 2 || *v17 != 30)
                                                              {
                                                                goto LABEL_172;
                                                              }
                                                            }

                                                            else if (v18 != 2 || *v17 != 29)
                                                            {
                                                              goto LABEL_172;
                                                            }
                                                          }

                                                          else if (v18 != 2 || *v17 != 28)
                                                          {
                                                            goto LABEL_172;
                                                          }
                                                        }

                                                        else if (v18 != 2 || *v17 != 27)
                                                        {
                                                          goto LABEL_172;
                                                        }
                                                      }

                                                      else if (v18 != 2 || *v17 != 26)
                                                      {
                                                        goto LABEL_172;
                                                      }
                                                    }

                                                    else if (v18 != 2 || *v17 != 25)
                                                    {
                                                      goto LABEL_172;
                                                    }
                                                  }

                                                  else if (v18 != 2 || *v17 != 24)
                                                  {
                                                    goto LABEL_172;
                                                  }
                                                }

                                                else if (v18 != 2 || *v17 != 23)
                                                {
                                                  goto LABEL_172;
                                                }
                                              }

                                              else if (v18 != 2 || *v17 != 22)
                                              {
                                                goto LABEL_172;
                                              }
                                            }

                                            else if (v18 != 2 || *v17 != 21)
                                            {
                                              goto LABEL_172;
                                            }
                                          }

                                          else if (v18 != 2 || *v17 != 20)
                                          {
                                            goto LABEL_172;
                                          }
                                        }

                                        else if (v18 != 2 || *v17 != 19)
                                        {
                                          goto LABEL_172;
                                        }
                                      }

                                      else if (v18 != 2 || *v17 != 18)
                                      {
                                        goto LABEL_172;
                                      }
                                    }

                                    else if (v18 != 2 || *v17 != 17)
                                    {
                                      goto LABEL_172;
                                    }
                                  }

                                  else if (v18 != 2 || *v17 != 16)
                                  {
                                    goto LABEL_172;
                                  }
                                }

                                else if (v18 != 2 || *v17 != 15)
                                {
                                  goto LABEL_172;
                                }
                              }

                              else if (v18 != 2 || *v17 != 14)
                              {
                                goto LABEL_172;
                              }
                            }

                            else if (v18 != 2 || *v17 != 13)
                            {
                              goto LABEL_172;
                            }
                          }

                          else if (v18 != 2 || *v17 != 12)
                          {
                            goto LABEL_172;
                          }
                        }

                        else if (v18 != 2 || *v17 != 11)
                        {
                          goto LABEL_172;
                        }
                      }

                      else if (v18 != 2 || *v17 != 10)
                      {
                        goto LABEL_172;
                      }
                    }

                    else if (v18 != 2 || *v17 != 9)
                    {
                      goto LABEL_172;
                    }
                  }

                  else if (v18 != 2 || *v17 != 8)
                  {
                    goto LABEL_172;
                  }
                }

                else if (v18 != 2 || *v17 != 7)
                {
                  goto LABEL_172;
                }
              }

              else if (v18 != 2 || *v17 != 6)
              {
                goto LABEL_172;
              }
            }

            else if (v18 != 2 || *v17 != 5)
            {
              goto LABEL_172;
            }
          }

          else if (v18 != 2 || *v17 != 4)
          {
            goto LABEL_172;
          }
        }

        else if (v18 != 2 || *v17 != 3)
        {
          goto LABEL_172;
        }
      }

      else if (v18 != 2 || *v17 != 2)
      {
        goto LABEL_172;
      }
    }

    else if (v18 != 2 || *v17 != 1)
    {
      goto LABEL_172;
    }

    v6 = vorrq_s8(*&v17[8], *&v17[24]);
    if (!*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
    {
LABEL_171:
      outlined destroy of ToolbarItemPlacement.Role(&v11);
      v3 = 1;
      return v3 & 1;
    }

LABEL_172:
    outlined destroy of (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)(&v11);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of ToolbarItemPlacement.Role(&v11, v10);
  if (v18 != 1)
  {
    outlined destroy of AnyHashable(v10);
    goto LABEL_172;
  }

  v8[0] = *v17;
  v8[1] = *&v17[16];
  v9 = *&v17[32];
  v3 = MEMORY[0x18D00E7E0](v10, v8);
  outlined destroy of AnyHashable(v8);
  outlined destroy of AnyHashable(v10);
LABEL_7:
  outlined destroy of ToolbarItemPlacement.Role(&v11);
  return v3 & 1;
}

uint64_t outlined destroy of (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)(uint64_t a1)
{
  type metadata accessor for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role)()
{
  if (!lazy cache variable for type metadata for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role, ToolbarItemPlacement.Role));
    }
  }
}

uint64_t outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(uint64_t a1)
{
  type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double storeEnumTagSinglePayload for ScrollView(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 64) = a2 - 1;
      *(v19 + 72) = 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void type metadata completion function for ToolbarViewListVisitor()
{
  _s7SwiftUI16CommandOperationVSgMaTm_3(319, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t closure #1 in PreferenceTransform.value.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    return specialized Array.append<A>(contentsOf:)(v2);
  }

  return result;
}

uint64_t AlertTransformModifier.Transform.updateValue()(uint64_t a1)
{
  v2 = v1;
  v28 = *MEMORY[0x1E69E9840];
  LODWORD(v22) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v4 = *(v1 + 6);
  v22 = *v1;
  *&v23 = *(v1 + 2);
  DWORD2(v23) = v4;
  AlertTransformModifier.Transform.transform.getter(v27);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  AGGraphGetValue();
  *&v18 = MEMORY[0x18D00B390]();
  *(&v18 + 1) = v6;
  hostingViewCoordinateSpace.getter();
  v26 = 1;
  v22 = v27[0];
  v23 = v27[1];
  v24 = v27[2];

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v25);
  v7 = *(v1 + 6);
  v22 = *v1;
  *&v23 = *(v1 + 2);
  DWORD2(v23) = v7;
  v8 = specialized AlertTransformModifier.Transform.modifier.getter();
  v10 = v9;
  v11 = *(v2 + 5);
  v12 = swift_allocObject();
  v13 = *(a1 + 24);
  *(v12 + 16) = *(a1 + 16);
  *(v12 + 24) = v13;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v12 + 48) = v11;
  *(v12 + 72) = v18;
  *(v12 + 56) = 0uLL;
  *&v22 = partial apply for specialized closure #1 in AlertTransformModifier.Transform.updateValue();
  *(&v22 + 1) = v12;
  v20 = a1;
  WitnessTable = swift_getWitnessTable();
  swift_retain_n();
  v25[0] = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v22, partial apply for closure #1 in StatefulRule.value.setter, v19, FunctionTypeMetadata, MEMORY[0x1E69E73E0], v14 + 8, MEMORY[0x1E69E7410], v16);
}

uint64_t sub_18BF29A10()
{

  return swift_deallocObject();
}

uint64_t AlertTransformModifier.Transform.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t getEnumTagSinglePayload for ToolbarItemGroup(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v10 = v7 + ((v6 + 41) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_7;
  }

  v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
  if (HIWORD(v13))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v13 <= 0xFF)
    {
      if (v13 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      return v8 + (v10 | v14) + 1;
    }

    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v15 = (a1 + v6 + 41) & ~v6;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v15);
  }

  v17 = *(v15 + v7);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

uint64_t outlined init with take of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _ConditionalContent<>.ToolbarProvider.attachOutputs(to:)()
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

uint64_t ToolbarItemGroup.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  View.defaultToolbarBarPocket()(a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t destroy for DefaultToolbarBarPocketModifier(uint64_t a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t outlined init with take of WeakBox<PreferenceBridge>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for WeakBox<PreferenceBridge>, MEMORY[0x1E697EA30], MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarViewListVisitor.visit(view:traits:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v87 = a1;
  v80 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ToolbarStorage.Item(0);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  *&v90[0] = *a2;
  v14 = *&v90[0];
  v15 = ViewTraitCollection.isSectioned.getter();
  *&v90[0] = v14;
  v16 = ViewTraitCollection.groupDepth.getter();
  *&v90[0] = v14;
  v17 = ViewTraitCollection.isEmptyView.getter();
  if (v16 || (v15 & 1) == 0)
  {
    *&v90[0] = v14;
    if (ViewTraitCollection.isSectionFooter.getter() & v17)
    {
      v21 = *(v3 + 96);
      *(v3 + *(type metadata accessor for ToolbarViewListVisitor(0) + 88)) = v15 & 1;
      v22 = v3[13];
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }

      v24 = v21 | v15;
      goto LABEL_44;
    }

    if ((v15 & 1) == 0 && *(v3 + *(type metadata accessor for ToolbarViewListVisitor(0) + 88)) == 1)
    {
      ToolbarViewListVisitor.finalizeGroup()();
    }

LABEL_17:
    v29 = *(v87 + 56);
    v30 = *(v87 + 64);
    v76 = *v3;
    v86 = v3[13];
    v31 = type metadata accessor for ToolbarViewListVisitor(0);
    v32 = (v3 + v31[19]);
    v33 = v32[1];
    v75 = *v32;
    *&v90[0] = v14;
    v77 = v33;

    v84 = v30;

    v34 = ViewTraitCollection.isSectionHeader.getter();
    v78 = v15;
    v67 = v5;
    if (v34)
    {
      v74 = 1;
    }

    else
    {
      *&v89[0] = v14;
      v74 = ViewTraitCollection.isSectionFooter.getter();
    }

    *&v90[0] = v14;
    LOBYTE(v88[0]) = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (LOBYTE(v89[0]))
    {
      v35 = 3;
    }

    else
    {
      v35 = 5;
    }

    v36 = v31[20];
    v37 = v31[21];
    v79 = v31;
    v38 = (v3 + v36);
    v39 = v38[1];
    v73 = *v38;
    _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v3 + v37, v90, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
    outlined init with copy of ToolbarItemPlacement.Role((v3 + 1), v89);
    if (*(v3 + 49) == 5)
    {
      v40 = v35;
    }

    else
    {
      v40 = *(v3 + 49);
    }

    v41 = *(v3 + 50);
    v42 = v3[7];
    v71 = *(v3 + 64);
    v72 = v41;
    v43 = *(v3 + 65);
    v69 = *(v3 + 66);
    v70 = v43;
    v68 = v3[9];
    outlined init with copy of _ViewList_View(v87, (v10 + 184));
    v44 = v3[11];
    v45 = v85;
    _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0((v3 + 10), &v10[*(v85 + 72)], &lazy cache variable for type metadata for WeakBox<PreferenceBridge>, MEMORY[0x1E697EA30], MEMORY[0x1E6981A78], _s7SwiftUI16CommandOperationVSgMaTm_3);
    v46 = v45[17];
    v47 = type metadata accessor for PlatformItemList.Item();
    (*(*(v47 - 8) + 56))(&v10[v46], 1, 1, v47);
    *v10 = v29;
    v48 = v90[1];
    *(v10 + 4) = v90[0];
    *(v10 + 5) = v48;
    v49 = v89[0];
    v50 = v89[1];
    *(v10 + 6) = v90[2];
    *(v10 + 7) = v49;
    v51 = v76;
    v52 = v77;
    *(v10 + 1) = v84;
    *(v10 + 2) = v51;
    v53 = v75;
    *(v10 + 3) = v86;
    *(v10 + 4) = v53;
    v54 = v73;
    *(v10 + 5) = v52;
    *(v10 + 6) = v54;
    v87 = v39;
    *(v10 + 7) = v39;
    *(v10 + 8) = v50;
    *(v10 + 137) = *(&v89[1] + 9);
    v10[153] = v40;
    LOBYTE(v54) = v71;
    v10[154] = v72;
    *(v10 + 20) = v42;
    v10[168] = v54;
    LOBYTE(v54) = v69;
    v10[169] = v70;
    v10[170] = v54;
    *(v10 + 22) = v68;
    *(v10 + 35) = v44;
    v10[v45[19]] = v74 & 1;
    v10[v45[20]] = 0;
    v10[v45[21]] = 0;
    if (v40 == 3)
    {
      outlined init with copy of ToolbarItemPlacement.Role((v3 + 1), v90);
      *&v89[0] = 13;
      *(v89 + 8) = 0u;
      *(&v89[1] + 8) = 0u;
      BYTE8(v89[2]) = 2;

      v55 = v44;

      v56 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v90, v89);
      outlined destroy of ToolbarItemPlacement.Role(v89);
      outlined destroy of ToolbarItemPlacement.Role(v90);
      LOBYTE(v17) = v78;
      if (v56)
      {
LABEL_32:
        if (v3[14])
        {
          v13 = v82;
          outlined init with copy of ToolbarStorage.GroupItem(v10, v82, type metadata accessor for ToolbarStorage.Item);

          v21 = v3[14];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

        v61 = v81;
        outlined init with copy of ToolbarStorage.GroupItem(v10, v81, type metadata accessor for ToolbarStorage.Item);
        type metadata accessor for ToolbarStorage.Entry.Kind(0);
        swift_storeEnumTagMultiPayload();
        *(v61 + *(v80 + 20)) = 2;
        v62 = v79[23];
        v21 = *(v3 + v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        }

        v63 = v67;
        v13 = *(v21 + 16);
        v64 = *(v21 + 24);
        if (v13 >= v64 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v13 + 1, 1, v21);
        }

        _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);
        *(v21 + 16) = v13 + 1;
        outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v61, v21 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v13, type metadata accessor for ToolbarStorage.Entry);
        *(v3 + v62) = v21;
        goto LABEL_42;
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);

      v57 = *(v3 + 96);
      *(v3 + v79[22]) = v17 & 1;
      v23 = v86 + 1;
      if (!__OFADD__(v86, 1))
      {
LABEL_43:
        v24 = v57 | v17;
LABEL_44:
        v3[13] = v23;
        return v24 & 1;
      }

      __break(1u);
    }

    v58 = v44;

    LOBYTE(v17) = v78;
    goto LABEL_32;
  }

  ToolbarViewListVisitor.finalizeGroup()();

  v3[14] = MEMORY[0x1E69E7CC0];
  *&v89[0] = v14;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v90, v89, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  if (*(&v89[1] + 1))
  {
    v88[2] = v89[2];
    v88[3] = v89[3];
    v88[4] = v89[4];
    v88[5] = v89[5];
    v88[0] = v89[0];
    v88[1] = v89[1];
    outlined init with copy of _ViewList_View(v88, v13);
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    swift_storeEnumTagMultiPayload();
    v18 = v3[11];
    v19 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    *(v13 + *(v19 + 20)) = v18;
    v20 = v18;
    outlined destroy of _ViewList_View(v88);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  }

  else
  {
    v25 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  }

  outlined destroy of _ViewList_View?(v90, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  v21 = type metadata accessor for ToolbarViewListVisitor(0);
  outlined assign with take of ToolbarStorage.GroupItem.CollapsedContent?(v13, v3 + *(v21 + 72));
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + *(v21 + 88)) = 1;
  v26 = v3[13];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    while (1)
    {
      __break(1u);
LABEL_49:
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
LABEL_34:
      v60 = *(v21 + 16);
      v59 = *(v21 + 24);
      if (v60 >= v59 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v21);
      }

      _s7SwiftUI16CommandOperationVWOhTm_3(v10, type metadata accessor for ToolbarStorage.Item);
      *(v21 + 16) = v60 + 1;
      outlined init with take of (offset: Int, element: ToolbarStorage.Item)(v13, v21 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for ToolbarStorage.Item);
      v3[14] = v21;
LABEL_42:
      v57 = *(v3 + 96);
      *(v3 + v79[22]) = v17 & 1;
      v23 = v86 + 1;
      if (!__OFADD__(v86, 1))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    goto LABEL_43;
  }

  v3[13] = v28;
  v24 = 1;
  return v24 & 1;
}

uint64_t initializeWithCopy for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 88);

  if (v8)
  {
    v9 = *(a2 + 96);
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    (**(v8 - 8))(a1 + 64, a2 + 64, v8);
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v10 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = *(a2 + 96);
  }

  if (*(a2 + 152) == 1)
  {
    v11 = *(a2 + 136);
    *(a1 + 136) = v11;
    (**(v11 - 8))(a1 + 112, a2 + 112);
    *(a1 + 152) = 1;
  }

  else
  {
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 137) = *(a2 + 137);
  }

  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 208) = v13;
  v14 = v13;
  v15 = **(v13 - 8);

  v15(a1 + 184, a2 + 184, v14);
  v16 = *(a2 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v16;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  v17 = *(a2 + 272);
  v18 = *(a2 + 280);
  v136 = a3;
  v19 = a3[17];
  v137 = a2;
  v138 = (a1 + v19);
  v20 = a2 + v19;
  *(a1 + 272) = v17;
  *(a1 + 280) = v18;
  v135 = a1;
  v21 = type metadata accessor for PlatformItemList.Item();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);

  v24 = v17;
  v25 = v18;
  if (v23(v20, 1, v21))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v138, v20, *(*(v26 - 8) + 64));
    v27 = v135;
    v28 = a3;
    goto LABEL_64;
  }

  v133 = v22;
  v134 = v21;
  v29 = *v20;
  v30 = *(v20 + 8);
  v31 = v138;
  *v138 = *v20;
  v138[1] = v30;
  v32 = *(v20 + 24);
  v138[2] = *(v20 + 16);
  v138[3] = v32;
  *(v138 + 32) = *(v20 + 32);
  v33 = *(v20 + 48);
  v138[5] = *(v20 + 40);
  v138[6] = v33;
  *(v138 + 56) = *(v20 + 56);
  v34 = *(v20 + 192);
  v35 = v29;
  v36 = v30;

  if (v34 >> 1 != 4294967294)
  {
    v46 = *(v20 + 72);
    if (v46 == 255)
    {
      v138[8] = *(v20 + 64);
      *(v138 + 72) = *(v20 + 72);
    }

    else
    {
      v47 = *(v20 + 64);
      outlined copy of GraphicsImage.Contents(v47, *(v20 + 72));
      v138[8] = v47;
      *(v138 + 72) = v46;
      v34 = *(v20 + 192);
    }

    v138[10] = *(v20 + 80);
    *(v138 + 11) = *(v20 + 88);
    *(v138 + 104) = *(v20 + 104);
    *(v138 + 108) = *(v20 + 108);
    *(v138 + 121) = *(v20 + 121);
    *(v138 + 17) = *(v20 + 136);
    *(v138 + 19) = *(v20 + 152);
    *(v138 + 84) = *(v20 + 168);
    *(v138 + 170) = *(v20 + 170);
    *(v138 + 171) = *(v20 + 171);
    if (v34 >> 1 == 0xFFFFFFFF)
    {
      v48 = *(v20 + 192);
      *(v138 + 11) = *(v20 + 176);
      *(v138 + 12) = v48;
    }

    else
    {
      v49 = *(v20 + 176);
      v50 = *(v20 + 184);
      v51 = *(v20 + 200);
      outlined copy of AccessibilityImageLabel(v49, v50, v34);
      v138[22] = v49;
      v138[23] = v50;
      v138[24] = v34;
      v138[25] = v51;
      v31 = v138;
    }

    v52 = *(v20 + 216);
    v31[26] = *(v20 + 208);
    v31[27] = v52;
    *(v31 + 112) = *(v20 + 224);
    *(v31 + 57) = *(v20 + 228);
    *(v31 + 232) = *(v20 + 232);
    v53 = *(v20 + 240);
    v31[30] = v53;
    *(v31 + 124) = *(v20 + 248);
    *(v31 + 250) = *(v20 + 250);
    swift_unknownObjectRetain();

    v54 = v53;
    v42 = *(v20 + 264);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_21:
    v55 = *(v20 + 272);
    *(v31 + 16) = *(v20 + 256);
    *(v31 + 17) = v55;
    *(v31 + 18) = *(v20 + 288);
    goto LABEL_22;
  }

  v37 = *(v20 + 208);
  *(v138 + 12) = *(v20 + 192);
  *(v138 + 13) = v37;
  *(v138 + 14) = *(v20 + 224);
  *(v138 + 235) = *(v20 + 235);
  v38 = *(v20 + 144);
  *(v138 + 8) = *(v20 + 128);
  *(v138 + 9) = v38;
  v39 = *(v20 + 176);
  *(v138 + 10) = *(v20 + 160);
  *(v138 + 11) = v39;
  v40 = *(v20 + 80);
  *(v138 + 4) = *(v20 + 64);
  *(v138 + 5) = v40;
  v41 = *(v20 + 112);
  *(v138 + 6) = *(v20 + 96);
  *(v138 + 7) = v41;
  v42 = *(v20 + 264);
  if (!v42)
  {
    goto LABEL_21;
  }

LABEL_11:
  v31[32] = *(v20 + 256);
  v31[33] = v42;
  v43 = *(v20 + 272);

  if (v43 >= 2)
  {
    v44 = v43;
  }

  v31[34] = v43;
  *(v31 + 70) = *(v20 + 280);
  *(v31 + 284) = *(v20 + 284);
  *(v31 + 285) = *(v20 + 285);
  v45 = *(v20 + 296);
  v31[36] = *(v20 + 288);
  v31[37] = v45;

LABEL_22:
  v56 = *(v20 + 336);
  if (v56 >> 2 == 0xFFFFFFFF)
  {
    v57 = *(v20 + 384);
    *(v31 + 23) = *(v20 + 368);
    *(v31 + 24) = v57;
    v31[50] = *(v20 + 400);
    v58 = *(v20 + 320);
    *(v31 + 19) = *(v20 + 304);
    *(v31 + 20) = v58;
    v59 = *(v20 + 352);
    *(v31 + 21) = *(v20 + 336);
    *(v31 + 22) = v59;
  }

  else
  {
    v60 = *(v20 + 304);
    v61 = *(v20 + 312);
    v63 = *(v20 + 320);
    v62 = *(v20 + 328);
    v65 = *(v20 + 344);
    v64 = *(v20 + 352);
    v67 = *(v20 + 360);
    v66 = *(v20 + 368);
    v126 = *(v20 + 376);
    v127 = *(v20 + 384);
    v128 = *(v20 + 392);
    __dsta = *(v20 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v60, v61, v63, v62, v56, v65, v64, v67, v66, v126, v127, v128, __dsta);
    v138[38] = v60;
    v138[39] = v61;
    v138[40] = v63;
    v31 = v138;
    v138[41] = v62;
    v138[42] = v56;
    v138[43] = v65;
    v138[44] = v64;
    v138[45] = v67;
    v138[46] = v66;
    v138[47] = v126;
    v138[48] = v127;
    v138[49] = v128;
    v138[50] = __dsta;
  }

  v68 = *(v20 + 416);
  if (v68 == 1)
  {
    v69 = *(v20 + 456);
    *(v31 + 55) = *(v20 + 440);
    *(v31 + 57) = v69;
    *(v31 + 472) = *(v20 + 472);
    v70 = *(v20 + 424);
    *(v31 + 51) = *(v20 + 408);
    *(v31 + 53) = v70;
    goto LABEL_35;
  }

  *(v31 + 102) = *(v20 + 408);
  *(v31 + 412) = *(v20 + 412);
  if (v68)
  {
    v71 = *(v20 + 424);
    v31[52] = v68;
    v31[53] = v71;

    v72 = *(v20 + 432);
    if (v72)
    {
      goto LABEL_29;
    }

LABEL_32:
    *(v31 + 27) = *(v20 + 432);
    v74 = *(v20 + 448);
    if (v74)
    {
      goto LABEL_30;
    }

LABEL_33:
    *(v31 + 28) = *(v20 + 448);
    goto LABEL_34;
  }

  *(v31 + 26) = *(v20 + 416);
  v72 = *(v20 + 432);
  if (!v72)
  {
    goto LABEL_32;
  }

LABEL_29:
  v73 = *(v20 + 440);
  v31[54] = v72;
  v31[55] = v73;

  v74 = *(v20 + 448);
  if (!v74)
  {
    goto LABEL_33;
  }

LABEL_30:
  v75 = *(v20 + 456);
  v31[56] = v74;
  v31[57] = v75;

LABEL_34:
  v31[58] = *(v20 + 464);
  *(v31 + 472) = *(v20 + 472);
LABEL_35:
  v76 = *(v20 + 488);
  v31[60] = *(v20 + 480);
  v31[61] = v76;
  v31[62] = *(v20 + 496);
  *(v31 + 504) = *(v20 + 504);
  v77 = *(v20 + 512);

  if (v77)
  {
    v78 = *(v20 + 520);
    v31[64] = v77;
    v31[65] = v78;
  }

  else
  {
    *(v31 + 32) = *(v20 + 512);
  }

  *(v31 + 528) = *(v20 + 528);
  if (!*(v20 + 816))
  {
    memcpy(v31 + 67, (v20 + 536), 0x130uLL);
    goto LABEL_50;
  }

  v31[67] = *(v20 + 536);
  v31[68] = *(v20 + 544);
  *(v31 + 552) = *(v20 + 552);
  v31[70] = *(v20 + 560);
  *(v31 + 568) = *(v20 + 568);
  *(v31 + 36) = *(v20 + 576);
  *(v31 + 592) = *(v20 + 592);
  v79 = v31 + 75;
  v80 = (v20 + 600);
  v81 = *(v20 + 624);

  if (!v81)
  {
    v83 = *(v20 + 616);
    *v79 = *v80;
    *(v31 + 77) = v83;
    v31[79] = *(v20 + 632);
LABEL_45:
    v31[80] = *(v20 + 640);

    goto LABEL_46;
  }

  if (v81 != 1)
  {
    v31[78] = v81;
    v31[79] = *(v20 + 632);
    (**(v81 - 8))((v31 + 75), v20 + 600, v81);
    goto LABEL_45;
  }

  v82 = *(v20 + 616);
  *v79 = *v80;
  *(v31 + 77) = v82;
  *(v31 + 79) = *(v20 + 632);
LABEL_46:
  v31[81] = *(v20 + 648);
  *(v31 + 656) = *(v20 + 656);
  v84 = v31 + 83;
  v85 = (v20 + 664);
  v86 = *(v20 + 776);
  if (v86 == 1)
  {
    v87 = *(v20 + 776);
    *(v31 + 95) = *(v20 + 760);
    *(v31 + 97) = v87;
    *(v31 + 99) = *(v20 + 792);
    *(v31 + 808) = *(v20 + 808);
    v88 = *(v20 + 712);
    *(v31 + 87) = *(v20 + 696);
    *(v31 + 89) = v88;
    v89 = *(v20 + 744);
    *(v31 + 91) = *(v20 + 728);
    *(v31 + 93) = v89;
    v90 = *(v20 + 680);
    *v84 = *v85;
    *(v31 + 85) = v90;
  }

  else
  {
    *v84 = *v85;
    *(v31 + 672) = *(v20 + 672);
    v31[85] = *(v20 + 680);
    *(v31 + 688) = *(v20 + 688);
    *(v31 + 689) = *(v20 + 689);
    *(v31 + 691) = *(v20 + 691);
    *(v31 + 692) = *(v20 + 692);
    v31[87] = *(v20 + 696);
    v91 = *(v20 + 720);
    *(v31 + 44) = *(v20 + 704);
    *(v31 + 45) = v91;
    v31[92] = *(v20 + 736);
    *(v31 + 372) = *(v20 + 744);
    *(v31 + 47) = *(v20 + 752);
    *(v31 + 768) = *(v20 + 768);
    v31[97] = v86;
    *(v31 + 49) = *(v20 + 784);
    v31[100] = *(v20 + 800);
    *(v31 + 808) = *(v20 + 808);
  }

  v31[102] = *(v20 + 816);
  v31[103] = *(v20 + 824);
  v31[104] = *(v20 + 832);

LABEL_50:
  v92 = v31 + 105;
  v93 = (v20 + 840);
  v94 = *(v20 + 864);
  if (!v94)
  {
    v96 = *(v20 + 856);
    *v92 = *v93;
    *(v31 + 107) = v96;
    v31[109] = *(v20 + 872);
    v97 = *(v20 + 880);
    if (!v97)
    {
LABEL_56:
      *(v31 + 55) = *(v20 + 880);
      goto LABEL_57;
    }

LABEL_54:
    v98 = *(v20 + 888);
    v31[110] = v97;
    v31[111] = v98;

    goto LABEL_57;
  }

  if (v94 != 1)
  {
    v31[108] = v94;
    v31[109] = *(v20 + 872);
    (**(v94 - 8))(v92, v93);
    v97 = *(v20 + 880);
    if (!v97)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  v95 = *(v20 + 856);
  *v92 = *v93;
  *(v31 + 107) = v95;
  *(v31 + 109) = *(v20 + 872);
  v31[111] = *(v20 + 888);
LABEL_57:
  v99 = *(v20 + 896);
  v31[112] = v99;
  v31[113] = *(v20 + 904);
  v31[114] = *(v20 + 912);
  v31[115] = *(v20 + 920);
  v31[116] = *(v20 + 928);
  v31[117] = *(v20 + 936);
  v31[118] = *(v20 + 944);
  *(v31 + 476) = *(v20 + 952);
  *(v31 + 954) = *(v20 + 954);
  v100 = v134[28];
  __dst = v31 + v100;
  v101 = (v20 + v100);
  v102 = type metadata accessor for CommandOperation();
  v103 = *(v102 - 8);
  v129 = *(v103 + 48);
  v104 = v99;

  if (v129(v101, 1, v102))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v101, *(*(v105 - 8) + 64));
    v27 = v135;
    v28 = v136;
    v106 = v133;
    v107 = v134;
    v108 = v138;
  }

  else
  {
    v130 = v103;
    *__dst = *v101;
    v109 = v102;
    v110 = *(v102 + 20);
    v111 = &__dst[v110];
    v112 = &v101[v110];
    v113 = *&v101[v110];
    v114 = *&v101[v110 + 8];
    v115 = v101[v110 + 16];
    outlined copy of Text.Storage(*v112, *(v112 + 1), v112[16]);
    *v111 = v113;
    *(v111 + 1) = v114;
    v111[16] = v115;
    *(v111 + 3) = *(v112 + 3);
    v116 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v117 = type metadata accessor for UUID();
    v118 = *(*(v117 - 8) + 16);

    v118(&v111[v116], &v112[v116], v117);
    v119 = *(v109 + 24);
    v120 = &__dst[v119];
    v121 = &v101[v119];
    if (*v121)
    {
      v122 = v121[1];
      *v120 = *v121;
      v120[1] = v122;
    }

    else
    {
      *v120 = *v121;
    }

    v28 = v136;
    v106 = v133;
    v107 = v134;
    v108 = v138;
    (*(v130 + 56))(__dst, 0, 1, v109);
    v27 = v135;
  }

  *(v108 + v107[29]) = *(v20 + v107[29]);
  *(v108 + v107[30]) = *(v20 + v107[30]);
  *(v108 + v107[31]) = *(v20 + v107[31]);
  *(v108 + v107[32]) = *(v20 + v107[32]);
  *(v108 + v107[33]) = *(v20 + v107[33]);
  *(v108 + v107[34]) = *(v20 + v107[34]);
  v123 = *(v106 + 56);

  v123(v108, 0, 1, v107);
LABEL_64:
  swift_weakCopyInit();
  v124 = v28[20];
  *(v27 + v28[19]) = *(v137 + v28[19]);
  *(v27 + v124) = *(v137 + v124);
  *(v27 + v28[21]) = *(v137 + v28[21]);
  return v27;
}

char *initializeWithTake for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v21;
    v22 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v22;
    v23 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v23;
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 105) = *(a2 + 105);
    a1[121] = a2[121];
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 9) = *(a2 + 9);
    v24 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
    v25 = &a1[v24];
    v26 = &a2[v24];
    v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1, v27))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v25, v26, *(*(v29 - 8) + 64));
    }

    else
    {
      v48 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = a3;
        v49 = *(v26 + 1);
        *v25 = *v26;
        *(v25 + 1) = v49;
        v25[32] = v26[32];
        *(v25 + 40) = *(v26 + 40);
        v25[56] = v26[56];
        v50 = *(v26 + 13);
        *(v25 + 12) = *(v26 + 12);
        *(v25 + 13) = v50;
        *(v25 + 14) = *(v26 + 14);
        *(v25 + 235) = *(v26 + 235);
        v51 = *(v26 + 9);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 9) = v51;
        v52 = *(v26 + 11);
        *(v25 + 10) = *(v26 + 10);
        *(v25 + 11) = v52;
        v53 = *(v26 + 5);
        *(v25 + 4) = *(v26 + 4);
        *(v25 + 5) = v53;
        v54 = *(v26 + 7);
        *(v25 + 6) = *(v26 + 6);
        *(v25 + 7) = v54;
        v55 = *(v26 + 17);
        *(v25 + 16) = *(v26 + 16);
        *(v25 + 17) = v55;
        v56 = *(v26 + 23);
        *(v25 + 22) = *(v26 + 22);
        *(v25 + 23) = v56;
        *(v25 + 24) = *(v26 + 24);
        *(v25 + 50) = *(v26 + 50);
        v57 = *(v26 + 19);
        *(v25 + 18) = *(v26 + 18);
        *(v25 + 19) = v57;
        v58 = *(v26 + 21);
        *(v25 + 20) = *(v26 + 20);
        *(v25 + 21) = v58;
        v59 = *(v26 + 456);
        *(v25 + 440) = *(v26 + 440);
        *(v25 + 456) = v59;
        v25[472] = v26[472];
        v60 = *(v26 + 424);
        *(v25 + 408) = *(v26 + 408);
        *(v25 + 424) = v60;
        *(v25 + 30) = *(v26 + 30);
        *(v25 + 489) = *(v26 + 489);
        *(v25 + 32) = *(v26 + 32);
        v25[528] = v26[528];
        memcpy(v25 + 536, v26 + 536, 0x130uLL);
        v61 = *(v26 + 856);
        *(v25 + 840) = *(v26 + 840);
        *(v25 + 856) = v61;
        *(v25 + 872) = *(v26 + 872);
        *(v25 + 111) = *(v26 + 111);
        *(v25 + 112) = *(v26 + 112);
        *(v25 + 904) = *(v26 + 904);
        *(v25 + 920) = *(v26 + 920);
        *(v25 + 117) = *(v26 + 117);
        *(v25 + 118) = *(v26 + 118);
        v25[952] = v26[952];
        *(v25 + 953) = *(v26 + 953);
        v62 = type metadata accessor for PlatformItemList.Item();
        v63 = v62[28];
        __dsta = &v25[v63];
        v64 = &v26[v63];
        v65 = type metadata accessor for CommandOperation();
        v78 = *(v65 - 8);
        if ((*(v78 + 48))(v64, 1, v65))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dsta, v64, *(*(v66 - 8) + 64));
        }

        else
        {
          *__dsta = *v64;
          v70 = *(v65 + 20);
          v75 = &__dsta[v70];
          v77 = &v64[v70];
          v71 = *&v64[v70 + 16];
          *v75 = *&v64[v70];
          *(v75 + 1) = v71;
          v74 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v72 = type metadata accessor for UUID();
          (*(*(v72 - 8) + 32))(&v75[v74], &v77[v74], v72);
          *&__dsta[*(v65 + 24)] = *&v64[*(v65 + 24)];
          (*(v78 + 56))();
        }

        v25[v62[29]] = v26[v62[29]];
        v25[v62[30]] = v26[v62[30]];
        v25[v62[31]] = v26[v62[31]];
        v25[v62[32]] = v26[v62[32]];
        v25[v62[33]] = v26[v62[33]];
        *&v25[v62[34]] = *&v26[v62[34]];
        swift_storeEnumTagMultiPayload();
        a3 = v85;
      }

      else
      {
        memcpy(v25, v26, *(*(v48 - 8) + 64));
      }

      *&v25[*(v27 + 20)] = *&v26[*(v27 + 20)];
      (*(v28 + 56))(v25, 0, 1, v27);
    }

    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
    v9 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    *(a1 + 137) = *(a2 + 137);
    v13 = *(a2 + 8);
    *(a1 + 7) = v12;
    *(a1 + 8) = v13;
    *(a1 + 6) = v11;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    a1[168] = a2[168];
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v14 = type metadata accessor for ToolbarStorage.Item(0);
    v15 = v14[17];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = type metadata accessor for PlatformItemList.Item();
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v81 = v19;
      v84 = a3;
      v30 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v30;
      v16[32] = v17[32];
      *(v16 + 40) = *(v17 + 40);
      v16[56] = v17[56];
      v31 = *(v17 + 13);
      *(v16 + 12) = *(v17 + 12);
      *(v16 + 13) = v31;
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      v32 = *(v17 + 9);
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 9) = v32;
      v33 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v33;
      v34 = *(v17 + 5);
      *(v16 + 4) = *(v17 + 4);
      *(v16 + 5) = v34;
      v35 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v35;
      v36 = *(v17 + 17);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 17) = v36;
      v37 = *(v17 + 23);
      *(v16 + 22) = *(v17 + 22);
      *(v16 + 23) = v37;
      *(v16 + 24) = *(v17 + 24);
      *(v16 + 50) = *(v17 + 50);
      v38 = *(v17 + 19);
      *(v16 + 18) = *(v17 + 18);
      *(v16 + 19) = v38;
      v39 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v39;
      v40 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v40;
      v16[472] = v17[472];
      v41 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v41;
      *(v16 + 30) = *(v17 + 30);
      *(v16 + 489) = *(v17 + 489);
      *(v16 + 32) = *(v17 + 32);
      v16[528] = v17[528];
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v42 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v42;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      v16[952] = v17[952];
      *(v16 + 953) = *(v17 + 953);
      v43 = v18[28];
      __dst = &v16[v43];
      v44 = &v17[v43];
      v45 = type metadata accessor for CommandOperation();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v44, *(*(v47 - 8) + 64));
      }

      else
      {
        *__dst = *v44;
        v67 = *(v45 + 20);
        v79 = &__dst[v67];
        __src = &v44[v67];
        v68 = *&v44[v67 + 16];
        *v79 = *&v44[v67];
        *(v79 + 1) = v68;
        v76 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v69 = type metadata accessor for UUID();
        (*(*(v69 - 8) + 32))(&v79[v76], &__src[v76], v69);
        *&__dst[*(v45 + 24)] = *&v44[*(v45 + 24)];
        (*(v46 + 56))();
      }

      a3 = v84;
      v16[v18[29]] = v17[v18[29]];
      v16[v18[30]] = v17[v18[30]];
      v16[v18[31]] = v17[v18[31]];
      v16[v18[32]] = v17[v18[32]];
      v16[v18[33]] = v17[v18[33]];
      *&v16[v18[34]] = *&v17[v18[34]];
      (*(v81 + 56))(v16, 0, 1, v18);
    }

    swift_weakTakeInit();
    a1[v14[19]] = a2[v14[19]];
    a1[v14[20]] = a2[v14[20]];
    a1[v14[21]] = a2[v14[21]];
LABEL_20:
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_21:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t specialized ToolbarStorage.Entry.bindID<A>(_:)(int a1)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v48);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  v20 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  outlined init with copy of ToolbarStorage.Item(v2, v22, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of ToolbarStorage.GroupItem(v22, v19, type metadata accessor for ToolbarStorage.Item);
      v24 = v49;
      v52 = v49;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v52 = v24;
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v25 = v39;
      outlined destroy of ToolbarViewListVisitor(v39, type metadata accessor for ToolbarStorage.Entry.Kind);
      outlined init with take of ToolbarStorage.GroupItem(v19, v25, type metadata accessor for ToolbarStorage.Item);
      return swift_storeEnumTagMultiPayload();
    }

    v35 = type metadata accessor for ToolbarStorage.Entry.Kind;
    v36 = v22;
    return outlined destroy of ToolbarViewListVisitor(v36, v35);
  }

  v46 = v16;
  v38[1] = v20;
  result = outlined init with take of ToolbarStorage.GroupItem(v22, v14, type metadata accessor for ToolbarStorage.GroupItem);
  v27 = *(v14 + 19);
  v28 = v27[2];
  v29 = v47;
  if (!v28)
  {
LABEL_15:
    v37 = v39;
    outlined destroy of ToolbarViewListVisitor(v39, type metadata accessor for ToolbarStorage.Entry.Kind);
    outlined init with copy of ToolbarStorage.Item(v14, v37, type metadata accessor for ToolbarStorage.GroupItem);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ToolbarStorage.GroupItem;
    v36 = v14;
    return outlined destroy of ToolbarViewListVisitor(v36, v35);
  }

  v30 = v11;
  v31 = 0;
  v41 = *MEMORY[0x1E698D3F8];
  v44 = v14;
  v45 = v4;
  v42 = v28;
  v43 = v11;
  v40 = v3;
  while (v31 < v27[2])
  {
    v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v51 = *(v4 + 72) * v31;
    outlined init with copy of ToolbarStorage.Item(v27 + v32 + v51, v30, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    outlined init with take of ToolbarStorage.GroupItem(v30, v29, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = outlined destroy of ToolbarViewListVisitor(v29, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    }

    else
    {
      v50 = v32;
      v33 = v46;
      outlined init with take of ToolbarStorage.GroupItem(v29, v46, type metadata accessor for ToolbarStorage.Item);
      v34 = v49;
      v52 = v49;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v52 = v34;
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      outlined init with copy of ToolbarStorage.Item(v33, v6, type metadata accessor for ToolbarStorage.Item);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      }

      v14 = v44;
      result = outlined destroy of ToolbarViewListVisitor(v33, type metadata accessor for ToolbarStorage.Item);
      v4 = v45;
      v29 = v47;
      v28 = v42;
      v30 = v43;
      if (v31 >= v27[2])
      {
        goto LABEL_18;
      }

      result = outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v6, v27 + v50 + v51);
      *(v14 + 19) = v27;
    }

    if (v28 == ++v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.structuralSeed.getter@<X0>(_DWORD *a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v16)
  {
    if (v16 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[0];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
    }

    else
    {
      v13[0] = *&__src[1];
      v13[1] = *&__src[3];
      v13[2] = *&__src[5];
      v13[3] = *&__src[7];
      v14 = __src[9];
      if (__src[3] == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = LODWORD(__src[1]);
      }

      v6 = *(__src[0] + 16);
      if (v6)
      {
        v7 = __src[0] + 32;
        do
        {
          v8 = v5;
          outlined init with copy of NavigationColumnState(v7, __dst);
          v5 = __dst[0];
          outlined destroy of NavigationColumnState(__dst);
          if (v8 == -1 || !v5)
          {
            v5 = v8;
          }

          else if (v8)
          {
            if (v5 != -1)
            {
              v9 = (v5 | (v8 << 32)) + ~(v5 << 32);
              v10 = (v9 ^ (v9 >> 22)) + ~((v9 ^ (v9 >> 22)) << 13);
              v11 = (9 * (v10 ^ (v10 >> 8))) ^ ((9 * (v10 ^ (v10 >> 8))) >> 15);
              v5 = ((v11 + ~(v11 << 27)) >> 31) ^ (v11 + ~(v11 << 27));
            }
          }

          v7 += 360;
          --v6;
        }

        while (v6);
      }

      result = outlined destroy of Binding<NavigationSplitViewColumn>(v13, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      *a1 = v5;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition()
{
  result = lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition;
  if (!lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition;
  if (!lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  v6 = (a4[7] + 176 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a3[5];
  v6[4] = a3[4];
  v6[5] = v8;
  v9 = a3[3];
  v6[2] = a3[2];
  v6[3] = v9;
  *(v6 + 156) = *(a3 + 156);
  v10 = a3[9];
  v6[8] = a3[8];
  v6[9] = v10;
  v11 = a3[7];
  v6[6] = a3[6];
  v6[7] = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, unint64_t *a2)
{
  type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

Swift::Void __swiftcall ToolbarPlacementEnvironment.updateValue()()
{
  v1 = v0;
  v40 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v39 = *Value;
  *(&v39 + 1) = v3;

  swift_retain_n();
  v4 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v4, &v32);
  *v38 = v32;
  *&v38[16] = *v33;
  *&v38[25] = *&v33[9];
  outlined init with copy of ToolbarItemPlacement.Role(v38, v36);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);
    if (!v3)
    {
      PropertyList.subscript.getter();
      if (!v32)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    PropertyList.Tracker.value<A>(_:for:)();

    if (v32)
    {
LABEL_6:
      *&v32 = *(v0 + 7);
      type metadata accessor for PrimaryBarViewModel(0);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type PrimaryBarViewModel and conformance BarEnvironmentViewModel, type metadata accessor for PrimaryBarViewModel);

      *v38 = ObservableObject<>.objectWillChange.getter();
      type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E695BFE8], MEMORY[0x1E695BFE0], MEMORY[0x1E6980A48]);
      lazy protocol witness table accessor for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>(&lazy protocol witness table cache variable for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>);
      lazy protocol witness table accessor for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>(&lazy protocol witness table cache variable for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>);
      SubscriptionLifetime.subscribe<A>(subscriber:to:)();
    }
  }

LABEL_7:
  AGGraphGetValue();
  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v5 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v5, &v32);
    *v38 = 5;
    memset(&v38[8], 0, 32);
    v38[40] = 2;
    v6 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v32, v38);
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if (v6)
    {
      static Font.body.getter();
      Font.bold()();

      EnvironmentValues.defaultFont.setter();
    }
  }

  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    EnvironmentValues.dynamicTypeSize.getter();
    v7 = v32;
    if (v32 <= 3u)
    {
      v7 = 3;
    }

    if (v7 >= 5)
    {
      LOBYTE(v7) = 5;
    }

    LOBYTE(v32) = v7;
    EnvironmentValues.dynamicTypeSize.setter();
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v8 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v8, &v32);
    *v38 = 5;
    memset(&v38[8], 0, 32);
    v38[40] = 2;
    v9 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v32, v38);
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if ((v9 & 1) == 0)
    {
      static Font.body.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      EnvironmentValues.defaultFont.setter();
    }
  }

  AGGraphGetValue();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  outlined init with copy of ToolbarPlacement.Storage(v36, v38);
  if (*&v38[24] == 7)
  {
    outlined destroy of ToolbarPlacement.Storage(v38);
  }

  else
  {
    v32 = *v38;
    *v33 = *&v38[16];
    *&v33[16] = *&v38[32];
    if (*(&v39 + 1))
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    if (*(*v38 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&v32), (v10 & 1) != 0))
    {

      AGGraphGetValue();
      EnvironmentValues.defaultForegroundStyle.setter();
    }

    else
    {
    }

    outlined destroy of ToolbarPlacement.Role(&v32);
  }

  v11 = *(&v39 + 1);
  v12 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v12, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] == 2 && (*v38 == 13 || *v38 == 4))
  {
    v14 = vorrq_s8(*&v38[8], *&v38[24]);
    if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
    {
      outlined destroy of ToolbarPlacement(v36);
      outlined destroy of ToolbarItemPlacement.Role(&v32);
      goto LABEL_49;
    }
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] != 2 || *v38 != 8 || (v15 = vorrq_s8(*&v38[8], *&v38[24]), *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if (v11)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);

      PropertyList.Tracker.value<A>(_:for:)();

      if (!v32)
      {
        goto LABEL_48;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);
      PropertyList.subscript.getter();
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32 != 2 && (v32 & 1) != 0)
    {
      *&v32 = static Color.white.getter();
      v16 = AnyShapeStyle.init<A>(_:)();
      swift_retain_n();
      EnvironmentValues.defaultForegroundStyle.setter();
      MEMORY[0x18D0065C0](v16);
    }

    goto LABEL_48;
  }

  outlined destroy of ToolbarItemPlacement.Role(&v32);
LABEL_48:
  outlined destroy of ToolbarPlacement(v36);
LABEL_49:
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    EnvironmentValues.defaultSymbolFont.setter();
  }

  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      LOBYTE(v32) = 2;
    }

    else
    {
      EnvironmentValues.verticalSizeClass.getter();
      if (v32 == 2 || (v32 & 1) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v32) = v17;
    }

    EnvironmentValues.imageScale.setter();
  }

  v18 = *(&v39 + 1);
  v19 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v19, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] == 2 && (*v38 != 13 ? (v20 = *v38 == 4) : (v20 = 1), v20 && (v21 = vorrq_s8(*&v38[8], *&v38[24]), !*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))) || (outlined destroy of ToolbarItemPlacement.Role(v38), outlined init with copy of ToolbarItemPlacement.Role(&v32, v38), v38[40] == 2) && *v38 == 8 && (v22 = vorrq_s8(*&v38[8], *&v38[24]), !*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    goto LABEL_76;
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  outlined destroy of ToolbarItemPlacement.Role(&v32);
  if (v18)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);

    PropertyList.Tracker.value<A>(_:for:)();

    if (!v32)
    {
      goto LABEL_76;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);
    PropertyList.subscript.getter();
    if (!v32)
    {
      goto LABEL_76;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32 != 2)
  {
    LOBYTE(v32) = v32 & 1;
    EnvironmentValues.defaultColorScheme.setter();
    goto LABEL_85;
  }

LABEL_76:
  v23 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v23, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] != 2 || (*v38 != 13 ? (v24 = *v38 == 4) : (v24 = 1), !v24 || (v25 = vorrq_s8(*&v38[8], *&v38[24]), *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))))
  {
    outlined destroy of ToolbarItemPlacement.Role(v38);
  }

  outlined destroy of ToolbarItemPlacement.Role(&v32);
LABEL_85:
  v26 = v1[3];
  *&v33[16] = v1[2];
  v34 = v26;
  v35 = *(v1 + 8);
  v27 = v1[1];
  v32 = *v1;
  *v33 = v27;
  v28 = v39;
  *v38 = v39;

  swift_retain_n();
  v29 = ToolbarPlacementEnvironment.barConfiguration(in:)(v38);
  v31 = v30;

  *&v32 = v29;
  BYTE8(v32) = v31;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(&v28 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v32 = v39;
  AGGraphSetOutputValue();
}

uint64_t EnvironmentValues.presentationNeedsPreferredContentSize.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return v3;
}

id UIHostingController.topOrBottomContentScrollView()()
{
  result = [v0 contentScrollViewForEdge_];
  if (!result)
  {
    return [v0 contentScrollViewForEdge_];
  }

  return result;
}

uint64_t specialized SheetBridge.hostingView<A>(_:didMoveTo:)(uint64_t a1, uint64_t a2)
{
  _UIHostingView.viewGraph.getter();
  if (a2)
  {
    GraphHost.addPreference<A>(_:)();

    _UIHostingView.viewGraph.getter();
    GraphHost.addPreference<A>(_:)();
  }

  else
  {
    GraphHost.removePreference<A>(_:)();

    _UIHostingView.viewGraph.getter();
    GraphHost.removePreference<A>(_:)();
  }
}

uint64_t assignWithTake for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 assignWithCopy for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v3)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(a1);
      *a1 = *a2;
      v7 = *(a2 + 32);
      result = *(a2 + 48);
      v8 = *(a2 + 16);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v7;
      *(a1 + 48) = result;
      *(a1 + 16) = v8;
    }
  }

  else if (v3)
  {
    *(a1 + 24) = v3;
    *(a1 + 32) = *(a2 + 32);
    (**(v3 - 8))();
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
    *(a1 + 16) = result;
  }

  return result;
}

BOOL specialized static ResolvedScrollBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 45);
  if (*(a1 + 45))
  {
    if (!*(a2 + 45))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 44) != *(a2 + 44))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  Attribute = AGWeakAttributeGetAttribute();
  v5 = *MEMORY[0x1E698D3F8];
  v6 = AGWeakAttributeGetAttribute();
  if (Attribute == v5)
  {
    if (v6 == v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v6 == v5 || Attribute != v7)
  {
    return 0;
  }

LABEL_20:
  v9 = AGWeakAttributeGetAttribute();
  v10 = AGWeakAttributeGetAttribute();
  if (v9 == v5)
  {
    if (v10 != v5)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v10 == v5 || v9 != v11)
    {
      return 0;
    }
  }

  v13 = AGWeakAttributeGetAttribute();
  v14 = AGWeakAttributeGetAttribute();
  result = v14 == v5;
  if (v13 != v5)
  {
    if (v14 == v5)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v13 == v15;
    return v14 != v5 && v16;
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  __swift_assign_boxed_opaque_existential_1((a1 + 24), (a2 + 24));
  v4 = *(a2 + 64);
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;
  v6 = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  swift_weakCopyAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 152);
  if (!*(a1 + 152))
  {
    if (v7)
    {
      *(a1 + 152) = v7;
      *(a1 + 160) = *(a2 + 160);
      (**(v7 - 8))(a1 + 128, a2 + 128);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v9;
    *(a1 + 144) = v10;
    goto LABEL_8;
  }

  v8 = (a1 + 128);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 128));
LABEL_8:
  v11 = *(a2 + 168);
  v12 = *(a2 + 176);
  outlined copy of Environment<Bool>.Content(v11, v12);
  v13 = *(a1 + 168);
  v14 = *(a1 + 176);
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  outlined consume of Environment<Bool>.Content(v13, v14);
  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
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
      *(result + 456) = (a2 - 1);
      return result;
    }

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(char *a1)
{
  v4 = *&a1[direct field offset for UIHostingController.host];
  v2 = [v4 window];
  if (v2)
  {

    UIHostingViewBase.inheritedEnvironment.getter();
    if (v5 != 1)
    {
      outlined consume of EnvironmentValues?(v5);
      UIHostingViewBase.inheritedEnvironment.setter();
    }
  }

  else
  {
    v3 = [a1 traitCollection];
    UIHostingViewBase.traitCollectionOverride.setter();
  }
}

uint64_t specialized _UIHostingView.setRootView(_:transaction:)(uint64_t a1)
{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1);
}

{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  *(v2 + v4) = a1;

  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v4, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v4, v1 + v2, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  v2 = MEMORY[0x1E697D9F0];
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v5, v1 + v3, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v2, &type metadata for CollectionViewCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  outlined init with copy of TabItem.RootView(a1, v4);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  outlined assign with take of TabItem.RootView(v4, v1 + v2);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  v2 = MEMORY[0x1E697D9F0];
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v5, v1 + v3, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v2, &type metadata for ListTableCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  outlined init with copy of BridgedNavigationView.RootView(a1, v4);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  outlined assign with take of BridgedNavigationView.RootView(v4, v1 + v2);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1);
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1);
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1);
}

uint64_t specialized closure #2 in TransformScrollStorageEnvironment.updateValue()(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    outlined init with copy of ScrollEnvironmentProperties(a2, v5);
    ScrollEnvironmentStorage.baseProperties.setter(v5);
    v5[3] = &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform;
    v5[4] = &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform;
    v5[0] = swift_allocObject();
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(a3, v5[0] + 16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return outlined destroy of SearchEnvironmentStorage.AllProperties(v5, type metadata accessor for ScrollEnvironmentTransform?);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for ScrollEnvironmentTransform?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.updatePossibilities(for:into:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = ResolvedNavigationDestinations.updatePossibilities(for:over:)(a1, a2, a3, (v3 + 16));
  swift_endAccess();
  return v7;
}

uint64_t ResolvedNavigationDestinations.setPossibilities(_:depth:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_65:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_66:
    v8 = MEMORY[0x1E69E7CC0];
LABEL_67:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v3 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v78;
    v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v8);

    return v66;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_66;
  }

LABEL_3:
  v7 = 0;
  v74 = v5 & 0xC000000000000001;
  v68 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  v70 = v5;
  v71 = a2;
  v69 = v3;
  while (1)
  {
    if (v74)
    {
      v9 = MEMORY[0x18D00E9C0](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v7 >= *(v68 + 16))
      {
        goto LABEL_60;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
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
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v75 = v10;
    v76 = v7;
    v11 = (*(*v9 + 80))();
    v12 = v11;
    if (a2 != -1)
    {
      if (*(*v3 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if (v13)
        {
          _StringGuts.grow(_:)(153);
          v14 = MEMORY[0x18D00C9B0](0x100000000000001FLL, 0x800000018CD3DEE0);
          v15 = (*(*v9 + 88))(v14);
          MEMORY[0x18D00C9B0](v15);

          MEMORY[0x18D00C9B0](0x1000000000000078, 0x800000018CD3DF00);
          MEMORY[0x18D009810](0, 0xE000000000000000);

          goto LABEL_5;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    *&v8[8 * v17 + 32] = v12;

    if (a2 != -1)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v77 = *v3;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_58;
      }

      v26 = v21;
      if (*(v19 + 24) >= v25)
      {
        if ((v18 & 1) == 0)
        {
          v37 = v20;
          specialized _NativeDictionary.copy()();
          v20 = v37;
          v36 = v77;
          if (v26)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v18);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_69;
        }
      }

      v36 = v77;
      if (v26)
      {
LABEL_31:
        *(v36[7] + 8 * v20) = v9;

LABEL_38:
        *v3 = v36;
        goto LABEL_43;
      }

LABEL_36:
      v36[(v20 >> 6) + 8] |= 1 << v20;
      *(v36[6] + 8 * v20) = v12;
      *(v36[7] + 8 * v20) = v9;
      v38 = v36[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v24)
      {
        goto LABEL_62;
      }

      v36[2] = v39;
      goto LABEL_38;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 8);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    v31 = v29[2];
    v32 = (v30 & 1) == 0;
    v24 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v24)
    {
      goto LABEL_61;
    }

    v34 = v30;
    if (v29[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_69;
      }

LABEL_33:
      if ((v34 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v28)
    {
      goto LABEL_33;
    }

    v40 = v20;
    specialized _NativeDictionary.copy()();
    v20 = v40;
    if ((v34 & 1) == 0)
    {
LABEL_40:
      v29[(v20 >> 6) + 8] |= 1 << v20;
      *(v29[6] + 8 * v20) = v12;
      *(v29[7] + 8 * v20) = v9;
      v41 = v29[2];
      v24 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v24)
      {
        goto LABEL_64;
      }

      v29[2] = v42;
      goto LABEL_42;
    }

LABEL_34:
    *(v29[7] + 8 * v20) = v9;

LABEL_42:
    *(v3 + 8) = v29;
LABEL_43:
    v43 = (*(*v9 + 96))(v20);
    if (v44)
    {
      break;
    }

LABEL_5:
    v7 = v76 + 1;
    if (v75 == v6)
    {
      goto LABEL_67;
    }
  }

  v45 = v43;
  v46 = v44;
  v72 = v8;
  v47 = (*(*v9 + 104))();
  v73 = v49;
  if (v47)
  {
    v50 = v47;
    a2 = v48;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v3 + 32);
    v5 = v45;
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    v54 = v52[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_59;
    }

    v57 = v53;
    if (v52[3] >= v56)
    {
      if (v51)
      {
        if ((v53 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v57 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v51);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v46);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_70;
      }

      v3 = v58;
      if ((v57 & 1) == 0)
      {
LABEL_49:
        v52[(v3 >> 6) + 8] |= 1 << v3;
        v60 = (v52[6] + 16 * v3);
        *v60 = v5;
        v60[1] = v46;
        v61 = (v52[7] + 24 * v3);
        *v61 = v50;
        v61[1] = a2;
        v61[2] = v73;
        v62 = v52[2];
        v24 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v24)
        {
          goto LABEL_63;
        }

        v52[2] = v63;

        goto LABEL_54;
      }
    }

    v64 = (v52[7] + 24 * v3);
    *v64 = v50;
    v64[1] = a2;
    v64[2] = v73;

LABEL_54:
    v3 = v69;
    v5 = v70;
    *(v69 + 32) = v52;
    a2 = v71;
    v8 = v72;
    goto LABEL_5;
  }

  __break(1u);
LABEL_69:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = MEMORY[0x18D00F6C0](*(a2 + 40), v13);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

void specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();

    AGGraphSetValue();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);

    AGGraphSetValue();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();

    AGGraphSetValue();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);

    AGGraphSetValue();
  }
}

void _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA08TableRowE0VG_Tt0g5Tm(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  if (!a1)
  {
    specialized ListCollectionViewCellBase.backgroundHost.setter(0);
    return;
  }

  MEMORY[0x18D00DBA0](v10);
  v13 = type metadata accessor for UIBackgroundConfiguration();
  v14 = *(*(v13 - 1) + 48);
  if (v14(v12, 1, v13))
  {
    outlined destroy of UIBackgroundConfiguration?(v12, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_4:
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
    v16 = objc_allocWithZone(v15);

    v18 = specialized _UIHostingView.init(rootView:)(v17);
    UIHostingViewBase.isHiddenForReuse.setter();
    v19 = v18;
    specialized ListCollectionViewCellBase.backgroundHost.setter(v18);

    goto LABEL_5;
  }

  v24 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v12, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v24)
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_4;
  }

  v26 = v25;
  if (a2 == 1)
  {
    v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x60);
    swift_beginAccess();
    v28 = *(v26 + v27);
    *(v26 + v27) = a1;

    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {

    specialized _UIHostingView.setRootView(_:transaction:)(a1);

    outlined consume of ListItemTint?(a2);
  }

LABEL_5:
  MEMORY[0x18D00DBA0]();
  if (v14(v8, 1, v13))
  {
    outlined destroy of UIBackgroundConfiguration?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    goto LABEL_20;
  }

  v13 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  if (!swift_dynamicCastClass())
  {
LABEL_21:

    __break(1u);
    return;
  }

  v20 = _s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5();
  v22 = v21;

  if (v20)
  {
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(32, 1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  [v3 setBackgroundColor_];
}

uint64_t sub_18BF2F7D8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void *static PlatformViewControllerRepresentableAdaptor.layoutOptions(_:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 88))(&v4);
  *a2 = v4;
  return result;
}

uint64_t outlined consume of FocusStore?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SheetPreference.Value.viewIDs.getter()
{
  outlined init with copy of SheetPreference.Value(v0, v10);
  if (!v12)
  {
    return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI9NamespaceV2IDV_SD4KeysVyAhD11TransactionV_GTt0g5(*&v10[0]);
  }

  if (v12 != 1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = v10[4];
  v9[0] = *v11;
  *(v9 + 10) = *&v11[10];
  v4 = v10[0];
  v5 = v10[1];
  v6 = v10[2];
  v7 = v10[3];
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Namespace.ID>, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = *(&v5 + 1);
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9NamespaceV2IDV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of SheetPreference(&v4);
  return v2;
}

void SheetBridge.update(presentation:in:transaction:)(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *a1;
  v6 = direct field offset for UIHostingController.host;
  v7 = *&a2[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(v5);

  v8 = *&a2[v6];
  v9 = MEMORY[0x1E69E7D40];

  v10 = v8;

  UIHostingViewBase.environmentOverride.setter();

  if (*(*&a2[v6] + *((*v9 & **&a2[v6]) + 0xF8)) == 2)
  {

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (v21 != 2)
    {
      v11 = *&a2[v6];
      v12 = *((*v9 & *v11) + 0xF8);
      v13 = *(v11 + v12);
      *(v11 + v12) = v21;
      v14 = v11;
      specialized _UIHostingView.didChangeColorScheme(from:)(v13);

      v15 = [a2 presentationController];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
LABEL_9:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_10;
        }
      }

      v19 = [a2 popoverPresentationController];
      if (v19)
      {
        v20 = v19;
        v18 = [v19 adaptiveSheetPresentationController];

        if (v18)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(a2[direct field offset for PresentationHostingController.lastInteractiveDismissDisabled]);
}

void specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(int a1)
{
  v3 = [v1 presentationController];
  if (!v3)
  {
LABEL_4:
    v6 = [v1 popoverPresentationController];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [v6 adaptiveSheetPresentationController];

    v5 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_4;
  }

LABEL_6:
  v9 = v5;
  if ((([v5 _allowsInteractiveDismissWhenFullScreen] ^ a1) & 1) == 0)
  {
    [v9 _setAllowsInteractiveDismissWhenFullScreen_];
  }
}

void *assignWithCopy for NavigationStackReader(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v5[1] = v6[1];

  v5[2] = v6[2];

  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v5 + v9 + 24) & ~v9;
  v11 = (v6 + v9 + 24) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  *((v13 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);

  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;

  return a1;
}

uint64_t assignWithCopy for NavigationStackStyledCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  return a1;
}

uint64_t assignWithCopy for _NavigationStackStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v5;
  *(a1 + 53) = *(a2 + 53);
  return a1;
}

uint64_t assignWithCopy for CoordinateSpaceNameModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace.Name(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t destroy for _NavigationStackStyleConfiguration.Item(uint64_t a1)
{
  swift_weakDestroy();

  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 56);
    }

    result = *(a1 + 104);
    if (result != 1)
    {
    }
  }

  else if (!*(a1 + 120))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }

  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(_BYTE *))
{
  PreferenceValues.subscript.getter();
  v5 = v9 == -1 || *v2 != v9;
  v6 = *v2 == -1 || v5;
  if (*v2 == -1 || v5)
  {
    *v2 = v9;
    a2(v8);
  }

  _ss11AnyHashableVSgWOhTm_1(v8, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  return v6;
}

uint64_t ContainerBackground.ConcreteVersionSeedTracker.didChange(_:action:)(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = *a1;
  swift_beginAccess();
  type metadata accessor for VersionSeedTracker();
  VersionSeedTracker.didChange(_:action:)(&v6, a2, a3);
  return swift_endAccess();
}

BOOL VersionSeedTracker.didChange(_:action:)(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v19[1] = a3;
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v19 - v8;
  v10 = type metadata accessor for PreferenceValues.Value();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v21 = *a1;
  PreferenceValues.subscript.getter();
  v14 = *&v13[*(v10 + 28)];
  v16 = v14 == -1 || *v4 != v14;
  v17 = *v4 == -1 || v16;
  if (*v4 == -1 || v16)
  {
    *v4 = v14;
    (*(*(*(v10 + 16) - 8) + 16))(v9, v13);
    v20(v9);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  (*(v11 + 8))(v13, v10);
  return v17;
}

uint64_t ContainerBackgroundBridge.updateBridgedBackgroundColor(_:)(id a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + 64);
    ObjectType = swift_getObjectType();
    v8 = type metadata accessor for ContainerBackgroundHost();
    (*(*(*(v6 + 16) + 8) + 16))(v26, v8, v8, ObjectType);

    v9 = v26[0];
    v10 = v26[1];
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v10 = 0;
  if (a1)
  {
LABEL_3:
    type metadata accessor for UIColor();

    a1 = UIColor.init(_:)(v11);
  }

LABEL_4:
  if (v9)
  {
    v12 = swift_getObjectType();
    v13 = *(v10 + 40);
    v14 = a1;
    swift_unknownObjectRetain();
    v13(a1, v12, v10);
    swift_unknownObjectRelease();
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v2 + 64);
    v18 = swift_getObjectType();
    v19 = ViewGraphDelegate.uiViewController.getter(v18, *(*(v17 + 16) + 8));

    if (v19)
    {
      type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      if (swift_dynamicCastClass())
      {
        v20 = v19;
        if (a1)
        {
          [a1 alphaComponent];
          v22 = v21 == 1.0;
        }

        else
        {
          v22 = 0;
        }

        NavigationStackHostingController<>.updateSidebarGlass(containerBackgroundIsSolid:)(v22);
      }

      type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = [v23 presentingViewController];
        if (v24)
        {

          specialized PresentationHostingController.setPresentationBackgroundEffect(_:)(a1);
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

unint64_t type metadata accessor for ContainerBackgroundHost()
{
  result = lazy cache variable for type metadata for ContainerBackgroundHost;
  if (!lazy cache variable for type metadata for ContainerBackgroundHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerBackgroundHost);
  }

  return result;
}

void specialized SheetBridge.hostingView<A>(_:didChangePreferences:)(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *a2;
  v5 = _UIHostingView.viewController.getter();
  if (v5)
  {
    v18 = v5;
    type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      PreferenceValues.subscript.getter();
      if (v19 == 2)
      {
LABEL_14:
        PreferenceValues.subscript.getter();
        *&v7[direct field offset for PresentationHostingController.lastColumnCount] = v4;

        return;
      }

      v8 = *&v7[direct field offset for UIHostingController.host];
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xF8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v19;
      v11 = v8;
      specialized _UIHostingView.didChangeColorScheme(from:)(v10);

      v12 = [v7 presentationController];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
LABEL_13:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_14;
        }
      }

      v16 = [v7 popoverPresentationController];
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = v16;
      v15 = [v16 adaptiveSheetPresentationController];

      if (!v15)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }
}

double _UIHostingView.transform3D.getter@<D0>(uint64_t a1@<X8>)
{
  v8[0].receiver = v1;
  v8[0].super_class = type metadata accessor for _UIHostingView();
  [(objc_super *)v8 transform3D];
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[2];
  *a1 = v8[1];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

Swift::Void __swiftcall UIKitNavigationController.viewWillLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UIKitNavigationController();
  objc_msgSendSuper2(&v5, sel_viewWillLayoutSubviews);
  v1 = [v0 tabBarController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for UIKitTabBarController();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v0;
  PlatformBarUpdater.callAsFunction(configurations:context:)(0, v0, v3);
}

void @objc NavigationStackCoordinator.navigationController(_:willShow:animated:)(void *a1, uint64_t a2, void *a3, void *a4, Swift::Bool a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  NavigationStackCoordinator.navigationController(_:willShow:animated:)(v8, v9, a5);
}

uint64_t NavigationStackHostingController.hostingView<A>(_:didMoveTo:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v20 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x3E8);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  if (a2)
  {
    v21 = xmmword_18CD6A6D0;
    return _UIHostingView.inheritedEnvironment.setter(&v21);
  }

  else
  {
    v19 = *(v20 + 1024);
    swift_beginAccess();
    (*(v8 + 16))(v13, &v2[v19], v7);
    if ((*(v14 + 48))(v13, 1, v6) == 1)
    {
      return (*(v8 + 8))(v13, v7);
    }

    else
    {
      (*(v14 + 32))(v17, v13, v6);
      UIHostingController.setRootView(_:transaction:)(v17);
      (*(v14 + 8))(v17, v6);
      (*(v14 + 56))(v10, 1, 1, v6);
      swift_beginAccess();
      (*(v8 + 40))(&v2[v19], v10, v7);
      return swift_endAccess();
    }
  }
}

void @objc NavigationStackCoordinator.navigationController(_:didShow:animated:)(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  specialized NavigationStackCoordinator.navigationController(_:didShow:animated:)(v8, a5);
}

uint64_t specialized NavigationStackCoordinator.navigationController(_:didShow:animated:)(id a1, char a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90)) = 0;
  if (a2 & 1) != 0 && (_s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>(), (static SemanticFeature.isEnabled.getter()) || (*(v2 + *((*v5 & *v2) + 0x80)) & 1) != 0 || ((v6 = [a1 viewControllers], type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v7 >> 62) ? (v8 = __CocoaSet.count.getter()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v8))
  {

    return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v2, a1);
  }

  else
  {
    v9 = [a1 viewControllers];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    NavigationStackCoordinator.previousContent.getter(v35);
    v12 = NavigationState.Base.count.getter();
    outlined destroy of NavigationState.StackContent(v35);
    if (v11 >= v12)
    {
      return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v3, a1);
    }

    *(v3 + *((*v5 & *v3) + 0x78)) = 0;
    result = outlined init with copy of NavigationAuthority(v3 + *((*v5 & *v3) + 0x68), v34);
    v14 = v12 - v11;
    if (!__OFSUB__(v12, v11))
    {
      NavigationStackCoordinator.previousContent.getter(v35);
      v15 = NavigationState.StackContent.topKey.getter();
      v17 = v16;
      v19 = v18;
      outlined destroy of NavigationState.StackContent(v35);
      static Transaction.current.getter();
      static Transaction.current.getter();
      v20 = Transaction.disablesAnimations.getter();

      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = Transaction.disablesAnimations.getter();
      }

      static Transaction.current.getter();
      v22 = Transaction.animation.getter();

      if (!v22)
      {
        v22 = Transaction.animation.getter();
      }

      v23 = v14;
      v24 = 0;
      v25 = 9;
      v26 = v15;
      v27 = v17;
      v28 = v19;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = v21 & 1;
      v33 = v22;
      NavigationAuthority.enqueueRequest(_:)(&v23);
      outlined destroy of NavigationRequest(&v23);
      outlined destroy of NavigationAuthority(v34);
      return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v3, a1);
    }

    __break(1u);
  }

  return result;
}

void *NavigationStackCoordinator.previousContent.getter@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined init with copy of NavigationState.StackContent?(v1 + v4, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] != 255)
  {
    return memcpy(a1, __src, 0x1C1uLL);
  }

  result = outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v6 = v1 + *((*v3 & *v1) + 0x60);
  v7 = *v6;
  v8 = v6[8];
  v9 = *(v6 + 2);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  a1[2] = v9;
  *(a1 + 448) = 0;
  return result;
}

uint64_t NavigationState.Base.count.getter()
{
  v1 = outlined init with copy of NavigationState.Base(v0, v17);
  if (!v20)
  {
    return 1;
  }

  if (v20 != 1)
  {
    LOWORD(v16[4]) = v17[9];
    v16[2] = *&v17[5];
    v16[3] = *&v17[7];
    v16[0] = *&v17[1];
    v16[1] = *&v17[3];
    v14[0] = v17[0];
    MEMORY[0x1EEE9AC00](v1);
    v12 = v14;
    v13 = v16;
    v3 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v11, 0, v4);
    outlined destroy of Binding<NavigationSplitViewColumn>(v16, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

    return v3;
  }

  v12 = v19;
  v11 = v18;
  outlined consume of ResolvedNavigationDestinations?(v17[45]);
  memcpy(v16, v17, 0x163uLL);
  v2 = outlined init with copy of NavigationColumnState.ColumnContent(&v16[7] + 8, v14);
  if (v15)
  {
    outlined destroy of NavigationColumnState(v16);
    v3 = 1;
LABEL_9:
    outlined destroy of Binding<NavigationSplitViewColumn>(v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return v3;
  }

  v5 = v14[13];
  v6 = (*(*v14[12] + 88))(v2);

  result = outlined destroy of NavigationColumnState(v16);
  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 16);

    v10 = __OFADD__(v8, v9);
    v3 = v8 + v9;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of contentSizeChanged #1 in ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(_BYTE *a1, uint64_t a2, char a3, double a4, double a5)
{
  v5 = *a1;
  if (v5 == 2)
  {
    if (a3)
    {
      a4 = a5;
    }

    v6 = 72;
    if ((a3 & 1) == 0)
    {
      v6 = 64;
    }

    LOBYTE(v5) = *(a2 + v6) != a4;
    swift_beginAccess();
    *a1 = v5;
  }

  return v5 & 1;
}

uint64_t assignWithCopy for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  outlined copy of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  outlined consume of ScrollTransitionConfiguration.Mode(v11, v12, v13, v14, v15);
  *(a1 + 72) = *(a2 + 72);

  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  v21 = *(a2 + 120);
  outlined copy of ScrollTransitionConfiguration.Mode(v16, v17, v18, v19, v20);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v20;
  *(a1 + 120) = v21;
  outlined consume of ScrollTransitionConfiguration.Mode(v22, v23, v24, v25, v26);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t static ScrollTransitionModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v37 = *a1;
  v2 = *(a2 + 48);
  v75 = *(a2 + 32);
  v76 = v2;
  v77 = *(a2 + 64);
  v78 = *(a2 + 80);
  v3 = *(a2 + 16);
  *v74 = *a2;
  *&v74[16] = v3;
  *v85 = v37;
  type metadata accessor for ScrollTransitionModifier();
  type metadata accessor for _GraphValue();
  v4 = _GraphValue.value.getter();
  v92 = v75;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  *v91 = *v74;
  *&v91[16] = *&v74[16];
  v5 = _ViewInputs.position.getter();
  v41 = DWORD2(v77);
  v38 = *&v74[16];
  v39 = HIDWORD(v76);
  swift_beginAccess();
  v6 = *MEMORY[0x1E698D3F8];
  v40 = v6;
  v7 = *(*&v74[16] + 16);
  *v91 = (v4 << 32) | 1;
  *&v91[8] = v5 | (DWORD2(v77) << 32);
  *&v91[16] = HIDWORD(v76) | (v7 << 32);
  *&v91[24] = v6;
  v8 = type metadata accessor for ScrollTransitionModifier.StageProgress();
  v56 = v8;
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v9 = MEMORY[0x1E698D388];
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for Attribute<ScrollTransitionProgress>, &unk_1EFFB51F0, MEMORY[0x1E698D388]);
  v34 = v10;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v91, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_14, v55, v8, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v73[0] = *v74;
  *(v73 + 12) = *&v74[12];
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  *v85 = v37;
  outlined init with copy of _ViewInputs(v74, v91);
  _GraphValue.value.getter();
  closure #1 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v33 = *&v74[28];
  *v91 = OffsetAttribute2;
  *&v91[4] = *&v74[28];
  v13 = type metadata accessor for ScrollTransitionModifier.ConfigurationTransaction();
  v53 = v13;
  v32 = swift_getWitnessTable();
  v54 = v32;
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for Attribute<Transaction>, MEMORY[0x1E697DD78], v9);
  v31 = v14;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v91, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14, v52, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  LODWORD(v9) = *v85;
  v36 = *v85;
  _GraphValue.init(_:)();
  *&v79[12] = *(v73 + 12);
  *v79 = v73[0];
  *&v79[28] = v9;
  v80 = v69;
  *v91 = v73[0];
  *&v91[16] = *&v79[16];
  v92 = v69;
  outlined init with copy of _GraphInputs(v79, v85);
  static Animatable._makeAnimatable(value:inputs:)();
  v81[0] = *v91;
  v81[1] = *&v91[16];
  v81[2] = v92;
  outlined destroy of _GraphInputs(v81);
  *v85 = v37;
  v16 = _GraphValue.value.getter();
  v92 = v75;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  *v91 = *v74;
  *&v91[16] = *&v74[16];
  v17 = _ViewInputs.position.getter();
  v18 = *(v38 + 16);
  *v91 = v16 << 32;
  *&v91[8] = v17 | (v41 << 32);
  *&v91[16] = v39 | (v18 << 32);
  *&v91[24] = v40;
  v50 = v8;
  v51 = WitnessTable;
  v19 = v8;
  v20 = MEMORY[0x1E69E73E0];
  v21 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v91, closure #1 in Attribute.init<A>(_:)partial apply, v49, v19, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v22);
  v68[0] = *v74;
  *(v68 + 12) = *&v74[12];
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  *v85 = v37;
  outlined init with copy of _ViewInputs(v74, v91);
  _GraphValue.value.getter();
  closure #2 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(1);
  *v91 = AGGraphCreateOffsetAttribute2();
  *&v91[4] = v33;
  v47 = v13;
  v48 = v32;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v91, closure #1 in Attribute.init<A>(_:)partial apply, v46, v13, v20, v31, v21, v23);
  LODWORD(v13) = *v85;
  _GraphValue.init(_:)();
  *&v82[12] = *(v68 + 12);
  *v82 = v68[0];
  *&v82[28] = v13;
  v83 = v64;
  *v91 = v68[0];
  *&v91[16] = *&v82[16];
  v92 = v64;
  outlined init with copy of _GraphInputs(v82, v85);
  static Animatable._makeAnimatable(value:inputs:)();
  v84[0] = *v91;
  v84[1] = *&v91[16];
  v84[2] = v92;
  outlined destroy of _GraphInputs(v84);
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for _GraphValue<ScrollTransitionProgress>, &unk_1EFFB51F0, MEMORY[0x1E697DDB8]);
  LODWORD(v20) = _GraphValue.value.getter();
  v24 = _GraphValue.value.getter();
  *v85 = v37;
  v25 = _GraphValue.value.getter();
  v92 = v75;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  *v91 = *v74;
  *&v91[16] = *&v74[16];
  v26 = _ViewInputs.position.getter();
  v27 = *(v38 + 16);
  *v91 = v20 | (v24 << 32);
  *&v91[8] = v25 | (v26 << 32);
  *&v91[16] = v41 | (v39 << 32);
  *&v91[24] = v27 | (v40 << 32);
  v43 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier();
  v44 = type metadata accessor for ScrollTransitionModifier.EffectRule();
  v45 = swift_getWitnessTable();
  v28 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v91, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v42, v44, MEMORY[0x1E69E73E0], v28, v21, v29);
  _GraphValue.init(_:)();
  v60 = v75;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v58 = *v74;
  v59 = *&v74[16];
  swift_getWitnessTable();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  *v85 = v68[0];
  *&v85[12] = *(v68 + 12);
  v87 = v64;
  v88 = v65;
  v89 = v66;
  v86 = v13;
  v90 = v67;
  outlined destroy of _ViewInputs(v85);
  *v91 = v73[0];
  *&v91[12] = *(v73 + 12);
  v92 = v69;
  v93 = v70;
  v94 = v71;
  *&v91[28] = v36;
  v95 = v72;
  return outlined destroy of _ViewInputs(v91);
}

void type metadata accessor for Attribute<ScrollTransitionProgress>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.ConfigurationTransaction(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.EffectRule(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t implicit closure #8 in static SystemScrollView._makeView(view:inputs:)()
{
  _ViewInputs.position.getter();
  _GraphInputs.pixelLength.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [FocusableFillerBounds], MEMORY[0x1E697FC28]);
  lazy protocol witness table accessor for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationDestinationScopeModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t View.accessibilityRemoveTraits(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 <= 0x3F)
  {
    v4 = 1 << v3;
  }

  else
  {
    v4 = 0;
  }

  v6[2] = 0;
  v6[3] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v6, a2, a3);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityInputLabels<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t closure #1 in ScrollTransitionModifier.EffectApplicationModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v26 = a1;
  v27 = a2;
  v28 = a5;
  type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v11 = type metadata accessor for PlaceholderContentView();
  WitnessTable = swift_getWitnessTable();
  v29 = v11;
  v30 = a3;
  v31 = WitnessTable;
  v32 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  *(v20 + 48) = v26;
  *(v20 + 56) = v27;

  v21 = swift_checkMetadataState();
  MEMORY[0x18D00A170](partial apply for closure #1 in closure #1 in ScrollTransitionModifier.EffectApplicationModifier.body(content:), v20, v21, a3, WitnessTable, a4);

  v29 = v21;
  v30 = a3;
  v31 = WitnessTable;
  v32 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v14 + 8);
  v23(v16, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_18BF32834()
{

  return swift_deallocObject();
}

uint64_t ScrollTransitionModifier.ConfigurationTransaction.value.getter()
{
  v15 = *AGGraphGetValue();

  ScrollTransitionModifier.ConfigurationTransaction.configuration.getter(&v8);
  v0 = v9;
  v1 = v10;
  v2 = v11;
  v3 = v12;
  v4 = v13;
  v5 = v14;
  outlined copy of ScrollTransitionConfiguration.Mode(v9, v10, v11, v12, v13);

  outlined consume of ScrollTransitionConfiguration.Mode(v0, v1, v2, v3, v4);
  if (!(v4 >> 62) || (v4 >> 62 == 1 ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    Transaction.animation.setter();
  }

  return v15;
}

uint64_t ScrollTransitionModifier.ConfigurationTransaction.configuration.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  v4 = Value[2];
  v5 = Value[3];
  v6 = Value[4];
  v7 = Value[5];
  v8 = Value[6];
  *a1 = *Value;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;

  return outlined copy of ScrollTransitionConfiguration.Mode(v3, v4, v5, v6, v7);
}

void type metadata accessor for SearchTextClearAction?()
{
  if (!lazy cache variable for type metadata for SearchTextClearAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchTextClearAction?);
    }
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA020SearchFieldPlacementD033_01524358DA8FEB8BCC0A94C08F00494ALLV_Tt1g5(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return a2 == 7;
      }

LABEL_16:
      if (a2 - 2 >= 6)
      {
        return ((a2 ^ a1) & 1) == 0;
      }

      return 0;
    }

    if (a2 == 6)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return a2 == 2;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return a2 == 4;
      }

      goto LABEL_16;
    }

    if (a2 == 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t outlined destroy of PlatformItemList.Item?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with take of ToolbarStorage.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void protocol witness for Hashable.hash(into:) in conformance ToolbarStorage.ID()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  _ViewList_ID.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _sypSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [TableColumnCustomizationID](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sypSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sypSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sypSgWOcTm_3(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ViewTransform?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t destroy for OnScrollVisibilityChangeModifier()
{
}

void type metadata accessor for _DictionaryStorage<String, Toolbar.VendedItem>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Toolbar.VendedItem>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Toolbar.VendedItem>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.EnableVFDFeature, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BarItemView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.HostViewGraph, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

void destroy for BarItemView(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  JUMPOUT(0x18D011290);
}

id specialized UIKitBarButtonItem.init(item:context:host:)(uint64_t a1, char *a2, int a3, void *a4)
{
  v5 = v4;
  v27 = a4;
  v25 = a3;
  v28 = a2;
  ObjectType = swift_getObjectType();
  v24 = type metadata accessor for ToolbarStorage.Item;
  v23 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v13 = &v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v14 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge;
  v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge] = 2;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  v16 = type metadata accessor for PlatformItemList.Item();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection;
  v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_tintColorTracker] = -1;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren] = 0;
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v9, type metadata accessor for ToolbarStorage.Item);
  v12(v9, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v9, &v5[v10], &lazy cache variable for type metadata for ToolbarStorage.Item?, v24, v23, type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  memset(v29, 0, sizeof(v29));
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v29, v13, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  swift_endAccess();
  LOBYTE(v9) = v25;
  v5[v14] = v25;
  v18 = v27;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] = v27;
  v5[v17] = *(a1 + *(v11 + 80));
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v19 = v18;
  v20 = objc_msgSendSuper2(&v32, sel_init);
  outlined init with copy of _ViewList_View(a1 + 184, v29);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v30 = v9;
  v31 = 0;
  v21 = v20;
  UIKitBarButtonItem.initialize(rootView:context:)(v29, v28);

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(a1, type metadata accessor for ToolbarStorage.Item);
  outlined destroy of BarItemView(v29);
  return v21;
}

uint64_t PlatformItemListTransformModifier.Transform.value.getter(uint64_t a1)
{
  v1 = MergePlatformItemsView.Transform.list.getter(a1);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v2 = v1;
  }

  v5 = v2;
  type metadata accessor for PlatformItemListTransformModifier();
  v3 = *AGGraphGetValue();

  v3(&v5);

  return v5;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListTransformModifier<A>.Transform@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformItemListTransformModifier.Transform.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_18BF33CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommandGroupPlacement(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 192);
  v10 = v5;
  v11 = v6;

  if (v9 >> 1 != 4294967294)
  {
    v21 = *(a2 + 72);
    if (v21 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v22 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v22, *(a2 + 72));
      *(a1 + 64) = v22;
      *(a1 + 72) = v21;
      v9 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v9 >> 1 == 0xFFFFFFFF)
    {
      v23 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v23;
    }

    else
    {
      v24 = *(a2 + 176);
      v25 = *(a2 + 184);
      v26 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v24, v25, v9);
      *(a1 + 176) = v24;
      *(a1 + 184) = v25;
      *(a1 + 192) = v9;
      *(a1 + 200) = v26;
    }

    v27 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v27;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v28 = *(a2 + 240);
    *(a1 + 240) = v28;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v29 = v28;
    v17 = *(a2 + 264);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v30;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  v14 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v14;
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  v17 = *(a2 + 264);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);

  if (v18 >= 2)
  {
    v19 = v18;
  }

  *(a1 + 272) = v18;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

LABEL_14:
  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
  }

  else
  {
    v35 = *(a2 + 304);
    v36 = *(a2 + 312);
    v37 = *(a2 + 320);
    v38 = *(a2 + 328);
    v39 = *(a2 + 344);
    v40 = *(a2 + 352);
    v41 = *(a2 + 360);
    v98 = *(a2 + 368);
    v99 = *(a2 + 376);
    v101 = *(a2 + 384);
    v103 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v31, v39, v40, v41, v98, v99, v101, v103, __dsta);
    *(a1 + 304) = v35;
    *(a1 + 312) = v36;
    *(a1 + 320) = v37;
    *(a1 + 328) = v38;
    *(a1 + 336) = v31;
    *(a1 + 344) = v39;
    *(a1 + 352) = v40;
    *(a1 + 360) = v41;
    *(a1 + 368) = v98;
    *(a1 + 376) = v99;
    *(a1 + 384) = v101;
    *(a1 + 392) = v103;
    *(a1 + 400) = __dsta;
  }

  v42 = *(a2 + 416);
  if (v42 == 1)
  {
    v43 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v43;
    *(a1 + 472) = *(a2 + 472);
    v44 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v44;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v42)
  {
    v45 = *(a2 + 424);
    *(a1 + 416) = v42;
    *(a1 + 424) = v45;

    v46 = *(a2 + 432);
    if (v46)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v48 = *(a2 + 448);
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v46 = *(a2 + 432);
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = *(a2 + 440);
  *(a1 + 432) = v46;
  *(a1 + 440) = v47;

  v48 = *(a2 + 448);
  if (!v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = *(a2 + 456);
  *(a1 + 448) = v48;
  *(a1 + 456) = v49;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v50 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v50;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v51 = *(a2 + 512);

  if (v51)
  {
    v52 = *(a2 + 520);
    *(a1 + 512) = v51;
    *(a1 + 520) = v52;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v53 = (a1 + 600);
  v54 = (a2 + 600);
  v55 = *(a2 + 624);

  if (!v55)
  {
    v57 = *(a2 + 616);
    *v53 = *v54;
    *(a1 + 616) = v57;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v55 != 1)
  {
    *(a1 + 624) = v55;
    *(a1 + 632) = *(a2 + 632);
    (**(v55 - 8))(a1 + 600, a2 + 600, v55);
    goto LABEL_37;
  }

  v56 = *(a2 + 616);
  *v53 = *v54;
  *(a1 + 616) = v56;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v58 = (a1 + 664);
  v59 = (a2 + 664);
  v60 = *(a2 + 776);
  if (v60 == 1)
  {
    v61 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v61;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v62 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v62;
    v63 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v63;
    v64 = *(a2 + 680);
    *v58 = *v59;
    *(a1 + 680) = v64;
  }

  else
  {
    *v58 = *v59;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v65 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v65;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v60;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v66 = (a1 + 840);
  v67 = (a2 + 840);
  v68 = *(a2 + 864);
  if (v68)
  {
    if (v68 == 1)
    {
      v69 = *(a2 + 856);
      *v66 = *v67;
      *(a1 + 856) = v69;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v68;
    *(a1 + 872) = *(a2 + 872);
    (**(v68 - 8))(v66, v67);
    v71 = *(a2 + 880);
    if (!v71)
    {
      goto LABEL_48;
    }

LABEL_46:
    v72 = *(a2 + 888);
    *(a1 + 880) = v71;
    *(a1 + 888) = v72;

    goto LABEL_49;
  }

  v70 = *(a2 + 856);
  *v66 = *v67;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 872);
  v71 = *(a2 + 880);
  if (v71)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v73 = *(a2 + 896);
  *(a1 + 896) = v73;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  v74 = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v75 = a3[28];
  __dst = (a1 + v75);
  v76 = (a2 + v75);
  *(a1 + 944) = v74;
  v77 = type metadata accessor for CommandOperation();
  v102 = *(v77 - 8);
  v104 = *(v102 + 48);
  v78 = v73;
  v79 = v76;

  if (v104(v76, 1, v77))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v76, *(*(v80 - 8) + 64));
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v82 = v77;
    v83 = &__dst[v81];
    v84 = &v79[v81];
    v105 = v79;
    v85 = *&v79[v81];
    v86 = *(v84 + 1);
    v87 = v84[16];
    outlined copy of Text.Storage(v85, v86, v87);
    *v83 = v85;
    *(v83 + 1) = v86;
    v83[16] = v87;
    *(v83 + 3) = *(v84 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v100 = *(*(v89 - 8) + 16);

    v100(&v83[v88], &v84[v88], v89);
    v90 = *(v82 + 24);
    v91 = &__dst[v90];
    v92 = &v105[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      v91[1] = v93;
    }

    else
    {
      *v91 = *v92;
    }

    (*(v102 + 56))(__dst, 0, 1, v82);
  }

  v94 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v94) = *(a2 + v94);
  v95 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v95) = *(a2 + v95);
  v96 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v96) = *(a2 + v96);

  return a1;
}

uint64_t outlined copy of Image.NamedResolved?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    outlined copy of Image.Location(a3);
  }

  return result;
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t outlined consume of Image.NamedResolved?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    outlined consume of Image.Location(a3);
  }

  return result;
}

id outlined copy of Image.Location(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t (*ButtonActionModifier.PlatformSelectionBehavior.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v6 = type metadata accessor for ButtonActionModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  ButtonActionModifier.PlatformSelectionBehavior.modifier.getter(&v19 - v11);
  v13 = *AGGraphGetValue();
  v14 = *AGGraphGetValue();
  v15 = *(v7 + 32);
  v15(v9, v12, v6);
  v16 = (*(v7 + 80) + 34) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = v13;
  *(v17 + 33) = v14;
  v15((v17 + v16), v9, v6);
  return partial apply for closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter;
}

uint64_t sub_18BF34950()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ButtonActionModifier() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 34) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonActionModifier<A>.PlatformSelectionBehavior@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ButtonActionModifier.PlatformSelectionBehavior.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BF34AB4()
{

  return swift_deallocObject();
}

uint64_t ButtonActionModifier.PlatformSelectionBehavior.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonActionModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

void type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(uint64_t *a1)
{
  v3 = *(type metadata accessor for ButtonActionModifier() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = v1 + ((*(v3 + 80) + 34) & ~*(v3 + 80));

  return closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(a1, v4, v5, v6);
}

uint64_t closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for PlatformItemList.Item();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  PlatformItemList.mergedContentItem.getter(*a1, v23 - v13);

  if (a2)
  {
    v15 = (a4 + *(type metadata accessor for ButtonActionModifier() + 36));
    v17 = *v15;
    v16 = v15[1];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    a3 = 0;
  }

  v24 = v14[472];
  v18 = *(v14 + 456);
  v23[2] = *(v14 + 440);
  v23[3] = v18;
  v19 = *(v14 + 424);
  v23[0] = *(v14 + 408);
  v23[1] = v19;
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(v23, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720]);
  v14[408] = 1;
  *(v14 + 409) = 0;
  *(v14 + 52) = v17;
  *(v14 + 53) = v16;
  *(v14 + 27) = 0u;
  *(v14 + 28) = 0u;
  *(v14 + 58) = 0;
  v14[472] = a3;
  v14[56] = a2 & 1;
  outlined init with copy of PlatformItemList.Item(v14, v11);
  type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v11, v21 + v20);
  *a1 = v21;
  return _s7SwiftUI16PlatformItemListV0D0VWOhTm_4(v14, type metadata accessor for PlatformItemList.Item);
}

uint64_t PlatformItemList.mergedContentItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v4);
  v182 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v148 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v148 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v184 = &v148 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v148 - v19;
  v185 = a1;
  v21 = a1[2];
  if (v21 == 1)
  {
    v22 = v185 + ((*(v18 + 80) + 32) & ~*(v18 + 80));

    return outlined init with copy of PlatformItemList.Item(v22, a2);
  }

  v183 = v18;
  v162 = a2;
  v179 = v21;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v221);
  memset(v220, 0, sizeof(v220));
  *(v20 + 8) = 0u;
  v156 = v20 + 8;
  v20[32] = 0;
  *(v20 + 3) = 0;
  *(v20 + 5) = -1;
  v20[56] = 1;
  v24 = v230;
  *(v20 + 12) = v229;
  *(v20 + 13) = v24;
  *(v20 + 14) = v231[0];
  *(v20 + 235) = *(v231 + 11);
  v25 = v226;
  *(v20 + 8) = v225;
  *(v20 + 9) = v25;
  v26 = v228;
  *(v20 + 10) = v227;
  *(v20 + 11) = v26;
  v27 = v222;
  *(v20 + 4) = v221;
  *(v20 + 5) = v27;
  v28 = v224;
  *(v20 + 6) = v223;
  *(v20 + 7) = v28;
  *(v20 + 19) = 0u;
  *(v20 + 20) = 0u;
  *(v20 + 17) = 0u;
  *(v20 + 18) = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 42) = 0x3FFFFFFFCLL;
  *(v20 + 344) = 0u;
  *(v20 + 360) = 0u;
  *(v20 + 376) = 0u;
  *(v20 + 392) = 0u;
  v157 = v20 + 344;
  *(v20 + 51) = 0;
  *(v20 + 52) = 1;
  *(v20 + 424) = 0u;
  *(v20 + 440) = 0u;
  *(v20 + 456) = 0u;
  v20[472] = 0;
  *(v20 + 60) = 0;
  *(v20 + 488) = 0u;
  v20[504] = 0;
  *(v20 + 32) = 0u;
  v20[528] = 4;
  *(v20 + 536) = 0u;
  *(v20 + 552) = 0u;
  *(v20 + 568) = 0u;
  *(v20 + 584) = 0u;
  *(v20 + 600) = 0u;
  *(v20 + 616) = 0u;
  *(v20 + 632) = 0u;
  *(v20 + 648) = 0u;
  *(v20 + 664) = 0u;
  *(v20 + 680) = 0u;
  *(v20 + 696) = 0u;
  *(v20 + 712) = 0u;
  *(v20 + 728) = 0u;
  *(v20 + 744) = 0u;
  *(v20 + 760) = 0u;
  *(v20 + 776) = 0u;
  *(v20 + 792) = 0u;
  *(v20 + 808) = 0u;
  *(v20 + 824) = 0u;
  *(v20 + 840) = 0u;
  *(v20 + 107) = 0;
  *(v20 + 108) = 1;
  *(v20 + 872) = 0u;
  *(v20 + 888) = 0u;
  *(v20 + 904) = 0u;
  *(v20 + 920) = 0u;
  *(v20 + 936) = 0u;
  *(v20 + 476) = 1283;
  v20[954] = 3;
  v29 = v4[28];
  v30 = type metadata accessor for CommandOperation();
  (*(*(v30 - 8) + 56))(&v20[v29], 1, 1, v30);
  v20[v4[29]] = 0;
  v20[v4[30]] = 0;
  v31 = v4[31];
  v20[v31] = 2;
  v159 = v4[32];
  v160 = v31;
  v20[v159] = 0;
  v20[v4[33]] = 0;
  v163 = v4;
  v32 = v4[34];
  *v20 = 0;
  v33 = *(v20 + 13);
  v232[8] = *(v20 + 12);
  v232[9] = v33;
  v233[0] = *(v20 + 14);
  *(v233 + 11) = *(v20 + 235);
  v34 = *(v20 + 9);
  v232[4] = *(v20 + 8);
  v232[5] = v34;
  v35 = *(v20 + 11);
  v232[6] = *(v20 + 10);
  v232[7] = v35;
  v36 = *(v20 + 5);
  v232[0] = *(v20 + 4);
  v232[1] = v36;
  v37 = *(v20 + 7);
  v232[2] = *(v20 + 6);
  v232[3] = v37;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v232, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v38 = v230;
  *(v20 + 12) = v229;
  *(v20 + 13) = v38;
  *(v20 + 14) = v231[0];
  *(v20 + 235) = *(v231 + 11);
  v39 = v226;
  *(v20 + 8) = v225;
  *(v20 + 9) = v39;
  v40 = v228;
  *(v20 + 10) = v227;
  *(v20 + 11) = v40;
  v41 = v222;
  *(v20 + 4) = v221;
  *(v20 + 5) = v41;
  v42 = v224;
  *(v20 + 6) = v223;
  *(v20 + 7) = v42;
  v43 = *(v20 + 456);
  v234[2] = *(v20 + 440);
  v234[3] = v43;
  v235 = v20[472];
  v44 = *(v20 + 424);
  v234[0] = *(v20 + 408);
  v234[1] = v44;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v234, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v20 + 408) = xmmword_18CD633F0;
  *(v20 + 424) = 0u;
  *(v20 + 440) = 0u;
  *(v20 + 456) = 0u;
  v20[472] = 0;
  result = outlined assign with take of PlatformItemList.Item.Accessibility?(v220, (v20 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  v158 = v32;
  *&v20[v32] = 0;
  *(v20 + 6) = 0;
  if (!v179)
  {
    v175 = 0;
    v142 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v143 = v162;
    if (v142[2])
    {

      *(v20 + 118) = v142;
      v144 = *(v20 + 24);
      v220[4] = *(v20 + 23);
      v220[5] = v144;
      *&v220[6] = *(v20 + 50);
      v145 = *(v20 + 20);
      v220[0] = *(v20 + 19);
      v220[1] = v145;
      v146 = *(v20 + 21);
      v220[3] = *(v20 + 22);
      v220[2] = v146;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
      *(v20 + 38) = 3;
      *(v20 + 39) = 0;
      *(v20 + 40) = 0;
      *(v20 + 41) = 0;
      *(v20 + 42) = 0xC000000000000000;
      v147 = v157;
      *v157 = 0u;
      v147[1] = 0u;
      v147[2] = 0u;
      v147[3] = 0u;
    }

    else
    {
    }

    return outlined init with take of PlatformItemList.Item(v20, v143);
  }

  v172 = 0;
  v173 = v20 + 536;
  v181 = 0;
  v178 = 0;
  v161 = 0;
  v170 = 0;
  v171 = 0;
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
  v165 = 0;
  v45 = 0;
  v46 = 0;
  v47 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v48 = *(v183 + 72);
  v175 = 0;
  v176 = v47;
  v164 = v185 + v47;
  v49 = -1;
  v185 = MEMORY[0x1E69E7CC0];
  v174 = 2;
  v180 = v14;
  v177 = v48;
LABEL_7:
  v50 = &v164[v48 * v45];
  while (!__OFADD__(v45, 1))
  {
    v183 = v45 + 1;
    v51 = v184;
    outlined init with copy of PlatformItemList.Item(v50, v184);
    result = outlined init with copy of PlatformItemList.Item(v51, v14);
    if (v46)
    {
      v52 = __OFSUB__(v49--, 1);
      if (v52)
      {
        goto LABEL_95;
      }

      v53 = *(v14 + 5);
      v52 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v52)
      {
        goto LABEL_96;
      }

      *(v14 + 5) = v54;
    }

    if (v49 < 0)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v49, 1))
    {
      goto LABEL_94;
    }

    if (*(v14 + 5) != v49 + 1)
    {
LABEL_37:
      v46 = 0;
      goto LABEL_42;
    }

    if (!v181)
    {
      v55 = *v14;
      if (*v14)
      {
        v46 = 1;
        v87 = v173;
        goto LABEL_46;
      }
    }

    outlined init with copy of PlatformItemList.Item(v20, v11);
    v56 = *(v11 + 13);
    v57 = *(v11 + 11);
    v200[8] = *(v11 + 12);
    v200[9] = v56;
    v58 = *(v11 + 13);
    v200[10] = *(v11 + 14);
    *(&v200[10] + 11) = *(v11 + 235);
    v59 = *(v11 + 9);
    v60 = *(v11 + 7);
    v200[4] = *(v11 + 8);
    v200[5] = v59;
    v61 = *(v11 + 9);
    v62 = *(v11 + 11);
    v200[6] = *(v11 + 10);
    v200[7] = v62;
    v63 = *(v11 + 5);
    v200[0] = *(v11 + 4);
    v200[1] = v63;
    v64 = *(v11 + 7);
    v66 = *(v11 + 4);
    v65 = *(v11 + 5);
    v200[2] = *(v11 + 6);
    v200[3] = v64;
    v220[8] = v200[8];
    v220[9] = v58;
    v220[10] = *(v11 + 14);
    *(&v220[10] + 11) = *(v11 + 235);
    v220[4] = v200[4];
    v220[5] = v61;
    v220[6] = v200[6];
    v220[7] = v57;
    v220[0] = v66;
    v220[1] = v65;
    v220[2] = v200[2];
    v220[3] = v60;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v220) == 1)
    {
      _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
    }

    else
    {
      v67 = v185;
      if (*&v220[9])
      {
        v79 = v11;
        goto LABEL_24;
      }

      v190 = v220[4];
      v191[0] = v220[5];
      *(v191 + 12) = *(&v220[5] + 12);
      v186 = v220[0];
      v187 = v220[1];
      v188 = v220[2];
      v189 = v220[3];
      v82 = *(v11 + 6);
      outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v210, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      outlined init with copy of GraphicsImage(v220, &v210);
      v83 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v82);
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v200, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      v205 = v190;
      v206[0] = v191[0];
      *(v206 + 12) = *(v191 + 12);
      v201 = v186;
      v202 = v187;
      v204 = v189;
      v203 = v188;
      outlined destroy of GraphicsImage(&v201);
      _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
      if (v83)
      {

        v67 = v185;
        goto LABEL_30;
      }
    }

    v67 = v185;
    outlined init with copy of PlatformItemList.Item(v14, v8);
    v68 = *(v8 + 13);
    v69 = *(v8 + 11);
    v207 = *(v8 + 12);
    v208 = v68;
    v70 = *(v8 + 13);
    v209[0] = *(v8 + 14);
    *(v209 + 11) = *(v8 + 235);
    v71 = *(v8 + 9);
    v72 = *(v8 + 7);
    v205 = *(v8 + 8);
    v206[0] = v71;
    v73 = *(v8 + 9);
    v74 = *(v8 + 11);
    v206[1] = *(v8 + 10);
    v206[2] = v74;
    v75 = *(v8 + 5);
    v201 = *(v8 + 4);
    v202 = v75;
    v76 = *(v8 + 7);
    v78 = *(v8 + 4);
    v77 = *(v8 + 5);
    v203 = *(v8 + 6);
    v204 = v76;
    v217 = v207;
    v218 = v70;
    v219[0] = *(v8 + 14);
    *(v219 + 11) = *(v8 + 235);
    v214 = v205;
    v215[0] = v73;
    v215[1] = v206[1];
    v216 = v69;
    v210 = v78;
    v211 = v77;
    v212 = v203;
    v213 = v72;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v210) == 1)
    {
      v79 = v8;
LABEL_24:
      _s7SwiftUI16CommandOperationVWOhTm_0(v79, type metadata accessor for PlatformItemList.Item);
      goto LABEL_30;
    }

    if (v218)
    {
      _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
LABEL_41:
      v46 = 1;
      v178 = v181;
LABEL_42:
      v87 = v173;
      if (v178)
      {
        if (!v161)
        {
          v55 = *v14;
          *v156 = *v14;
          v161 = v55;
          goto LABEL_47;
        }
      }

      else
      {
        v55 = *v14;
LABEL_46:
        *v20 = v55;
        v178 = v55;
        v181 = v55;
LABEL_47:
        v88 = v55;
      }

      if (v20[528] == 4)
      {
        v20[528] = v14[528];
      }

      v89 = *(v20 + 13);
      v217 = *(v20 + 12);
      v218 = v89;
      v219[0] = *(v20 + 14);
      *(v219 + 11) = *(v20 + 235);
      v90 = *(v20 + 9);
      v214 = *(v20 + 8);
      v215[0] = v90;
      v91 = *(v20 + 11);
      v215[1] = *(v20 + 10);
      v216 = v91;
      v92 = *(v20 + 5);
      v210 = *(v20 + 4);
      v211 = v92;
      v93 = *(v20 + 7);
      v212 = *(v20 + 6);
      v213 = v93;
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v210) == 1)
      {
        v94 = *(v14 + 13);
        v200[8] = *(v14 + 12);
        v200[9] = v94;
        v200[10] = *(v14 + 14);
        *(&v200[10] + 11) = *(v14 + 235);
        v95 = *(v14 + 9);
        v200[4] = *(v14 + 8);
        v200[5] = v95;
        v96 = *(v14 + 11);
        v200[6] = *(v14 + 10);
        v200[7] = v96;
        v97 = *(v14 + 5);
        v200[0] = *(v14 + 4);
        v200[1] = v97;
        v98 = *(v14 + 7);
        v200[2] = *(v14 + 6);
        v200[3] = v98;
        v99 = *(v20 + 13);
        v220[8] = *(v20 + 12);
        v220[9] = v99;
        v220[10] = *(v20 + 14);
        *(&v220[10] + 11) = *(v20 + 235);
        v100 = *(v20 + 9);
        v220[4] = *(v20 + 8);
        v220[5] = v100;
        v101 = *(v20 + 11);
        v220[6] = *(v20 + 10);
        v220[7] = v101;
        v102 = *(v20 + 5);
        v220[0] = *(v20 + 4);
        v220[1] = v102;
        v103 = *(v20 + 7);
        v220[2] = *(v20 + 6);
        v220[3] = v103;
        v104 = MEMORY[0x1E6981730];
        outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v201, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for Image.Resolved?, v104);
        v105 = v200[9];
        *(v20 + 12) = v200[8];
        *(v20 + 13) = v105;
        *(v20 + 14) = v200[10];
        *(v20 + 235) = *(&v200[10] + 11);
        v106 = v200[5];
        *(v20 + 8) = v200[4];
        *(v20 + 9) = v106;
        v107 = v200[7];
        *(v20 + 10) = v200[6];
        *(v20 + 11) = v107;
        v108 = v200[1];
        *(v20 + 4) = v200[0];
        *(v20 + 5) = v108;
        v109 = v200[3];
        *(v20 + 6) = v200[2];
        *(v20 + 7) = v109;
        if (!v172)
        {
          goto LABEL_52;
        }

LABEL_55:
        if (*(v20 + 33))
        {
          goto LABEL_56;
        }

LABEL_53:
        v111 = *(v14 + 32);
        v112 = *(v14 + 33);
        v114 = *(v14 + 34);
        v113 = *(v14 + 35);
        v115 = *(v14 + 36);
        v154 = *(v14 + 37);
        v155 = v115;
        v116 = *(v20 + 32);
        v117 = *(v20 + 34);
        v152 = *(v20 + 35);
        v153 = v117;
        v118 = *(v20 + 37);
        v151 = *(v20 + 36);
        v149 = v116;
        v150 = v118;
        v119 = v113;
        outlined copy of Image.NamedResolved?(v111, v112, v114);
        outlined consume of Image.NamedResolved?(v149, 0, v153);
        *(v20 + 32) = v111;
        *(v20 + 33) = v112;
        *(v20 + 34) = v114;
        *(v20 + 35) = v119;
        v87 = v173;
        v120 = v154;
        *(v20 + 36) = v155;
        *(v20 + 37) = v120;
        goto LABEL_56;
      }

      if (v172)
      {
        goto LABEL_55;
      }

LABEL_52:
      v110 = *(v14 + 6);
      *(v20 + 6) = v110;
      v172 = v110;

      if (!*(v20 + 33))
      {
        goto LABEL_53;
      }

LABEL_56:
      outlined init with copy of PlatformItemList.Item.SystemItem?(v87, v220, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
      v121 = *(&v220[17] + 1);
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
      if (v121)
      {
        if (*(v14 + 102))
        {
          outlined init with copy of AccessibilityProperties((v14 + 536), v200);
          result = memcpy(v220, v200, 0x120uLL);
          if (!*(v20 + 102))
          {
            goto LABEL_97;
          }

          AccessibilityProperties.merge(with:)(v220);
          outlined destroy of AccessibilityProperties(v220);
        }
      }

      else
      {
        outlined assign with copy of PlatformItemList.Item.Accessibility?((v14 + 536), v87);
      }

      v122 = v163;
      if (v171)
      {
        if (v175)
        {
          goto LABEL_63;
        }

LABEL_85:
        v141 = *(v14 + 118);
        *(v20 + 118) = v141;
        v175 = v141;
      }

      else
      {
        v140 = *(v14 + 117);
        *(v20 + 117) = v140;
        v171 = v140;

        if (!v175)
        {
          goto LABEL_85;
        }
      }

LABEL_63:
      if (*(v20 + 42) >> 2 == 0xFFFFFFFFLL)
      {
        v123 = *(v14 + 24);
        v200[4] = *(v14 + 23);
        v200[5] = v123;
        *&v200[6] = *(v14 + 50);
        v124 = *(v14 + 20);
        v200[0] = *(v14 + 19);
        v200[1] = v124;
        v125 = *(v14 + 22);
        v200[2] = *(v14 + 21);
        v200[3] = v125;
        v126 = *(v20 + 19);
        v220[1] = *(v20 + 20);
        v220[0] = v126;
        v127 = *(v20 + 21);
        v128 = *(v20 + 22);
        v129 = *(v20 + 23);
        v130 = *(v20 + 24);
        *&v220[6] = *(v20 + 50);
        v220[5] = v130;
        v220[4] = v129;
        v220[2] = v127;
        v220[3] = v128;
        outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v201, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        v131 = v200[5];
        *(v20 + 23) = v200[4];
        *(v20 + 24) = v131;
        *(v20 + 50) = *&v200[6];
        v132 = v200[1];
        *(v20 + 19) = v200[0];
        *(v20 + 20) = v132;
        v133 = v200[3];
        *(v20 + 21) = v200[2];
        *(v20 + 22) = v133;
        if (!v170)
        {
          goto LABEL_65;
        }

LABEL_71:
        if (v169)
        {
          goto LABEL_72;
        }

LABEL_66:
        v135 = *(v14 + 112);
        *(v20 + 112) = v135;
        v169 = v135;
        v136 = v135;
        if (!v168)
        {
          goto LABEL_67;
        }

LABEL_73:
        if (v167)
        {
          goto LABEL_74;
        }

LABEL_68:
        v138 = *(v14 + 114);
        *(v20 + 113) = *(v14 + 113);
        *(v20 + 114) = v138;
        v167 = v138;

        if (!v166)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v170)
        {
          goto LABEL_71;
        }

LABEL_65:
        v134 = *&v14[v122[34]];
        *&v20[v158] = v134;
        v170 = v134;

        if (!v169)
        {
          goto LABEL_66;
        }

LABEL_72:
        if (v168)
        {
          goto LABEL_73;
        }

LABEL_67:
        v137 = *(v14 + 3);
        *(v20 + 2) = *(v14 + 2);
        *(v20 + 3) = v137;
        v168 = v137;

        if (!v167)
        {
          goto LABEL_68;
        }

LABEL_74:
        if (!v166)
        {
LABEL_69:
          v139 = *(v14 + 116);
          *(v20 + 115) = *(v14 + 115);
          *(v20 + 116) = v139;
          v166 = v139;
        }
      }

      if (v174 == 2)
      {
        v174 = v14[v122[31]];
        v20[v160] = v174;
      }

      if (!v165)
      {
        v165 = v14[v122[32]];
        v20[v159] = v165;
      }

      if (v20[953] == 5)
      {
        v20[953] = v14[953];
      }

      _s7SwiftUI16CommandOperationVWOhTm_0(v14, type metadata accessor for PlatformItemList.Item);
      v49 = *(v184 + 40);
      result = _s7SwiftUI16CommandOperationVWOhTm_0(v184, type metadata accessor for PlatformItemList.Item);
      v45 = v183;
      if (v183 == v179)
      {
LABEL_86:
        v142 = v185;
        goto LABEL_88;
      }

      v48 = v177;
      if (v183 < v179)
      {
        goto LABEL_7;
      }

LABEL_92:
      __break(1u);
      break;
    }

    v196 = v214;
    v197[0] = v215[0];
    *(v197 + 12) = *(v215 + 12);
    v192 = v210;
    v193 = v211;
    v194 = v212;
    v195 = v213;
    v80 = *(v8 + 6);
    outlined init with copy of PlatformItemList.Item.SystemItem?(&v201, &v186, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of GraphicsImage(&v210, &v186);
    v81 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v80);
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v201, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v198[4] = v196;
    v199[0] = v197[0];
    *(v199 + 12) = *(v197 + 12);
    v198[0] = v192;
    v198[1] = v193;
    v198[2] = v194;
    v198[3] = v195;
    outlined destroy of GraphicsImage(v198);
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
    if (v81)
    {

      goto LABEL_41;
    }

    v67 = v185;
LABEL_30:
    outlined init with copy of PlatformItemList.Item(v14, v182);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
    }

    v85 = v67[2];
    v84 = v67[3];
    if (v85 >= v84 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1, v67);
    }

    v67[2] = v85 + 1;
    v185 = v67;
    v86 = v177;
    outlined init with take of PlatformItemList.Item(v182, v67 + v176 + v85 * v177);
    _s7SwiftUI16CommandOperationVWOhTm_0(v180, type metadata accessor for PlatformItemList.Item);
    v49 = *(v184 + 40);
    result = _s7SwiftUI16CommandOperationVWOhTm_0(v184, type metadata accessor for PlatformItemList.Item);
    if (v183 == v179)
    {
      goto LABEL_86;
    }

    v46 = 0;
    ++v45;
    v50 += v86;
    v14 = v180;
    v178 = v181;
    if (v183 >= v179)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t outlined destroy of PlatformItemList.Item.SelectionBehavior?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for CGFloat?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for PlatformItemList.Item(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(a1 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
      v4 = *(a1 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4);
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v7 = *(a1 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(a1 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v9 = *(a1 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_20:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_27:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_27;
  }

LABEL_30:
  v11 = *(a1 + 864);
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 840);
  }

  if (*(a1 + 880))
  {
  }

LABEL_35:

  v12 = a1 + *(a2 + 112);
  v13 = type metadata accessor for CommandOperation();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }
}